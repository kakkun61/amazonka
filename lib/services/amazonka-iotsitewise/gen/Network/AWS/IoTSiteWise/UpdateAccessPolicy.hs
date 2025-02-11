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
-- Module      : Network.AWS.IoTSiteWise.UpdateAccessPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing access policy that specifies an identity\'s access
-- to an IoT SiteWise Monitor portal or project resource.
module Network.AWS.IoTSiteWise.UpdateAccessPolicy
  ( -- * Creating a Request
    UpdateAccessPolicy (..),
    newUpdateAccessPolicy,

    -- * Request Lenses
    updateAccessPolicy_clientToken,
    updateAccessPolicy_accessPolicyId,
    updateAccessPolicy_accessPolicyIdentity,
    updateAccessPolicy_accessPolicyResource,
    updateAccessPolicy_accessPolicyPermission,

    -- * Destructuring the Response
    UpdateAccessPolicyResponse (..),
    newUpdateAccessPolicyResponse,

    -- * Response Lenses
    updateAccessPolicyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateAccessPolicy' smart constructor.
data UpdateAccessPolicy = UpdateAccessPolicy'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the access policy.
    accessPolicyId :: Prelude.Text,
    -- | The identity for this access policy. Choose an Amazon Web Services SSO
    -- user, an Amazon Web Services SSO group, or an IAM user.
    accessPolicyIdentity :: Identity,
    -- | The IoT SiteWise Monitor resource for this access policy. Choose either
    -- a portal or a project.
    accessPolicyResource :: Resource,
    -- | The permission level for this access policy. Note that a project
    -- @ADMINISTRATOR@ is also known as a project owner.
    accessPolicyPermission :: Permission
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccessPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateAccessPolicy_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'accessPolicyId', 'updateAccessPolicy_accessPolicyId' - The ID of the access policy.
--
-- 'accessPolicyIdentity', 'updateAccessPolicy_accessPolicyIdentity' - The identity for this access policy. Choose an Amazon Web Services SSO
-- user, an Amazon Web Services SSO group, or an IAM user.
--
-- 'accessPolicyResource', 'updateAccessPolicy_accessPolicyResource' - The IoT SiteWise Monitor resource for this access policy. Choose either
-- a portal or a project.
--
-- 'accessPolicyPermission', 'updateAccessPolicy_accessPolicyPermission' - The permission level for this access policy. Note that a project
-- @ADMINISTRATOR@ is also known as a project owner.
newUpdateAccessPolicy ::
  -- | 'accessPolicyId'
  Prelude.Text ->
  -- | 'accessPolicyIdentity'
  Identity ->
  -- | 'accessPolicyResource'
  Resource ->
  -- | 'accessPolicyPermission'
  Permission ->
  UpdateAccessPolicy
newUpdateAccessPolicy
  pAccessPolicyId_
  pAccessPolicyIdentity_
  pAccessPolicyResource_
  pAccessPolicyPermission_ =
    UpdateAccessPolicy'
      { clientToken = Prelude.Nothing,
        accessPolicyId = pAccessPolicyId_,
        accessPolicyIdentity = pAccessPolicyIdentity_,
        accessPolicyResource = pAccessPolicyResource_,
        accessPolicyPermission = pAccessPolicyPermission_
      }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
updateAccessPolicy_clientToken :: Lens.Lens' UpdateAccessPolicy (Prelude.Maybe Prelude.Text)
updateAccessPolicy_clientToken = Lens.lens (\UpdateAccessPolicy' {clientToken} -> clientToken) (\s@UpdateAccessPolicy' {} a -> s {clientToken = a} :: UpdateAccessPolicy)

-- | The ID of the access policy.
updateAccessPolicy_accessPolicyId :: Lens.Lens' UpdateAccessPolicy Prelude.Text
updateAccessPolicy_accessPolicyId = Lens.lens (\UpdateAccessPolicy' {accessPolicyId} -> accessPolicyId) (\s@UpdateAccessPolicy' {} a -> s {accessPolicyId = a} :: UpdateAccessPolicy)

-- | The identity for this access policy. Choose an Amazon Web Services SSO
-- user, an Amazon Web Services SSO group, or an IAM user.
updateAccessPolicy_accessPolicyIdentity :: Lens.Lens' UpdateAccessPolicy Identity
updateAccessPolicy_accessPolicyIdentity = Lens.lens (\UpdateAccessPolicy' {accessPolicyIdentity} -> accessPolicyIdentity) (\s@UpdateAccessPolicy' {} a -> s {accessPolicyIdentity = a} :: UpdateAccessPolicy)

-- | The IoT SiteWise Monitor resource for this access policy. Choose either
-- a portal or a project.
updateAccessPolicy_accessPolicyResource :: Lens.Lens' UpdateAccessPolicy Resource
updateAccessPolicy_accessPolicyResource = Lens.lens (\UpdateAccessPolicy' {accessPolicyResource} -> accessPolicyResource) (\s@UpdateAccessPolicy' {} a -> s {accessPolicyResource = a} :: UpdateAccessPolicy)

-- | The permission level for this access policy. Note that a project
-- @ADMINISTRATOR@ is also known as a project owner.
updateAccessPolicy_accessPolicyPermission :: Lens.Lens' UpdateAccessPolicy Permission
updateAccessPolicy_accessPolicyPermission = Lens.lens (\UpdateAccessPolicy' {accessPolicyPermission} -> accessPolicyPermission) (\s@UpdateAccessPolicy' {} a -> s {accessPolicyPermission = a} :: UpdateAccessPolicy)

instance Core.AWSRequest UpdateAccessPolicy where
  type
    AWSResponse UpdateAccessPolicy =
      UpdateAccessPolicyResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateAccessPolicyResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAccessPolicy

instance Prelude.NFData UpdateAccessPolicy

instance Core.ToHeaders UpdateAccessPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAccessPolicy where
  toJSON UpdateAccessPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just
              ( "accessPolicyIdentity"
                  Core..= accessPolicyIdentity
              ),
            Prelude.Just
              ( "accessPolicyResource"
                  Core..= accessPolicyResource
              ),
            Prelude.Just
              ( "accessPolicyPermission"
                  Core..= accessPolicyPermission
              )
          ]
      )

instance Core.ToPath UpdateAccessPolicy where
  toPath UpdateAccessPolicy' {..} =
    Prelude.mconcat
      ["/access-policies/", Core.toBS accessPolicyId]

instance Core.ToQuery UpdateAccessPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAccessPolicyResponse' smart constructor.
data UpdateAccessPolicyResponse = UpdateAccessPolicyResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccessPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateAccessPolicyResponse_httpStatus' - The response's http status code.
newUpdateAccessPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAccessPolicyResponse
newUpdateAccessPolicyResponse pHttpStatus_ =
  UpdateAccessPolicyResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateAccessPolicyResponse_httpStatus :: Lens.Lens' UpdateAccessPolicyResponse Prelude.Int
updateAccessPolicyResponse_httpStatus = Lens.lens (\UpdateAccessPolicyResponse' {httpStatus} -> httpStatus) (\s@UpdateAccessPolicyResponse' {} a -> s {httpStatus = a} :: UpdateAccessPolicyResponse)

instance Prelude.NFData UpdateAccessPolicyResponse
