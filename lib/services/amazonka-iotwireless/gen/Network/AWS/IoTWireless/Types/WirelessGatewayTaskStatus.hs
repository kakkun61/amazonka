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
-- Module      : Network.AWS.IoTWireless.Types.WirelessGatewayTaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.WirelessGatewayTaskStatus
  ( WirelessGatewayTaskStatus
      ( ..,
        WirelessGatewayTaskStatus_COMPLETED,
        WirelessGatewayTaskStatus_FAILED,
        WirelessGatewayTaskStatus_FIRST_RETRY,
        WirelessGatewayTaskStatus_IN_PROGRESS,
        WirelessGatewayTaskStatus_PENDING,
        WirelessGatewayTaskStatus_SECOND_RETRY
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype WirelessGatewayTaskStatus = WirelessGatewayTaskStatus'
  { fromWirelessGatewayTaskStatus ::
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

pattern WirelessGatewayTaskStatus_COMPLETED :: WirelessGatewayTaskStatus
pattern WirelessGatewayTaskStatus_COMPLETED = WirelessGatewayTaskStatus' "COMPLETED"

pattern WirelessGatewayTaskStatus_FAILED :: WirelessGatewayTaskStatus
pattern WirelessGatewayTaskStatus_FAILED = WirelessGatewayTaskStatus' "FAILED"

pattern WirelessGatewayTaskStatus_FIRST_RETRY :: WirelessGatewayTaskStatus
pattern WirelessGatewayTaskStatus_FIRST_RETRY = WirelessGatewayTaskStatus' "FIRST_RETRY"

pattern WirelessGatewayTaskStatus_IN_PROGRESS :: WirelessGatewayTaskStatus
pattern WirelessGatewayTaskStatus_IN_PROGRESS = WirelessGatewayTaskStatus' "IN_PROGRESS"

pattern WirelessGatewayTaskStatus_PENDING :: WirelessGatewayTaskStatus
pattern WirelessGatewayTaskStatus_PENDING = WirelessGatewayTaskStatus' "PENDING"

pattern WirelessGatewayTaskStatus_SECOND_RETRY :: WirelessGatewayTaskStatus
pattern WirelessGatewayTaskStatus_SECOND_RETRY = WirelessGatewayTaskStatus' "SECOND_RETRY"

{-# COMPLETE
  WirelessGatewayTaskStatus_COMPLETED,
  WirelessGatewayTaskStatus_FAILED,
  WirelessGatewayTaskStatus_FIRST_RETRY,
  WirelessGatewayTaskStatus_IN_PROGRESS,
  WirelessGatewayTaskStatus_PENDING,
  WirelessGatewayTaskStatus_SECOND_RETRY,
  WirelessGatewayTaskStatus'
  #-}
