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
-- Module      : Network.AWS.GroundStation.Types.FrequencyBandwidth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GroundStation.Types.FrequencyBandwidth where

import qualified Network.AWS.Core as Core
import Network.AWS.GroundStation.Types.BandwidthUnits
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Object that describes the frequency bandwidth.
--
-- /See:/ 'newFrequencyBandwidth' smart constructor.
data FrequencyBandwidth = FrequencyBandwidth'
  { -- | Frequency bandwidth units.
    units :: BandwidthUnits,
    -- | Frequency bandwidth value. AWS Ground Station currently has the
    -- following bandwidth limitations:
    --
    -- -   For @AntennaDownlinkDemodDecodeconfig@, valid values are between 125
    --     kHz to 650 MHz.
    --
    -- -   For @AntennaDownlinkconfig@, valid values are between 10 kHz to 54
    --     MHz.
    --
    -- -   For @AntennaUplinkConfig@, valid values are between 10 kHz to 54
    --     MHz.
    value :: Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FrequencyBandwidth' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'units', 'frequencyBandwidth_units' - Frequency bandwidth units.
--
-- 'value', 'frequencyBandwidth_value' - Frequency bandwidth value. AWS Ground Station currently has the
-- following bandwidth limitations:
--
-- -   For @AntennaDownlinkDemodDecodeconfig@, valid values are between 125
--     kHz to 650 MHz.
--
-- -   For @AntennaDownlinkconfig@, valid values are between 10 kHz to 54
--     MHz.
--
-- -   For @AntennaUplinkConfig@, valid values are between 10 kHz to 54
--     MHz.
newFrequencyBandwidth ::
  -- | 'units'
  BandwidthUnits ->
  -- | 'value'
  Prelude.Double ->
  FrequencyBandwidth
newFrequencyBandwidth pUnits_ pValue_ =
  FrequencyBandwidth'
    { units = pUnits_,
      value = pValue_
    }

-- | Frequency bandwidth units.
frequencyBandwidth_units :: Lens.Lens' FrequencyBandwidth BandwidthUnits
frequencyBandwidth_units = Lens.lens (\FrequencyBandwidth' {units} -> units) (\s@FrequencyBandwidth' {} a -> s {units = a} :: FrequencyBandwidth)

-- | Frequency bandwidth value. AWS Ground Station currently has the
-- following bandwidth limitations:
--
-- -   For @AntennaDownlinkDemodDecodeconfig@, valid values are between 125
--     kHz to 650 MHz.
--
-- -   For @AntennaDownlinkconfig@, valid values are between 10 kHz to 54
--     MHz.
--
-- -   For @AntennaUplinkConfig@, valid values are between 10 kHz to 54
--     MHz.
frequencyBandwidth_value :: Lens.Lens' FrequencyBandwidth Prelude.Double
frequencyBandwidth_value = Lens.lens (\FrequencyBandwidth' {value} -> value) (\s@FrequencyBandwidth' {} a -> s {value = a} :: FrequencyBandwidth)

instance Core.FromJSON FrequencyBandwidth where
  parseJSON =
    Core.withObject
      "FrequencyBandwidth"
      ( \x ->
          FrequencyBandwidth'
            Prelude.<$> (x Core..: "units") Prelude.<*> (x Core..: "value")
      )

instance Prelude.Hashable FrequencyBandwidth

instance Prelude.NFData FrequencyBandwidth

instance Core.ToJSON FrequencyBandwidth where
  toJSON FrequencyBandwidth' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("units" Core..= units),
            Prelude.Just ("value" Core..= value)
          ]
      )
