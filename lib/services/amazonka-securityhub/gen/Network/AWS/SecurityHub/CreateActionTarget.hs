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
-- Module      : Network.AWS.SecurityHub.CreateActionTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a custom action target in Security Hub.
--
-- You can use custom actions on findings and insights in Security Hub to
-- trigger target actions in Amazon CloudWatch Events.
module Network.AWS.SecurityHub.CreateActionTarget
  ( -- * Creating a Request
    CreateActionTarget (..),
    newCreateActionTarget,

    -- * Request Lenses
    createActionTarget_name,
    createActionTarget_description,
    createActionTarget_id,

    -- * Destructuring the Response
    CreateActionTargetResponse (..),
    newCreateActionTargetResponse,

    -- * Response Lenses
    createActionTargetResponse_httpStatus,
    createActionTargetResponse_actionTargetArn,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newCreateActionTarget' smart constructor.
data CreateActionTarget = CreateActionTarget'
  { -- | The name of the custom action target. Can contain up to 20 characters.
    name :: Prelude.Text,
    -- | The description for the custom action target.
    description :: Prelude.Text,
    -- | The ID for the custom action target. Can contain up to 20 alphanumeric
    -- characters.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateActionTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'createActionTarget_name' - The name of the custom action target. Can contain up to 20 characters.
--
-- 'description', 'createActionTarget_description' - The description for the custom action target.
--
-- 'id', 'createActionTarget_id' - The ID for the custom action target. Can contain up to 20 alphanumeric
-- characters.
newCreateActionTarget ::
  -- | 'name'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  -- | 'id'
  Prelude.Text ->
  CreateActionTarget
newCreateActionTarget pName_ pDescription_ pId_ =
  CreateActionTarget'
    { name = pName_,
      description = pDescription_,
      id = pId_
    }

-- | The name of the custom action target. Can contain up to 20 characters.
createActionTarget_name :: Lens.Lens' CreateActionTarget Prelude.Text
createActionTarget_name = Lens.lens (\CreateActionTarget' {name} -> name) (\s@CreateActionTarget' {} a -> s {name = a} :: CreateActionTarget)

-- | The description for the custom action target.
createActionTarget_description :: Lens.Lens' CreateActionTarget Prelude.Text
createActionTarget_description = Lens.lens (\CreateActionTarget' {description} -> description) (\s@CreateActionTarget' {} a -> s {description = a} :: CreateActionTarget)

-- | The ID for the custom action target. Can contain up to 20 alphanumeric
-- characters.
createActionTarget_id :: Lens.Lens' CreateActionTarget Prelude.Text
createActionTarget_id = Lens.lens (\CreateActionTarget' {id} -> id) (\s@CreateActionTarget' {} a -> s {id = a} :: CreateActionTarget)

instance Core.AWSRequest CreateActionTarget where
  type
    AWSResponse CreateActionTarget =
      CreateActionTargetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateActionTargetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ActionTargetArn")
      )

instance Prelude.Hashable CreateActionTarget

instance Prelude.NFData CreateActionTarget

instance Core.ToHeaders CreateActionTarget where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateActionTarget where
  toJSON CreateActionTarget' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Description" Core..= description),
            Prelude.Just ("Id" Core..= id)
          ]
      )

instance Core.ToPath CreateActionTarget where
  toPath = Prelude.const "/actionTargets"

instance Core.ToQuery CreateActionTarget where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateActionTargetResponse' smart constructor.
data CreateActionTargetResponse = CreateActionTargetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN for the custom action target.
    actionTargetArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateActionTargetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createActionTargetResponse_httpStatus' - The response's http status code.
--
-- 'actionTargetArn', 'createActionTargetResponse_actionTargetArn' - The ARN for the custom action target.
newCreateActionTargetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'actionTargetArn'
  Prelude.Text ->
  CreateActionTargetResponse
newCreateActionTargetResponse
  pHttpStatus_
  pActionTargetArn_ =
    CreateActionTargetResponse'
      { httpStatus =
          pHttpStatus_,
        actionTargetArn = pActionTargetArn_
      }

-- | The response's http status code.
createActionTargetResponse_httpStatus :: Lens.Lens' CreateActionTargetResponse Prelude.Int
createActionTargetResponse_httpStatus = Lens.lens (\CreateActionTargetResponse' {httpStatus} -> httpStatus) (\s@CreateActionTargetResponse' {} a -> s {httpStatus = a} :: CreateActionTargetResponse)

-- | The ARN for the custom action target.
createActionTargetResponse_actionTargetArn :: Lens.Lens' CreateActionTargetResponse Prelude.Text
createActionTargetResponse_actionTargetArn = Lens.lens (\CreateActionTargetResponse' {actionTargetArn} -> actionTargetArn) (\s@CreateActionTargetResponse' {} a -> s {actionTargetArn = a} :: CreateActionTargetResponse)

instance Prelude.NFData CreateActionTargetResponse
