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
-- Module      : Network.AWS.IoTWireless.Types.WirelessDeviceLogOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.WirelessDeviceLogOption where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types.LogLevel
import Network.AWS.IoTWireless.Types.WirelessDeviceEventLogOption
import Network.AWS.IoTWireless.Types.WirelessDeviceType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The log options for wireless devices and can be used to set log levels
-- for a specific type of wireless device.
--
-- /See:/ 'newWirelessDeviceLogOption' smart constructor.
data WirelessDeviceLogOption = WirelessDeviceLogOption'
  { events :: Prelude.Maybe [WirelessDeviceEventLogOption],
    -- | The wireless device type.
    type' :: WirelessDeviceType,
    logLevel :: LogLevel
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WirelessDeviceLogOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'events', 'wirelessDeviceLogOption_events' - Undocumented member.
--
-- 'type'', 'wirelessDeviceLogOption_type' - The wireless device type.
--
-- 'logLevel', 'wirelessDeviceLogOption_logLevel' - Undocumented member.
newWirelessDeviceLogOption ::
  -- | 'type''
  WirelessDeviceType ->
  -- | 'logLevel'
  LogLevel ->
  WirelessDeviceLogOption
newWirelessDeviceLogOption pType_ pLogLevel_ =
  WirelessDeviceLogOption'
    { events = Prelude.Nothing,
      type' = pType_,
      logLevel = pLogLevel_
    }

-- | Undocumented member.
wirelessDeviceLogOption_events :: Lens.Lens' WirelessDeviceLogOption (Prelude.Maybe [WirelessDeviceEventLogOption])
wirelessDeviceLogOption_events = Lens.lens (\WirelessDeviceLogOption' {events} -> events) (\s@WirelessDeviceLogOption' {} a -> s {events = a} :: WirelessDeviceLogOption) Prelude.. Lens.mapping Lens.coerced

-- | The wireless device type.
wirelessDeviceLogOption_type :: Lens.Lens' WirelessDeviceLogOption WirelessDeviceType
wirelessDeviceLogOption_type = Lens.lens (\WirelessDeviceLogOption' {type'} -> type') (\s@WirelessDeviceLogOption' {} a -> s {type' = a} :: WirelessDeviceLogOption)

-- | Undocumented member.
wirelessDeviceLogOption_logLevel :: Lens.Lens' WirelessDeviceLogOption LogLevel
wirelessDeviceLogOption_logLevel = Lens.lens (\WirelessDeviceLogOption' {logLevel} -> logLevel) (\s@WirelessDeviceLogOption' {} a -> s {logLevel = a} :: WirelessDeviceLogOption)

instance Core.FromJSON WirelessDeviceLogOption where
  parseJSON =
    Core.withObject
      "WirelessDeviceLogOption"
      ( \x ->
          WirelessDeviceLogOption'
            Prelude.<$> (x Core..:? "Events" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "Type")
            Prelude.<*> (x Core..: "LogLevel")
      )

instance Prelude.Hashable WirelessDeviceLogOption

instance Prelude.NFData WirelessDeviceLogOption

instance Core.ToJSON WirelessDeviceLogOption where
  toJSON WirelessDeviceLogOption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Events" Core..=) Prelude.<$> events,
            Prelude.Just ("Type" Core..= type'),
            Prelude.Just ("LogLevel" Core..= logLevel)
          ]
      )
