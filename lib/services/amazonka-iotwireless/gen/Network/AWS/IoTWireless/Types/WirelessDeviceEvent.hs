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
-- Module      : Network.AWS.IoTWireless.Types.WirelessDeviceEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.WirelessDeviceEvent
  ( WirelessDeviceEvent
      ( ..,
        WirelessDeviceEvent_Downlink_Data,
        WirelessDeviceEvent_Join,
        WirelessDeviceEvent_Registration,
        WirelessDeviceEvent_Rejoin,
        WirelessDeviceEvent_Uplink_Data
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | The event for a log message, if the log message is tied to a wireless
-- device.
newtype WirelessDeviceEvent = WirelessDeviceEvent'
  { fromWirelessDeviceEvent ::
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

pattern WirelessDeviceEvent_Downlink_Data :: WirelessDeviceEvent
pattern WirelessDeviceEvent_Downlink_Data = WirelessDeviceEvent' "Downlink_Data"

pattern WirelessDeviceEvent_Join :: WirelessDeviceEvent
pattern WirelessDeviceEvent_Join = WirelessDeviceEvent' "Join"

pattern WirelessDeviceEvent_Registration :: WirelessDeviceEvent
pattern WirelessDeviceEvent_Registration = WirelessDeviceEvent' "Registration"

pattern WirelessDeviceEvent_Rejoin :: WirelessDeviceEvent
pattern WirelessDeviceEvent_Rejoin = WirelessDeviceEvent' "Rejoin"

pattern WirelessDeviceEvent_Uplink_Data :: WirelessDeviceEvent
pattern WirelessDeviceEvent_Uplink_Data = WirelessDeviceEvent' "Uplink_Data"

{-# COMPLETE
  WirelessDeviceEvent_Downlink_Data,
  WirelessDeviceEvent_Join,
  WirelessDeviceEvent_Registration,
  WirelessDeviceEvent_Rejoin,
  WirelessDeviceEvent_Uplink_Data,
  WirelessDeviceEvent'
  #-}
