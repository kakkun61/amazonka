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
-- Module      : Network.AWS.Chime.CreateAppInstanceUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user under an Amazon Chime @AppInstance@. The request consists
-- of a unique @appInstanceUserId@ and @Name@ for that user.
module Network.AWS.Chime.CreateAppInstanceUser
  ( -- * Creating a Request
    CreateAppInstanceUser (..),
    newCreateAppInstanceUser,

    -- * Request Lenses
    createAppInstanceUser_metadata,
    createAppInstanceUser_tags,
    createAppInstanceUser_appInstanceArn,
    createAppInstanceUser_appInstanceUserId,
    createAppInstanceUser_name,
    createAppInstanceUser_clientRequestToken,

    -- * Destructuring the Response
    CreateAppInstanceUserResponse (..),
    newCreateAppInstanceUserResponse,

    -- * Response Lenses
    createAppInstanceUserResponse_appInstanceUserArn,
    createAppInstanceUserResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateAppInstanceUser' smart constructor.
data CreateAppInstanceUser = CreateAppInstanceUser'
  { -- | The request\'s metadata. Limited to a 1KB string in UTF-8.
    metadata :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Tags assigned to the @AppInstanceUser@.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The ARN of the @AppInstance@ request.
    appInstanceArn :: Prelude.Text,
    -- | The user ID of the @AppInstance@.
    appInstanceUserId :: Core.Sensitive Prelude.Text,
    -- | The user\'s name.
    name :: Core.Sensitive Prelude.Text,
    -- | The token assigned to the user requesting an @AppInstance@.
    clientRequestToken :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAppInstanceUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metadata', 'createAppInstanceUser_metadata' - The request\'s metadata. Limited to a 1KB string in UTF-8.
--
-- 'tags', 'createAppInstanceUser_tags' - Tags assigned to the @AppInstanceUser@.
--
-- 'appInstanceArn', 'createAppInstanceUser_appInstanceArn' - The ARN of the @AppInstance@ request.
--
-- 'appInstanceUserId', 'createAppInstanceUser_appInstanceUserId' - The user ID of the @AppInstance@.
--
-- 'name', 'createAppInstanceUser_name' - The user\'s name.
--
-- 'clientRequestToken', 'createAppInstanceUser_clientRequestToken' - The token assigned to the user requesting an @AppInstance@.
newCreateAppInstanceUser ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  -- | 'appInstanceUserId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  CreateAppInstanceUser
newCreateAppInstanceUser
  pAppInstanceArn_
  pAppInstanceUserId_
  pName_
  pClientRequestToken_ =
    CreateAppInstanceUser'
      { metadata = Prelude.Nothing,
        tags = Prelude.Nothing,
        appInstanceArn = pAppInstanceArn_,
        appInstanceUserId =
          Core._Sensitive Lens.# pAppInstanceUserId_,
        name = Core._Sensitive Lens.# pName_,
        clientRequestToken =
          Core._Sensitive Lens.# pClientRequestToken_
      }

-- | The request\'s metadata. Limited to a 1KB string in UTF-8.
createAppInstanceUser_metadata :: Lens.Lens' CreateAppInstanceUser (Prelude.Maybe Prelude.Text)
createAppInstanceUser_metadata = Lens.lens (\CreateAppInstanceUser' {metadata} -> metadata) (\s@CreateAppInstanceUser' {} a -> s {metadata = a} :: CreateAppInstanceUser) Prelude.. Lens.mapping Core._Sensitive

-- | Tags assigned to the @AppInstanceUser@.
createAppInstanceUser_tags :: Lens.Lens' CreateAppInstanceUser (Prelude.Maybe (Prelude.NonEmpty Tag))
createAppInstanceUser_tags = Lens.lens (\CreateAppInstanceUser' {tags} -> tags) (\s@CreateAppInstanceUser' {} a -> s {tags = a} :: CreateAppInstanceUser) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the @AppInstance@ request.
createAppInstanceUser_appInstanceArn :: Lens.Lens' CreateAppInstanceUser Prelude.Text
createAppInstanceUser_appInstanceArn = Lens.lens (\CreateAppInstanceUser' {appInstanceArn} -> appInstanceArn) (\s@CreateAppInstanceUser' {} a -> s {appInstanceArn = a} :: CreateAppInstanceUser)

-- | The user ID of the @AppInstance@.
createAppInstanceUser_appInstanceUserId :: Lens.Lens' CreateAppInstanceUser Prelude.Text
createAppInstanceUser_appInstanceUserId = Lens.lens (\CreateAppInstanceUser' {appInstanceUserId} -> appInstanceUserId) (\s@CreateAppInstanceUser' {} a -> s {appInstanceUserId = a} :: CreateAppInstanceUser) Prelude.. Core._Sensitive

-- | The user\'s name.
createAppInstanceUser_name :: Lens.Lens' CreateAppInstanceUser Prelude.Text
createAppInstanceUser_name = Lens.lens (\CreateAppInstanceUser' {name} -> name) (\s@CreateAppInstanceUser' {} a -> s {name = a} :: CreateAppInstanceUser) Prelude.. Core._Sensitive

-- | The token assigned to the user requesting an @AppInstance@.
createAppInstanceUser_clientRequestToken :: Lens.Lens' CreateAppInstanceUser Prelude.Text
createAppInstanceUser_clientRequestToken = Lens.lens (\CreateAppInstanceUser' {clientRequestToken} -> clientRequestToken) (\s@CreateAppInstanceUser' {} a -> s {clientRequestToken = a} :: CreateAppInstanceUser) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateAppInstanceUser where
  type
    AWSResponse CreateAppInstanceUser =
      CreateAppInstanceUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAppInstanceUserResponse'
            Prelude.<$> (x Core..?> "AppInstanceUserArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAppInstanceUser

instance Prelude.NFData CreateAppInstanceUser

instance Core.ToHeaders CreateAppInstanceUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateAppInstanceUser where
  toJSON CreateAppInstanceUser' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Metadata" Core..=) Prelude.<$> metadata,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("AppInstanceArn" Core..= appInstanceArn),
            Prelude.Just
              ("AppInstanceUserId" Core..= appInstanceUserId),
            Prelude.Just ("Name" Core..= name),
            Prelude.Just
              ("ClientRequestToken" Core..= clientRequestToken)
          ]
      )

instance Core.ToPath CreateAppInstanceUser where
  toPath = Prelude.const "/app-instance-users"

instance Core.ToQuery CreateAppInstanceUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAppInstanceUserResponse' smart constructor.
data CreateAppInstanceUserResponse = CreateAppInstanceUserResponse'
  { -- | The user\'s ARN.
    appInstanceUserArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAppInstanceUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceUserArn', 'createAppInstanceUserResponse_appInstanceUserArn' - The user\'s ARN.
--
-- 'httpStatus', 'createAppInstanceUserResponse_httpStatus' - The response's http status code.
newCreateAppInstanceUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAppInstanceUserResponse
newCreateAppInstanceUserResponse pHttpStatus_ =
  CreateAppInstanceUserResponse'
    { appInstanceUserArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The user\'s ARN.
createAppInstanceUserResponse_appInstanceUserArn :: Lens.Lens' CreateAppInstanceUserResponse (Prelude.Maybe Prelude.Text)
createAppInstanceUserResponse_appInstanceUserArn = Lens.lens (\CreateAppInstanceUserResponse' {appInstanceUserArn} -> appInstanceUserArn) (\s@CreateAppInstanceUserResponse' {} a -> s {appInstanceUserArn = a} :: CreateAppInstanceUserResponse)

-- | The response's http status code.
createAppInstanceUserResponse_httpStatus :: Lens.Lens' CreateAppInstanceUserResponse Prelude.Int
createAppInstanceUserResponse_httpStatus = Lens.lens (\CreateAppInstanceUserResponse' {httpStatus} -> httpStatus) (\s@CreateAppInstanceUserResponse' {} a -> s {httpStatus = a} :: CreateAppInstanceUserResponse)

instance Prelude.NFData CreateAppInstanceUserResponse
