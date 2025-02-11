{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AccessAnalyzer.Types.Locale
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.Locale
  ( Locale
      ( ..,
        Locale_DE,
        Locale_EN,
        Locale_ES,
        Locale_FR,
        Locale_IT,
        Locale_JA,
        Locale_KO,
        Locale_PT_BR,
        Locale_ZH_CN,
        Locale_ZH_TW
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Locale = Locale' {fromLocale :: Core.Text}
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern Locale_DE :: Locale
pattern Locale_DE = Locale' "DE"

pattern Locale_EN :: Locale
pattern Locale_EN = Locale' "EN"

pattern Locale_ES :: Locale
pattern Locale_ES = Locale' "ES"

pattern Locale_FR :: Locale
pattern Locale_FR = Locale' "FR"

pattern Locale_IT :: Locale
pattern Locale_IT = Locale' "IT"

pattern Locale_JA :: Locale
pattern Locale_JA = Locale' "JA"

pattern Locale_KO :: Locale
pattern Locale_KO = Locale' "KO"

pattern Locale_PT_BR :: Locale
pattern Locale_PT_BR = Locale' "PT_BR"

pattern Locale_ZH_CN :: Locale
pattern Locale_ZH_CN = Locale' "ZH_CN"

pattern Locale_ZH_TW :: Locale
pattern Locale_ZH_TW = Locale' "ZH_TW"

{-# COMPLETE
  Locale_DE,
  Locale_EN,
  Locale_ES,
  Locale_FR,
  Locale_IT,
  Locale_JA,
  Locale_KO,
  Locale_PT_BR,
  Locale_ZH_CN,
  Locale_ZH_TW,
  Locale'
  #-}
