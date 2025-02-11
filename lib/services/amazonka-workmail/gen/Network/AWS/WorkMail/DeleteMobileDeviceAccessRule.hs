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
-- Module      : Network.AWS.WorkMail.DeleteMobileDeviceAccessRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a mobile device access rule for the specified Amazon WorkMail
-- organization.
--
-- Deleting already deleted and non-existing rules does not produce an
-- error. In those cases, the service sends back an HTTP 200 response with
-- an empty HTTP body.
module Network.AWS.WorkMail.DeleteMobileDeviceAccessRule
  ( -- * Creating a Request
    DeleteMobileDeviceAccessRule (..),
    newDeleteMobileDeviceAccessRule,

    -- * Request Lenses
    deleteMobileDeviceAccessRule_organizationId,
    deleteMobileDeviceAccessRule_mobileDeviceAccessRuleId,

    -- * Destructuring the Response
    DeleteMobileDeviceAccessRuleResponse (..),
    newDeleteMobileDeviceAccessRuleResponse,

    -- * Response Lenses
    deleteMobileDeviceAccessRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'newDeleteMobileDeviceAccessRule' smart constructor.
data DeleteMobileDeviceAccessRule = DeleteMobileDeviceAccessRule'
  { -- | The Amazon WorkMail organization under which the rule will be deleted.
    organizationId :: Prelude.Text,
    -- | The identifier of the rule to be deleted.
    mobileDeviceAccessRuleId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMobileDeviceAccessRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationId', 'deleteMobileDeviceAccessRule_organizationId' - The Amazon WorkMail organization under which the rule will be deleted.
--
-- 'mobileDeviceAccessRuleId', 'deleteMobileDeviceAccessRule_mobileDeviceAccessRuleId' - The identifier of the rule to be deleted.
newDeleteMobileDeviceAccessRule ::
  -- | 'organizationId'
  Prelude.Text ->
  -- | 'mobileDeviceAccessRuleId'
  Prelude.Text ->
  DeleteMobileDeviceAccessRule
newDeleteMobileDeviceAccessRule
  pOrganizationId_
  pMobileDeviceAccessRuleId_ =
    DeleteMobileDeviceAccessRule'
      { organizationId =
          pOrganizationId_,
        mobileDeviceAccessRuleId =
          pMobileDeviceAccessRuleId_
      }

-- | The Amazon WorkMail organization under which the rule will be deleted.
deleteMobileDeviceAccessRule_organizationId :: Lens.Lens' DeleteMobileDeviceAccessRule Prelude.Text
deleteMobileDeviceAccessRule_organizationId = Lens.lens (\DeleteMobileDeviceAccessRule' {organizationId} -> organizationId) (\s@DeleteMobileDeviceAccessRule' {} a -> s {organizationId = a} :: DeleteMobileDeviceAccessRule)

-- | The identifier of the rule to be deleted.
deleteMobileDeviceAccessRule_mobileDeviceAccessRuleId :: Lens.Lens' DeleteMobileDeviceAccessRule Prelude.Text
deleteMobileDeviceAccessRule_mobileDeviceAccessRuleId = Lens.lens (\DeleteMobileDeviceAccessRule' {mobileDeviceAccessRuleId} -> mobileDeviceAccessRuleId) (\s@DeleteMobileDeviceAccessRule' {} a -> s {mobileDeviceAccessRuleId = a} :: DeleteMobileDeviceAccessRule)

instance Core.AWSRequest DeleteMobileDeviceAccessRule where
  type
    AWSResponse DeleteMobileDeviceAccessRule =
      DeleteMobileDeviceAccessRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteMobileDeviceAccessRuleResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteMobileDeviceAccessRule

instance Prelude.NFData DeleteMobileDeviceAccessRule

instance Core.ToHeaders DeleteMobileDeviceAccessRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.DeleteMobileDeviceAccessRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteMobileDeviceAccessRule where
  toJSON DeleteMobileDeviceAccessRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("OrganizationId" Core..= organizationId),
            Prelude.Just
              ( "MobileDeviceAccessRuleId"
                  Core..= mobileDeviceAccessRuleId
              )
          ]
      )

instance Core.ToPath DeleteMobileDeviceAccessRule where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteMobileDeviceAccessRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteMobileDeviceAccessRuleResponse' smart constructor.
data DeleteMobileDeviceAccessRuleResponse = DeleteMobileDeviceAccessRuleResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMobileDeviceAccessRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteMobileDeviceAccessRuleResponse_httpStatus' - The response's http status code.
newDeleteMobileDeviceAccessRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteMobileDeviceAccessRuleResponse
newDeleteMobileDeviceAccessRuleResponse pHttpStatus_ =
  DeleteMobileDeviceAccessRuleResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteMobileDeviceAccessRuleResponse_httpStatus :: Lens.Lens' DeleteMobileDeviceAccessRuleResponse Prelude.Int
deleteMobileDeviceAccessRuleResponse_httpStatus = Lens.lens (\DeleteMobileDeviceAccessRuleResponse' {httpStatus} -> httpStatus) (\s@DeleteMobileDeviceAccessRuleResponse' {} a -> s {httpStatus = a} :: DeleteMobileDeviceAccessRuleResponse)

instance
  Prelude.NFData
    DeleteMobileDeviceAccessRuleResponse
