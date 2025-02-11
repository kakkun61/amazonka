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
-- Module      : Network.AWS.MediaConnect.Types.Tcs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.Tcs
  ( Tcs
      ( ..,
        Tcs_BT2100LINHLG,
        Tcs_BT2100LINPQ,
        Tcs_DENSITY,
        Tcs_HLG,
        Tcs_LINEAR,
        Tcs_PQ,
        Tcs_SDR,
        Tcs_ST2065_1,
        Tcs_ST428_1
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Tcs = Tcs' {fromTcs :: Core.Text}
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

pattern Tcs_BT2100LINHLG :: Tcs
pattern Tcs_BT2100LINHLG = Tcs' "BT2100LINHLG"

pattern Tcs_BT2100LINPQ :: Tcs
pattern Tcs_BT2100LINPQ = Tcs' "BT2100LINPQ"

pattern Tcs_DENSITY :: Tcs
pattern Tcs_DENSITY = Tcs' "DENSITY"

pattern Tcs_HLG :: Tcs
pattern Tcs_HLG = Tcs' "HLG"

pattern Tcs_LINEAR :: Tcs
pattern Tcs_LINEAR = Tcs' "LINEAR"

pattern Tcs_PQ :: Tcs
pattern Tcs_PQ = Tcs' "PQ"

pattern Tcs_SDR :: Tcs
pattern Tcs_SDR = Tcs' "SDR"

pattern Tcs_ST2065_1 :: Tcs
pattern Tcs_ST2065_1 = Tcs' "ST2065-1"

pattern Tcs_ST428_1 :: Tcs
pattern Tcs_ST428_1 = Tcs' "ST428-1"

{-# COMPLETE
  Tcs_BT2100LINHLG,
  Tcs_BT2100LINPQ,
  Tcs_DENSITY,
  Tcs_HLG,
  Tcs_LINEAR,
  Tcs_PQ,
  Tcs_SDR,
  Tcs_ST2065_1,
  Tcs_ST428_1,
  Tcs'
  #-}
