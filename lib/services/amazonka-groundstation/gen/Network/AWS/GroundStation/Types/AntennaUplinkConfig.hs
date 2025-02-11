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
-- Module      : Network.AWS.GroundStation.Types.AntennaUplinkConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GroundStation.Types.AntennaUplinkConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.GroundStation.Types.Eirp
import Network.AWS.GroundStation.Types.UplinkSpectrumConfig
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the uplink @Config@ of an antenna.
--
-- /See:/ 'newAntennaUplinkConfig' smart constructor.
data AntennaUplinkConfig = AntennaUplinkConfig'
  { -- | Whether or not uplink transmit is disabled.
    transmitDisabled :: Prelude.Maybe Prelude.Bool,
    -- | Information about the uplink spectral @Config@.
    spectrumConfig :: UplinkSpectrumConfig,
    -- | EIRP of the target.
    targetEirp :: Eirp
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AntennaUplinkConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transmitDisabled', 'antennaUplinkConfig_transmitDisabled' - Whether or not uplink transmit is disabled.
--
-- 'spectrumConfig', 'antennaUplinkConfig_spectrumConfig' - Information about the uplink spectral @Config@.
--
-- 'targetEirp', 'antennaUplinkConfig_targetEirp' - EIRP of the target.
newAntennaUplinkConfig ::
  -- | 'spectrumConfig'
  UplinkSpectrumConfig ->
  -- | 'targetEirp'
  Eirp ->
  AntennaUplinkConfig
newAntennaUplinkConfig pSpectrumConfig_ pTargetEirp_ =
  AntennaUplinkConfig'
    { transmitDisabled =
        Prelude.Nothing,
      spectrumConfig = pSpectrumConfig_,
      targetEirp = pTargetEirp_
    }

-- | Whether or not uplink transmit is disabled.
antennaUplinkConfig_transmitDisabled :: Lens.Lens' AntennaUplinkConfig (Prelude.Maybe Prelude.Bool)
antennaUplinkConfig_transmitDisabled = Lens.lens (\AntennaUplinkConfig' {transmitDisabled} -> transmitDisabled) (\s@AntennaUplinkConfig' {} a -> s {transmitDisabled = a} :: AntennaUplinkConfig)

-- | Information about the uplink spectral @Config@.
antennaUplinkConfig_spectrumConfig :: Lens.Lens' AntennaUplinkConfig UplinkSpectrumConfig
antennaUplinkConfig_spectrumConfig = Lens.lens (\AntennaUplinkConfig' {spectrumConfig} -> spectrumConfig) (\s@AntennaUplinkConfig' {} a -> s {spectrumConfig = a} :: AntennaUplinkConfig)

-- | EIRP of the target.
antennaUplinkConfig_targetEirp :: Lens.Lens' AntennaUplinkConfig Eirp
antennaUplinkConfig_targetEirp = Lens.lens (\AntennaUplinkConfig' {targetEirp} -> targetEirp) (\s@AntennaUplinkConfig' {} a -> s {targetEirp = a} :: AntennaUplinkConfig)

instance Core.FromJSON AntennaUplinkConfig where
  parseJSON =
    Core.withObject
      "AntennaUplinkConfig"
      ( \x ->
          AntennaUplinkConfig'
            Prelude.<$> (x Core..:? "transmitDisabled")
            Prelude.<*> (x Core..: "spectrumConfig")
            Prelude.<*> (x Core..: "targetEirp")
      )

instance Prelude.Hashable AntennaUplinkConfig

instance Prelude.NFData AntennaUplinkConfig

instance Core.ToJSON AntennaUplinkConfig where
  toJSON AntennaUplinkConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("transmitDisabled" Core..=)
              Prelude.<$> transmitDisabled,
            Prelude.Just
              ("spectrumConfig" Core..= spectrumConfig),
            Prelude.Just ("targetEirp" Core..= targetEirp)
          ]
      )
