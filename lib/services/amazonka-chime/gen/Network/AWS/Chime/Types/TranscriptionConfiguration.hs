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
-- Module      : Network.AWS.Chime.Types.TranscriptionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.TranscriptionConfiguration where

import Network.AWS.Chime.Types.EngineTranscribeMedicalSettings
import Network.AWS.Chime.Types.EngineTranscribeSettings
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration for the current transcription operation. Must contain
-- @EngineTranscribeSettings@ or @EngineTranscribeMedicalSettings@.
--
-- /See:/ 'newTranscriptionConfiguration' smart constructor.
data TranscriptionConfiguration = TranscriptionConfiguration'
  { -- | The transcription configuration settings passed to Amazon Transcribe
    -- Medical.
    engineTranscribeMedicalSettings :: Prelude.Maybe EngineTranscribeMedicalSettings,
    -- | The transcription configuration settings passed to Amazon Transcribe.
    engineTranscribeSettings :: Prelude.Maybe EngineTranscribeSettings
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TranscriptionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineTranscribeMedicalSettings', 'transcriptionConfiguration_engineTranscribeMedicalSettings' - The transcription configuration settings passed to Amazon Transcribe
-- Medical.
--
-- 'engineTranscribeSettings', 'transcriptionConfiguration_engineTranscribeSettings' - The transcription configuration settings passed to Amazon Transcribe.
newTranscriptionConfiguration ::
  TranscriptionConfiguration
newTranscriptionConfiguration =
  TranscriptionConfiguration'
    { engineTranscribeMedicalSettings =
        Prelude.Nothing,
      engineTranscribeSettings = Prelude.Nothing
    }

-- | The transcription configuration settings passed to Amazon Transcribe
-- Medical.
transcriptionConfiguration_engineTranscribeMedicalSettings :: Lens.Lens' TranscriptionConfiguration (Prelude.Maybe EngineTranscribeMedicalSettings)
transcriptionConfiguration_engineTranscribeMedicalSettings = Lens.lens (\TranscriptionConfiguration' {engineTranscribeMedicalSettings} -> engineTranscribeMedicalSettings) (\s@TranscriptionConfiguration' {} a -> s {engineTranscribeMedicalSettings = a} :: TranscriptionConfiguration)

-- | The transcription configuration settings passed to Amazon Transcribe.
transcriptionConfiguration_engineTranscribeSettings :: Lens.Lens' TranscriptionConfiguration (Prelude.Maybe EngineTranscribeSettings)
transcriptionConfiguration_engineTranscribeSettings = Lens.lens (\TranscriptionConfiguration' {engineTranscribeSettings} -> engineTranscribeSettings) (\s@TranscriptionConfiguration' {} a -> s {engineTranscribeSettings = a} :: TranscriptionConfiguration)

instance Prelude.Hashable TranscriptionConfiguration

instance Prelude.NFData TranscriptionConfiguration

instance Core.ToJSON TranscriptionConfiguration where
  toJSON TranscriptionConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EngineTranscribeMedicalSettings" Core..=)
              Prelude.<$> engineTranscribeMedicalSettings,
            ("EngineTranscribeSettings" Core..=)
              Prelude.<$> engineTranscribeSettings
          ]
      )
