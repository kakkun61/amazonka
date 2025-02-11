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
-- Module      : Network.AWS.NetworkManager.Types.Bandwidth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkManager.Types.Bandwidth where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes bandwidth information.
--
-- /See:/ 'newBandwidth' smart constructor.
data Bandwidth = Bandwidth'
  { -- | Download speed in Mbps.
    downloadSpeed :: Prelude.Maybe Prelude.Int,
    -- | Upload speed in Mbps.
    uploadSpeed :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Bandwidth' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'downloadSpeed', 'bandwidth_downloadSpeed' - Download speed in Mbps.
--
-- 'uploadSpeed', 'bandwidth_uploadSpeed' - Upload speed in Mbps.
newBandwidth ::
  Bandwidth
newBandwidth =
  Bandwidth'
    { downloadSpeed = Prelude.Nothing,
      uploadSpeed = Prelude.Nothing
    }

-- | Download speed in Mbps.
bandwidth_downloadSpeed :: Lens.Lens' Bandwidth (Prelude.Maybe Prelude.Int)
bandwidth_downloadSpeed = Lens.lens (\Bandwidth' {downloadSpeed} -> downloadSpeed) (\s@Bandwidth' {} a -> s {downloadSpeed = a} :: Bandwidth)

-- | Upload speed in Mbps.
bandwidth_uploadSpeed :: Lens.Lens' Bandwidth (Prelude.Maybe Prelude.Int)
bandwidth_uploadSpeed = Lens.lens (\Bandwidth' {uploadSpeed} -> uploadSpeed) (\s@Bandwidth' {} a -> s {uploadSpeed = a} :: Bandwidth)

instance Core.FromJSON Bandwidth where
  parseJSON =
    Core.withObject
      "Bandwidth"
      ( \x ->
          Bandwidth'
            Prelude.<$> (x Core..:? "DownloadSpeed")
            Prelude.<*> (x Core..:? "UploadSpeed")
      )

instance Prelude.Hashable Bandwidth

instance Prelude.NFData Bandwidth

instance Core.ToJSON Bandwidth where
  toJSON Bandwidth' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DownloadSpeed" Core..=) Prelude.<$> downloadSpeed,
            ("UploadSpeed" Core..=) Prelude.<$> uploadSpeed
          ]
      )
