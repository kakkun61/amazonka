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
-- Module      : Network.AWS.CodeGuruReviewer.Types.RepositoryHeadSourceCodeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Types.RepositoryHeadSourceCodeType where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A
-- <https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType SourceCodeType>
-- that specifies the tip of a branch in an associated repository.
--
-- /See:/ 'newRepositoryHeadSourceCodeType' smart constructor.
data RepositoryHeadSourceCodeType = RepositoryHeadSourceCodeType'
  { -- | The name of the branch in an associated repository. The
    -- @RepositoryHeadSourceCodeType@ specifies the tip of this branch.
    branchName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RepositoryHeadSourceCodeType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'branchName', 'repositoryHeadSourceCodeType_branchName' - The name of the branch in an associated repository. The
-- @RepositoryHeadSourceCodeType@ specifies the tip of this branch.
newRepositoryHeadSourceCodeType ::
  -- | 'branchName'
  Prelude.Text ->
  RepositoryHeadSourceCodeType
newRepositoryHeadSourceCodeType pBranchName_ =
  RepositoryHeadSourceCodeType'
    { branchName =
        pBranchName_
    }

-- | The name of the branch in an associated repository. The
-- @RepositoryHeadSourceCodeType@ specifies the tip of this branch.
repositoryHeadSourceCodeType_branchName :: Lens.Lens' RepositoryHeadSourceCodeType Prelude.Text
repositoryHeadSourceCodeType_branchName = Lens.lens (\RepositoryHeadSourceCodeType' {branchName} -> branchName) (\s@RepositoryHeadSourceCodeType' {} a -> s {branchName = a} :: RepositoryHeadSourceCodeType)

instance Core.FromJSON RepositoryHeadSourceCodeType where
  parseJSON =
    Core.withObject
      "RepositoryHeadSourceCodeType"
      ( \x ->
          RepositoryHeadSourceCodeType'
            Prelude.<$> (x Core..: "BranchName")
      )

instance
  Prelude.Hashable
    RepositoryHeadSourceCodeType

instance Prelude.NFData RepositoryHeadSourceCodeType

instance Core.ToJSON RepositoryHeadSourceCodeType where
  toJSON RepositoryHeadSourceCodeType' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("BranchName" Core..= branchName)]
      )
