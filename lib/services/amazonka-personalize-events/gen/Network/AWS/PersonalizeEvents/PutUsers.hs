{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.PersonalizeEvents.PutUsers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more users to a Users dataset. For more information see
-- <https://docs.aws.amazon.com/personalize/latest/dg/importing-users.html Importing Users Incrementally>.
module Network.AWS.PersonalizeEvents.PutUsers
  ( -- * Creating a Request
    PutUsers (..),
    newPutUsers,

    -- * Request Lenses
    putUsers_datasetArn,
    putUsers_users,

    -- * Destructuring the Response
    PutUsersResponse (..),
    newPutUsersResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.PersonalizeEvents.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutUsers' smart constructor.
data PutUsers = PutUsers'
  { -- | The Amazon Resource Name (ARN) of the Users dataset you are adding the
    -- user or users to.
    datasetArn :: Prelude.Text,
    -- | A list of user data.
    users :: Prelude.NonEmpty User
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutUsers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'datasetArn', 'putUsers_datasetArn' - The Amazon Resource Name (ARN) of the Users dataset you are adding the
-- user or users to.
--
-- 'users', 'putUsers_users' - A list of user data.
newPutUsers ::
  -- | 'datasetArn'
  Prelude.Text ->
  -- | 'users'
  Prelude.NonEmpty User ->
  PutUsers
newPutUsers pDatasetArn_ pUsers_ =
  PutUsers'
    { datasetArn = pDatasetArn_,
      users = Lens.coerced Lens.# pUsers_
    }

-- | The Amazon Resource Name (ARN) of the Users dataset you are adding the
-- user or users to.
putUsers_datasetArn :: Lens.Lens' PutUsers Prelude.Text
putUsers_datasetArn = Lens.lens (\PutUsers' {datasetArn} -> datasetArn) (\s@PutUsers' {} a -> s {datasetArn = a} :: PutUsers)

-- | A list of user data.
putUsers_users :: Lens.Lens' PutUsers (Prelude.NonEmpty User)
putUsers_users = Lens.lens (\PutUsers' {users} -> users) (\s@PutUsers' {} a -> s {users = a} :: PutUsers) Prelude.. Lens.coerced

instance Core.AWSRequest PutUsers where
  type AWSResponse PutUsers = PutUsersResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull PutUsersResponse'

instance Prelude.Hashable PutUsers

instance Prelude.NFData PutUsers

instance Core.ToHeaders PutUsers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutUsers where
  toJSON PutUsers' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("datasetArn" Core..= datasetArn),
            Prelude.Just ("users" Core..= users)
          ]
      )

instance Core.ToPath PutUsers where
  toPath = Prelude.const "/users"

instance Core.ToQuery PutUsers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutUsersResponse' smart constructor.
data PutUsersResponse = PutUsersResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutUsersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutUsersResponse ::
  PutUsersResponse
newPutUsersResponse = PutUsersResponse'

instance Prelude.NFData PutUsersResponse
