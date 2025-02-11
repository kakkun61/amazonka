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
-- Module      : Network.AWS.ApplicationCostProfiler.Types.S3BucketRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationCostProfiler.Types.S3BucketRegion
  ( S3BucketRegion
      ( ..,
        S3BucketRegion_Af_south_1,
        S3BucketRegion_Ap_east_1,
        S3BucketRegion_Eu_south_1,
        S3BucketRegion_Me_south_1
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype S3BucketRegion = S3BucketRegion'
  { fromS3BucketRegion ::
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

pattern S3BucketRegion_Af_south_1 :: S3BucketRegion
pattern S3BucketRegion_Af_south_1 = S3BucketRegion' "af-south-1"

pattern S3BucketRegion_Ap_east_1 :: S3BucketRegion
pattern S3BucketRegion_Ap_east_1 = S3BucketRegion' "ap-east-1"

pattern S3BucketRegion_Eu_south_1 :: S3BucketRegion
pattern S3BucketRegion_Eu_south_1 = S3BucketRegion' "eu-south-1"

pattern S3BucketRegion_Me_south_1 :: S3BucketRegion
pattern S3BucketRegion_Me_south_1 = S3BucketRegion' "me-south-1"

{-# COMPLETE
  S3BucketRegion_Af_south_1,
  S3BucketRegion_Ap_east_1,
  S3BucketRegion_Eu_south_1,
  S3BucketRegion_Me_south_1,
  S3BucketRegion'
  #-}
