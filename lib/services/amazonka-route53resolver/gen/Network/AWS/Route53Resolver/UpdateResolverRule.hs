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
-- Module      : Network.AWS.Route53Resolver.UpdateResolverRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates settings for a specified Resolver rule. @ResolverRuleId@ is
-- required, and all other parameters are optional. If you don\'t specify a
-- parameter, it retains its current value.
module Network.AWS.Route53Resolver.UpdateResolverRule
  ( -- * Creating a Request
    UpdateResolverRule (..),
    newUpdateResolverRule,

    -- * Request Lenses
    updateResolverRule_resolverRuleId,
    updateResolverRule_config,

    -- * Destructuring the Response
    UpdateResolverRuleResponse (..),
    newUpdateResolverRuleResponse,

    -- * Response Lenses
    updateResolverRuleResponse_resolverRule,
    updateResolverRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Resolver.Types

-- | /See:/ 'newUpdateResolverRule' smart constructor.
data UpdateResolverRule = UpdateResolverRule'
  { -- | The ID of the Resolver rule that you want to update.
    resolverRuleId :: Prelude.Text,
    -- | The new settings for the Resolver rule.
    config :: ResolverRuleConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateResolverRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverRuleId', 'updateResolverRule_resolverRuleId' - The ID of the Resolver rule that you want to update.
--
-- 'config', 'updateResolverRule_config' - The new settings for the Resolver rule.
newUpdateResolverRule ::
  -- | 'resolverRuleId'
  Prelude.Text ->
  -- | 'config'
  ResolverRuleConfig ->
  UpdateResolverRule
newUpdateResolverRule pResolverRuleId_ pConfig_ =
  UpdateResolverRule'
    { resolverRuleId =
        pResolverRuleId_,
      config = pConfig_
    }

-- | The ID of the Resolver rule that you want to update.
updateResolverRule_resolverRuleId :: Lens.Lens' UpdateResolverRule Prelude.Text
updateResolverRule_resolverRuleId = Lens.lens (\UpdateResolverRule' {resolverRuleId} -> resolverRuleId) (\s@UpdateResolverRule' {} a -> s {resolverRuleId = a} :: UpdateResolverRule)

-- | The new settings for the Resolver rule.
updateResolverRule_config :: Lens.Lens' UpdateResolverRule ResolverRuleConfig
updateResolverRule_config = Lens.lens (\UpdateResolverRule' {config} -> config) (\s@UpdateResolverRule' {} a -> s {config = a} :: UpdateResolverRule)

instance Core.AWSRequest UpdateResolverRule where
  type
    AWSResponse UpdateResolverRule =
      UpdateResolverRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateResolverRuleResponse'
            Prelude.<$> (x Core..?> "ResolverRule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateResolverRule

instance Prelude.NFData UpdateResolverRule

instance Core.ToHeaders UpdateResolverRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Route53Resolver.UpdateResolverRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateResolverRule where
  toJSON UpdateResolverRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResolverRuleId" Core..= resolverRuleId),
            Prelude.Just ("Config" Core..= config)
          ]
      )

instance Core.ToPath UpdateResolverRule where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateResolverRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateResolverRuleResponse' smart constructor.
data UpdateResolverRuleResponse = UpdateResolverRuleResponse'
  { -- | The response to an @UpdateResolverRule@ request.
    resolverRule :: Prelude.Maybe ResolverRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateResolverRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resolverRule', 'updateResolverRuleResponse_resolverRule' - The response to an @UpdateResolverRule@ request.
--
-- 'httpStatus', 'updateResolverRuleResponse_httpStatus' - The response's http status code.
newUpdateResolverRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateResolverRuleResponse
newUpdateResolverRuleResponse pHttpStatus_ =
  UpdateResolverRuleResponse'
    { resolverRule =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The response to an @UpdateResolverRule@ request.
updateResolverRuleResponse_resolverRule :: Lens.Lens' UpdateResolverRuleResponse (Prelude.Maybe ResolverRule)
updateResolverRuleResponse_resolverRule = Lens.lens (\UpdateResolverRuleResponse' {resolverRule} -> resolverRule) (\s@UpdateResolverRuleResponse' {} a -> s {resolverRule = a} :: UpdateResolverRuleResponse)

-- | The response's http status code.
updateResolverRuleResponse_httpStatus :: Lens.Lens' UpdateResolverRuleResponse Prelude.Int
updateResolverRuleResponse_httpStatus = Lens.lens (\UpdateResolverRuleResponse' {httpStatus} -> httpStatus) (\s@UpdateResolverRuleResponse' {} a -> s {httpStatus = a} :: UpdateResolverRuleResponse)

instance Prelude.NFData UpdateResolverRuleResponse
