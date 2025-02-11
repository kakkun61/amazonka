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
-- Module      : Network.AWS.MediaConnect.Types.Colorimetry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.Colorimetry
  ( Colorimetry
      ( ..,
        Colorimetry_BT2020,
        Colorimetry_BT2100,
        Colorimetry_BT601,
        Colorimetry_BT709,
        Colorimetry_ST2065_1,
        Colorimetry_ST2065_3,
        Colorimetry_XYZ
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype Colorimetry = Colorimetry'
  { fromColorimetry ::
      Core.Text
  }
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

pattern Colorimetry_BT2020 :: Colorimetry
pattern Colorimetry_BT2020 = Colorimetry' "BT2020"

pattern Colorimetry_BT2100 :: Colorimetry
pattern Colorimetry_BT2100 = Colorimetry' "BT2100"

pattern Colorimetry_BT601 :: Colorimetry
pattern Colorimetry_BT601 = Colorimetry' "BT601"

pattern Colorimetry_BT709 :: Colorimetry
pattern Colorimetry_BT709 = Colorimetry' "BT709"

pattern Colorimetry_ST2065_1 :: Colorimetry
pattern Colorimetry_ST2065_1 = Colorimetry' "ST2065-1"

pattern Colorimetry_ST2065_3 :: Colorimetry
pattern Colorimetry_ST2065_3 = Colorimetry' "ST2065-3"

pattern Colorimetry_XYZ :: Colorimetry
pattern Colorimetry_XYZ = Colorimetry' "XYZ"

{-# COMPLETE
  Colorimetry_BT2020,
  Colorimetry_BT2100,
  Colorimetry_BT601,
  Colorimetry_BT709,
  Colorimetry_ST2065_1,
  Colorimetry_ST2065_3,
  Colorimetry_XYZ,
  Colorimetry'
  #-}
