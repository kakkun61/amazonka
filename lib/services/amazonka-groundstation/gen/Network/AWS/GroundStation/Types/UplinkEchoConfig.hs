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
-- Module      : Network.AWS.GroundStation.Types.UplinkEchoConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GroundStation.Types.UplinkEchoConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about an uplink echo @Config@.
--
-- Parameters from the @AntennaUplinkConfig@, corresponding to the
-- specified @AntennaUplinkConfigArn@, are used when this
-- @UplinkEchoConfig@ is used in a contact.
--
-- /See:/ 'newUplinkEchoConfig' smart constructor.
data UplinkEchoConfig = UplinkEchoConfig'
  { -- | ARN of an uplink @Config@.
    antennaUplinkConfigArn :: Prelude.Text,
    -- | Whether or not an uplink @Config@ is enabled.
    enabled :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UplinkEchoConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'antennaUplinkConfigArn', 'uplinkEchoConfig_antennaUplinkConfigArn' - ARN of an uplink @Config@.
--
-- 'enabled', 'uplinkEchoConfig_enabled' - Whether or not an uplink @Config@ is enabled.
newUplinkEchoConfig ::
  -- | 'antennaUplinkConfigArn'
  Prelude.Text ->
  -- | 'enabled'
  Prelude.Bool ->
  UplinkEchoConfig
newUplinkEchoConfig
  pAntennaUplinkConfigArn_
  pEnabled_ =
    UplinkEchoConfig'
      { antennaUplinkConfigArn =
          pAntennaUplinkConfigArn_,
        enabled = pEnabled_
      }

-- | ARN of an uplink @Config@.
uplinkEchoConfig_antennaUplinkConfigArn :: Lens.Lens' UplinkEchoConfig Prelude.Text
uplinkEchoConfig_antennaUplinkConfigArn = Lens.lens (\UplinkEchoConfig' {antennaUplinkConfigArn} -> antennaUplinkConfigArn) (\s@UplinkEchoConfig' {} a -> s {antennaUplinkConfigArn = a} :: UplinkEchoConfig)

-- | Whether or not an uplink @Config@ is enabled.
uplinkEchoConfig_enabled :: Lens.Lens' UplinkEchoConfig Prelude.Bool
uplinkEchoConfig_enabled = Lens.lens (\UplinkEchoConfig' {enabled} -> enabled) (\s@UplinkEchoConfig' {} a -> s {enabled = a} :: UplinkEchoConfig)

instance Core.FromJSON UplinkEchoConfig where
  parseJSON =
    Core.withObject
      "UplinkEchoConfig"
      ( \x ->
          UplinkEchoConfig'
            Prelude.<$> (x Core..: "antennaUplinkConfigArn")
            Prelude.<*> (x Core..: "enabled")
      )

instance Prelude.Hashable UplinkEchoConfig

instance Prelude.NFData UplinkEchoConfig

instance Core.ToJSON UplinkEchoConfig where
  toJSON UplinkEchoConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "antennaUplinkConfigArn"
                  Core..= antennaUplinkConfigArn
              ),
            Prelude.Just ("enabled" Core..= enabled)
          ]
      )
