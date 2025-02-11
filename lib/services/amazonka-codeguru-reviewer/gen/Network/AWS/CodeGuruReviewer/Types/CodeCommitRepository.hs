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
-- Module      : Network.AWS.CodeGuruReviewer.Types.CodeCommitRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Types.CodeCommitRepository where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about an Amazon Web Services CodeCommit repository. The
-- CodeCommit repository must be in the same Amazon Web Services Region and
-- Amazon Web Services account where its CodeGuru Reviewer code reviews are
-- configured.
--
-- /See:/ 'newCodeCommitRepository' smart constructor.
data CodeCommitRepository = CodeCommitRepository'
  { -- | The name of the Amazon Web Services CodeCommit repository. For more
    -- information, see
    -- <https://docs.aws.amazon.com/codecommit/latest/APIReference/API_GetRepository.html#CodeCommit-GetRepository-request-repositoryName repositoryName>
    -- in the /Amazon Web Services CodeCommit API Reference/.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CodeCommitRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'codeCommitRepository_name' - The name of the Amazon Web Services CodeCommit repository. For more
-- information, see
-- <https://docs.aws.amazon.com/codecommit/latest/APIReference/API_GetRepository.html#CodeCommit-GetRepository-request-repositoryName repositoryName>
-- in the /Amazon Web Services CodeCommit API Reference/.
newCodeCommitRepository ::
  -- | 'name'
  Prelude.Text ->
  CodeCommitRepository
newCodeCommitRepository pName_ =
  CodeCommitRepository' {name = pName_}

-- | The name of the Amazon Web Services CodeCommit repository. For more
-- information, see
-- <https://docs.aws.amazon.com/codecommit/latest/APIReference/API_GetRepository.html#CodeCommit-GetRepository-request-repositoryName repositoryName>
-- in the /Amazon Web Services CodeCommit API Reference/.
codeCommitRepository_name :: Lens.Lens' CodeCommitRepository Prelude.Text
codeCommitRepository_name = Lens.lens (\CodeCommitRepository' {name} -> name) (\s@CodeCommitRepository' {} a -> s {name = a} :: CodeCommitRepository)

instance Prelude.Hashable CodeCommitRepository

instance Prelude.NFData CodeCommitRepository

instance Core.ToJSON CodeCommitRepository where
  toJSON CodeCommitRepository' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Name" Core..= name)]
      )
