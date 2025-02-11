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
-- Module      : Network.AWS.QuickSight.Types.IngestionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.IngestionStatus
  ( IngestionStatus
      ( ..,
        IngestionStatus_CANCELLED,
        IngestionStatus_COMPLETED,
        IngestionStatus_FAILED,
        IngestionStatus_INITIALIZED,
        IngestionStatus_QUEUED,
        IngestionStatus_RUNNING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype IngestionStatus = IngestionStatus'
  { fromIngestionStatus ::
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

pattern IngestionStatus_CANCELLED :: IngestionStatus
pattern IngestionStatus_CANCELLED = IngestionStatus' "CANCELLED"

pattern IngestionStatus_COMPLETED :: IngestionStatus
pattern IngestionStatus_COMPLETED = IngestionStatus' "COMPLETED"

pattern IngestionStatus_FAILED :: IngestionStatus
pattern IngestionStatus_FAILED = IngestionStatus' "FAILED"

pattern IngestionStatus_INITIALIZED :: IngestionStatus
pattern IngestionStatus_INITIALIZED = IngestionStatus' "INITIALIZED"

pattern IngestionStatus_QUEUED :: IngestionStatus
pattern IngestionStatus_QUEUED = IngestionStatus' "QUEUED"

pattern IngestionStatus_RUNNING :: IngestionStatus
pattern IngestionStatus_RUNNING = IngestionStatus' "RUNNING"

{-# COMPLETE
  IngestionStatus_CANCELLED,
  IngestionStatus_COMPLETED,
  IngestionStatus_FAILED,
  IngestionStatus_INITIALIZED,
  IngestionStatus_QUEUED,
  IngestionStatus_RUNNING,
  IngestionStatus'
  #-}
