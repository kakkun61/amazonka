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
-- Module      : Network.AWS.MacieV2.Types.SimpleCriterionKeyForJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.SimpleCriterionKeyForJob
  ( SimpleCriterionKeyForJob
      ( ..,
        SimpleCriterionKeyForJob_ACCOUNT_ID,
        SimpleCriterionKeyForJob_S3_BUCKET_EFFECTIVE_PERMISSION,
        SimpleCriterionKeyForJob_S3_BUCKET_NAME,
        SimpleCriterionKeyForJob_S3_BUCKET_SHARED_ACCESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The property to use in a condition that determines whether an S3 bucket
-- is included or excluded from a classification job. Valid values are:
newtype SimpleCriterionKeyForJob = SimpleCriterionKeyForJob'
  { fromSimpleCriterionKeyForJob ::
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

pattern SimpleCriterionKeyForJob_ACCOUNT_ID :: SimpleCriterionKeyForJob
pattern SimpleCriterionKeyForJob_ACCOUNT_ID = SimpleCriterionKeyForJob' "ACCOUNT_ID"

pattern SimpleCriterionKeyForJob_S3_BUCKET_EFFECTIVE_PERMISSION :: SimpleCriterionKeyForJob
pattern SimpleCriterionKeyForJob_S3_BUCKET_EFFECTIVE_PERMISSION = SimpleCriterionKeyForJob' "S3_BUCKET_EFFECTIVE_PERMISSION"

pattern SimpleCriterionKeyForJob_S3_BUCKET_NAME :: SimpleCriterionKeyForJob
pattern SimpleCriterionKeyForJob_S3_BUCKET_NAME = SimpleCriterionKeyForJob' "S3_BUCKET_NAME"

pattern SimpleCriterionKeyForJob_S3_BUCKET_SHARED_ACCESS :: SimpleCriterionKeyForJob
pattern SimpleCriterionKeyForJob_S3_BUCKET_SHARED_ACCESS = SimpleCriterionKeyForJob' "S3_BUCKET_SHARED_ACCESS"

{-# COMPLETE
  SimpleCriterionKeyForJob_ACCOUNT_ID,
  SimpleCriterionKeyForJob_S3_BUCKET_EFFECTIVE_PERMISSION,
  SimpleCriterionKeyForJob_S3_BUCKET_NAME,
  SimpleCriterionKeyForJob_S3_BUCKET_SHARED_ACCESS,
  SimpleCriterionKeyForJob'
  #-}
