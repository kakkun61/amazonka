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
-- Module      : Network.AWS.IoTSiteWise.Types.PropertyDataType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.PropertyDataType
  ( PropertyDataType
      ( ..,
        PropertyDataType_BOOLEAN,
        PropertyDataType_DOUBLE,
        PropertyDataType_INTEGER,
        PropertyDataType_STRING,
        PropertyDataType_STRUCT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype PropertyDataType = PropertyDataType'
  { fromPropertyDataType ::
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

pattern PropertyDataType_BOOLEAN :: PropertyDataType
pattern PropertyDataType_BOOLEAN = PropertyDataType' "BOOLEAN"

pattern PropertyDataType_DOUBLE :: PropertyDataType
pattern PropertyDataType_DOUBLE = PropertyDataType' "DOUBLE"

pattern PropertyDataType_INTEGER :: PropertyDataType
pattern PropertyDataType_INTEGER = PropertyDataType' "INTEGER"

pattern PropertyDataType_STRING :: PropertyDataType
pattern PropertyDataType_STRING = PropertyDataType' "STRING"

pattern PropertyDataType_STRUCT :: PropertyDataType
pattern PropertyDataType_STRUCT = PropertyDataType' "STRUCT"

{-# COMPLETE
  PropertyDataType_BOOLEAN,
  PropertyDataType_DOUBLE,
  PropertyDataType_INTEGER,
  PropertyDataType_STRING,
  PropertyDataType_STRUCT,
  PropertyDataType'
  #-}
