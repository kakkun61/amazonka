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
-- Module      : Network.AWS.LakeFormation.Types.DataLakeResourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LakeFormation.Types.DataLakeResourceType
  ( DataLakeResourceType
      ( ..,
        DataLakeResourceType_CATALOG,
        DataLakeResourceType_DATABASE,
        DataLakeResourceType_DATA_LOCATION,
        DataLakeResourceType_LF_TAG,
        DataLakeResourceType_LF_TAG_POLICY,
        DataLakeResourceType_LF_TAG_POLICY_DATABASE,
        DataLakeResourceType_LF_TAG_POLICY_TABLE,
        DataLakeResourceType_TABLE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DataLakeResourceType = DataLakeResourceType'
  { fromDataLakeResourceType ::
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

pattern DataLakeResourceType_CATALOG :: DataLakeResourceType
pattern DataLakeResourceType_CATALOG = DataLakeResourceType' "CATALOG"

pattern DataLakeResourceType_DATABASE :: DataLakeResourceType
pattern DataLakeResourceType_DATABASE = DataLakeResourceType' "DATABASE"

pattern DataLakeResourceType_DATA_LOCATION :: DataLakeResourceType
pattern DataLakeResourceType_DATA_LOCATION = DataLakeResourceType' "DATA_LOCATION"

pattern DataLakeResourceType_LF_TAG :: DataLakeResourceType
pattern DataLakeResourceType_LF_TAG = DataLakeResourceType' "LF_TAG"

pattern DataLakeResourceType_LF_TAG_POLICY :: DataLakeResourceType
pattern DataLakeResourceType_LF_TAG_POLICY = DataLakeResourceType' "LF_TAG_POLICY"

pattern DataLakeResourceType_LF_TAG_POLICY_DATABASE :: DataLakeResourceType
pattern DataLakeResourceType_LF_TAG_POLICY_DATABASE = DataLakeResourceType' "LF_TAG_POLICY_DATABASE"

pattern DataLakeResourceType_LF_TAG_POLICY_TABLE :: DataLakeResourceType
pattern DataLakeResourceType_LF_TAG_POLICY_TABLE = DataLakeResourceType' "LF_TAG_POLICY_TABLE"

pattern DataLakeResourceType_TABLE :: DataLakeResourceType
pattern DataLakeResourceType_TABLE = DataLakeResourceType' "TABLE"

{-# COMPLETE
  DataLakeResourceType_CATALOG,
  DataLakeResourceType_DATABASE,
  DataLakeResourceType_DATA_LOCATION,
  DataLakeResourceType_LF_TAG,
  DataLakeResourceType_LF_TAG_POLICY,
  DataLakeResourceType_LF_TAG_POLICY_DATABASE,
  DataLakeResourceType_LF_TAG_POLICY_TABLE,
  DataLakeResourceType_TABLE,
  DataLakeResourceType'
  #-}
