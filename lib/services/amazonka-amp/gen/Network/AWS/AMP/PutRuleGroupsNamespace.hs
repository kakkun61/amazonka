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
-- Module      : Network.AWS.AMP.PutRuleGroupsNamespace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update a rule groups namespace.
module Network.AWS.AMP.PutRuleGroupsNamespace
  ( -- * Creating a Request
    PutRuleGroupsNamespace (..),
    newPutRuleGroupsNamespace,

    -- * Request Lenses
    putRuleGroupsNamespace_clientToken,
    putRuleGroupsNamespace_data,
    putRuleGroupsNamespace_name,
    putRuleGroupsNamespace_workspaceId,

    -- * Destructuring the Response
    PutRuleGroupsNamespaceResponse (..),
    newPutRuleGroupsNamespaceResponse,

    -- * Response Lenses
    putRuleGroupsNamespaceResponse_tags,
    putRuleGroupsNamespaceResponse_httpStatus,
    putRuleGroupsNamespaceResponse_arn,
    putRuleGroupsNamespaceResponse_name,
    putRuleGroupsNamespaceResponse_status,
  )
where

import Network.AWS.AMP.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a PutRuleGroupsNamespace operation.
--
-- /See:/ 'newPutRuleGroupsNamespace' smart constructor.
data PutRuleGroupsNamespace = PutRuleGroupsNamespace'
  { -- | Optional, unique, case-sensitive, user-provided identifier to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The namespace data that define the rule groups.
    data' :: Core.Base64,
    -- | The rule groups namespace name.
    name :: Prelude.Text,
    -- | The ID of the workspace in which to update the rule group namespace.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRuleGroupsNamespace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'putRuleGroupsNamespace_clientToken' - Optional, unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
--
-- 'data'', 'putRuleGroupsNamespace_data' - The namespace data that define the rule groups.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'name', 'putRuleGroupsNamespace_name' - The rule groups namespace name.
--
-- 'workspaceId', 'putRuleGroupsNamespace_workspaceId' - The ID of the workspace in which to update the rule group namespace.
newPutRuleGroupsNamespace ::
  -- | 'data''
  Prelude.ByteString ->
  -- | 'name'
  Prelude.Text ->
  -- | 'workspaceId'
  Prelude.Text ->
  PutRuleGroupsNamespace
newPutRuleGroupsNamespace pData_ pName_ pWorkspaceId_ =
  PutRuleGroupsNamespace'
    { clientToken =
        Prelude.Nothing,
      data' = Core._Base64 Lens.# pData_,
      name = pName_,
      workspaceId = pWorkspaceId_
    }

-- | Optional, unique, case-sensitive, user-provided identifier to ensure the
-- idempotency of the request.
putRuleGroupsNamespace_clientToken :: Lens.Lens' PutRuleGroupsNamespace (Prelude.Maybe Prelude.Text)
putRuleGroupsNamespace_clientToken = Lens.lens (\PutRuleGroupsNamespace' {clientToken} -> clientToken) (\s@PutRuleGroupsNamespace' {} a -> s {clientToken = a} :: PutRuleGroupsNamespace)

-- | The namespace data that define the rule groups.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
putRuleGroupsNamespace_data :: Lens.Lens' PutRuleGroupsNamespace Prelude.ByteString
putRuleGroupsNamespace_data = Lens.lens (\PutRuleGroupsNamespace' {data'} -> data') (\s@PutRuleGroupsNamespace' {} a -> s {data' = a} :: PutRuleGroupsNamespace) Prelude.. Core._Base64

-- | The rule groups namespace name.
putRuleGroupsNamespace_name :: Lens.Lens' PutRuleGroupsNamespace Prelude.Text
putRuleGroupsNamespace_name = Lens.lens (\PutRuleGroupsNamespace' {name} -> name) (\s@PutRuleGroupsNamespace' {} a -> s {name = a} :: PutRuleGroupsNamespace)

-- | The ID of the workspace in which to update the rule group namespace.
putRuleGroupsNamespace_workspaceId :: Lens.Lens' PutRuleGroupsNamespace Prelude.Text
putRuleGroupsNamespace_workspaceId = Lens.lens (\PutRuleGroupsNamespace' {workspaceId} -> workspaceId) (\s@PutRuleGroupsNamespace' {} a -> s {workspaceId = a} :: PutRuleGroupsNamespace)

instance Core.AWSRequest PutRuleGroupsNamespace where
  type
    AWSResponse PutRuleGroupsNamespace =
      PutRuleGroupsNamespaceResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutRuleGroupsNamespaceResponse'
            Prelude.<$> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "arn")
            Prelude.<*> (x Core..:> "name")
            Prelude.<*> (x Core..:> "status")
      )

