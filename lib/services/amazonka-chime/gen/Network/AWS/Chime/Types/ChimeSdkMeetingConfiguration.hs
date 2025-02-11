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
-- Module      : Network.AWS.Chime.Types.ChimeSdkMeetingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.ChimeSdkMeetingConfiguration where

import Network.AWS.Chime.Types.ArtifactsConfiguration
import Network.AWS.Chime.Types.SourceConfiguration
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration object of the Amazon Chime SDK meeting for a specified
-- media capture pipeline. @SourceType@ must be @ChimeSdkMeeting@.
--
-- /See:/ 'newChimeSdkMeetingConfiguration' smart constructor.
data ChimeSdkMeetingConfiguration = ChimeSdkMeetingConfiguration'
  { -- | The configuration for the artifacts in an Amazon Chime SDK meeting.
    artifactsConfiguration :: Prelude.Maybe ArtifactsConfiguration,
    -- | The source configuration for a specified media capture pipline.
    sourceConfiguration :: Prelude.Maybe SourceConfiguration
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChimeSdkMeetingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'artifactsConfiguration', 'chimeSdkMeetingConfiguration_artifactsConfiguration' - The configuration for the artifacts in an Amazon Chime SDK meeting.
--
-- 'sourceConfiguration', 'chimeSdkMeetingConfiguration_sourceConfiguration' - The source configuration for a specified media capture pipline.
newChimeSdkMeetingConfiguration ::
  ChimeSdkMeetingConfiguration
newChimeSdkMeetingConfiguration =
  ChimeSdkMeetingConfiguration'
    { artifactsConfiguration =
        Prelude.Nothing,
      sourceConfiguration = Prelude.Nothing
    }

-- | The configuration for the artifacts in an Amazon Chime SDK meeting.
chimeSdkMeetingConfiguration_artifactsConfiguration :: Lens.Lens' ChimeSdkMeetingConfiguration (Prelude.Maybe ArtifactsConfiguration)
chimeSdkMeetingConfiguration_artifactsConfiguration = Lens.lens (\ChimeSdkMeetingConfiguration' {artifactsConfiguration} -> artifactsConfiguration) (\s@ChimeSdkMeetingConfiguration' {} a -> s {artifactsConfiguration = a} :: ChimeSdkMeetingConfiguration)

-- | The source configuration for a specified media capture pipline.
chimeSdkMeetingConfiguration_sourceConfiguration :: Lens.Lens' ChimeSdkMeetingConfiguration (Prelude.Maybe SourceConfiguration)
chimeSdkMeetingConfiguration_sourceConfiguration = Lens.lens (\ChimeSdkMeetingConfiguration' {sourceConfiguration} -> sourceConfiguration) (\s@ChimeSdkMeetingConfiguration' {} a -> s {sourceConfiguration = a} :: ChimeSdkMeetingConfiguration)

instance Core.FromJSON ChimeSdkMeetingConfiguration where
  parseJSON =
    Core.withObject
      "ChimeSdkMeetingConfiguration"
      ( \x ->
          ChimeSdkMeetingConfiguration'
            Prelude.<$> (x Core..:? "ArtifactsConfiguration")
            Prelude.<*> (x Core..:? "SourceConfiguration")
      )

instance
  Prelude.Hashable
    ChimeSdkMeetingConfiguration

instance Prelude.NFData ChimeSdkMeetingConfiguration

instance Core.ToJSON ChimeSdkMeetingConfiguration where
  toJSON ChimeSdkMeetingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ArtifactsConfiguration" Core..=)
              Prelude.<$> artifactsConfiguration,
            ("SourceConfiguration" Core..=)
              Prelude.<$> sourceConfiguration
          ]
      )
