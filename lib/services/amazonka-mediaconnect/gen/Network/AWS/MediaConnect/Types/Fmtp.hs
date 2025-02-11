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
-- Module      : Network.AWS.MediaConnect.Types.Fmtp
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.Fmtp where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types.Colorimetry
import Network.AWS.MediaConnect.Types.Range
import Network.AWS.MediaConnect.Types.ScanMode
import Network.AWS.MediaConnect.Types.Tcs
import qualified Network.AWS.Prelude as Prelude

-- | FMTP
--
-- /See:/ 'newFmtp' smart constructor.
data Fmtp = Fmtp'
  { -- | The transfer characteristic system (TCS) that is used in the video.
    tcs :: Prelude.Maybe Tcs,
    -- | The frame rate for the video stream, in frames\/second. For example:
    -- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
    -- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
    -- exactFramerate.
    exactFramerate :: Prelude.Maybe Prelude.Text,
    -- | The pixel aspect ratio (PAR) of the video.
    par :: Prelude.Maybe Prelude.Text,
    -- | The type of compression that was used to smooth the video’s appearance
    scanMode :: Prelude.Maybe ScanMode,
    -- | The encoding range of the video.
    range :: Prelude.Maybe Range,
    -- | The format of the audio channel.
    channelOrder :: Prelude.Maybe Prelude.Text,
    -- | The format that is used for the representation of color.
    colorimetry :: Prelude.Maybe Colorimetry
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Fmtp' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tcs', 'fmtp_tcs' - The transfer characteristic system (TCS) that is used in the video.
--
-- 'exactFramerate', 'fmtp_exactFramerate' - The frame rate for the video stream, in frames\/second. For example:
-- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
-- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
-- exactFramerate.
--
-- 'par', 'fmtp_par' - The pixel aspect ratio (PAR) of the video.
--
-- 'scanMode', 'fmtp_scanMode' - The type of compression that was used to smooth the video’s appearance
--
-- 'range', 'fmtp_range' - The encoding range of the video.
--
-- 'channelOrder', 'fmtp_channelOrder' - The format of the audio channel.
--
-- 'colorimetry', 'fmtp_colorimetry' - The format that is used for the representation of color.
newFmtp ::
  Fmtp
newFmtp =
  Fmtp'
    { tcs = Prelude.Nothing,
      exactFramerate = Prelude.Nothing,
      par = Prelude.Nothing,
      scanMode = Prelude.Nothing,
      range = Prelude.Nothing,
      channelOrder = Prelude.Nothing,
      colorimetry = Prelude.Nothing
    }

-- | The transfer characteristic system (TCS) that is used in the video.
fmtp_tcs :: Lens.Lens' Fmtp (Prelude.Maybe Tcs)
fmtp_tcs = Lens.lens (\Fmtp' {tcs} -> tcs) (\s@Fmtp' {} a -> s {tcs = a} :: Fmtp)

-- | The frame rate for the video stream, in frames\/second. For example:
-- 60000\/1001. If you specify a whole number, MediaConnect uses a ratio of
-- N\/1. For example, if you specify 60, MediaConnect uses 60\/1 as the
-- exactFramerate.
fmtp_exactFramerate :: Lens.Lens' Fmtp (Prelude.Maybe Prelude.Text)
fmtp_exactFramerate = Lens.lens (\Fmtp' {exactFramerate} -> exactFramerate) (\s@Fmtp' {} a -> s {exactFramerate = a} :: Fmtp)

-- | The pixel aspect ratio (PAR) of the video.
fmtp_par :: Lens.Lens' Fmtp (Prelude.Maybe Prelude.Text)
fmtp_par = Lens.lens (\Fmtp' {par} -> par) (\s@Fmtp' {} a -> s {par = a} :: Fmtp)

-- | The type of compression that was used to smooth the video’s appearance
fmtp_scanMode :: Lens.Lens' Fmtp (Prelude.Maybe ScanMode)
fmtp_scanMode = Lens.lens (\Fmtp' {scanMode} -> scanMode) (\s@Fmtp' {} a -> s {scanMode = a} :: Fmtp)

-- | The encoding range of the video.
fmtp_range :: Lens.Lens' Fmtp (Prelude.Maybe Range)
fmtp_range = Lens.lens (\Fmtp' {range} -> range) (\s@Fmtp' {} a -> s {range = a} :: Fmtp)

-- | The format of the audio channel.
fmtp_channelOrder :: Lens.Lens' Fmtp (Prelude.Maybe Prelude.Text)
fmtp_channelOrder = Lens.lens (\Fmtp' {channelOrder} -> channelOrder) (\s@Fmtp' {} a -> s {channelOrder = a} :: Fmtp)

-- | The format that is used for the representation of color.
fmtp_colorimetry :: Lens.Lens' Fmtp (Prelude.Maybe Colorimetry)
fmtp_colorimetry = Lens.lens (\Fmtp' {colorimetry} -> colorimetry) (\s@Fmtp' {} a -> s {colorimetry = a} :: Fmtp)

instance Core.FromJSON Fmtp where
  parseJSON =
    Core.withObject
      "Fmtp"
      ( \x ->
          Fmtp'
            Prelude.<$> (x Core..:? "tcs")
            Prelude.<*> (x Core..:? "exactFramerate")
            Prelude.<*> (x Core..:? "par")
            Prelude.<*> (x Core..:? "scanMode")
            Prelude.<*> (x Core..:? "range")
            Prelude.<*> (x Core..:? "channelOrder")
            Prelude.<*> (x Core..:? "colorimetry")
      )

instance Prelude.Hashable Fmtp

instance Prelude.NFData Fmtp
