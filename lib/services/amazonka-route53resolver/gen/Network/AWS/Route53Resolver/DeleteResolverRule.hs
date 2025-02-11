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
-- Module      : Network.AWS.Route53Resolver.DeleteResolverRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Resolver rule. Before you can delete a Resolver rule, you must
-- disassociate it from all the VPCs that you associated the Resolver rule
-- with. For more information, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_DisassociateResolverRule.html DisassociateResolverRule>.
module Network.AWS.Route53Resolver.DeleteResolverRule
  ( -- * Creating a Request
    DeleteResolverRule (..),
    newDeleteResolverRule,

    -- * Request Lenses
    deleteResolverRule_resolverRuleId,

    -- * Destructuring the Response
    DeleteResolverRuleResponse (..),
    newDeleteResolverRuleResponse,

    -- * Response Lenses
    deleteResolverRuleResponse_resolverRule,
    deleteResolverRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newDeleteResolverRule' smart constructor.
data DeleteResolverRule = DeleteResolverRule'
  { -- | The ID of the Resolver rule that you want to delete.
    resolverRuleId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteResolverRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverRuleId', 'deleteResolverRule_resolverRuleId' - The ID of the Resolver rule that you want to delete.
newDeleteResolverRule ::
  -- | 'resolverRuleId'
  Prelude.Text ->
  DeleteResolverRule
newDeleteResolverRule pResolverRuleId_ =
  DeleteResolverRule'
    { resolverRuleId =
        pResolverRuleId_
    }

-- | The ID of the Resolver rule that you want to delete.
deleteResolverRule_resolverRuleId :: Lens.Lens' DeleteResolverRule Prelude.Text
deleteResolverRule_resolverRuleId = Lens.lens (\DeleteResolverRule' {resolverRuleId} -> resolverRuleId) (\s@DeleteResolverRule' {} a -> s {resolverRuleId = a} :: DeleteResolverRule)

instance Core.AWSRequest DeleteResolverRule where
  type
    AWSResponse DeleteResolverRule =
      DeleteResolverRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteResolverRuleResponse'
            Prelude.<$> (x Core..?> "ResolverRule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteResolverRule

instance Prelude.NFData DeleteResolverRule

instance Core.ToHeaders DeleteResolverRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.DeleteResolverRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteResolverRule where
  toJSON DeleteResolverRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResolverRuleId" Core..= resolverRuleId)
          ]
      )

instance Core.ToPath DeleteResolverRule where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteResolverRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteResolverRuleResponse' smart constructor.
data DeleteResolverRuleResponse = DeleteResolverRuleResponse'
  { -- | Information about the @DeleteResolverRule@ request, including the status
    -- of the request.
    resolverRule :: Prelude.Maybe ResolverRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteResolverRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverRule', 'deleteResolverRuleResponse_resolverRule' - Information about the @DeleteResolverRule@ request, including the status
-- of the request.
--
-- 'httpStatus', 'deleteResolverRuleResponse_httpStatus' - The response's http status code.
newDeleteResolverRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteResolverRuleResponse
newDeleteResolverRuleResponse pHttpStatus_ =
  DeleteResolverRuleResponse'
    { resolverRule =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the @DeleteResolverRule@ request, including the status
-- of the request.
deleteResolverRuleResponse_resolverRule :: Lens.Lens' DeleteResolverRuleResponse (Prelude.Maybe ResolverRule)
deleteResolverRuleResponse_resolverRule = Lens.lens (\DeleteResolverRuleResponse' {resolverRule} -> resolverRule) (\s@DeleteResolverRuleResponse' {} a -> s {resolverRule = a} :: DeleteResolverRuleResponse)

-- | The response's http status code.
deleteResolverRuleResponse_httpStatus :: Lens.Lens' DeleteResolverRuleResponse Prelude.Int
deleteResolverRuleResponse_httpStatus = Lens.lens (\DeleteResolverRuleResponse' {httpStatus} -> httpStatus) (\s@DeleteResolverRuleResponse' {} a -> s {httpStatus = a} :: DeleteResolverRuleResponse)

instance Prelude.NFData DeleteResolverRuleResponse
