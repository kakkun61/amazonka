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
-- Module      : Network.AWS.MediaTailor.Types.LivePreRollConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaTailor.Types.LivePreRollConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration for pre-roll ad insertion.
--
-- /See:/ 'newLivePreRollConfiguration' smart constructor.
data LivePreRollConfiguration = LivePreRollConfiguration'
  { -- | The URL for the ad decision server (ADS) for pre-roll ads. This includes
    -- the specification of static parameters and placeholders for dynamic
    -- parameters. AWS Elemental MediaTailor substitutes player-specific and
    -- session-specific parameters as needed when calling the ADS. Alternately,
    -- for testing, you can provide a static VAST URL. The maximum length is
    -- 25,000 characters.
    adDecisionServerUrl :: Prelude.Maybe Prelude.Text,
    -- | The maximum allowed duration for the pre-roll ad avail. AWS Elemental
    -- MediaTailor won\'t play pre-roll ads to exceed this duration, regardless
    -- of the total duration of ads that the ADS returns.
    maxDurationSeconds :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LivePreRollConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'adDecisionServerUrl', 'livePreRollConfiguration_adDecisionServerUrl' - The URL for the ad decision server (ADS) for pre-roll ads. This includes
-- the specification of static parameters and placeholders for dynamic
-- parameters. AWS Elemental MediaTailor substitutes player-specific and
-- session-specific parameters as needed when calling the ADS. Alternately,
-- for testing, you can provide a static VAST URL. The maximum length is
-- 25,000 characters.
--
-- 'maxDurationSeconds', 'livePreRollConfiguration_maxDurationSeconds' - The maximum allowed duration for the pre-roll ad avail. AWS Elemental
-- MediaTailor won\'t play pre-roll ads to exceed this duration, regardless
-- of the total duration of ads that the ADS returns.
newLivePreRollConfiguration ::
  LivePreRollConfiguration
newLivePreRollConfiguration =
  LivePreRollConfiguration'
    { adDecisionServerUrl =
        Prelude.Nothing,
      maxDurationSeconds = Prelude.Nothing
    }

-- | The URL for the ad decision server (ADS) for pre-roll ads. This includes
-- the specification of static parameters and placeholders for dynamic
-- parameters. AWS Elemental MediaTailor substitutes player-specific and
-- session-specific parameters as needed when calling the ADS. Alternately,
-- for testing, you can provide a static VAST URL. The maximum length is
-- 25,000 characters.
livePreRollConfiguration_adDecisionServerUrl :: Lens.Lens' LivePreRollConfiguration (Prelude.Maybe Prelude.Text)
livePreRollConfiguration_adDecisionServerUrl = Lens.lens (\LivePreRollConfiguration' {adDecisionServerUrl} -> adDecisionServerUrl) (\s@LivePreRollConfiguration' {} a -> s {adDecisionServerUrl = a} :: LivePreRollConfiguration)

-- | The maximum allowed duration for the pre-roll ad avail. AWS Elemental
-- MediaTailor won\'t play pre-roll ads to exceed this duration, regardless
-- of the total duration of ads that the ADS returns.
livePreRollConfiguration_maxDurationSeconds :: Lens.Lens' LivePreRollConfiguration (Prelude.Maybe Prelude.Int)
livePreRollConfiguration_maxDurationSeconds = Lens.lens (\LivePreRollConfiguration' {maxDurationSeconds} -> maxDurationSeconds) (\s@LivePreRollConfiguration' {} a -> s {maxDurationSeconds = a} :: LivePreRollConfiguration)

instance Core.FromJSON LivePreRollConfiguration where
  parseJSON =
    Core.withObject
      "LivePreRollConfiguration"
      ( \x ->
          LivePreRollConfiguration'
            Prelude.<$> (x Core..:? "AdDecisionServerUrl")
            Prelude.<*> (x Core..:? "MaxDurationSeconds")
      )

instance Prelude.Hashable LivePreRollConfiguration

instance Prelude.NFData LivePreRollConfiguration

instance Core.ToJSON LivePreRollConfiguration where
  toJSON LivePreRollConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AdDecisionServerUrl" Core..=)
              Prelude.<$> adDecisionServerUrl,
            ("MaxDurationSeconds" Core..=)
              Prelude.<$> maxDurationSeconds
          ]
      )
