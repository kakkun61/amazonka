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
-- Module      : Network.AWS.IVS.Types.RecordingConfigurationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IVS.Types.RecordingConfigurationSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.IVS.Types.DestinationConfiguration
import Network.AWS.IVS.Types.RecordingConfigurationState
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary information about a RecordingConfiguration.
--
-- /See:/ 'newRecordingConfigurationSummary' smart constructor.
data RecordingConfigurationSummary = RecordingConfigurationSummary'
  { -- | Recording-configuration name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | Array of 1-50 maps, each of the form @string:string (key:value)@.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Recording-configuration ARN.
    arn :: Prelude.Text,
    -- | A complex type that contains information about where recorded video will
    -- be stored.
    destinationConfiguration :: DestinationConfiguration,
    -- | Indicates the current state of the recording configuration. When the
    -- state is @ACTIVE@, the configuration is ready for recording a channel
    -- stream.
    state :: RecordingConfigurationState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RecordingConfigurationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'recordingConfigurationSummary_name' - Recording-configuration name. The value does not need to be unique.
--
-- 'tags', 'recordingConfigurationSummary_tags' - Array of 1-50 maps, each of the form @string:string (key:value)@.
--
-- 'arn', 'recordingConfigurationSummary_arn' - Recording-configuration ARN.
--
-- 'destinationConfiguration', 'recordingConfigurationSummary_destinationConfiguration' - A complex type that contains information about where recorded video will
-- be stored.
--
-- 'state', 'recordingConfigurationSummary_state' - Indicates the current state of the recording configuration. When the
-- state is @ACTIVE@, the configuration is ready for recording a channel
-- stream.
newRecordingConfigurationSummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'destinationConfiguration'
  DestinationConfiguration ->
  -- | 'state'
  RecordingConfigurationState ->
  RecordingConfigurationSummary
newRecordingConfigurationSummary
  pArn_
  pDestinationConfiguration_
  pState_ =
    RecordingConfigurationSummary'
      { name =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        arn = pArn_,
        destinationConfiguration =
          pDestinationConfiguration_,
        state = pState_
      }

-- | Recording-configuration name. The value does not need to be unique.
recordingConfigurationSummary_name :: Lens.Lens' RecordingConfigurationSummary (Prelude.Maybe Prelude.Text)
recordingConfigurationSummary_name = Lens.lens (\RecordingConfigurationSummary' {name} -> name) (\s@RecordingConfigurationSummary' {} a -> s {name = a} :: RecordingConfigurationSummary)

-- | Array of 1-50 maps, each of the form @string:string (key:value)@.
recordingConfigurationSummary_tags :: Lens.Lens' RecordingConfigurationSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
recordingConfigurationSummary_tags = Lens.lens (\RecordingConfigurationSummary' {tags} -> tags) (\s@RecordingConfigurationSummary' {} a -> s {tags = a} :: RecordingConfigurationSummary) Prelude.. Lens.mapping Lens.coerced

-- | Recording-configuration ARN.
recordingConfigurationSummary_arn :: Lens.Lens' RecordingConfigurationSummary Prelude.Text
recordingConfigurationSummary_arn = Lens.lens (\RecordingConfigurationSummary' {arn} -> arn) (\s@RecordingConfigurationSummary' {} a -> s {arn = a} :: RecordingConfigurationSummary)

-- | A complex type that contains information about where recorded video will
-- be stored.
recordingConfigurationSummary_destinationConfiguration :: Lens.Lens' RecordingConfigurationSummary DestinationConfiguration
recordingConfigurationSummary_destinationConfiguration = Lens.lens (\RecordingConfigurationSummary' {destinationConfiguration} -> destinationConfiguration) (\s@RecordingConfigurationSummary' {} a -> s {destinationConfiguration = a} :: RecordingConfigurationSummary)

-- | Indicates the current state of the recording configuration. When the
-- state is @ACTIVE@, the configuration is ready for recording a channel
-- stream.
recordingConfigurationSummary_state :: Lens.Lens' RecordingConfigurationSummary RecordingConfigurationState
recordingConfigurationSummary_state = Lens.lens (\RecordingConfigurationSummary' {state} -> state) (\s@RecordingConfigurationSummary' {} a -> s {state = a} :: RecordingConfigurationSummary)

instance Core.FromJSON RecordingConfigurationSummary where
  parseJSON =
    Core.withObject
      "RecordingConfigurationSummary"
      ( \x ->
          RecordingConfigurationSummary'
            Prelude.<$> (x Core..:? "name")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "destinationConfiguration")
            Prelude.<*> (x Core..: "state")
      )

instance
  Prelude.Hashable
    RecordingConfigurationSummary

instance Prelude.NFData RecordingConfigurationSummary
