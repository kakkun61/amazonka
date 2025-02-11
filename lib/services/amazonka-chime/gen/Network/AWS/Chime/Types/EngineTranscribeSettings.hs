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
-- Module      : Network.AWS.Chime.Types.EngineTranscribeSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.EngineTranscribeSettings where

import Network.AWS.Chime.Types.TranscribeLanguageCode
import Network.AWS.Chime.Types.TranscribeRegion
import Network.AWS.Chime.Types.TranscribeVocabularyFilterMethod
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Settings specific to the Amazon Transcribe engine.
--
-- /See:/ 'newEngineTranscribeSettings' smart constructor.
data EngineTranscribeSettings = EngineTranscribeSettings'
  { -- | The name of the vocabulary passed to Amazon Transcribe.
    vocabularyName :: Prelude.Maybe Prelude.Text,
    -- | The name of the vocabulary filter passed to Amazon Transcribe.
    vocabularyFilterName :: Prelude.Maybe Prelude.Text,
    -- | The filtering method passed to Amazon Transcribe.
    vocabularyFilterMethod :: Prelude.Maybe TranscribeVocabularyFilterMethod,
    -- | The AWS Region passed to Amazon Transcribe. If you don\'t specify a
    -- Region, Amazon Chime uses the meeting\'s Region.
    region :: Prelude.Maybe TranscribeRegion,
    -- | The language code specified for the Amazon Transcribe engine.
    languageCode :: TranscribeLanguageCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EngineTranscribeSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vocabularyName', 'engineTranscribeSettings_vocabularyName' - The name of the vocabulary passed to Amazon Transcribe.
--
-- 'vocabularyFilterName', 'engineTranscribeSettings_vocabularyFilterName' - The name of the vocabulary filter passed to Amazon Transcribe.
--
-- 'vocabularyFilterMethod', 'engineTranscribeSettings_vocabularyFilterMethod' - The filtering method passed to Amazon Transcribe.
--
-- 'region', 'engineTranscribeSettings_region' - The AWS Region passed to Amazon Transcribe. If you don\'t specify a
-- Region, Amazon Chime uses the meeting\'s Region.
--
-- 'languageCode', 'engineTranscribeSettings_languageCode' - The language code specified for the Amazon Transcribe engine.
newEngineTranscribeSettings ::
  -- | 'languageCode'
  TranscribeLanguageCode ->
  EngineTranscribeSettings
newEngineTranscribeSettings pLanguageCode_ =
  EngineTranscribeSettings'
    { vocabularyName =
        Prelude.Nothing,
      vocabularyFilterName = Prelude.Nothing,
      vocabularyFilterMethod = Prelude.Nothing,
      region = Prelude.Nothing,
      languageCode = pLanguageCode_
    }

-- | The name of the vocabulary passed to Amazon Transcribe.
engineTranscribeSettings_vocabularyName :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Text)
engineTranscribeSettings_vocabularyName = Lens.lens (\EngineTranscribeSettings' {vocabularyName} -> vocabularyName) (\s@EngineTranscribeSettings' {} a -> s {vocabularyName = a} :: EngineTranscribeSettings)

-- | The name of the vocabulary filter passed to Amazon Transcribe.
engineTranscribeSettings_vocabularyFilterName :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe Prelude.Text)
engineTranscribeSettings_vocabularyFilterName = Lens.lens (\EngineTranscribeSettings' {vocabularyFilterName} -> vocabularyFilterName) (\s@EngineTranscribeSettings' {} a -> s {vocabularyFilterName = a} :: EngineTranscribeSettings)

-- | The filtering method passed to Amazon Transcribe.
engineTranscribeSettings_vocabularyFilterMethod :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeVocabularyFilterMethod)
engineTranscribeSettings_vocabularyFilterMethod = Lens.lens (\EngineTranscribeSettings' {vocabularyFilterMethod} -> vocabularyFilterMethod) (\s@EngineTranscribeSettings' {} a -> s {vocabularyFilterMethod = a} :: EngineTranscribeSettings)

-- | The AWS Region passed to Amazon Transcribe. If you don\'t specify a
-- Region, Amazon Chime uses the meeting\'s Region.
engineTranscribeSettings_region :: Lens.Lens' EngineTranscribeSettings (Prelude.Maybe TranscribeRegion)
engineTranscribeSettings_region = Lens.lens (\EngineTranscribeSettings' {region} -> region) (\s@EngineTranscribeSettings' {} a -> s {region = a} :: EngineTranscribeSettings)

-- | The language code specified for the Amazon Transcribe engine.
engineTranscribeSettings_languageCode :: Lens.Lens' EngineTranscribeSettings TranscribeLanguageCode
engineTranscribeSettings_languageCode = Lens.lens (\EngineTranscribeSettings' {languageCode} -> languageCode) (\s@EngineTranscribeSettings' {} a -> s {languageCode = a} :: EngineTranscribeSettings)

instance Prelude.Hashable EngineTranscribeSettings

instance Prelude.NFData EngineTranscribeSettings

instance Core.ToJSON EngineTranscribeSettings where
  toJSON EngineTranscribeSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("VocabularyName" Core..=)
              Prelude.<$> vocabularyName,
            ("VocabularyFilterName" Core..=)
              Prelude.<$> vocabularyFilterName,
            ("VocabularyFilterMethod" Core..=)
              Prelude.<$> vocabularyFilterMethod,
            ("Region" Core..=) Prelude.<$> region,
            Prelude.Just ("LanguageCode" Core..= languageCode)
          ]
      )