instance Prelude.Hashable PutRuleGroupsNamespace

instance Prelude.NFData PutRuleGroupsNamespace

instance Core.ToHeaders PutRuleGroupsNamespace where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutRuleGroupsNamespace where
  toJSON PutRuleGroupsNamespace' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("data" Core..= data')
          ]
      )

instance Core.ToPath PutRuleGroupsNamespace where
  toPath PutRuleGroupsNamespace' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/rulegroupsnamespaces/",
        Core.toBS name
      ]

instance Core.ToQuery PutRuleGroupsNamespace where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a PutRuleGroupsNamespace operation.
--
-- /See:/ 'newPutRuleGroupsNamespaceResponse' smart constructor.
data PutRuleGroupsNamespaceResponse = PutRuleGroupsNamespaceResponse'
  { -- | The tags of this rule groups namespace.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of this rule groups namespace.
    arn :: Prelude.Text,
    -- | The rule groups namespace name.
    name :: Prelude.Text,
    -- | The status of rule groups namespace.
    status :: RuleGroupsNamespaceStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutRuleGroupsNamespaceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'putRuleGroupsNamespaceResponse_tags' - The tags of this rule groups namespace.
--
-- 'httpStatus', 'putRuleGroupsNamespaceResponse_httpStatus' - The response's http status code.
--
-- 'arn', 'putRuleGroupsNamespaceResponse_arn' - The Amazon Resource Name (ARN) of this rule groups namespace.
--
-- 'name', 'putRuleGroupsNamespaceResponse_name' - The rule groups namespace name.
--
-- 'status', 'putRuleGroupsNamespaceResponse_status' - The status of rule groups namespace.
newPutRuleGroupsNamespaceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'arn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'status'
  RuleGroupsNamespaceStatus ->
  PutRuleGroupsNamespaceResponse
newPutRuleGroupsNamespaceResponse
  pHttpStatus_
  pArn_
  pName_
  pStatus_ =
    PutRuleGroupsNamespaceResponse'
      { tags =
          Prelude.Nothing,
        httpStatus = pHttpStatus_,
        arn = pArn_,
        name = pName_,
        status = pStatus_
      }

-- | The tags of this rule groups namespace.
putRuleGroupsNamespaceResponse_tags :: Lens.Lens' PutRuleGroupsNamespaceResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
putRuleGroupsNamespaceResponse_tags = Lens.lens (\PutRuleGroupsNamespaceResponse' {tags} -> tags) (\s@PutRuleGroupsNamespaceResponse' {} a -> s {tags = a} :: PutRuleGroupsNamespaceResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
putRuleGroupsNamespaceResponse_httpStatus :: Lens.Lens' PutRuleGroupsNamespaceResponse Prelude.Int
putRuleGroupsNamespaceResponse_httpStatus = Lens.lens (\PutRuleGroupsNamespaceResponse' {httpStatus} -> httpStatus) (\s@PutRuleGroupsNamespaceResponse' {} a -> s {httpStatus = a} :: PutRuleGroupsNamespaceResponse)

-- | The Amazon Resource Name (ARN) of this rule groups namespace.
putRuleGroupsNamespaceResponse_arn :: Lens.Lens' PutRuleGroupsNamespaceResponse Prelude.Text
putRuleGroupsNamespaceResponse_arn = Lens.lens (\PutRuleGroupsNamespaceResponse' {arn} -> arn) (\s@PutRuleGroupsNamespaceResponse' {} a -> s {arn = a} :: PutRuleGroupsNamespaceResponse)

-- | The rule groups namespace name.
putRuleGroupsNamespaceResponse_name :: Lens.Lens' PutRuleGroupsNamespaceResponse Prelude.Text
putRuleGroupsNamespaceResponse_name = Lens.lens (\PutRuleGroupsNamespaceResponse' {name} -> name) (\s@PutRuleGroupsNamespaceResponse' {} a -> s {name = a} :: PutRuleGroupsNamespaceResponse)

-- | The status of rule groups namespace.
putRuleGroupsNamespaceResponse_status :: Lens.Lens' PutRuleGroupsNamespaceResponse RuleGroupsNamespaceStatus
putRuleGroupsNamespaceResponse_status = Lens.lens (\PutRuleGroupsNamespaceResponse' {status} -> status) (\s@PutRuleGroupsNamespaceResponse' {} a -> s {status = a} :: PutRuleGroupsNamespaceResponse)

instance
  Prelude.NFData
    PutRuleGroupsNamespaceResponse
