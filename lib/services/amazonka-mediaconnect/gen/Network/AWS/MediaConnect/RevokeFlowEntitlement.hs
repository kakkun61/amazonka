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
-- Module      : Network.AWS.MediaConnect.RevokeFlowEntitlement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Revokes an entitlement from a flow. Once an entitlement is revoked, the
-- content becomes unavailable to the subscriber and the associated output
-- is removed.
module Network.AWS.MediaConnect.RevokeFlowEntitlement
  ( -- * Creating a Request
    RevokeFlowEntitlement (..),
    newRevokeFlowEntitlement,

    -- * Request Lenses
    revokeFlowEntitlement_flowArn,
    revokeFlowEntitlement_entitlementArn,

    -- * Destructuring the Response
    RevokeFlowEntitlementResponse (..),
    newRevokeFlowEntitlementResponse,

    -- * Response Lenses
    revokeFlowEntitlementResponse_entitlementArn,
    revokeFlowEntitlementResponse_flowArn,
    revokeFlowEntitlementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newRevokeFlowEntitlement' smart constructor.
data RevokeFlowEntitlement = RevokeFlowEntitlement'
  { -- | The flow that you want to revoke an entitlement from.
    flowArn :: Prelude.Text,
    -- | The ARN of the entitlement that you want to revoke.
    entitlementArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeFlowEntitlement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowArn', 'revokeFlowEntitlement_flowArn' - The flow that you want to revoke an entitlement from.
--
-- 'entitlementArn', 'revokeFlowEntitlement_entitlementArn' - The ARN of the entitlement that you want to revoke.
newRevokeFlowEntitlement ::
  -- | 'flowArn'
  Prelude.Text ->
  -- | 'entitlementArn'
  Prelude.Text ->
  RevokeFlowEntitlement
newRevokeFlowEntitlement pFlowArn_ pEntitlementArn_ =
  RevokeFlowEntitlement'
    { flowArn = pFlowArn_,
      entitlementArn = pEntitlementArn_
    }

-- | The flow that you want to revoke an entitlement from.
revokeFlowEntitlement_flowArn :: Lens.Lens' RevokeFlowEntitlement Prelude.Text
revokeFlowEntitlement_flowArn = Lens.lens (\RevokeFlowEntitlement' {flowArn} -> flowArn) (\s@RevokeFlowEntitlement' {} a -> s {flowArn = a} :: RevokeFlowEntitlement)

-- | The ARN of the entitlement that you want to revoke.
revokeFlowEntitlement_entitlementArn :: Lens.Lens' RevokeFlowEntitlement Prelude.Text
revokeFlowEntitlement_entitlementArn = Lens.lens (\RevokeFlowEntitlement' {entitlementArn} -> entitlementArn) (\s@RevokeFlowEntitlement' {} a -> s {entitlementArn = a} :: RevokeFlowEntitlement)

instance Core.AWSRequest RevokeFlowEntitlement where
  type
    AWSResponse RevokeFlowEntitlement =
      RevokeFlowEntitlementResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RevokeFlowEntitlementResponse'
            Prelude.<$> (x Core..?> "entitlementArn")
            Prelude.<*> (x Core..?> "flowArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RevokeFlowEntitlement

instance Prelude.NFData RevokeFlowEntitlement

instance Core.ToHeaders RevokeFlowEntitlement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath RevokeFlowEntitlement where
  toPath RevokeFlowEntitlement' {..} =
    Prelude.mconcat
      [ "/v1/flows/",
        Core.toBS flowArn,
        "/entitlements/",
        Core.toBS entitlementArn
      ]

instance Core.ToQuery RevokeFlowEntitlement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRevokeFlowEntitlementResponse' smart constructor.
data RevokeFlowEntitlementResponse = RevokeFlowEntitlementResponse'
  { -- | The ARN of the entitlement that was revoked.
    entitlementArn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the flow that the entitlement was revoked from.
    flowArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RevokeFlowEntitlementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entitlementArn', 'revokeFlowEntitlementResponse_entitlementArn' - The ARN of the entitlement that was revoked.
--
-- 'flowArn', 'revokeFlowEntitlementResponse_flowArn' - The ARN of the flow that the entitlement was revoked from.
--
-- 'httpStatus', 'revokeFlowEntitlementResponse_httpStatus' - The response's http status code.
newRevokeFlowEntitlementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RevokeFlowEntitlementResponse
newRevokeFlowEntitlementResponse pHttpStatus_ =
  RevokeFlowEntitlementResponse'
    { entitlementArn =
        Prelude.Nothing,
      flowArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the entitlement that was revoked.
revokeFlowEntitlementResponse_entitlementArn :: Lens.Lens' RevokeFlowEntitlementResponse (Prelude.Maybe Prelude.Text)
revokeFlowEntitlementResponse_entitlementArn = Lens.lens (\RevokeFlowEntitlementResponse' {entitlementArn} -> entitlementArn) (\s@RevokeFlowEntitlementResponse' {} a -> s {entitlementArn = a} :: RevokeFlowEntitlementResponse)

-- | The ARN of the flow that the entitlement was revoked from.
revokeFlowEntitlementResponse_flowArn :: Lens.Lens' RevokeFlowEntitlementResponse (Prelude.Maybe Prelude.Text)
revokeFlowEntitlementResponse_flowArn = Lens.lens (\RevokeFlowEntitlementResponse' {flowArn} -> flowArn) (\s@RevokeFlowEntitlementResponse' {} a -> s {flowArn = a} :: RevokeFlowEntitlementResponse)

-- | The response's http status code.
revokeFlowEntitlementResponse_httpStatus :: Lens.Lens' RevokeFlowEntitlementResponse Prelude.Int
revokeFlowEntitlementResponse_httpStatus = Lens.lens (\RevokeFlowEntitlementResponse' {httpStatus} -> httpStatus) (\s@RevokeFlowEntitlementResponse' {} a -> s {httpStatus = a} :: RevokeFlowEntitlementResponse)

instance Prelude.NFData RevokeFlowEntitlementResponse
