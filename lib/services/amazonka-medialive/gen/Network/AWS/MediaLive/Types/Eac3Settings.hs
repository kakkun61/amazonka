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
-- Module      : Network.AWS.MediaLive.Types.Eac3Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3Settings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.Eac3AttenuationControl
import Network.AWS.MediaLive.Types.Eac3BitstreamMode
import Network.AWS.MediaLive.Types.Eac3CodingMode
import Network.AWS.MediaLive.Types.Eac3DcFilter
import Network.AWS.MediaLive.Types.Eac3DrcLine
import Network.AWS.MediaLive.Types.Eac3DrcRf
import Network.AWS.MediaLive.Types.Eac3LfeControl
import Network.AWS.MediaLive.Types.Eac3LfeFilter
import Network.AWS.MediaLive.Types.Eac3MetadataControl
import Network.AWS.MediaLive.Types.Eac3PassthroughControl
import Network.AWS.MediaLive.Types.Eac3PhaseControl
import Network.AWS.MediaLive.Types.Eac3StereoDownmix
import Network.AWS.MediaLive.Types.Eac3SurroundExMode
import Network.AWS.MediaLive.Types.Eac3SurroundMode
import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Settings
--
-- /See:/ 'newEac3Settings' smart constructor.
data Eac3Settings = Eac3Settings'
  { -- | Stereo downmix preference. Only used for 3\/2 coding mode.
    stereoDownmix :: Prelude.Maybe Eac3StereoDownmix,
    -- | Left only\/Right only center mix level. Only used for 3\/2 coding mode.
    loRoCenterMixLevel :: Prelude.Maybe Prelude.Double,
    -- | Left total\/Right total center mix level. Only used for 3\/2 coding
    -- mode.
    ltRtCenterMixLevel :: Prelude.Maybe Prelude.Double,
    -- | When set to enabled, applies a 120Hz lowpass filter to the LFE channel
    -- prior to encoding. Only valid with codingMode32 coding mode.
    lfeFilter :: Prelude.Maybe Eac3LfeFilter,
    -- | Left total\/Right total surround mix level. Only used for 3\/2 coding
    -- mode.
    ltRtSurroundMixLevel :: Prelude.Maybe Prelude.Double,
    -- | When set to followInput, encoder metadata will be sourced from the DD,
    -- DD+, or DolbyE decoder that supplied this audio data. If audio was not
    -- supplied from one of these streams, then the static metadata settings
    -- will be used.
    metadataControl :: Prelude.Maybe Eac3MetadataControl,
    -- | Left only\/Right only surround mix level. Only used for 3\/2 coding
    -- mode.
    loRoSurroundMixLevel :: Prelude.Maybe Prelude.Double,
    -- | When encoding 2\/0 audio, sets whether Dolby Surround is matrix encoded
    -- into the two channels.
    surroundMode :: Prelude.Maybe Eac3SurroundMode,
    -- | When set to attenuate3Db, applies a 3 dB attenuation to the surround
    -- channels. Only used for 3\/2 coding mode.
    attenuationControl :: Prelude.Maybe Eac3AttenuationControl,
    -- | When set to whenPossible, input DD+ audio will be passed through if it
    -- is present on the input. This detection is dynamic over the life of the
    -- transcode. Inputs that alternate between DD+ and non-DD+ content will
    -- have a consistent DD+ output as the system alternates between
    -- passthrough and encoding.
    passthroughControl :: Prelude.Maybe Eac3PassthroughControl,
    -- | Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See
    -- ATSC A\/52-2012 (Annex E) for background on these values.
    bitstreamMode :: Prelude.Maybe Eac3BitstreamMode,
    -- | When encoding 3\/2 audio, setting to lfe enables the LFE channel
    lfeControl :: Prelude.Maybe Eac3LfeControl,
    -- | Dolby Digital Plus coding mode. Determines number of channels.
    codingMode :: Prelude.Maybe Eac3CodingMode,
    -- | Sets the Dolby dynamic range compression profile.
    drcLine :: Prelude.Maybe Eac3DrcLine,
    -- | Sets the profile for heavy Dolby dynamic range compression, ensures that
    -- the instantaneous signal peaks do not exceed specified levels.
    drcRf :: Prelude.Maybe Eac3DrcRf,
    -- | When set to enabled, activates a DC highpass filter for all input
    -- channels.
    dcFilter :: Prelude.Maybe Eac3DcFilter,
    -- | Average bitrate in bits\/second. Valid bitrates depend on the coding
    -- mode.
    bitrate :: Prelude.Maybe Prelude.Double,
    -- | When set to shift90Degrees, applies a 90-degree phase shift to the
    -- surround channels. Only used for 3\/2 coding mode.
    phaseControl :: Prelude.Maybe Eac3PhaseControl,
    -- | When encoding 3\/2 audio, sets whether an extra center back surround
    -- channel is matrix encoded into the left and right surround channels.
    surroundExMode :: Prelude.Maybe Eac3SurroundExMode,
    -- | Sets the dialnorm for the output. If blank and input audio is Dolby
    -- Digital Plus, dialnorm will be passed through.
    dialnorm :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Eac3Settings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stereoDownmix', 'eac3Settings_stereoDownmix' - Stereo downmix preference. Only used for 3\/2 coding mode.
--
-- 'loRoCenterMixLevel', 'eac3Settings_loRoCenterMixLevel' - Left only\/Right only center mix level. Only used for 3\/2 coding mode.
--
-- 'ltRtCenterMixLevel', 'eac3Settings_ltRtCenterMixLevel' - Left total\/Right total center mix level. Only used for 3\/2 coding
-- mode.
--
-- 'lfeFilter', 'eac3Settings_lfeFilter' - When set to enabled, applies a 120Hz lowpass filter to the LFE channel
-- prior to encoding. Only valid with codingMode32 coding mode.
--
-- 'ltRtSurroundMixLevel', 'eac3Settings_ltRtSurroundMixLevel' - Left total\/Right total surround mix level. Only used for 3\/2 coding
-- mode.
--
-- 'metadataControl', 'eac3Settings_metadataControl' - When set to followInput, encoder metadata will be sourced from the DD,
-- DD+, or DolbyE decoder that supplied this audio data. If audio was not
-- supplied from one of these streams, then the static metadata settings
-- will be used.
--
-- 'loRoSurroundMixLevel', 'eac3Settings_loRoSurroundMixLevel' - Left only\/Right only surround mix level. Only used for 3\/2 coding
-- mode.
--
-- 'surroundMode', 'eac3Settings_surroundMode' - When encoding 2\/0 audio, sets whether Dolby Surround is matrix encoded
-- into the two channels.
--
-- 'attenuationControl', 'eac3Settings_attenuationControl' - When set to attenuate3Db, applies a 3 dB attenuation to the surround
-- channels. Only used for 3\/2 coding mode.
--
-- 'passthroughControl', 'eac3Settings_passthroughControl' - When set to whenPossible, input DD+ audio will be passed through if it
-- is present on the input. This detection is dynamic over the life of the
-- transcode. Inputs that alternate between DD+ and non-DD+ content will
-- have a consistent DD+ output as the system alternates between
-- passthrough and encoding.
--
-- 'bitstreamMode', 'eac3Settings_bitstreamMode' - Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See
-- ATSC A\/52-2012 (Annex E) for background on these values.
--
-- 'lfeControl', 'eac3Settings_lfeControl' - When encoding 3\/2 audio, setting to lfe enables the LFE channel
--
-- 'codingMode', 'eac3Settings_codingMode' - Dolby Digital Plus coding mode. Determines number of channels.
--
-- 'drcLine', 'eac3Settings_drcLine' - Sets the Dolby dynamic range compression profile.
--
-- 'drcRf', 'eac3Settings_drcRf' - Sets the profile for heavy Dolby dynamic range compression, ensures that
-- the instantaneous signal peaks do not exceed specified levels.
--
-- 'dcFilter', 'eac3Settings_dcFilter' - When set to enabled, activates a DC highpass filter for all input
-- channels.
--
-- 'bitrate', 'eac3Settings_bitrate' - Average bitrate in bits\/second. Valid bitrates depend on the coding
-- mode.
--
-- 'phaseControl', 'eac3Settings_phaseControl' - When set to shift90Degrees, applies a 90-degree phase shift to the
-- surround channels. Only used for 3\/2 coding mode.
--
-- 'surroundExMode', 'eac3Settings_surroundExMode' - When encoding 3\/2 audio, sets whether an extra center back surround
-- channel is matrix encoded into the left and right surround channels.
--
-- 'dialnorm', 'eac3Settings_dialnorm' - Sets the dialnorm for the output. If blank and input audio is Dolby
-- Digital Plus, dialnorm will be passed through.
newEac3Settings ::
  Eac3Settings
newEac3Settings =
  Eac3Settings'
    { stereoDownmix = Prelude.Nothing,
      loRoCenterMixLevel = Prelude.Nothing,
      ltRtCenterMixLevel = Prelude.Nothing,
      lfeFilter = Prelude.Nothing,
      ltRtSurroundMixLevel = Prelude.Nothing,
      metadataControl = Prelude.Nothing,
      loRoSurroundMixLevel = Prelude.Nothing,
      surroundMode = Prelude.Nothing,
      attenuationControl = Prelude.Nothing,
      passthroughControl = Prelude.Nothing,
      bitstreamMode = Prelude.Nothing,
      lfeControl = Prelude.Nothing,
      codingMode = Prelude.Nothing,
      drcLine = Prelude.Nothing,
      drcRf = Prelude.Nothing,
      dcFilter = Prelude.Nothing,
      bitrate = Prelude.Nothing,
      phaseControl = Prelude.Nothing,
      surroundExMode = Prelude.Nothing,
      dialnorm = Prelude.Nothing
    }

-- | Stereo downmix preference. Only used for 3\/2 coding mode.
eac3Settings_stereoDownmix :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3StereoDownmix)
eac3Settings_stereoDownmix = Lens.lens (\Eac3Settings' {stereoDownmix} -> stereoDownmix) (\s@Eac3Settings' {} a -> s {stereoDownmix = a} :: Eac3Settings)

