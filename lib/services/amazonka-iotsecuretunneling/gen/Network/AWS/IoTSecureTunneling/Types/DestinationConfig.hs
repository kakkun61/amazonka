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
-- Module      : Network.AWS.IoTSecureTunneling.Types.DestinationConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSecureTunneling.Types.DestinationConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The destination configuration.
--
-- /See:/ 'newDestinationConfig' smart constructor.
data DestinationConfig = DestinationConfig'
  { -- | The name of the IoT thing to which you want to connect.
    thingName :: Prelude.Maybe Prelude.Text,
    -- | A list of service names that identity the target application. The AWS
    -- IoT client running on the destination device reads this value and uses
    -- it to look up a port or an IP address and a port. The AWS IoT client
    -- instantiates the local proxy which uses this information to connect to
    -- the destination application.
    services :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DestinationConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thingName', 'destinationConfig_thingName' - The name of the IoT thing to which you want to connect.
--
-- 'services', 'destinationConfig_services' - A list of service names that identity the target application. The AWS
-- IoT client running on the destination device reads this value and uses
-- it to look up a port or an IP address and a port. The AWS IoT client
-- instantiates the local proxy which uses this information to connect to
-- the destination application.
newDestinationConfig ::
  -- | 'services'
  Prelude.NonEmpty Prelude.Text ->
  DestinationConfig
newDestinationConfig pServices_ =
  DestinationConfig'
    { thingName = Prelude.Nothing,
      services = Lens.coerced Lens.# pServices_
    }

-- | The name of the IoT thing to which you want to connect.
destinationConfig_thingName :: Lens.Lens' DestinationConfig (Prelude.Maybe Prelude.Text)
destinationConfig_thingName = Lens.lens (\DestinationConfig' {thingName} -> thingName) (\s@DestinationConfig' {} a -> s {thingName = a} :: DestinationConfig)

-- | A list of service names that identity the target application. The AWS
-- IoT client running on the destination device reads this value and uses
-- it to look up a port or an IP address and a port. The AWS IoT client
-- instantiates the local proxy which uses this information to connect to
-- the destination application.
destinationConfig_services :: Lens.Lens' DestinationConfig (Prelude.NonEmpty Prelude.Text)
destinationConfig_services = Lens.lens (\DestinationConfig' {services} -> services) (\s@DestinationConfig' {} a -> s {services = a} :: DestinationConfig) Prelude.. Lens.coerced

instance Core.FromJSON DestinationConfig where
  parseJSON =
    Core.withObject
      "DestinationConfig"
      ( \x ->
          DestinationConfig'
            Prelude.<$> (x Core..:? "thingName")
            Prelude.<*> (x Core..: "services")
      )

instance Prelude.Hashable DestinationConfig

instance Prelude.NFData DestinationConfig

instance Core.ToJSON DestinationConfig where
  toJSON DestinationConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("thingName" Core..=) Prelude.<$> thingName,
            Prelude.Just ("services" Core..= services)
          ]
      )
