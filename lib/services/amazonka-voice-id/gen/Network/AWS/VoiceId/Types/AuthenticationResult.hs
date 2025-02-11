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
-- Module      : Network.AWS.VoiceId.Types.AuthenticationResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.VoiceId.Types.AuthenticationResult where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.VoiceId.Types.AuthenticationConfiguration
import Network.AWS.VoiceId.Types.AuthenticationDecision

-- | The authentication result produced by Voice ID, processed against the
-- current session state and streamed audio of the speaker.
--
-- /See:/ 'newAuthenticationResult' smart constructor.
data AuthenticationResult = AuthenticationResult'
  { -- | The client-provided identifier for the speaker whose authentication
    -- result is produced. Only present if a @SpeakerId@ is provided for the
    -- session.
    customerSpeakerId :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | The authentication score for the speaker whose authentication result is
    -- produced. This value is only present if the authentication decision is
    -- either @ACCEPT@ or @REJECT@.
    score :: Prelude.Maybe Prelude.Natural,
    -- | The unique identifier for this authentication result. Because there can
    -- be multiple authentications for a given session, this field helps to
    -- identify if the returned result is from a previous streaming activity or
    -- a new result. Note that in absence of any new streaming activity,
    -- @AcceptanceThreshold@ changes, or @SpeakerId@ changes, Voice ID always
    -- returns cached Authentication Result for this API.
    authenticationResultId :: Prelude.Maybe Prelude.Text,
    -- | The authentication decision produced by Voice ID, processed against the
    -- current session state and streamed audio of the speaker.
    decision :: Prelude.Maybe AuthenticationDecision,
    -- | The @AuthenticationConfiguration@ used to generate this authentication
    -- result.
    configuration :: Prelude.Maybe AuthenticationConfiguration,
    -- | A timestamp indicating when audio aggregation started for this
    -- authentication result.
    audioAggregationStartedAt :: Prelude.Maybe Core.POSIX,
    -- | The service-generated identifier for the speaker whose authentication
    -- result is produced.
    generatedSpeakerId :: Prelude.Maybe Prelude.Text,
    -- | A timestamp indicating when audio aggregation ended for this
    -- authentication result.
    audioAggregationEndedAt :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AuthenticationResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customerSpeakerId', 'authenticationResult_customerSpeakerId' - The client-provided identifier for the speaker whose authentication
-- result is produced. Only present if a @SpeakerId@ is provided for the
-- session.
--
-- 'score', 'authenticationResult_score' - The authentication score for the speaker whose authentication result is
-- produced. This value is only present if the authentication decision is
-- either @ACCEPT@ or @REJECT@.
--
-- 'authenticationResultId', 'authenticationResult_authenticationResultId' - The unique identifier for this authentication result. Because there can
-- be multiple authentications for a given session, this field helps to
-- identify if the returned result is from a previous streaming activity or
-- a new result. Note that in absence of any new streaming activity,
-- @AcceptanceThreshold@ changes, or @SpeakerId@ changes, Voice ID always
-- returns cached Authentication Result for this API.
--
-- 'decision', 'authenticationResult_decision' - The authentication decision produced by Voice ID, processed against the
-- current session state and streamed audio of the speaker.
--
-- 'configuration', 'authenticationResult_configuration' - The @AuthenticationConfiguration@ used to generate this authentication
-- result.
--
-- 'audioAggregationStartedAt', 'authenticationResult_audioAggregationStartedAt' - A timestamp indicating when audio aggregation started for this
-- authentication result.
--
-- 'generatedSpeakerId', 'authenticationResult_generatedSpeakerId' - The service-generated identifier for the speaker whose authentication
-- result is produced.
--
-- 'audioAggregationEndedAt', 'authenticationResult_audioAggregationEndedAt' - A timestamp indicating when audio aggregation ended for this
-- authentication result.
newAuthenticationResult ::
  AuthenticationResult
newAuthenticationResult =
  AuthenticationResult'
    { customerSpeakerId =
        Prelude.Nothing,
      score = Prelude.Nothing,
      authenticationResultId = Prelude.Nothing,
      decision = Prelude.Nothing,
      configuration = Prelude.Nothing,
      audioAggregationStartedAt = Prelude.Nothing,
      generatedSpeakerId = Prelude.Nothing,
      audioAggregationEndedAt = Prelude.Nothing
    }

-- | The client-provided identifier for the speaker whose authentication
-- result is produced. Only present if a @SpeakerId@ is provided for the
-- session.
authenticationResult_customerSpeakerId :: Lens.Lens' AuthenticationResult (Prelude.Maybe Prelude.Text)
authenticationResult_customerSpeakerId = Lens.lens (\AuthenticationResult' {customerSpeakerId} -> customerSpeakerId) (\s@AuthenticationResult' {} a -> s {customerSpeakerId = a} :: AuthenticationResult) Prelude.. Lens.mapping Core._Sensitive

-- | The authentication score for the speaker whose authentication result is
-- produced. This value is only present if the authentication decision is
-- either @ACCEPT@ or @REJECT@.
authenticationResult_score :: Lens.Lens' AuthenticationResult (Prelude.Maybe Prelude.Natural)
authenticationResult_score = Lens.lens (\AuthenticationResult' {score} -> score) (\s@AuthenticationResult' {} a -> s {score = a} :: AuthenticationResult)

-- | The unique identifier for this authentication result. Because there can
-- be multiple authentications for a given session, this field helps to
-- identify if the returned result is from a previous streaming activity or
-- a new result. Note that in absence of any new streaming activity,
-- @AcceptanceThreshold@ changes, or @SpeakerId@ changes, Voice ID always
-- returns cached Authentication Result for this API.
authenticationResult_authenticationResultId :: Lens.Lens' AuthenticationResult (Prelude.Maybe Prelude.Text)
authenticationResult_authenticationResultId = Lens.lens (\AuthenticationResult' {authenticationResultId} -> authenticationResultId) (\s@AuthenticationResult' {} a -> s {authenticationResultId = a} :: AuthenticationResult)

-- | The authentication decision produced by Voice ID, processed against the
-- current session state and streamed audio of the speaker.
authenticationResult_decision :: Lens.Lens' AuthenticationResult (Prelude.Maybe AuthenticationDecision)
authenticationResult_decision = Lens.lens (\AuthenticationResult' {decision} -> decision) (\s@AuthenticationResult' {} a -> s {decision = a} :: AuthenticationResult)

-- | The @AuthenticationConfiguration@ used to generate this authentication
-- result.
authenticationResult_configuration :: Lens.Lens' AuthenticationResult (Prelude.Maybe AuthenticationConfiguration)
authenticationResult_configuration = Lens.lens (\AuthenticationResult' {configuration} -> configuration) (\s@AuthenticationResult' {} a -> s {configuration = a} :: AuthenticationResult)

-- | A timestamp indicating when audio aggregation started for this
-- authentication result.
authenticationResult_audioAggregationStartedAt :: Lens.Lens' AuthenticationResult (Prelude.Maybe Prelude.UTCTime)
authenticationResult_audioAggregationStartedAt = Lens.lens (\AuthenticationResult' {audioAggregationStartedAt} -> audioAggregationStartedAt) (\s@AuthenticationResult' {} a -> s {audioAggregationStartedAt = a} :: AuthenticationResult) Prelude.. Lens.mapping Core._Time

-- | The service-generated identifier for the speaker whose authentication
-- result is produced.
authenticationResult_generatedSpeakerId :: Lens.Lens' AuthenticationResult (Prelude.Maybe Prelude.Text)
authenticationResult_generatedSpeakerId = Lens.lens (\AuthenticationResult' {generatedSpeakerId} -> generatedSpeakerId) (\s@AuthenticationResult' {} a -> s {generatedSpeakerId = a} :: AuthenticationResult)

-- | A timestamp indicating when audio aggregation ended for this
-- authentication result.
authenticationResult_audioAggregationEndedAt :: Lens.Lens' AuthenticationResult (Prelude.Maybe Prelude.UTCTime)
authenticationResult_audioAggregationEndedAt = Lens.lens (\AuthenticationResult' {audioAggregationEndedAt} -> audioAggregationEndedAt) (\s@AuthenticationResult' {} a -> s {audioAggregationEndedAt = a} :: AuthenticationResult) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON AuthenticationResult where
  parseJSON =
    Core.withObject
      "AuthenticationResult"
      ( \x ->
          AuthenticationResult'
            Prelude.<$> (x Core..:? "CustomerSpeakerId")
            Prelude.<*> (x Core..:? "Score")
            Prelude.<*> (x Core..:? "AuthenticationResultId")
            Prelude.<*> (x Core..:? "Decision")
            Prelude.<*> (x Core..:? "Configuration")
            Prelude.<*> (x Core..:? "AudioAggregationStartedAt")
            Prelude.<*> (x Core..:? "GeneratedSpeakerId")
            Prelude.<*> (x Core..:? "AudioAggregationEndedAt")
      )

instance Prelude.Hashable AuthenticationResult

instance Prelude.NFData AuthenticationResult
