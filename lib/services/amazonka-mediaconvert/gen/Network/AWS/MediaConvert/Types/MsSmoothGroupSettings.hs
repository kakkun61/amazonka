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
-- Module      : Network.AWS.MediaConvert.Types.MsSmoothGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MsSmoothGroupSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConvert.Types.DestinationSettings
import Network.AWS.MediaConvert.Types.MsSmoothAdditionalManifest
import Network.AWS.MediaConvert.Types.MsSmoothAudioDeduplication
import Network.AWS.MediaConvert.Types.MsSmoothEncryptionSettings
import Network.AWS.MediaConvert.Types.MsSmoothFragmentLengthControl
import Network.AWS.MediaConvert.Types.MsSmoothManifestEncoding
import qualified Network.AWS.Prelude as Prelude

-- | Settings related to your Microsoft Smooth Streaming output package. For
-- more information, see
-- https:\/\/docs.aws.amazon.com\/mediaconvert\/latest\/ug\/outputs-file-ABR.html.
-- When you work directly in your JSON job specification, include this
-- object and any required children when you set Type, under
-- OutputGroupSettings, to MS_SMOOTH_GROUP_SETTINGS.
--
-- /See:/ 'newMsSmoothGroupSettings' smart constructor.
data MsSmoothGroupSettings = MsSmoothGroupSettings'
  { -- | Specify how you want MediaConvert to determine the fragment length.
    -- Choose Exact (EXACT) to have the encoder use the exact length that you
    -- specify with the setting Fragment length (FragmentLength). This might
    -- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
    -- the encoder round up the segment lengths to match the next GOP boundary.
    fragmentLength :: Prelude.Maybe Prelude.Natural,
    -- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding
    -- format for the server and client manifest. Valid options are utf8 and
    -- utf16.
    manifestEncoding :: Prelude.Maybe MsSmoothManifestEncoding,
    -- | Use Destination (Destination) to specify the S3 output location and the
    -- output filename base. Destination accepts format identifiers. If you do
    -- not specify the base filename in the URI, the service will use the
    -- filename of the input file. If your job has multiple inputs, the service
    -- uses the filename of the first input file.
    destination :: Prelude.Maybe Prelude.Text,
    -- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
    -- across a Microsoft Smooth output group into a single audio stream.
    audioDeduplication :: Prelude.Maybe MsSmoothAudioDeduplication,
    -- | By default, the service creates one .ism Microsoft Smooth Streaming
    -- manifest for each Microsoft Smooth Streaming output group in your job.
    -- This default manifest references every output in the output group. To
    -- create additional manifests that reference a subset of the outputs in
    -- the output group, specify a list of them here.
    additionalManifests :: Prelude.Maybe [MsSmoothAdditionalManifest],
    -- | Specify how you want MediaConvert to determine the fragment length.
    -- Choose Exact (EXACT) to have the encoder use the exact length that you
    -- specify with the setting Fragment length (FragmentLength). This might
    -- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
    -- the encoder round up the segment lengths to match the next GOP boundary.
    fragmentLengthControl :: Prelude.Maybe MsSmoothFragmentLengthControl,
    -- | Settings associated with the destination. Will vary based on the type of
    -- destination
    destinationSettings :: Prelude.Maybe DestinationSettings,
    -- | If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
    -- specify the value SpekeKeyProvider.
    encryption :: Prelude.Maybe MsSmoothEncryptionSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MsSmoothGroupSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fragmentLength', 'msSmoothGroupSettings_fragmentLength' - Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
--
-- 'manifestEncoding', 'msSmoothGroupSettings_manifestEncoding' - Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding
-- format for the server and client manifest. Valid options are utf8 and
-- utf16.
--
-- 'destination', 'msSmoothGroupSettings_destination' - Use Destination (Destination) to specify the S3 output location and the
-- output filename base. Destination accepts format identifiers. If you do
-- not specify the base filename in the URI, the service will use the
-- filename of the input file. If your job has multiple inputs, the service
-- uses the filename of the first input file.
--
-- 'audioDeduplication', 'msSmoothGroupSettings_audioDeduplication' - COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
-- across a Microsoft Smooth output group into a single audio stream.
--
-- 'additionalManifests', 'msSmoothGroupSettings_additionalManifests' - By default, the service creates one .ism Microsoft Smooth Streaming
-- manifest for each Microsoft Smooth Streaming output group in your job.
-- This default manifest references every output in the output group. To
-- create additional manifests that reference a subset of the outputs in
-- the output group, specify a list of them here.
--
-- 'fragmentLengthControl', 'msSmoothGroupSettings_fragmentLengthControl' - Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
--
-- 'destinationSettings', 'msSmoothGroupSettings_destinationSettings' - Settings associated with the destination. Will vary based on the type of
-- destination
--
-- 'encryption', 'msSmoothGroupSettings_encryption' - If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
-- specify the value SpekeKeyProvider.
newMsSmoothGroupSettings ::
  MsSmoothGroupSettings
newMsSmoothGroupSettings =
  MsSmoothGroupSettings'
    { fragmentLength =
        Prelude.Nothing,
      manifestEncoding = Prelude.Nothing,
      destination = Prelude.Nothing,
      audioDeduplication = Prelude.Nothing,
      additionalManifests = Prelude.Nothing,
      fragmentLengthControl = Prelude.Nothing,
      destinationSettings = Prelude.Nothing,
      encryption = Prelude.Nothing
    }

-- | Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
msSmoothGroupSettings_fragmentLength :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe Prelude.Natural)
msSmoothGroupSettings_fragmentLength = Lens.lens (\MsSmoothGroupSettings' {fragmentLength} -> fragmentLength) (\s@MsSmoothGroupSettings' {} a -> s {fragmentLength = a} :: MsSmoothGroupSettings)

-- | Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding
-- format for the server and client manifest. Valid options are utf8 and
-- utf16.
msSmoothGroupSettings_manifestEncoding :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothManifestEncoding)
msSmoothGroupSettings_manifestEncoding = Lens.lens (\MsSmoothGroupSettings' {manifestEncoding} -> manifestEncoding) (\s@MsSmoothGroupSettings' {} a -> s {manifestEncoding = a} :: MsSmoothGroupSettings)

-- | Use Destination (Destination) to specify the S3 output location and the
-- output filename base. Destination accepts format identifiers. If you do
-- not specify the base filename in the URI, the service will use the
-- filename of the input file. If your job has multiple inputs, the service
-- uses the filename of the first input file.
msSmoothGroupSettings_destination :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe Prelude.Text)
msSmoothGroupSettings_destination = Lens.lens (\MsSmoothGroupSettings' {destination} -> destination) (\s@MsSmoothGroupSettings' {} a -> s {destination = a} :: MsSmoothGroupSettings)

-- | COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings
-- across a Microsoft Smooth output group into a single audio stream.
msSmoothGroupSettings_audioDeduplication :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothAudioDeduplication)
msSmoothGroupSettings_audioDeduplication = Lens.lens (\MsSmoothGroupSettings' {audioDeduplication} -> audioDeduplication) (\s@MsSmoothGroupSettings' {} a -> s {audioDeduplication = a} :: MsSmoothGroupSettings)

-- | By default, the service creates one .ism Microsoft Smooth Streaming
-- manifest for each Microsoft Smooth Streaming output group in your job.
-- This default manifest references every output in the output group. To
-- create additional manifests that reference a subset of the outputs in
-- the output group, specify a list of them here.
msSmoothGroupSettings_additionalManifests :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe [MsSmoothAdditionalManifest])
msSmoothGroupSettings_additionalManifests = Lens.lens (\MsSmoothGroupSettings' {additionalManifests} -> additionalManifests) (\s@MsSmoothGroupSettings' {} a -> s {additionalManifests = a} :: MsSmoothGroupSettings) Prelude.. Lens.mapping Lens.coerced

-- | Specify how you want MediaConvert to determine the fragment length.
-- Choose Exact (EXACT) to have the encoder use the exact length that you
-- specify with the setting Fragment length (FragmentLength). This might
-- result in extra I-frames. Choose Multiple of GOP (GOP_MULTIPLE) to have
-- the encoder round up the segment lengths to match the next GOP boundary.
msSmoothGroupSettings_fragmentLengthControl :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothFragmentLengthControl)
msSmoothGroupSettings_fragmentLengthControl = Lens.lens (\MsSmoothGroupSettings' {fragmentLengthControl} -> fragmentLengthControl) (\s@MsSmoothGroupSettings' {} a -> s {fragmentLengthControl = a} :: MsSmoothGroupSettings)

-- | Settings associated with the destination. Will vary based on the type of
-- destination
msSmoothGroupSettings_destinationSettings :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe DestinationSettings)
msSmoothGroupSettings_destinationSettings = Lens.lens (\MsSmoothGroupSettings' {destinationSettings} -> destinationSettings) (\s@MsSmoothGroupSettings' {} a -> s {destinationSettings = a} :: MsSmoothGroupSettings)

-- | If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to
-- specify the value SpekeKeyProvider.
msSmoothGroupSettings_encryption :: Lens.Lens' MsSmoothGroupSettings (Prelude.Maybe MsSmoothEncryptionSettings)
msSmoothGroupSettings_encryption = Lens.lens (\MsSmoothGroupSettings' {encryption} -> encryption) (\s@MsSmoothGroupSettings' {} a -> s {encryption = a} :: MsSmoothGroupSettings)

instance Core.FromJSON MsSmoothGroupSettings where
  parseJSON =
    Core.withObject
      "MsSmoothGroupSettings"
      ( \x ->
          MsSmoothGroupSettings'
            Prelude.<$> (x Core..:? "fragmentLength")
            Prelude.<*> (x Core..:? "manifestEncoding")
            Prelude.<*> (x Core..:? "destination")
            Prelude.<*> (x Core..:? "audioDeduplication")
            Prelude.<*> ( x Core..:? "additionalManifests"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "fragmentLengthControl")
            Prelude.<*> (x Core..:? "destinationSettings")
            Prelude.<*> (x Core..:? "encryption")
      )

instance Prelude.Hashable MsSmoothGroupSettings

instance Prelude.NFData MsSmoothGroupSettings

instance Core.ToJSON MsSmoothGroupSettings where
  toJSON MsSmoothGroupSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("fragmentLength" Core..=)
              Prelude.<$> fragmentLength,
            ("manifestEncoding" Core..=)
              Prelude.<$> manifestEncoding,
            ("destination" Core..=) Prelude.<$> destination,
            ("audioDeduplication" Core..=)
              Prelude.<$> audioDeduplication,
            ("additionalManifests" Core..=)
              Prelude.<$> additionalManifests,
            ("fragmentLengthControl" Core..=)
              Prelude.<$> fragmentLengthControl,
            ("destinationSettings" Core..=)
              Prelude.<$> destinationSettings,
            ("encryption" Core..=) Prelude.<$> encryption
          ]
      )
