{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoTWireless.Types.WirelessGatewayEventLogOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.WirelessGatewayEventLogOption where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types.LogLevel
import Network.AWS.IoTWireless.Types.WirelessGatewayEvent
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The log options for a wireless gateway event and can be used to set log
-- levels for a specific wireless gateway event.
--
-- For a LoRaWAN gateway, possible events for a log message are
-- @CUPS_Request@ and @Certificate@.
--
-- /See:/ 'newWirelessGatewayEventLogOption' smart constructor.
data WirelessGatewayEventLogOption = WirelessGatewayEventLogOption'
  { event :: WirelessGatewayEvent,
    logLevel :: LogLevel
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WirelessGatewayEventLogOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'event', 'wirelessGatewayEventLogOption_event' - Undocumented member.
--
-- 'logLevel', 'wirelessGatewayEventLogOption_logLevel' - Undocumented member.
newWirelessGatewayEventLogOption ::
  -- | 'event'
  WirelessGatewayEvent ->
  -- | 'logLevel'
  LogLevel ->
  WirelessGatewayEventLogOption
newWirelessGatewayEventLogOption pEvent_ pLogLevel_ =
  WirelessGatewayEventLogOption'
    { event = pEvent_,
      logLevel = pLogLevel_
    }

-- | Undocumented member.
wirelessGatewayEventLogOption_event :: Lens.Lens' WirelessGatewayEventLogOption WirelessGatewayEvent
wirelessGatewayEventLogOption_event = Lens.lens (\WirelessGatewayEventLogOption' {event} -> event) (\s@WirelessGatewayEventLogOption' {} a -> s {event = a} :: WirelessGatewayEventLogOption)

-- | Undocumented member.
wirelessGatewayEventLogOption_logLevel :: Lens.Lens' WirelessGatewayEventLogOption LogLevel
wirelessGatewayEventLogOption_logLevel = Lens.lens (\WirelessGatewayEventLogOption' {logLevel} -> logLevel) (\s@WirelessGatewayEventLogOption' {} a -> s {logLevel = a} :: WirelessGatewayEventLogOption)

instance Core.FromJSON WirelessGatewayEventLogOption where
  parseJSON =
    Core.withObject
      "WirelessGatewayEventLogOption"
      ( \x ->
          WirelessGatewayEventLogOption'
            Prelude.<$> (x Core..: "Event")
            Prelude.<*> (x Core..: "LogLevel")
      )

instance
  Prelude.Hashable
    WirelessGatewayEventLogOption

instance Prelude.NFData WirelessGatewayEventLogOption

instance Core.ToJSON WirelessGatewayEventLogOption where
  toJSON WirelessGatewayEventLogOption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Event" Core..= event),
            Prelude.Just ("LogLevel" Core..= logLevel)
          ]
      )
