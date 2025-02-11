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
-- Module      : Network.AWS.Chime.GetSipRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the details of a SIP rule, such as the rule ID, name,
-- triggers, and target endpoints.
module Network.AWS.Chime.GetSipRule
  ( -- * Creating a Request
    GetSipRule (..),
    newGetSipRule,

    -- * Request Lenses
    getSipRule_sipRuleId,

    -- * Destructuring the Response
    GetSipRuleResponse (..),
    newGetSipRuleResponse,

    -- * Response Lenses
    getSipRuleResponse_sipRule,
    getSipRuleResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetSipRule' smart constructor.
data GetSipRule = GetSipRule'
  { -- | The SIP rule ID.
    sipRuleId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSipRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipRuleId', 'getSipRule_sipRuleId' - The SIP rule ID.
newGetSipRule ::
  -- | 'sipRuleId'
  Prelude.Text ->
  GetSipRule
newGetSipRule pSipRuleId_ =
  GetSipRule' {sipRuleId = pSipRuleId_}

-- | The SIP rule ID.
getSipRule_sipRuleId :: Lens.Lens' GetSipRule Prelude.Text
getSipRule_sipRuleId = Lens.lens (\GetSipRule' {sipRuleId} -> sipRuleId) (\s@GetSipRule' {} a -> s {sipRuleId = a} :: GetSipRule)

instance Core.AWSRequest GetSipRule where
  type AWSResponse GetSipRule = GetSipRuleResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSipRuleResponse'
            Prelude.<$> (x Core..?> "SipRule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetSipRule

instance Prelude.NFData GetSipRule

instance Core.ToHeaders GetSipRule where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetSipRule where
  toPath GetSipRule' {..} =
    Prelude.mconcat
      ["/sip-rules/", Core.toBS sipRuleId]

instance Core.ToQuery GetSipRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetSipRuleResponse' smart constructor.
data GetSipRuleResponse = GetSipRuleResponse'
  { -- | The SIP rule details.
    sipRule :: Prelude.Maybe SipRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetSipRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipRule', 'getSipRuleResponse_sipRule' - The SIP rule details.
--
-- 'httpStatus', 'getSipRuleResponse_httpStatus' - The response's http status code.
newGetSipRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetSipRuleResponse
newGetSipRuleResponse pHttpStatus_ =
  GetSipRuleResponse'
    { sipRule = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The SIP rule details.
getSipRuleResponse_sipRule :: Lens.Lens' GetSipRuleResponse (Prelude.Maybe SipRule)
getSipRuleResponse_sipRule = Lens.lens (\GetSipRuleResponse' {sipRule} -> sipRule) (\s@GetSipRuleResponse' {} a -> s {sipRule = a} :: GetSipRuleResponse)

-- | The response's http status code.
getSipRuleResponse_httpStatus :: Lens.Lens' GetSipRuleResponse Prelude.Int
getSipRuleResponse_httpStatus = Lens.lens (\GetSipRuleResponse' {httpStatus} -> httpStatus) (\s@GetSipRuleResponse' {} a -> s {httpStatus = a} :: GetSipRuleResponse)

instance Prelude.NFData GetSipRuleResponse
