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
-- Module      : Network.AWS.MacieV2.Types.SearchResourcesSortAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.SearchResourcesSortAttributeName
  ( SearchResourcesSortAttributeName
      ( ..,
        SearchResourcesSortAttributeName_ACCOUNT_ID,
        SearchResourcesSortAttributeName_RESOURCE_NAME,
        SearchResourcesSortAttributeName_S3_CLASSIFIABLE_OBJECT_COUNT,
        SearchResourcesSortAttributeName_S3_CLASSIFIABLE_SIZE_IN_BYTES
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The property to sort the query results by. Valid values are:
newtype SearchResourcesSortAttributeName = SearchResourcesSortAttributeName'
  { fromSearchResourcesSortAttributeName ::
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

pattern SearchResourcesSortAttributeName_ACCOUNT_ID :: SearchResourcesSortAttributeName
pattern SearchResourcesSortAttributeName_ACCOUNT_ID = SearchResourcesSortAttributeName' "ACCOUNT_ID"

pattern SearchResourcesSortAttributeName_RESOURCE_NAME :: SearchResourcesSortAttributeName
pattern SearchResourcesSortAttributeName_RESOURCE_NAME = SearchResourcesSortAttributeName' "RESOURCE_NAME"

pattern SearchResourcesSortAttributeName_S3_CLASSIFIABLE_OBJECT_COUNT :: SearchResourcesSortAttributeName
pattern SearchResourcesSortAttributeName_S3_CLASSIFIABLE_OBJECT_COUNT = SearchResourcesSortAttributeName' "S3_CLASSIFIABLE_OBJECT_COUNT"

pattern SearchResourcesSortAttributeName_S3_CLASSIFIABLE_SIZE_IN_BYTES :: SearchResourcesSortAttributeName
pattern SearchResourcesSortAttributeName_S3_CLASSIFIABLE_SIZE_IN_BYTES = SearchResourcesSortAttributeName' "S3_CLASSIFIABLE_SIZE_IN_BYTES"

{-# COMPLETE
  SearchResourcesSortAttributeName_ACCOUNT_ID,
  SearchResourcesSortAttributeName_RESOURCE_NAME,
  SearchResourcesSortAttributeName_S3_CLASSIFIABLE_OBJECT_COUNT,
  SearchResourcesSortAttributeName_S3_CLASSIFIABLE_SIZE_IN_BYTES,
  SearchResourcesSortAttributeName'
  #-}
