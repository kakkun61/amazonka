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
-- Module      : Network.AWS.LicenseManager.Types.GrantStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.GrantStatus
  ( GrantStatus
      ( ..,
        GrantStatus_ACTIVE,
        GrantStatus_DELETED,
        GrantStatus_DISABLED,
        GrantStatus_FAILED_WORKFLOW,
        GrantStatus_PENDING_ACCEPT,
        GrantStatus_PENDING_DELETE,
        GrantStatus_PENDING_WORKFLOW,
        GrantStatus_REJECTED,
        GrantStatus_WORKFLOW_COMPLETED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype GrantStatus = GrantStatus'
  { fromGrantStatus ::
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

pattern GrantStatus_ACTIVE :: GrantStatus
pattern GrantStatus_ACTIVE = GrantStatus' "ACTIVE"

pattern GrantStatus_DELETED :: GrantStatus
pattern GrantStatus_DELETED = GrantStatus' "DELETED"

pattern GrantStatus_DISABLED :: GrantStatus
pattern GrantStatus_DISABLED = GrantStatus' "DISABLED"

pattern GrantStatus_FAILED_WORKFLOW :: GrantStatus
pattern GrantStatus_FAILED_WORKFLOW = GrantStatus' "FAILED_WORKFLOW"

pattern GrantStatus_PENDING_ACCEPT :: GrantStatus
pattern GrantStatus_PENDING_ACCEPT = GrantStatus' "PENDING_ACCEPT"

pattern GrantStatus_PENDING_DELETE :: GrantStatus
pattern GrantStatus_PENDING_DELETE = GrantStatus' "PENDING_DELETE"

pattern GrantStatus_PENDING_WORKFLOW :: GrantStatus
pattern GrantStatus_PENDING_WORKFLOW = GrantStatus' "PENDING_WORKFLOW"

pattern GrantStatus_REJECTED :: GrantStatus
pattern GrantStatus_REJECTED = GrantStatus' "REJECTED"

pattern GrantStatus_WORKFLOW_COMPLETED :: GrantStatus
pattern GrantStatus_WORKFLOW_COMPLETED = GrantStatus' "WORKFLOW_COMPLETED"

{-# COMPLETE
  GrantStatus_ACTIVE,
  GrantStatus_DELETED,
  GrantStatus_DISABLED,
  GrantStatus_FAILED_WORKFLOW,
  GrantStatus_PENDING_ACCEPT,
  GrantStatus_PENDING_DELETE,
  GrantStatus_PENDING_WORKFLOW,
  GrantStatus_REJECTED,
  GrantStatus_WORKFLOW_COMPLETED,
  GrantStatus'
  #-}
