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
-- Module      : Network.AWS.CodeGuruReviewer.Types.ThirdPartySourceRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Types.ThirdPartySourceRepository where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a third-party source repository connected to CodeGuru
-- Reviewer.
--
-- /See:/ 'newThirdPartySourceRepository' smart constructor.
data ThirdPartySourceRepository = ThirdPartySourceRepository'
  { -- | The name of the third party source repository.
    name :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
    -- Connections connection. Its format is
    -- @arn:aws:codestar-connections:region-id:aws-account_id:connection\/connection-id@.
    -- For more information, see
    -- <https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html Connection>
    -- in the /Amazon Web Services CodeStar Connections API Reference/.
    connectionArn :: Prelude.Text,
    -- | The owner of the repository. For a GitHub, GitHub Enterprise, or
    -- Bitbucket repository, this is the username for the account that owns the
    -- repository. For an S3 repository, this can be the username or Amazon Web
    -- Services account ID.
    owner :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ThirdPartySourceRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'thirdPartySourceRepository_name' - The name of the third party source repository.
--
-- 'connectionArn', 'thirdPartySourceRepository_connectionArn' - The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
-- Connections connection. Its format is
-- @arn:aws:codestar-connections:region-id:aws-account_id:connection\/connection-id@.
-- For more information, see
-- <https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html Connection>
-- in the /Amazon Web Services CodeStar Connections API Reference/.
--
-- 'owner', 'thirdPartySourceRepository_owner' - The owner of the repository. For a GitHub, GitHub Enterprise, or
-- Bitbucket repository, this is the username for the account that owns the
-- repository. For an S3 repository, this can be the username or Amazon Web
-- Services account ID.
newThirdPartySourceRepository ::
  -- | 'name'
  Prelude.Text ->
  -- | 'connectionArn'
  Prelude.Text ->
  -- | 'owner'
  Prelude.Text ->
  ThirdPartySourceRepository
newThirdPartySourceRepository
  pName_
  pConnectionArn_
  pOwner_ =
    ThirdPartySourceRepository'
      { name = pName_,
        connectionArn = pConnectionArn_,
        owner = pOwner_
      }

-- | The name of the third party source repository.
thirdPartySourceRepository_name :: Lens.Lens' ThirdPartySourceRepository Prelude.Text
thirdPartySourceRepository_name = Lens.lens (\ThirdPartySourceRepository' {name} -> name) (\s@ThirdPartySourceRepository' {} a -> s {name = a} :: ThirdPartySourceRepository)

-- | The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar
-- Connections connection. Its format is
-- @arn:aws:codestar-connections:region-id:aws-account_id:connection\/connection-id@.
-- For more information, see
-- <https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html Connection>
-- in the /Amazon Web Services CodeStar Connections API Reference/.
thirdPartySourceRepository_connectionArn :: Lens.Lens' ThirdPartySourceRepository Prelude.Text
thirdPartySourceRepository_connectionArn = Lens.lens (\ThirdPartySourceRepository' {connectionArn} -> connectionArn) (\s@ThirdPartySourceRepository' {} a -> s {connectionArn = a} :: ThirdPartySourceRepository)

-- | The owner of the repository. For a GitHub, GitHub Enterprise, or
-- Bitbucket repository, this is the username for the account that owns the
-- repository. For an S3 repository, this can be the username or Amazon Web
-- Services account ID.
thirdPartySourceRepository_owner :: Lens.Lens' ThirdPartySourceRepository Prelude.Text
thirdPartySourceRepository_owner = Lens.lens (\ThirdPartySourceRepository' {owner} -> owner) (\s@ThirdPartySourceRepository' {} a -> s {owner = a} :: ThirdPartySourceRepository)

instance Prelude.Hashable ThirdPartySourceRepository

instance Prelude.NFData ThirdPartySourceRepository

instance Core.ToJSON ThirdPartySourceRepository where
  toJSON ThirdPartySourceRepository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("ConnectionArn" Core..= connectionArn),
            Prelude.Just ("Owner" Core..= owner)
          ]
      )
