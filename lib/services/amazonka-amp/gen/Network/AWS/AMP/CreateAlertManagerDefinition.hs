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
-- Module      : Network.AWS.AMP.CreateAlertManagerDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an alert manager definition.
module Network.AWS.AMP.CreateAlertManagerDefinition
  ( -- * Creating a Request
    CreateAlertManagerDefinition (..),
    newCreateAlertManagerDefinition,

    -- * Request Lenses
    createAlertManagerDefinition_clientToken,
    createAlertManagerDefinition_data,
    createAlertManagerDefinition_workspaceId,

    -- * Destructuring the Response
    CreateAlertManagerDefinitionResponse (..),
    newCreateAlertManagerDefinitionResponse,

    -- * Response Lenses
    createAlertManagerDefinitionResponse_httpStatus,
    createAlertManagerDefinitionResponse_status,
  )
where

import Network.AWS.AMP.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a CreateAlertManagerDefinition operation.
--
-- /See:/ 'newCreateAlertManagerDefinition' smart constructor.
data CreateAlertManagerDefinition = CreateAlertManagerDefinition'
  { -- | Optional, unique, case-sensitive, user-provided identifier to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The alert manager definition data.
    data' :: Core.Base64,
    -- | The ID of the workspace in which to create the alert manager definition.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAlertManagerDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createAlertManagerDefinition_clientToken' - Optional, unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
--
-- 'data'', 'createAlertManagerDefinition_data' - The alert manager definition data.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'workspaceId', 'createAlertManagerDefinition_workspaceId' - The ID of the workspace in which to create the alert manager definition.
newCreateAlertManagerDefinition ::
  -- | 'data''
  Prelude.ByteString ->
  -- | 'workspaceId'
  Prelude.Text ->
  CreateAlertManagerDefinition
newCreateAlertManagerDefinition pData_ pWorkspaceId_ =
  CreateAlertManagerDefinition'
    { clientToken =
        Prelude.Nothing,
      data' = Core._Base64 Lens.# pData_,
      workspaceId = pWorkspaceId_
    }

-- | Optional, unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
createAlertManagerDefinition_clientToken :: Lens.Lens' CreateAlertManagerDefinition (Prelude.Maybe Prelude.Text)
createAlertManagerDefinition_clientToken = Lens.lens (\CreateAlertManagerDefinition' {clientToken} -> clientToken) (\s@CreateAlertManagerDefinition' {} a -> s {clientToken = a} :: CreateAlertManagerDefinition)

-- | The alert manager definition data.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
createAlertManagerDefinition_data :: Lens.Lens' CreateAlertManagerDefinition Prelude.ByteString
createAlertManagerDefinition_data = Lens.lens (\CreateAlertManagerDefinition' {data'} -> data') (\s@CreateAlertManagerDefinition' {} a -> s {data' = a} :: CreateAlertManagerDefinition) Prelude.. Core._Base64

-- | The ID of the workspace in which to create the alert manager definition.
createAlertManagerDefinition_workspaceId :: Lens.Lens' CreateAlertManagerDefinition Prelude.Text
createAlertManagerDefinition_workspaceId = Lens.lens (\CreateAlertManagerDefinition' {workspaceId} -> workspaceId) (\s@CreateAlertManagerDefinition' {} a -> s {workspaceId = a} :: CreateAlertManagerDefinition)

instance Core.AWSRequest CreateAlertManagerDefinition where
  type
    AWSResponse CreateAlertManagerDefinition =
      CreateAlertManagerDefinitionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAlertManagerDefinitionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "status")
      )

instance
  Prelude.Hashable
    CreateAlertManagerDefinition

instance Prelude.NFData CreateAlertManagerDefinition

instance Core.ToHeaders CreateAlertManagerDefinition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAlertManagerDefinition where
  toJSON CreateAlertManagerDefinition' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("data" Core..= data')
          ]
      )

instance Core.ToPath CreateAlertManagerDefinition where
  toPath CreateAlertManagerDefinition' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/alertmanager/definition"
      ]

instance Core.ToQuery CreateAlertManagerDefinition where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a CreateAlertManagerDefinition operation.
--
-- /See:/ 'newCreateAlertManagerDefinitionResponse' smart constructor.
data CreateAlertManagerDefinitionResponse = CreateAlertManagerDefinitionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of alert manager definition.
    status :: AlertManagerDefinitionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAlertManagerDefinitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createAlertManagerDefinitionResponse_httpStatus' - The response's http status code.
--
-- 'status', 'createAlertManagerDefinitionResponse_status' - The status of alert manager definition.
newCreateAlertManagerDefinitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'status'
  AlertManagerDefinitionStatus ->
  CreateAlertManagerDefinitionResponse
newCreateAlertManagerDefinitionResponse
  pHttpStatus_
  pStatus_ =
    CreateAlertManagerDefinitionResponse'
      { httpStatus =
          pHttpStatus_,
        status = pStatus_
      }

-- | The response's http status code.
createAlertManagerDefinitionResponse_httpStatus :: Lens.Lens' CreateAlertManagerDefinitionResponse Prelude.Int
createAlertManagerDefinitionResponse_httpStatus = Lens.lens (\CreateAlertManagerDefinitionResponse' {httpStatus} -> httpStatus) (\s@CreateAlertManagerDefinitionResponse' {} a -> s {httpStatus = a} :: CreateAlertManagerDefinitionResponse)

-- | The status of alert manager definition.
createAlertManagerDefinitionResponse_status :: Lens.Lens' CreateAlertManagerDefinitionResponse AlertManagerDefinitionStatus
createAlertManagerDefinitionResponse_status = Lens.lens (\CreateAlertManagerDefinitionResponse' {status} -> status) (\s@CreateAlertManagerDefinitionResponse' {} a -> s {status = a} :: CreateAlertManagerDefinitionResponse)

instance
  Prelude.NFData
    CreateAlertManagerDefinitionResponse
