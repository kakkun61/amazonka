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
-- Module      : Network.AWS.MediaLive.Types.NielsenWatermarksDistributionTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.NielsenWatermarksDistributionTypes
  ( NielsenWatermarksDistributionTypes
      ( ..,
        NielsenWatermarksDistributionTypes_FINAL_DISTRIBUTOR,
        NielsenWatermarksDistributionTypes_PROGRAM_CONTENT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Nielsen Watermarks Distribution Types
newtype NielsenWatermarksDistributionTypes = NielsenWatermarksDistributionTypes'
  { fromNielsenWatermarksDistributionTypes ::
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

pattern NielsenWatermarksDistributionTypes_FINAL_DISTRIBUTOR :: NielsenWatermarksDistributionTypes
pattern NielsenWatermarksDistributionTypes_FINAL_DISTRIBUTOR = NielsenWatermarksDistributionTypes' "FINAL_DISTRIBUTOR"

pattern NielsenWatermarksDistributionTypes_PROGRAM_CONTENT :: NielsenWatermarksDistributionTypes
pattern NielsenWatermarksDistributionTypes_PROGRAM_CONTENT = NielsenWatermarksDistributionTypes' "PROGRAM_CONTENT"

{-# COMPLETE
  NielsenWatermarksDistributionTypes_FINAL_DISTRIBUTOR,
  NielsenWatermarksDistributionTypes_PROGRAM_CONTENT,
  NielsenWatermarksDistributionTypes'
  #-}
