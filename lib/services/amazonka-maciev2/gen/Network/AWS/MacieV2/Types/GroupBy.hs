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
-- Module      : Network.AWS.MacieV2.Types.GroupBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.GroupBy
  ( GroupBy
      ( ..,
        GroupBy_ClassificationDetails_jobId,
        GroupBy_ResourcesAffected_s3Bucket_name,
        GroupBy_Severity_description,
        GroupBy_Type
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype GroupBy = GroupBy' {fromGroupBy :: Core.Text}
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

pattern GroupBy_ClassificationDetails_jobId :: GroupBy
pattern GroupBy_ClassificationDetails_jobId = GroupBy' "classificationDetails.jobId"

pattern GroupBy_ResourcesAffected_s3Bucket_name :: GroupBy
pattern GroupBy_ResourcesAffected_s3Bucket_name = GroupBy' "resourcesAffected.s3Bucket.name"

pattern GroupBy_Severity_description :: GroupBy
pattern GroupBy_Severity_description = GroupBy' "severity.description"

pattern GroupBy_Type :: GroupBy
pattern GroupBy_Type = GroupBy' "type"

{-# COMPLETE
  GroupBy_ClassificationDetails_jobId,
  GroupBy_ResourcesAffected_s3Bucket_name,
  GroupBy_Severity_description,
  GroupBy_Type,
  GroupBy'
  #-}
