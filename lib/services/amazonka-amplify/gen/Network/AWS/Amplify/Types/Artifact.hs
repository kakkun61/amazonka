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
-- Module      : Network.AWS.Amplify.Types.Artifact
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Amplify.Types.Artifact where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an artifact.
--
-- /See:/ 'newArtifact' smart constructor.
data Artifact = Artifact'
  { -- | The file name for the artifact.
    artifactFileName :: Prelude.Text,
    -- | The unique ID for the artifact.
    artifactId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Artifact' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'artifactFileName', 'artifact_artifactFileName' - The file name for the artifact.
--
-- 'artifactId', 'artifact_artifactId' - The unique ID for the artifact.
newArtifact ::
  -- | 'artifactFileName'
  Prelude.Text ->
  -- | 'artifactId'
  Prelude.Text ->
  Artifact
newArtifact pArtifactFileName_ pArtifactId_ =
  Artifact'
    { artifactFileName = pArtifactFileName_,
      artifactId = pArtifactId_
    }

-- | The file name for the artifact.
artifact_artifactFileName :: Lens.Lens' Artifact Prelude.Text
artifact_artifactFileName = Lens.lens (\Artifact' {artifactFileName} -> artifactFileName) (\s@Artifact' {} a -> s {artifactFileName = a} :: Artifact)

-- | The unique ID for the artifact.
artifact_artifactId :: Lens.Lens' Artifact Prelude.Text
artifact_artifactId = Lens.lens (\Artifact' {artifactId} -> artifactId) (\s@Artifact' {} a -> s {artifactId = a} :: Artifact)

instance Core.FromJSON Artifact where
  parseJSON =
    Core.withObject
      "Artifact"
      ( \x ->
          Artifact'
            Prelude.<$> (x Core..: "artifactFileName")
            Prelude.<*> (x Core..: "artifactId")
      )

instance Prelude.Hashable Artifact

instance Prelude.NFData Artifact