-- | Left only\/Right only center mix level. Only used for 3\/2 coding mode.
eac3Settings_loRoCenterMixLevel :: Lens.Lens' Eac3Settings (Prelude.Maybe Prelude.Double)
eac3Settings_loRoCenterMixLevel = Lens.lens (\Eac3Settings' {loRoCenterMixLevel} -> loRoCenterMixLevel) (\s@Eac3Settings' {} a -> s {loRoCenterMixLevel = a} :: Eac3Settings)

-- | Left total\/Right total center mix level. Only used for 3\/2 coding
-- mode.
eac3Settings_ltRtCenterMixLevel :: Lens.Lens' Eac3Settings (Prelude.Maybe Prelude.Double)
eac3Settings_ltRtCenterMixLevel = Lens.lens (\Eac3Settings' {ltRtCenterMixLevel} -> ltRtCenterMixLevel) (\s@Eac3Settings' {} a -> s {ltRtCenterMixLevel = a} :: Eac3Settings)

-- | When set to enabled, applies a 120Hz lowpass filter to the LFE channel
-- prior to encoding. Only valid with codingMode32 coding mode.
eac3Settings_lfeFilter :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3LfeFilter)
eac3Settings_lfeFilter = Lens.lens (\Eac3Settings' {lfeFilter} -> lfeFilter) (\s@Eac3Settings' {} a -> s {lfeFilter = a} :: Eac3Settings)

