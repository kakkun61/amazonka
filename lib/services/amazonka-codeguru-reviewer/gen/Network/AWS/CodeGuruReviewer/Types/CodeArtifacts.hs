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
-- Module      : Network.AWS.CodeGuruReviewer.Types.CodeArtifacts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Types.CodeArtifacts where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Code artifacts are source code artifacts and build artifacts used in a
-- repository analysis or a pull request review.
--
-- -   Source code artifacts are source code files in a Git repository that
--     are compressed into a .zip file.
--
-- -   Build artifacts are .jar or .class files that are compressed in a
--     .zip file.
--
-- /See:/ 'newCodeArtifacts' smart constructor.
data CodeArtifacts = CodeArtifacts'
  { -- | The S3 object key for a build artifacts .zip file that contains .jar or
    -- .class files. This is required for a code review with security analysis.
    -- For more information, see
    -- <https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/code-review-security.html Create code reviews with security analysis>
    -- in the /Amazon CodeGuru Reviewer User Guide/.
    buildArtifactsObjectKey :: Prelude.Maybe Prelude.Text,
    -- | The S3 object key for a source code .zip file. This is required for all
    -- code reviews.
    sourceCodeArtifactsObjectKey :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CodeArtifacts' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'buildArtifactsObjectKey', 'codeArtifacts_buildArtifactsObjectKey' - The S3 object key for a build artifacts .zip file that contains .jar or
-- .class files. This is required for a code review with security analysis.
-- For more information, see
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/code-review-security.html Create code reviews with security analysis>
-- in the /Amazon CodeGuru Reviewer User Guide/.
--
-- 'sourceCodeArtifactsObjectKey', 'codeArtifacts_sourceCodeArtifactsObjectKey' - The S3 object key for a source code .zip file. This is required for all
-- code reviews.
newCodeArtifacts ::
  -- | 'sourceCodeArtifactsObjectKey'
  Prelude.Text ->
  CodeArtifacts
newCodeArtifacts pSourceCodeArtifactsObjectKey_ =
  CodeArtifacts'
    { buildArtifactsObjectKey =
        Prelude.Nothing,
      sourceCodeArtifactsObjectKey =
        pSourceCodeArtifactsObjectKey_
    }

-- | The S3 object key for a build artifacts .zip file that contains .jar or
-- .class files. This is required for a code review with security analysis.
-- For more information, see
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/code-review-security.html Create code reviews with security analysis>
-- in the /Amazon CodeGuru Reviewer User Guide/.
codeArtifacts_buildArtifactsObjectKey :: Lens.Lens' CodeArtifacts (Prelude.Maybe Prelude.Text)
codeArtifacts_buildArtifactsObjectKey = Lens.lens (\CodeArtifacts' {buildArtifactsObjectKey} -> buildArtifactsObjectKey) (\s@CodeArtifacts' {} a -> s {buildArtifactsObjectKey = a} :: CodeArtifacts)

-- | The S3 object key for a source code .zip file. This is required for all
-- code reviews.
codeArtifacts_sourceCodeArtifactsObjectKey :: Lens.Lens' CodeArtifacts Prelude.Text
codeArtifacts_sourceCodeArtifactsObjectKey = Lens.lens (\CodeArtifacts' {sourceCodeArtifactsObjectKey} -> sourceCodeArtifactsObjectKey) (\s@CodeArtifacts' {} a -> s {sourceCodeArtifactsObjectKey = a} :: CodeArtifacts)

instance Core.FromJSON CodeArtifacts where
  parseJSON =
    Core.withObject
      "CodeArtifacts"
      ( \x ->
          CodeArtifacts'
            Prelude.<$> (x Core..:? "BuildArtifactsObjectKey")
            Prelude.<*> (x Core..: "SourceCodeArtifactsObjectKey")
      )

instance Prelude.Hashable CodeArtifacts

instance Prelude.NFData CodeArtifacts

instance Core.ToJSON CodeArtifacts where
  toJSON CodeArtifacts' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("BuildArtifactsObjectKey" Core..=)
              Prelude.<$> buildArtifactsObjectKey,
            Prelude.Just
              ( "SourceCodeArtifactsObjectKey"
                  Core..= sourceCodeArtifactsObjectKey
              )
          ]
      )
