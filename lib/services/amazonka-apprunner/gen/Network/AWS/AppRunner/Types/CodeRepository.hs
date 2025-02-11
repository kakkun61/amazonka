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
-- Module      : Network.AWS.AppRunner.Types.CodeRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppRunner.Types.CodeRepository where

import Network.AWS.AppRunner.Types.CodeConfiguration
import Network.AWS.AppRunner.Types.SourceCodeVersion
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a source code repository.
--
-- /See:/ 'newCodeRepository' smart constructor.
data CodeRepository = CodeRepository'
  { -- | Configuration for building and running the service from a source code
    -- repository.
    codeConfiguration :: Prelude.Maybe CodeConfiguration,
    -- | The location of the repository that contains the source code.
    repositoryUrl :: Prelude.Text,
    -- | The version that should be used within the source code repository.
    sourceCodeVersion :: SourceCodeVersion
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CodeRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'codeConfiguration', 'codeRepository_codeConfiguration' - Configuration for building and running the service from a source code
-- repository.
--
-- 'repositoryUrl', 'codeRepository_repositoryUrl' - The location of the repository that contains the source code.
--
-- 'sourceCodeVersion', 'codeRepository_sourceCodeVersion' - The version that should be used within the source code repository.
newCodeRepository ::
  -- | 'repositoryUrl'
  Prelude.Text ->
  -- | 'sourceCodeVersion'
  SourceCodeVersion ->
  CodeRepository
newCodeRepository pRepositoryUrl_ pSourceCodeVersion_ =
  CodeRepository'
    { codeConfiguration =
        Prelude.Nothing,
      repositoryUrl = pRepositoryUrl_,
      sourceCodeVersion = pSourceCodeVersion_
    }

-- | Configuration for building and running the service from a source code
-- repository.
codeRepository_codeConfiguration :: Lens.Lens' CodeRepository (Prelude.Maybe CodeConfiguration)
codeRepository_codeConfiguration = Lens.lens (\CodeRepository' {codeConfiguration} -> codeConfiguration) (\s@CodeRepository' {} a -> s {codeConfiguration = a} :: CodeRepository)

-- | The location of the repository that contains the source code.
codeRepository_repositoryUrl :: Lens.Lens' CodeRepository Prelude.Text
codeRepository_repositoryUrl = Lens.lens (\CodeRepository' {repositoryUrl} -> repositoryUrl) (\s@CodeRepository' {} a -> s {repositoryUrl = a} :: CodeRepository)

-- | The version that should be used within the source code repository.
codeRepository_sourceCodeVersion :: Lens.Lens' CodeRepository SourceCodeVersion
codeRepository_sourceCodeVersion = Lens.lens (\CodeRepository' {sourceCodeVersion} -> sourceCodeVersion) (\s@CodeRepository' {} a -> s {sourceCodeVersion = a} :: CodeRepository)

instance Core.FromJSON CodeRepository where
  parseJSON =
    Core.withObject
      "CodeRepository"
      ( \x ->
          CodeRepository'
            Prelude.<$> (x Core..:? "CodeConfiguration")
            Prelude.<*> (x Core..: "RepositoryUrl")
            Prelude.<*> (x Core..: "SourceCodeVersion")
      )

instance Prelude.Hashable CodeRepository

instance Prelude.NFData CodeRepository

instance Core.ToJSON CodeRepository where
  toJSON CodeRepository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CodeConfiguration" Core..=)
              Prelude.<$> codeConfiguration,
            Prelude.Just ("RepositoryUrl" Core..= repositoryUrl),
            Prelude.Just
              ("SourceCodeVersion" Core..= sourceCodeVersion)
          ]
      )
