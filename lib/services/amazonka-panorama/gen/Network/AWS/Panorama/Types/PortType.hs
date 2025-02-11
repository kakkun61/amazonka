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
-- Module      : Network.AWS.Panorama.Types.PortType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.PortType
  ( PortType
      ( ..,
        PortType_BOOLEAN,
        PortType_FLOAT32,
        PortType_INT32,
        PortType_MEDIA,
        PortType_STRING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype PortType = PortType'
  { fromPortType ::
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

pattern PortType_BOOLEAN :: PortType
pattern PortType_BOOLEAN = PortType' "BOOLEAN"

pattern PortType_FLOAT32 :: PortType
pattern PortType_FLOAT32 = PortType' "FLOAT32"

pattern PortType_INT32 :: PortType
pattern PortType_INT32 = PortType' "INT32"

pattern PortType_MEDIA :: PortType
pattern PortType_MEDIA = PortType' "MEDIA"

pattern PortType_STRING :: PortType
pattern PortType_STRING = PortType' "STRING"

{-# COMPLETE
  PortType_BOOLEAN,
  PortType_FLOAT32,
  PortType_INT32,
  PortType_MEDIA,
  PortType_STRING,
  PortType'
  #-}
