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
-- Module      : Network.AWS.MediaConnect.Types.EncodingName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.EncodingName
  ( EncodingName
      ( ..,
        EncodingName_Jxsv,
        EncodingName_Pcm,
        EncodingName_Raw,
        EncodingName_Smpte291
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype EncodingName = EncodingName'
  { fromEncodingName ::
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

pattern EncodingName_Jxsv :: EncodingName
pattern EncodingName_Jxsv = EncodingName' "jxsv"

pattern EncodingName_Pcm :: EncodingName
pattern EncodingName_Pcm = EncodingName' "pcm"

pattern EncodingName_Raw :: EncodingName
pattern EncodingName_Raw = EncodingName' "raw"

pattern EncodingName_Smpte291 :: EncodingName
pattern EncodingName_Smpte291 = EncodingName' "smpte291"

{-# COMPLETE
  EncodingName_Jxsv,
  EncodingName_Pcm,
  EncodingName_Raw,
  EncodingName_Smpte291,
  EncodingName'
  #-}
