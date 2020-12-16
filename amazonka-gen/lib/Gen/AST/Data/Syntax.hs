{-# OPTIONS_GHC -fno-warn-orphans #-}

-- |
-- Module      : Gen.AST.Data.Syntax
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Gen.AST.Data.Syntax where

import qualified Control.Comonad as Comonad
import qualified Control.Lens as Lens
import qualified Data.Foldable as Foldable
import qualified Data.HashMap.Strict.InsOrd as HashMap
import qualified Data.List as List
import qualified Data.Text as Text
import Gen.AST.Data.Field
import Gen.AST.Data.Instance
import Gen.Prelude
import Gen.Protocol (Names (..))
import qualified Gen.Protocol as Protocol
import Gen.Types
import qualified Language.Haskell.Exts as Exts

type Name = Exts.Name ()

type QName = Exts.QName ()

type Type = Exts.Type ()

type Decl = Exts.Decl ()

type Exp = Exts.Exp ()

type Pat = Exts.Pat ()

type QOp = Exts.QOp ()

type Rhs = Exts.Rhs ()

type GuardedRhs = Exts.GuardedRhs ()

type InstDecl = Exts.InstDecl ()

type QualConDecl = Exts.QualConDecl ()

type ConDecl = Exts.ConDecl ()

type FieldDecl = Exts.FieldDecl ()

type FieldUpdate = Exts.FieldUpdate ()

pX, pXMay, pXDef :: QOp
pX = "Core..@"
pXMay = "Core..@?"
pXDef = "Core..!@"

pJ, pJMay, pJDef :: QOp
pJ = "Core..:"
pJMay = "Core..:?"
pJDef = "Core..!="

pJE, pJEMay, pJEDef :: QOp
pJE = "Core..:>"
pJEMay = "Core..?>"
pJEDef = pXDef

pH, pHMay :: QOp
pH = "Core..#"
pHMay = "Core..#?"

pXMap, pXList, pXList1, pHMap :: Exp
pXMap = var "Core.parseXMLMap"
pXList = var "Core.parseXMLList"
pXList1 = var "Core.parseXMLNonEmpty"
pHMap = var "Core.parseHeadersMap"

toX, toXAttr, toJ, toQ, toH :: QOp
toX = "Core.@="
toXAttr = "Core.@@="
toJ = "Core..="
toQ = "Core.=:"
toH = "Core.=#"

toQList, toXList :: Exp
toQList = var "Core.toQueryList"
toXList = var "Core.toXMLList"

toXMap, toQMap :: Exp
toXMap = var "Core.toXMLMap"
toQMap = var "Core.toQueryMap"

ctorS :: HasMetadata a Identity => a -> Id -> [Field] -> Decl
ctorS m n fs =
  Exts.TypeSig () [ident (smartCtorId n)] ty
  where
    ty = Foldable.foldr' (Exts.TyFun ()) (tycon (typeId n)) ps

    ps = map (external m) (filter fieldIsParam fs)

ctorD :: Id -> [Field] -> Decl
ctorD n fs =
  Exts.sfun (ident (smartCtorId n)) ps (unguarded rhs) Exts.noBinds
  where
    ps = map (ident . fieldAccessor) (filter fieldIsParam fs)

    rhs
      | null fs = var (ctorId n)
      | otherwise = recConstr (unqual (ctorId n)) (map fieldUpdate fs)

fieldUpdate :: Field -> FieldUpdate
fieldUpdate f
  | fieldMaybe f = field (unqual (fieldAccessor f)) nothingE
  | fieldMonoid f = field (unqual (fieldAccessor f)) memptyE
  | otherwise = Exts.FieldPun () (unqual (fieldAccessor f))

lensS :: HasMetadata a Identity => a -> Id -> Field -> Decl
lensS m n f =
  Exts.TypeSig () [ident (fieldLens f)] $
    tyapp
      (tyapp (tycon "Lens.Lens'") (tycon (typeId n)))
      (directed m (Just (typeId n)) (_fieldDirection f) f)

lensD :: HasMetadata a Identity => a -> Id -> Field -> Decl
lensD m n f =
  Exts.sfun (ident (fieldLens f)) [] (unguarded lens) Exts.noBinds
  where
    lens = fieldE (Text.unpack (fieldAccessor f))

errorS :: Text -> Decl
errorS n =
  Exts.TypeSig () [ident n] $
    forall $
      tyapp
        ( tyapp
            ( tyapp
                (tycon "Lens.Getting")
                (tyapp (tycon "Core.First") (tycon "Core.ServiceError"))
            )
            (tyvar "a")
        )
        (tycon "Core.ServiceError")
  where
    cxt = Exts.CxSingle () (Exts.TypeA () (tycon "Core.AsError" `tyapp` tyvar "a"))

    forall = Exts.TyForall () Nothing (Just cxt)

errorD :: HasMetadata a Identity => a -> Text -> Maybe Int -> Text -> Decl
errorD m n s c =
  Exts.sfun (ident n) [] (unguarded (maybe rhs status s)) Exts.noBinds
  where
    status i =
      Exts.infixApp rhs "Core.." $
        var "Core.hasStatus"
          `Exts.app` Exts.intE (fromIntegral i)

    rhs =
      Exts.appFun
        (var "Core._MatchServiceError")
        [ var (m ^. serviceConfig),
          str c
        ]

dataD :: Id -> Bool -> [QualConDecl] -> [Derive] -> Decl
dataD n isNewtype fs cs =
  Exts.DataDecl () arity Nothing head' fs (derivingD isNewtype cs)
  where
    arity
      | isNewtype = Exts.NewType ()
      | otherwise = Exts.DataType ()

    head' =
      Exts.DHead () (ident (typeId n))

derivingD :: Bool -> [Derive] -> [Exts.Deriving ()]
derivingD newt cs = stocks ++ newtypes
  where
    (stocks, newtypes) =
      bimap
        (derive Exts.DerivStock)
        (derive (if newt then Exts.DerivNewtype else Exts.DerivAnyclass))
        $ partitionEithers $
          map derivingStrategy cs

    derive strategy = \case
      [] -> []
      xs -> [Exts.Deriving () (Just (strategy ())) (map rule xs)]

    rule c =
      Exts.IRule () Nothing Nothing $
        Exts.IHCon () (unqual (mappend "Core." c))

recordD ::
  HasMetadata a Identity =>
  a ->
  Id ->
  [Field] ->
  (Name, [(Text, FieldDecl, Maybe Help)])
recordD m n = \case
  [] -> (ctor, [])
  xs -> (ctor, map fieldDecl xs)
  where
    fieldDecl field =
      ( fieldAccessor field,
        Exts.FieldDecl
          ()
          [ident (fieldAccessor field)]
          (directed m (Just (typeId n)) (_fieldDirection field) field),
        _refDocumentation (_fieldRef field)
      )

    ctor = ident (ctorId n)

conD :: ConDecl -> QualConDecl
conD = Exts.QualConDecl () Nothing Nothing

serviceS :: HasMetadata a Identity => a -> Decl
serviceS m =
  Exts.TypeSig () [ident (m ^. serviceConfig)] (tycon "Core.Service")

serviceD :: HasMetadata a Identity => a -> Retry -> Decl
serviceD m r =
  Exts.patBindWhere (pvar name) newService binds
  where
    newService =
      recConstr
        (unqual "Core.Service")
        [ field
            (unqual "Core._svcAbbrev")
            (str abbrev),
          field
            (unqual "Core._svcSigner")
            (var signer),
          field
            (unqual "Core._svcPrefix")
            (m ^. endpointPrefix . Lens.to str),
          field
            (unqual "Core._svcVersion")
            (m ^. apiVersion . Lens.to str),
          field
            (unqual "Core._svcEndpoint")
            (Exts.app (var "Core.defaultEndpoint") (var name)),
          field
            (unqual "Core._svcTimeout")
            (Exts.app justE (Exts.intE 70)),
          field
            (unqual "Core._svcCheck")
            (var "Core.statusSuccess"),
          field
            (unqual "Core._svcError")
            (var ("Core." <> serviceError m) `Exts.app` str abbrev),
          field
            (unqual "Core._svcRetry")
            (var "retry")
        ]

    binds = [retry Exts.noBinds, check Exts.noBinds]

    retry =
      Exts.sfun (ident "retry") [] . unguarded $
        recConstr
          (r ^. delayType . Lens.to (unqual . mappend "Core."))
          [ field (unqual "Core._retryBase") (r ^. delayBase . Lens.to frac),
            field (unqual "Core._retryGrowth") (r ^. delayGrowth . Lens.to Exts.intE),
            field (unqual "Core._retryAttempts") (r ^. retryAttempts . Lens.to Exts.intE),
            field (unqual "Core._retryCheck") (var "check")
          ]

    check =
      Exts.sfun (ident "check") [ident "e"] . Exts.GuardedRhss () $
        mapMaybe policy (r ^.. retryPolicies . kvTraversal) ++ [otherE nothingE]
      where
        policy (k, v) = (`guardE` Exts.app justE (str k)) <$> policyE v

    name = m ^. serviceConfig

    abbrev = m ^. serviceAbbrev

    signer = m ^. signatureVersion . Lens.to (mappend "Sign." . sigToText)

policyE :: Policy -> Maybe Exp
policyE = \case
  When (WhenStatus (Just c) s) ->
    Just $
      Exts.appFun
        (var "Lens.has")
        [ Exts.paren $
            Exts.infixApp
              (Exts.app (var "Core.hasCode") (str c))
              "Core.."
              (Exts.app (var "Core.hasStatus") (Exts.intE s)),
          var "e"
        ]
  When (WhenStatus Nothing s) ->
    Just $
      Exts.appFun
        (var "Lens.has")
        [ Exts.paren $ Exts.app (var "Core.hasStatus") (Exts.intE s),
          var "e"
        ]
  _ -> Nothing

pagerD :: Id -> Pager Field -> Decl
pagerD n p =
  instD
    "Pager.AWSPager"
    n
    [ Exts.InsDecl () $
        Exts.sfun (ident "page") [ident "rq", ident "rs"] (rhs p) Exts.noBinds
    ]
  where
    rhs = \case
      Only t ->
        Exts.GuardedRhss
          ()
          [ stop (notationE False (_tokenOutput t)),
            other [t]
          ]
      --
      Next ks t ->
        Exts.GuardedRhss () $
          [stop (notationE False (_tokenOutput t))]
            ++ map (stop . notationE True) (Foldable.toList ks)
            ++ [other [t]]
      --
      Many k (t :| ts) ->
        Exts.GuardedRhss
          ()
          [ stop (notationE False k),
            check t ts,
            other (t : ts)
          ]

    stop x = guardE (Exts.app (var "Pager.stop") (rs x)) nothingE

    other = otherE . rq . Foldable.foldl' f (var "rq")
      where
        f :: Exp -> Token Field -> Exp
        f e x =
          Exts.infixApp e "Core.&"
            . Exts.infixApp (x ^. tokenInput . Lens.to (notationE False)) "Lens..~"
            $ rs (x ^. tokenOutput . Lens.to (notationE False))

    check t ts = guardE (Foldable.foldl' f (g t) ts) nothingE
      where
        f x = Exts.infixApp x "Core.&&" . g
        g y = Exts.app (var "Core.isNothing") $ rs (y ^. tokenOutput . Lens.to (notationE False))

    rq x = Exts.app justE x
    rs x = Exts.infixApp (var "rs") (qop (getterN x)) x

getterN :: Exp -> Text
getterN e = if go e then "Lens.^?" else "Lens.^."
  where
    go = \case
      Exts.App _ x y -> go x || go y
      Exts.InfixApp _ x _ y -> go x || go y
      Exts.Var _ (Exts.UnQual _ (Exts.Ident _ "Lens._last")) -> True
      Exts.Var _ (Exts.UnQual _ (Exts.Ident _ "Lens._Just")) -> True
      _ -> False

-- FIXME: doesn't support Maybe fields currently.
notationE :: Bool -> Notation Field -> Exp
notationE nested = \case
  Deref ks -> labels ks
  Infix _lens x -> notationE nested x
  Choice x y -> Exts.appFun (var "Core.choice") [branch x, branch y]
  where
    branch x =
      let e = notationE nested x
       in Exts.paren (Exts.app (var (getterN e)) e)

    labels (k :| ks)
      | null ks = label nested k
      | otherwise = Foldable.foldl' f (label nested k) ks
      where
        f e x = Exts.infixApp e "Core.." (label True x)

    label nest = \case
      Key f -> key nest f
      Last f -> Exts.infixApp (key nest f) "Core.." (var "Lens._last")
      Each f ->
        Exts.app (var "Lens.folding")
          . Exts.paren
          . Exts.app (var "Lens.concatOf")
          . Exts.infixApp (key nest f) "Core.."
          $ Exts.app (var "Lens.to") (var "Core.toList")

    key False f = lens f
    key True f
      | fieldMaybe f = Exts.infixApp (lens f) "Core.." (var "Lens._Just")
      | otherwise = lens f

    lens = fieldE . Text.unpack . fieldAccessor

requestD ::
  HasMetadata a Identity =>
  Config ->
  a ->
  HTTP ->
  (Ref, [Inst], [Field]) ->
  (Ref, [Field]) ->
  Decl
requestD c m h (a, as, fs) (b, bs) =
  instD
    "Core.AWSRequest"
    (identifier a)
    [ assocD (identifier a) "Rs" $
        (if responseShared then mappend "Types." else id) $
          typeId (identifier b),
      requestF c m h a as fs,
      funD "response" (responseE (m ^. protocol) b bs)
    ]
  where
    responseShared = isShared $ Comonad.extract $ _refAnn b

responseE :: Protocol -> Ref -> [Field] -> Exp
responseE p r fs = Exts.app (responseF p r fs) bdy
  where
    n = r ^. Lens.to identifier
    s = r ^. refAnn . Lens.to Comonad.extract

    bdy :: Exp
    bdy
      | null fs = var (ctorId n)
      | isShared s, all fieldBody fs = lam parseAll
      | otherwise = lam . ctorE n $ map parseField fs

    lam :: Exp -> Exp
    lam = Exts.lamE [Exts.pvar "s", Exts.pvar "h", Exts.pvar "x"]

    parseField :: Field -> Exp
    parseField x =
      case fieldLocation x of
        Just Headers -> parseHeadersE p x
        Just Header -> parseHeadersE p x
        Just StatusCode -> parseStatusE x
        Just Body | body -> Exts.app pureE (var "x")
        Nothing | body -> Exts.app pureE (var "x")
        _ -> parseProto x

    parseProto :: Field -> Exp
    parseProto f =
      case p of
        _ | f ^. fieldPayload -> parseOne f
        Json -> parseJSONE p pJE pJEMay pJEDef f
        RestJson -> parseJSONE p pJE pJEMay pJEDef f
        ApiGateway -> parseJSONE p pJE pJEMay pJEDef f
        _ -> parseXMLE p f

    parseOne :: Field -> Exp
    parseOne f
      | fieldLit f =
        if fieldIsParam f
          then Exts.app (var "Core.pure") (var "x")
          else Exts.app (var "Core.pure") (Exts.paren (Exts.app (var "Core.Just") (var "x")))
      -- This ensures anything which is set as a payload,
      -- but is a primitive type is just consumed as a bytestring.
      | otherwise = parseAll

    parseAll :: Exp
    parseAll =
      flip Exts.app (var "x") $
        if any fieldLitPayload fs
          then var "Core.pure"
          else case p of
            Json -> var "Core.eitherParseJSON"
            RestJson -> var "Core.eitherParseJSON"
            ApiGateway -> var "Core.eitherParseJSON"
            _ -> var "Core.parseXML"

    body = any fieldStream fs

instanceD :: Protocol -> Id -> Inst -> Maybe Decl
instanceD p n = \case
  FromXML fs -> Just (fromXMLD p n fs)
  FromJSON fs -> Just (fromJSOND p n fs)
  ToElement ns e -> Just (toElementD p n ns e)
  ToXML fs -> Just (toXMLD p n fs)
  ToJSON fs -> Just (toJSOND p n fs)
  ToHeaders {} -> Nothing
  ToPath {} -> Nothing
  ToQuery {} -> Nothing
  ToBody {} -> Nothing

-- FIXME: merge D + E constructors where possible
fromXMLD :: Protocol -> Id -> [Field] -> Decl
fromXMLD p n = decodeD "Core.FromXML" n "parseXML" (ctorE n) . map (parseXMLE p)

fromJSOND :: Protocol -> Id -> [Field] -> Decl
fromJSOND p n fs = instD1 "Core.FromJSON" n with
  where
    with =
      funD "parseJSON" $
        Exts.app
          (Exts.app (var "Core.withObject") (str (typeId n)))
          (Exts.lamE [Exts.pvar "x"] es)

    es = ctorE n $ map (parseJSONE p pJ pJMay pJDef) fs

toElementD :: Protocol -> Id -> Maybe Text -> Either Text Field -> Decl
toElementD p n ns =
  instD1 "Core.ToElement" n . funD "toElement" . toElementE p ns

toXMLD :: Protocol -> Id -> [Field] -> Decl
toXMLD p n =
  instD1 "Core.ToXML" n
    . wildcardD n "toXML" enc memptyE
    . map (Right . toXMLE p)
  where
    enc = mconcatE . map (either id id)

toJSOND :: Protocol -> Id -> [Field] -> Decl
toJSOND p n =
  instD1 "Core.ToJSON" n
    . wildcardD n "toJSON" enc (Exts.paren $ Exts.app (var "Core.Object") memptyE)
    . map (Right . toJSONE p)
  where
    enc =
      Exts.app (var "Core.object")
        . Exts.app (var "Core.catMaybes")
        . Exts.listE
        . map (either id id)

toQueryE :: Protocol -> [Either (Text, Maybe Text) Field] -> Exp
toQueryE protocol' = \case
  [] -> var "Core.mempty"
  xs -> mconcatE (map (either pair field) xs)
  where
    pair = \case
      (k, Nothing) -> str k
      (k, Just v) -> encodeE k toQ (impliesE v (var "Core.ByteString"))

    field =
      toGenericE protocol' toQ "Core.toQuery" toQMap toQList

toHeadersE :: Protocol -> [Either (Text, Text) Field] -> Exp
toHeadersE protocol' = \case
  [] -> var "[]"
  xs -> Exts.listE (map (Exts.tuple . either pair field) xs)
  where
    pair (k, v) =
      [ str k,
        str v
      ]

    field f =
      [ str (memberName protocol' Input f),
        Exts.app (var "Core.toBS") (var (fieldAccessor f))
      ]

toPathE :: [Either Text Field] -> Exp
toPathE = \case
  [] -> str "/"
  [Left text] -> str text
  x : xs -> foldr mappendApp (toText x) xs
    where
      mappendApp a e =
        Exts.infixApp e "Core.<>" (toText a)

      toText =
        either str (Exts.app (var "Core.toText") . var . fieldAccessor)

wildcardD ::
  Id ->
  Text ->
  ([Either a b] -> Exp) ->
  Exp ->
  [Either a b] ->
  InstDecl
wildcardD n f enc xs = \case
  [] -> constD f xs
  es
    | not (any isRight es) -> funD f $ Exts.app (var "Core.const") (enc es)
    | otherwise -> Exts.InsDecl () (Exts.FunBind () [match prec es])
  where
    match p es =
      Exts.Match () (ident f) [p] (unguarded (enc es)) Exts.noBinds

    prec = Exts.PRec () (unqual (ctorId n)) [Exts.PFieldWildcard ()]

instD1 :: Text -> Id -> InstDecl -> Decl
instD1 c n = instD c n . (: [])

instD :: Text -> Id -> [InstDecl] -> Decl
instD c n = Exts.InstDecl () Nothing rule . Just
  where
    rule =
      Exts.IRule () Nothing Nothing $
        Exts.IHApp () (Exts.IHCon () (unqual c)) (tycon (typeId n))

funD :: Text -> Exp -> InstDecl
funD f = Exts.InsDecl () . Exts.patBind (pvar f)

funArgsD :: Text -> [Text] -> Exp -> InstDecl
funArgsD f as e =
  Exts.InsDecl () $
    Exts.sfun (ident f) (map ident as) (unguarded e) Exts.noBinds

assocD :: Id -> Text -> Text -> InstDecl
assocD n x y =
  Exts.InsType () (tyapp (tycon x) (tycon (typeId n))) (tycon y)

decodeD :: Text -> Id -> Text -> ([a] -> Exp) -> [a] -> Decl
decodeD c n f dec =
  instD1 c n . \case
    [] -> funD f . Exts.app (var "Core.const") $ dec []
    es -> funArgsD f ["x"] (dec es)

constD :: Text -> Exp -> InstDecl
constD f = funArgsD f [] . Exts.app (var "Core.const")

parseXMLE :: Protocol -> Field -> Exp
parseXMLE p f = case outputNames p f of
  NMap mn e k v -> unflatE mn pXMap [str e, str k, str v]
  NList mn i
    | fieldMonoid f -> unflatE mn pXList [str i]
    | otherwise -> unflatE mn pXList1 [str i]
  NName n
    | req -> decodeE x pX n
    | otherwise -> decodeE x pXMay n
  where
    fmapDecodeE = "953gg"

    unflatE Nothing g xs
      | req = Exts.appFun g (xs ++ [x])
      | otherwise = Exts.app (may (Exts.appFun g xs)) x
    unflatE (Just n) g xs =
      Exts.infixApp (defaultMonoidE x n pXMay pXDef) "Core.>>=" $
        if req
          then Exts.appFun g xs
          else may (Exts.appFun g xs)

    may = Exts.app (var "Core.may")
    req = not (fieldMaybe f)

    x = var "x"

parseJSONE :: Protocol -> QOp -> QOp -> QOp -> Field -> Exp
parseJSONE p d dm dd f
  | fieldMonoid f = defaultMonoidE x n dm dd
  | fieldMaybe f = decodeE x dm n
  | otherwise = decodeE x d n
  where
    n = memberName p Output f
    x = var "x"

parseHeadersE :: Protocol -> Field -> Exp
parseHeadersE p f
  | TMap {} <- typeOf f = Exts.appFun pHMap [str n, h]
  | fieldMaybe f = decodeE h pHMay n
  | otherwise = decodeE h pH n
  where
    n = memberName p Output f
    h = var "h"

parseStatusE :: Field -> Exp
parseStatusE f
  | fieldMaybe f = Exts.app pureE (Exts.app justE v)
  | otherwise = Exts.app pureE v
  where
    v = Exts.paren $ Exts.app (var "Core.fromEnum") (var "s")

toXMLE :: Protocol -> Field -> Exp
toXMLE p f = toGenericE p opX "Core.toXML" toXMap toXList f
  where
    opX
      | f ^. fieldRef . refXMLAttribute = toXAttr
      | otherwise = toX

toElementE :: Protocol -> Maybe Text -> Either Text Field -> Exp
toElementE p ns = either (`root` []) node
  where
    root n = Exts.appFun (var "Core.mkElement") . (str (qual n) :)

    node f = root n [var "Core..", var (fieldAccessor f)]
      where
        n = memberName p Input f

    qual n
      | Just x <- ns = "{" <> x <> "}" <> n
      | otherwise = n

toJSONE :: Protocol -> Field -> Exp
toJSONE p f
  | fieldMaybe f = Exts.infixApp (Exts.paren (Exts.app (str n) o)) "Core.<$>" a
  | otherwise = Exts.app (var "Core.Just") (encodeE n toJ a)
  where
    n = memberName p Input f
    a = var (fieldAccessor f)
    o = var (Text.pack (Exts.prettyPrint toJ))

toBodyE :: Field -> Exp
toBodyE = Exts.infixApp (var "Core.toBody") "Core.." . var . fieldAccessor

toGenericE :: Protocol -> QOp -> Text -> Exp -> Exp -> Field -> Exp
toGenericE p toO toF toM toL f =
  case inputNames p f of
    NMap mn e k v
      | fieldMaybe f ->
        flatE mn toO . Exts.app (var toF) $
          Exts.appFun toM [str e, str k, str v, var "Core.<$>", a]
      | otherwise ->
        flatE mn toO $
          Exts.appFun toM [str e, str k, str v, a]
    NList mn i
      | fieldMaybe f ->
        flatE mn toO . Exts.app (var toF) $
          Exts.appFun toL [str i, var "Core.<$>", a]
      | otherwise ->
        flatE mn toO $
          Exts.appFun toL [str i, a]
    NName n ->
      encodeE n toO a
  where
    a = var (fieldAccessor f)

fieldE :: String -> Exp
fieldE name =
  Exts.app (var "Lens.field") $
    Exts.TypeApp () $
      Exts.TyPromoted () (Exts.PromotedString () name name)

pureE :: Exp
pureE = var "Core.pure"

nothingE :: Exp
nothingE = var "Core.Nothing"

justE :: Exp
justE = var "Core.Just"

otherE :: Exp -> GuardedRhs
otherE = guardE (var "Core.otherwise")

guardE :: Exp -> Exp -> GuardedRhs
guardE x = Exts.GuardedRhs () [Exts.qualStmt x]

ctorE :: Id -> [Exp] -> Exp
ctorE n = seqE (var (ctorId n)) . map Exts.paren

memptyE :: Exp
memptyE = var "Core.mempty"

mconcatE :: [Exp] -> Exp
mconcatE = Exts.app (var "Core.mconcat") . Exts.listE

seqE :: Exp -> [Exp] -> Exp
seqE l [] = Exts.app pureE l
seqE l (r : rs) = Exts.infixApp l "Core.<$>" (infixE r "Core.<*>" rs)

infixE :: Exp -> QOp -> [Exp] -> Exp
infixE l _ [] = l
infixE l o (r : rs) = infixE (Exts.infixApp l o r) o rs

impliesE :: Text -> Exp -> Exp
impliesE x y = Exts.paren (Exts.infixApp (str x) "::" y)

flatE :: Maybe Text -> QOp -> Exp -> Exp
flatE (Just n) o = encodeE n o
flatE Nothing _ = id

defaultMonoidE :: Exp -> Text -> QOp -> QOp -> Exp
defaultMonoidE v n dm dd =
  Exts.infixApp (Exts.infixApp v dm (str n)) dd memptyE

encodeE :: Text -> QOp -> Exp -> Exp
encodeE n = Exts.infixApp (str n)

decodeE :: Exp -> QOp -> Text -> Exp
decodeE v o = Exts.infixApp v o . str

memberName :: Protocol -> Direction -> Field -> Text
memberName p d f = Protocol.memberName p d (f ^. fieldId) (f ^. fieldRef)

inputNames, outputNames :: Protocol -> Field -> Names
inputNames p f = Protocol.nestedNames p Input (f ^. fieldId) (f ^. fieldRef)
outputNames p f = Protocol.nestedNames p Output (f ^. fieldId) (f ^. fieldRef)

requestF ::
  HasMetadata a Identity =>
  Config ->
  a ->
  HTTP ->
  Ref ->
  [Inst] ->
  [Field] ->
  InstDecl
requestF cfg meta http ref instances fields =
  Exts.InsDecl () (Exts.FunBind () [match])
  where
    match =
      Exts.Match () (ident "request") [wildcard] (unguarded rhs) Nothing

    wildcard =
      Exts.PAsPat () (ident "x") $
        Exts.PRec () (unqual (ctorId (identifier ref))) $
          if null fields
            then []
            else [Exts.PFieldWildcard ()]

    rhs = maybe newRequest (Foldable.foldr' applyPlugin newRequest) plugins

    plugins =
      HashMap.lookup (identifier ref) (cfg ^. operationPlugins)

    applyPlugin x =
      Exts.infixApp (var ("Request." <> x)) "Core.$"

    newRequest =
      case listToMaybe (mapMaybe bodyFunction instances) of
        Nothing -> record queryVar (headersVar []) (str "")
        Just mk -> mk

    bodyFunction = \case
      ToBody field ->
        Just $
          record
            queryVar
            (headersVar [])
            (Exts.app (var (fieldAccessor field)) (var "x"))
      --
      ToJSON {} ->
        Just $
          record
            queryVar
            (headersVar [])
            (Exts.app (var "Core.toJSONBody") (var "x"))
      --
      ToElement {} ->
        Just $
          record
            queryVar
            (headersVar [])
            (Exts.app (var "Core.toXMLBody") (var "x"))
      --
      _other
        | method' == POST && (protocol' == Query || protocol' == Ec2) ->
          Just $
            record
              (var "Core.mempty")
              (headersVar [Left ("Content-Type", hFormEncoded)])
              (Exts.app (var "Core.toQueryBody") queryVar)
      --
      --
      _other ->
        Nothing

    toBody =
      Exts.app (var "Core.toBody")

    hFormEncoded =
      "application/x-www-form-urlencoded; charset=utf-8"

    record query headers body =
      recConstr
        (unqual "Core.Request")
        [ field
            (unqual "Core._rqService")
            (var ("Types." <> meta ^. serviceConfig)),
          field
            (unqual "Core._rqMethod")
            (var ("Request." <> methodToText method')),
          field
            (unqual "Core._rqPath")
            (Exts.app (var "Core.rawPath") pathVar),
          field
            (unqual "Core._rqQuery")
            query,
          field
            (unqual "Core._rqHeaders")
            headers,
          field
            (unqual "Core._rqBody")
            body
        ]

    pathVar =
      newVar [toPathE xs | ToPath xs <- instances]

    headersVar extra =
      newVar [toHeadersE protocol' (extra ++ xs) | ToHeaders xs <- instances]

    queryVar =
      newVar [toQueryE protocol' xs | ToQuery xs <- instances]

    newVar =
      fromMaybe (var "Core.mempty")
        . listToMaybe

    protocol' = meta ^. protocol
    method' = http ^. method

-- FIXME: take method into account for responses, such as HEAD etc, particuarly
-- when the body might be totally empty.
responseF :: Protocol -> RefF a -> [Field] -> Exp
responseF p r fs
  | null fs = var "Response.receiveNull"
  | any fieldStream fs = var "Response.receiveBody"
  | any fieldLitPayload fs = var "Response.receiveBytes"
  | Just x <- r ^. refResultWrapper = Exts.app (var (suf <> "Wrapper")) (str x)
  | all (not . fieldBody) fs = var "Response.receiveEmpty"
  | otherwise = var suf
  where
    suf = "Response.receive" <> Protocol.suffix p

waiterS :: Id -> Waiter a -> Decl
waiterS n w =
  Exts.TypeSig () [ident c] $ tyapp (tycon "Waiter.Wait") (tycon k)
  where
    k = w ^. waitOperation . Lens.to typeId
    c = smartCtorId n

waiterD :: Id -> Waiter Field -> Decl
waiterD n w =
  Exts.sfun (ident c) [] (unguarded newWait) Exts.noBinds
  where
    c = smartCtorId n

    newWait =
      recConstr
        (unqual "Waiter.Wait")
        [ field (unqual "Waiter._waitName") (str (memberId n)),
          field (unqual "Waiter._waitAttempts") (w ^. waitAttempts . Lens.to Exts.intE),
          field (unqual "Waiter._waitDelay") (w ^. waitDelay . Lens.to Exts.intE),
          field (unqual "Waiter._waitAcceptors")
            . Exts.listE
            $ map match (w ^. waitAcceptors)
        ]

    match x =
      case (_acceptMatch x, _acceptArgument x) of
        (_, Just (Infix lens _)) ->
          Exts.appFun (var ("Waiter." <> lens)) (expect x : criteria x : arguments x)
        (Path, _) ->
          Exts.appFun (var "Waiter.matchAll") (expect x : criteria x : arguments x)
        (PathAll, _) ->
          Exts.appFun (var "Waiter.matchAll") (expect x : criteria x : arguments x)
        (PathAny, _) ->
          Exts.appFun (var "Waiter.matchAny") (expect x : criteria x : arguments x)
        (Status, _) ->
          Exts.appFun (var "Waiter.matchStatus") (expect x : criteria x : arguments x)
        (Error, _) ->
          Exts.appFun (var "Waiter.matchError") (expect x : criteria x : arguments x)

    expect x =
      case _acceptExpect x of
        Status' i -> Exts.intE i
        Boolean b -> con $ mappend "Core." $ Text.pack $ show b
        Textual t -> str t

    criteria x =
      case _acceptCriteria x of
        Retry -> var "Waiter.AcceptRetry"
        Success -> var "Waiter.AcceptSuccess"
        Failure -> var "Waiter.AcceptFailure"

    arguments x = maybeToList (notationE True <$> _acceptArgument x)

-- where
--   go y =
--     case _acceptExpect x of
--       Textual {} ->
--         Exts.infixApp y "Core.." (Exts.app (var "Lens.to") (var "Core.toText"))
--       _ -> y

internal, external :: HasMetadata a Identity => a -> Field -> Type
internal m f = directed m Nothing (_fieldDirection f) f
external m f = directed m Nothing (_fieldDirection f) f

directed ::
  ( HasMetadata a Identity,
    TypeOf b
  ) =>
  a ->
  Maybe Text ->
  Maybe Direction ->
  b ->
  Type
directed m recursive d (typeOf -> t) =
  case t of
    TType x _
      | Just x == recursive -> tycon x
      | otherwise -> tycon ("Types." <> x)
    TLit x -> literal (m ^. timestampFormat . _Identity) x
    TNatural -> tycon "Core.Natural"
    TStream -> tycon stream
    TSensitive x -> sensitive (go x)
    TMaybe x -> may x
    TList x -> Exts.TyList () (go x)
    TList1 x -> list1 (go x)
    TMap k v -> hmap k v
  where
    go = directed m recursive d

    sensitive = tyapp (tycon "Core.Sensitive")

    may = tyapp (tycon "Core.Maybe") . go

    list1 = tyapp (tycon "Core.NonEmpty")

    hmap k v =
      tyapp (tyapp (tycon "Core.HashMap") (go k)) (Exts.TyParen () (go v))

    stream =
      case d of
        Nothing -> "Core.RsBody"
        Just Output -> "Core.RsBody" -- Response stream.
        Just Input
          -- If the signer supports chunked encoding, both body types are accepted.
          | m ^. signatureVersion == S3 -> "Core.RqBody"
          -- Otherwise only a pre-hashed body is accepted.
          | otherwise -> "Core.HashedBody"

literal :: Timestamp -> Lit -> Type
literal ts = \case
  Bool -> tycon "Core.Bool"
  Int -> tycon "Core.Int"
  Long -> tycon "Core.Integer"
  Double -> tycon "Core.Double"
  Text -> tycon "Core.Text"
  Bytes -> tycon "Core.ByteString"
  Base64 -> tycon "Core.Base64"
  Time mts -> tycon ("Core." <> tsToText (fromMaybe ts mts))
  JsonValue -> tycon "Core.ByteString"

tyvar :: Text -> Type
tyvar = Exts.TyVar () . ident

tycon :: Text -> Type
tycon = Exts.TyCon () . unqual

tyapp :: Type -> Type -> Type
tyapp a b = Exts.TyApp () a (typaren b)

typaren :: Type -> Type
typaren = \case
  t@Exts.TyApp {} -> Exts.TyParen () t
  t -> t

con :: Text -> Exp
con = Exts.Con () . unqual

qop :: Text -> QOp
qop = fromString . Text.unpack

frac :: Rational -> Exp
frac n = Exts.Lit () (Exts.Frac () n (show n))

str :: Text -> Exp
str = Exts.strE . Text.unpack

int :: Integer -> Exp
int = Exts.intE

pvar :: Text -> Pat
pvar = Exts.pvar . ident

var :: Text -> Exp
var = Exts.var . ident

param :: Int -> Name
param = Exts.name . mappend "p" . show

unqual :: Text -> QName
unqual = Exts.UnQual () . ident

ident :: Text -> Name
ident = Exts.name . Text.unpack

field :: QName -> Exp -> FieldUpdate
field = Exts.FieldUpdate ()

unguarded :: Exp -> Rhs
unguarded = Exts.UnGuardedRhs ()

recConstr :: QName -> [FieldUpdate] -> Exp
recConstr = Exts.RecConstr ()

-- Orphans

instance IsString QOp where
  fromString = Exts.op . Exts.sym

instance IsString Name where
  fromString = ident . fromString