-- | Left total\/Right total surround mix level. Only used for 3\/2 coding
-- mode.
eac3Settings_ltRtSurroundMixLevel :: Lens.Lens' Eac3Settings (Prelude.Maybe Prelude.Double)
eac3Settings_ltRtSurroundMixLevel = Lens.lens (\Eac3Settings' {ltRtSurroundMixLevel} -> ltRtSurroundMixLevel) (\s@Eac3Settings' {} a -> s {ltRtSurroundMixLevel = a} :: Eac3Settings)

-- | When set to followInput, encoder metadata will be sourced from the DD,
-- DD+, or DolbyE decoder that supplied this audio data. If audio was not
-- supplied from one of these streams, then the static metadata settings
-- will be used.
eac3Settings_metadataControl :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3MetadataControl)
eac3Settings_metadataControl = Lens.lens (\Eac3Settings' {metadataControl} -> metadataControl) (\s@Eac3Settings' {} a -> s {metadataControl = a} :: Eac3Settings)

-- | Left only\/Right only surround mix level. Only used for 3\/2 coding
-- mode.
eac3Settings_loRoSurroundMixLevel :: Lens.Lens' Eac3Settings (Prelude.Maybe Prelude.Double)
eac3Settings_loRoSurroundMixLevel = Lens.lens (\Eac3Settings' {loRoSurroundMixLevel} -> loRoSurroundMixLevel) (\s@Eac3Settings' {} a -> s {loRoSurroundMixLevel = a} :: Eac3Settings)

