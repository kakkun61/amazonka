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
-- Module      : Network.AWS.MediaConnect.Types.MediaStreamSourceConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.MediaStreamSourceConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types.EncodingName
import Network.AWS.MediaConnect.Types.InputConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | The media stream that is associated with the source, and the parameters
-- for that association.
--
-- /See:/ 'newMediaStreamSourceConfiguration' smart constructor.
data MediaStreamSourceConfiguration = MediaStreamSourceConfiguration'
  { -- | The transport parameters that are associated with an incoming media
    -- stream.
    inputConfigurations :: Prelude.Maybe [InputConfiguration],
    -- | The name of the media stream.
    mediaStreamName :: Prelude.Text,
    -- | The format that was used to encode the data. For ancillary data streams,
    -- set the encoding name to smpte291. For audio streams, set the encoding
    -- name to pcm. For video, 2110 streams, set the encoding name to raw. For
    -- video, JPEG XS streams, set the encoding name to jxsv.
    encodingName :: EncodingName
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MediaStreamSourceConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inputConfigurations', 'mediaStreamSourceConfiguration_inputConfigurations' - The transport parameters that are associated with an incoming media
-- stream.
--
-- 'mediaStreamName', 'mediaStreamSourceConfiguration_mediaStreamName' - The name of the media stream.
--
-- 'encodingName', 'mediaStreamSourceConfiguration_encodingName' - The format that was used to encode the data. For ancillary data streams,
-- set the encoding name to smpte291. For audio streams, set the encoding
-- name to pcm. For video, 2110 streams, set the encoding name to raw. For
-- video, JPEG XS streams, set the encoding name to jxsv.
newMediaStreamSourceConfiguration ::
  -- | 'mediaStreamName'
  Prelude.Text ->
  -- | 'encodingName'
  EncodingName ->
  MediaStreamSourceConfiguration
newMediaStreamSourceConfiguration
  pMediaStreamName_
  pEncodingName_ =
    MediaStreamSourceConfiguration'
      { inputConfigurations =
          Prelude.Nothing,
        mediaStreamName = pMediaStreamName_,
        encodingName = pEncodingName_
      }

-- | The transport parameters that are associated with an incoming media
-- stream.
mediaStreamSourceConfiguration_inputConfigurations :: Lens.Lens' MediaStreamSourceConfiguration (Prelude.Maybe [InputConfiguration])
mediaStreamSourceConfiguration_inputConfigurations = Lens.lens (\MediaStreamSourceConfiguration' {inputConfigurations} -> inputConfigurations) (\s@MediaStreamSourceConfiguration' {} a -> s {inputConfigurations = a} :: MediaStreamSourceConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The name of the media stream.
mediaStreamSourceConfiguration_mediaStreamName :: Lens.Lens' MediaStreamSourceConfiguration Prelude.Text
mediaStreamSourceConfiguration_mediaStreamName = Lens.lens (\MediaStreamSourceConfiguration' {mediaStreamName} -> mediaStreamName) (\s@MediaStreamSourceConfiguration' {} a -> s {mediaStreamName = a} :: MediaStreamSourceConfiguration)

-- | The format that was used to encode the data. For ancillary data streams,
-- set the encoding name to smpte291. For audio streams, set the encoding
-- name to pcm. For video, 2110 streams, set the encoding name to raw. For
-- video, JPEG XS streams, set the encoding name to jxsv.
mediaStreamSourceConfiguration_encodingName :: Lens.Lens' MediaStreamSourceConfiguration EncodingName
mediaStreamSourceConfiguration_encodingName = Lens.lens (\MediaStreamSourceConfiguration' {encodingName} -> encodingName) (\s@MediaStreamSourceConfiguration' {} a -> s {encodingName = a} :: MediaStreamSourceConfiguration)

instance Core.FromJSON MediaStreamSourceConfiguration where
  parseJSON =
    Core.withObject
      "MediaStreamSourceConfiguration"
      ( \x ->
          MediaStreamSourceConfiguration'
            Prelude.<$> ( x Core..:? "inputConfigurations"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "mediaStreamName")
            Prelude.<*> (x Core..: "encodingName")
      )

instance
  Prelude.Hashable
    MediaStreamSourceConfiguration

instance
  Prelude.NFData
    MediaStreamSourceConfiguration
