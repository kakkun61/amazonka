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
-- Module      : Network.AWS.MediaTailor.Types.AdMarkerPassthrough
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaTailor.Types.AdMarkerPassthrough where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For HLS, when set to true, MediaTailor passes through EXT-X-CUE-IN,
-- EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers from the origin
-- manifest to the MediaTailor personalized manifest.
--
-- No logic is applied to these ad markers. For example, if EXT-X-CUE-OUT
-- has a value of 60, but no ads are filled for that ad break, MediaTailor
-- will not set the value to 0.
--
-- /See:/ 'newAdMarkerPassthrough' smart constructor.
data AdMarkerPassthrough = AdMarkerPassthrough'
  { -- | Enables ad marker passthrough for your configuration.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdMarkerPassthrough' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'adMarkerPassthrough_enabled' - Enables ad marker passthrough for your configuration.
newAdMarkerPassthrough ::
  AdMarkerPassthrough
newAdMarkerPassthrough =
  AdMarkerPassthrough' {enabled = Prelude.Nothing}

-- | Enables ad marker passthrough for your configuration.
adMarkerPassthrough_enabled :: Lens.Lens' AdMarkerPassthrough (Prelude.Maybe Prelude.Bool)
adMarkerPassthrough_enabled = Lens.lens (\AdMarkerPassthrough' {enabled} -> enabled) (\s@AdMarkerPassthrough' {} a -> s {enabled = a} :: AdMarkerPassthrough)

instance Core.FromJSON AdMarkerPassthrough where
  parseJSON =
    Core.withObject
      "AdMarkerPassthrough"
      ( \x ->
          AdMarkerPassthrough'
            Prelude.<$> (x Core..:? "Enabled")
      )

instance Prelude.Hashable AdMarkerPassthrough

instance Prelude.NFData AdMarkerPassthrough

instance Core.ToJSON AdMarkerPassthrough where
  toJSON AdMarkerPassthrough' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Enabled" Core..=) Prelude.<$> enabled]
      )