-- | When encoding 2\/0 audio, sets whether Dolby Surround is matrix encoded
-- into the two channels.
eac3Settings_surroundMode :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3SurroundMode)
eac3Settings_surroundMode = Lens.lens (\Eac3Settings' {surroundMode} -> surroundMode) (\s@Eac3Settings' {} a -> s {surroundMode = a} :: Eac3Settings)

-- | When set to attenuate3Db, applies a 3 dB attenuation to the surround
-- channels. Only used for 3\/2 coding mode.
eac3Settings_attenuationControl :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3AttenuationControl)
eac3Settings_attenuationControl = Lens.lens (\Eac3Settings' {attenuationControl} -> attenuationControl) (\s@Eac3Settings' {} a -> s {attenuationControl = a} :: Eac3Settings)

-- | When set to whenPossible, input DD+ audio will be passed through if it
-- is present on the input. This detection is dynamic over the life of the
-- transcode. Inputs that alternate between DD+ and non-DD+ content will
-- have a consistent DD+ output as the system alternates between
-- passthrough and encoding.
eac3Settings_passthroughControl :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3PassthroughControl)
eac3Settings_passthroughControl = Lens.lens (\Eac3Settings' {passthroughControl} -> passthroughControl) (\s@Eac3Settings' {} a -> s {passthroughControl = a} :: Eac3Settings)

-- | Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See
-- ATSC A\/52-2012 (Annex E) for background on these values.
eac3Settings_bitstreamMode :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3BitstreamMode)
eac3Settings_bitstreamMode = Lens.lens (\Eac3Settings' {bitstreamMode} -> bitstreamMode) (\s@Eac3Settings' {} a -> s {bitstreamMode = a} :: Eac3Settings)

-- | When encoding 3\/2 audio, setting to lfe enables the LFE channel
eac3Settings_lfeControl :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3LfeControl)
eac3Settings_lfeControl = Lens.lens (\Eac3Settings' {lfeControl} -> lfeControl) (\s@Eac3Settings' {} a -> s {lfeControl = a} :: Eac3Settings)

-- | Dolby Digital Plus coding mode. Determines number of channels.
eac3Settings_codingMode :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3CodingMode)
eac3Settings_codingMode = Lens.lens (\Eac3Settings' {codingMode} -> codingMode) (\s@Eac3Settings' {} a -> s {codingMode = a} :: Eac3Settings)

-- | Sets the Dolby dynamic range compression profile.
eac3Settings_drcLine :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3DrcLine)
eac3Settings_drcLine = Lens.lens (\Eac3Settings' {drcLine} -> drcLine) (\s@Eac3Settings' {} a -> s {drcLine = a} :: Eac3Settings)

-- | Sets the profile for heavy Dolby dynamic range compression, ensures that
-- the instantaneous signal peaks do not exceed specified levels.
eac3Settings_drcRf :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3DrcRf)
eac3Settings_drcRf = Lens.lens (\Eac3Settings' {drcRf} -> drcRf) (\s@Eac3Settings' {} a -> s {drcRf = a} :: Eac3Settings)

-- | When set to enabled, activates a DC highpass filter for all input
-- channels.
eac3Settings_dcFilter :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3DcFilter)
eac3Settings_dcFilter = Lens.lens (\Eac3Settings' {dcFilter} -> dcFilter) (\s@Eac3Settings' {} a -> s {dcFilter = a} :: Eac3Settings)

-- | Average bitrate in bits\/second. Valid bitrates depend on the coding
-- mode.
eac3Settings_bitrate :: Lens.Lens' Eac3Settings (Prelude.Maybe Prelude.Double)
eac3Settings_bitrate = Lens.lens (\Eac3Settings' {bitrate} -> bitrate) (\s@Eac3Settings' {} a -> s {bitrate = a} :: Eac3Settings)

-- | When set to shift90Degrees, applies a 90-degree phase shift to the
-- surround channels. Only used for 3\/2 coding mode.
eac3Settings_phaseControl :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3PhaseControl)
eac3Settings_phaseControl = Lens.lens (\Eac3Settings' {phaseControl} -> phaseControl) (\s@Eac3Settings' {} a -> s {phaseControl = a} :: Eac3Settings)

