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
-- Module      : Network.AWS.CodeArtifact.Types.UpstreamRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeArtifact.Types.UpstreamRepository where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about an upstream repository. A list of @UpstreamRepository@
-- objects is an input parameter to
-- <https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_CreateRepository.html CreateRepository>
-- and
-- <https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdateRepository.html UpdateRepository>.
--
-- /See:/ 'newUpstreamRepository' smart constructor.
data UpstreamRepository = UpstreamRepository'
  { -- | The name of an upstream repository.
    repositoryName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpstreamRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'repositoryName', 'upstreamRepository_repositoryName' - The name of an upstream repository.
newUpstreamRepository ::
  -- | 'repositoryName'
  Prelude.Text ->
  UpstreamRepository
newUpstreamRepository pRepositoryName_ =
  UpstreamRepository'
    { repositoryName =
        pRepositoryName_
    }

-- | The name of an upstream repository.
upstreamRepository_repositoryName :: Lens.Lens' UpstreamRepository Prelude.Text
upstreamRepository_repositoryName = Lens.lens (\UpstreamRepository' {repositoryName} -> repositoryName) (\s@UpstreamRepository' {} a -> s {repositoryName = a} :: UpstreamRepository)

instance Prelude.Hashable UpstreamRepository

instance Prelude.NFData UpstreamRepository

instance Core.ToJSON UpstreamRepository where
  toJSON UpstreamRepository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("repositoryName" Core..= repositoryName)
          ]
      )
