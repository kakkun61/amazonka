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
-- Module      : Network.AWS.LicenseManager.Types.ReceivedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.ReceivedStatus
  ( ReceivedStatus
      ( ..,
        ReceivedStatus_ACTIVE,
        ReceivedStatus_DELETED,
        ReceivedStatus_DISABLED,
        ReceivedStatus_FAILED_WORKFLOW,
        ReceivedStatus_PENDING_ACCEPT,
        ReceivedStatus_PENDING_WORKFLOW,
        ReceivedStatus_REJECTED,
        ReceivedStatus_WORKFLOW_COMPLETED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ReceivedStatus = ReceivedStatus'
  { fromReceivedStatus ::
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

pattern ReceivedStatus_ACTIVE :: ReceivedStatus
pattern ReceivedStatus_ACTIVE = ReceivedStatus' "ACTIVE"

pattern ReceivedStatus_DELETED :: ReceivedStatus
pattern ReceivedStatus_DELETED = ReceivedStatus' "DELETED"

pattern ReceivedStatus_DISABLED :: ReceivedStatus
pattern ReceivedStatus_DISABLED = ReceivedStatus' "DISABLED"

pattern ReceivedStatus_FAILED_WORKFLOW :: ReceivedStatus
pattern ReceivedStatus_FAILED_WORKFLOW = ReceivedStatus' "FAILED_WORKFLOW"

pattern ReceivedStatus_PENDING_ACCEPT :: ReceivedStatus
pattern ReceivedStatus_PENDING_ACCEPT = ReceivedStatus' "PENDING_ACCEPT"

pattern ReceivedStatus_PENDING_WORKFLOW :: ReceivedStatus
pattern ReceivedStatus_PENDING_WORKFLOW = ReceivedStatus' "PENDING_WORKFLOW"

pattern ReceivedStatus_REJECTED :: ReceivedStatus
pattern ReceivedStatus_REJECTED = ReceivedStatus' "REJECTED"

pattern ReceivedStatus_WORKFLOW_COMPLETED :: ReceivedStatus
pattern ReceivedStatus_WORKFLOW_COMPLETED = ReceivedStatus' "WORKFLOW_COMPLETED"

{-# COMPLETE
  ReceivedStatus_ACTIVE,
  ReceivedStatus_DELETED,
  ReceivedStatus_DISABLED,
  ReceivedStatus_FAILED_WORKFLOW,
  ReceivedStatus_PENDING_ACCEPT,
  ReceivedStatus_PENDING_WORKFLOW,
  ReceivedStatus_REJECTED,
  ReceivedStatus_WORKFLOW_COMPLETED,
  ReceivedStatus'
  #-}