-- | When encoding 3\/2 audio, sets whether an extra center back surround
-- channel is matrix encoded into the left and right surround channels.
eac3Settings_surroundExMode :: Lens.Lens' Eac3Settings (Prelude.Maybe Eac3SurroundExMode)
eac3Settings_surroundExMode = Lens.lens (\Eac3Settings' {surroundExMode} -> surroundExMode) (\s@Eac3Settings' {} a -> s {surroundExMode = a} :: Eac3Settings)

-- | Sets the dialnorm for the output. If blank and input audio is Dolby
-- Digital Plus, dialnorm will be passed through.
eac3Settings_dialnorm :: Lens.Lens' Eac3Settings (Prelude.Maybe Prelude.Natural)
eac3Settings_dialnorm = Lens.lens (\Eac3Settings' {dialnorm} -> dialnorm) (\s@Eac3Settings' {} a -> s {dialnorm = a} :: Eac3Settings)

instance Core.FromJSON Eac3Settings where
  parseJSON =
    Core.withObject
      "Eac3Settings"
      ( \x ->
          Eac3Settings'
            Prelude.<$> (x Core..:? "stereoDownmix")
            Prelude.<*> (x Core..:? "loRoCenterMixLevel")
            Prelude.<*> (x Core..:? "ltRtCenterMixLevel")
            Prelude.<*> (x Core..:? "lfeFilter")
            Prelude.<*> (x Core..:? "ltRtSurroundMixLevel")
            Prelude.<*> (x Core..:? "metadataControl")
            Prelude.<*> (x Core..:? "loRoSurroundMixLevel")
            Prelude.<*> (x Core..:? "surroundMode")
            Prelude.<*> (x Core..:? "attenuationControl")
            Prelude.<*> (x Core..:? "passthroughControl")
            Prelude.<*> (x Core..:? "bitstreamMode")
            Prelude.<*> (x Core..:? "lfeControl")
            Prelude.<*> (x Core..:? "codingMode")
            Prelude.<*> (x Core..:? "drcLine")
            Prelude.<*> (x Core..:? "drcRf")
            Prelude.<*> (x Core..:? "dcFilter")
            Prelude.<*> (x Core..:? "bitrate")
            Prelude.<*> (x Core..:? "phaseControl")
            Prelude.<*> (x Core..:? "surroundExMode")
            Prelude.<*> (x Core..:? "dialnorm")
      )

instance Prelude.Hashable Eac3Settings

instance Prelude.NFData Eac3Settings

instance Core.ToJSON Eac3Settings where
  toJSON Eac3Settings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("stereoDownmix" Core..=) Prelude.<$> stereoDownmix,
            ("loRoCenterMixLevel" Core..=)
              Prelude.<$> loRoCenterMixLevel,
            ("ltRtCenterMixLevel" Core..=)
              Prelude.<$> ltRtCenterMixLevel,
            ("lfeFilter" Core..=) Prelude.<$> lfeFilter,
            ("ltRtSurroundMixLevel" Core..=)
              Prelude.<$> ltRtSurroundMixLevel,
            ("metadataControl" Core..=)
              Prelude.<$> metadataControl,
            ("loRoSurroundMixLevel" Core..=)
              Prelude.<$> loRoSurroundMixLevel,
            ("surroundMode" Core..=) Prelude.<$> surroundMode,
            ("attenuationControl" Core..=)
              Prelude.<$> attenuationControl,
            ("passthroughControl" Core..=)
              Prelude.<$> passthroughControl,
            ("bitstreamMode" Core..=) Prelude.<$> bitstreamMode,
            ("lfeControl" Core..=) Prelude.<$> lfeControl,
            ("codingMode" Core..=) Prelude.<$> codingMode,
            ("drcLine" Core..=) Prelude.<$> drcLine,
            ("drcRf" Core..=) Prelude.<$> drcRf,
            ("dcFilter" Core..=) Prelude.<$> dcFilter,
            ("bitrate" Core..=) Prelude.<$> bitrate,
            ("phaseControl" Core..=) Prelude.<$> phaseControl,
            ("surroundExMode" Core..=)
              Prelude.<$> surroundExMode,
            ("dialnorm" Core..=) Prelude.<$> dialnorm
          ]
      )
