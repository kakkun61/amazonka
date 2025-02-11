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
-- Module      : Network.AWS.Route53RecoveryControlConfig.Types.Status
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53RecoveryControlConfig.Types.Status
  ( Status
      ( ..,
        Status_DEPLOYED,
        Status_PENDING,
        Status_PENDING_DELETION
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The deployment status of a resource. Status can be one of the following:
--
-- PENDING: Amazon Route 53 Application Recovery Controller is creating the
-- resource.
--
-- DEPLOYED: The resource is deployed and ready to use.
--
-- PENDING_DELETION: Amazon Route 53 Application Recovery Controller is
-- deleting the resource.
newtype Status = Status' {fromStatus :: Core.Text}
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

pattern Status_DEPLOYED :: Status
pattern Status_DEPLOYED = Status' "DEPLOYED"

pattern Status_PENDING :: Status
pattern Status_PENDING = Status' "PENDING"

pattern Status_PENDING_DELETION :: Status
pattern Status_PENDING_DELETION = Status' "PENDING_DELETION"

{-# COMPLETE
  Status_DEPLOYED,
  Status_PENDING,
  Status_PENDING_DELETION,
  Status'
  #-}
