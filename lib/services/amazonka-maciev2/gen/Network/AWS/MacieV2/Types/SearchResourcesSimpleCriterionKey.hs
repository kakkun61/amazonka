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
-- Module      : Network.AWS.MacieV2.Types.SearchResourcesSimpleCriterionKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.SearchResourcesSimpleCriterionKey
  ( SearchResourcesSimpleCriterionKey
      ( ..,
        SearchResourcesSimpleCriterionKey_ACCOUNT_ID,
        SearchResourcesSimpleCriterionKey_S3_BUCKET_EFFECTIVE_PERMISSION,
        SearchResourcesSimpleCriterionKey_S3_BUCKET_NAME,
        SearchResourcesSimpleCriterionKey_S3_BUCKET_SHARED_ACCESS
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The property to use in a condition that filters the query results. Valid
-- values are:
newtype SearchResourcesSimpleCriterionKey = SearchResourcesSimpleCriterionKey'
  { fromSearchResourcesSimpleCriterionKey ::
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

pattern SearchResourcesSimpleCriterionKey_ACCOUNT_ID :: SearchResourcesSimpleCriterionKey
pattern SearchResourcesSimpleCriterionKey_ACCOUNT_ID = SearchResourcesSimpleCriterionKey' "ACCOUNT_ID"

pattern SearchResourcesSimpleCriterionKey_S3_BUCKET_EFFECTIVE_PERMISSION :: SearchResourcesSimpleCriterionKey
pattern SearchResourcesSimpleCriterionKey_S3_BUCKET_EFFECTIVE_PERMISSION = SearchResourcesSimpleCriterionKey' "S3_BUCKET_EFFECTIVE_PERMISSION"

pattern SearchResourcesSimpleCriterionKey_S3_BUCKET_NAME :: SearchResourcesSimpleCriterionKey
pattern SearchResourcesSimpleCriterionKey_S3_BUCKET_NAME = SearchResourcesSimpleCriterionKey' "S3_BUCKET_NAME"

pattern SearchResourcesSimpleCriterionKey_S3_BUCKET_SHARED_ACCESS :: SearchResourcesSimpleCriterionKey
pattern SearchResourcesSimpleCriterionKey_S3_BUCKET_SHARED_ACCESS = SearchResourcesSimpleCriterionKey' "S3_BUCKET_SHARED_ACCESS"

{-# COMPLETE
  SearchResourcesSimpleCriterionKey_ACCOUNT_ID,
  SearchResourcesSimpleCriterionKey_S3_BUCKET_EFFECTIVE_PERMISSION,
  SearchResourcesSimpleCriterionKey_S3_BUCKET_NAME,
  SearchResourcesSimpleCriterionKey_S3_BUCKET_SHARED_ACCESS,
  SearchResourcesSimpleCriterionKey'
  #-}
