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
-- Module      : Network.AWS.ConnectContactLens.Types.Transcript
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ConnectContactLens.Types.Transcript where

import Network.AWS.ConnectContactLens.Types.IssueDetected
import Network.AWS.ConnectContactLens.Types.SentimentValue
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A list of messages in the session.
--
-- /See:/ 'newTranscript' smart constructor.
data Transcript = Transcript'
  { -- | List of positions where issues were detected on the transcript.
    issuesDetected :: Prelude.Maybe [IssueDetected],
    -- | The identifier of the transcript.
    id :: Prelude.Text,
    -- | The identifier of the participant.
    participantId :: Prelude.Text,
    -- | The role of participant. For example, is it a customer, agent, or
    -- system.
    participantRole :: Prelude.Text,
    -- | The content of the transcript.
    content :: Prelude.Text,
    -- | The beginning offset in the contact for this transcript.
    beginOffsetMillis :: Prelude.Natural,
    -- | The end offset in the contact for this transcript.
    endOffsetMillis :: Prelude.Natural,
    -- | The sentiment of the detected for this piece of transcript.
    sentiment :: SentimentValue
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Transcript' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'issuesDetected', 'transcript_issuesDetected' - List of positions where issues were detected on the transcript.
--
-- 'id', 'transcript_id' - The identifier of the transcript.
--
-- 'participantId', 'transcript_participantId' - The identifier of the participant.
--
-- 'participantRole', 'transcript_participantRole' - The role of participant. For example, is it a customer, agent, or
-- system.
--
-- 'content', 'transcript_content' - The content of the transcript.
--
-- 'beginOffsetMillis', 'transcript_beginOffsetMillis' - The beginning offset in the contact for this transcript.
--
-- 'endOffsetMillis', 'transcript_endOffsetMillis' - The end offset in the contact for this transcript.
--
-- 'sentiment', 'transcript_sentiment' - The sentiment of the detected for this piece of transcript.
newTranscript ::
  -- | 'id'
  Prelude.Text ->
  -- | 'participantId'
  Prelude.Text ->
  -- | 'participantRole'
  Prelude.Text ->
  -- | 'content'
  Prelude.Text ->
  -- | 'beginOffsetMillis'
  Prelude.Natural ->
  -- | 'endOffsetMillis'
  Prelude.Natural ->
  -- | 'sentiment'
  SentimentValue ->
  Transcript
newTranscript
  pId_
  pParticipantId_
  pParticipantRole_
  pContent_
  pBeginOffsetMillis_
  pEndOffsetMillis_
  pSentiment_ =
    Transcript'
      { issuesDetected = Prelude.Nothing,
        id = pId_,
        participantId = pParticipantId_,
        participantRole = pParticipantRole_,
        content = pContent_,
        beginOffsetMillis = pBeginOffsetMillis_,
        endOffsetMillis = pEndOffsetMillis_,
        sentiment = pSentiment_
      }

-- | List of positions where issues were detected on the transcript.
transcript_issuesDetected :: Lens.Lens' Transcript (Prelude.Maybe [IssueDetected])
transcript_issuesDetected = Lens.lens (\Transcript' {issuesDetected} -> issuesDetected) (\s@Transcript' {} a -> s {issuesDetected = a} :: Transcript) Prelude.. Lens.mapping Lens.coerced

-- | The identifier of the transcript.
transcript_id :: Lens.Lens' Transcript Prelude.Text
transcript_id = Lens.lens (\Transcript' {id} -> id) (\s@Transcript' {} a -> s {id = a} :: Transcript)

-- | The identifier of the participant.
transcript_participantId :: Lens.Lens' Transcript Prelude.Text
transcript_participantId = Lens.lens (\Transcript' {participantId} -> participantId) (\s@Transcript' {} a -> s {participantId = a} :: Transcript)

-- | The role of participant. For example, is it a customer, agent, or
-- system.
transcript_participantRole :: Lens.Lens' Transcript Prelude.Text
transcript_participantRole = Lens.lens (\Transcript' {participantRole} -> participantRole) (\s@Transcript' {} a -> s {participantRole = a} :: Transcript)

-- | The content of the transcript.
transcript_content :: Lens.Lens' Transcript Prelude.Text
transcript_content = Lens.lens (\Transcript' {content} -> content) (\s@Transcript' {} a -> s {content = a} :: Transcript)

-- | The beginning offset in the contact for this transcript.
transcript_beginOffsetMillis :: Lens.Lens' Transcript Prelude.Natural
transcript_beginOffsetMillis = Lens.lens (\Transcript' {beginOffsetMillis} -> beginOffsetMillis) (\s@Transcript' {} a -> s {beginOffsetMillis = a} :: Transcript)

-- | The end offset in the contact for this transcript.
transcript_endOffsetMillis :: Lens.Lens' Transcript Prelude.Natural
transcript_endOffsetMillis = Lens.lens (\Transcript' {endOffsetMillis} -> endOffsetMillis) (\s@Transcript' {} a -> s {endOffsetMillis = a} :: Transcript)

-- | The sentiment of the detected for this piece of transcript.
transcript_sentiment :: Lens.Lens' Transcript SentimentValue
transcript_sentiment = Lens.lens (\Transcript' {sentiment} -> sentiment) (\s@Transcript' {} a -> s {sentiment = a} :: Transcript)

instance Core.FromJSON Transcript where
  parseJSON =
    Core.withObject
      "Transcript"
      ( \x ->
          Transcript'
            Prelude.<$> (x Core..:? "IssuesDetected" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "Id")
            Prelude.<*> (x Core..: "ParticipantId")
            Prelude.<*> (x Core..: "ParticipantRole")
            Prelude.<*> (x Core..: "Content")
            Prelude.<*> (x Core..: "BeginOffsetMillis")
            Prelude.<*> (x Core..: "EndOffsetMillis")
            Prelude.<*> (x Core..: "Sentiment")
      )

instance Prelude.Hashable Transcript

instance Prelude.NFData Transcript
