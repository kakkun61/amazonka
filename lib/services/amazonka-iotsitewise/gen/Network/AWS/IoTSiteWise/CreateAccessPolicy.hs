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
-- Module      : Network.AWS.IoTSiteWise.CreateAccessPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an access policy that grants the specified identity (Amazon Web
-- Services SSO user, Amazon Web Services SSO group, or IAM user) access to
-- the specified IoT SiteWise Monitor portal or project resource.
module Network.AWS.IoTSiteWise.CreateAccessPolicy
  ( -- * Creating a Request
    CreateAccessPolicy (..),
    newCreateAccessPolicy,

    -- * Request Lenses
    createAccessPolicy_clientToken,
    createAccessPolicy_tags,
    createAccessPolicy_accessPolicyIdentity,
    createAccessPolicy_accessPolicyResource,
    createAccessPolicy_accessPolicyPermission,

    -- * Destructuring the Response
    CreateAccessPolicyResponse (..),
    newCreateAccessPolicyResponse,

    -- * Response Lenses
    createAccessPolicyResponse_httpStatus,
    createAccessPolicyResponse_accessPolicyId,
    createAccessPolicyResponse_accessPolicyArn,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateAccessPolicy' smart constructor.
data CreateAccessPolicy = CreateAccessPolicy'
  { -- | A unique case-sensitive identifier that you can provide to ensure the
    -- idempotency of the request. Don\'t reuse this client token if a new
    -- idempotent request is required.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | A list of key-value pairs that contain metadata for the access policy.
    -- For more information, see
    -- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
    -- in the /IoT SiteWise User Guide/.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
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
-- Create a value of 'CreateAccessPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createAccessPolicy_clientToken' - A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
--
-- 'tags', 'createAccessPolicy_tags' - A list of key-value pairs that contain metadata for the access policy.
-- For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
-- in the /IoT SiteWise User Guide/.
--
-- 'accessPolicyIdentity', 'createAccessPolicy_accessPolicyIdentity' - The identity for this access policy. Choose an Amazon Web Services SSO
-- user, an Amazon Web Services SSO group, or an IAM user.
--
-- 'accessPolicyResource', 'createAccessPolicy_accessPolicyResource' - The IoT SiteWise Monitor resource for this access policy. Choose either
-- a portal or a project.
--
-- 'accessPolicyPermission', 'createAccessPolicy_accessPolicyPermission' - The permission level for this access policy. Note that a project
-- @ADMINISTRATOR@ is also known as a project owner.
newCreateAccessPolicy ::
  -- | 'accessPolicyIdentity'
  Identity ->
  -- | 'accessPolicyResource'
  Resource ->
  -- | 'accessPolicyPermission'
  Permission ->
  CreateAccessPolicy
newCreateAccessPolicy
  pAccessPolicyIdentity_
  pAccessPolicyResource_
  pAccessPolicyPermission_ =
    CreateAccessPolicy'
      { clientToken = Prelude.Nothing,
        tags = Prelude.Nothing,
        accessPolicyIdentity = pAccessPolicyIdentity_,
        accessPolicyResource = pAccessPolicyResource_,
        accessPolicyPermission = pAccessPolicyPermission_
      }

-- | A unique case-sensitive identifier that you can provide to ensure the
-- idempotency of the request. Don\'t reuse this client token if a new
-- idempotent request is required.
createAccessPolicy_clientToken :: Lens.Lens' CreateAccessPolicy (Prelude.Maybe Prelude.Text)
createAccessPolicy_clientToken = Lens.lens (\CreateAccessPolicy' {clientToken} -> clientToken) (\s@CreateAccessPolicy' {} a -> s {clientToken = a} :: CreateAccessPolicy)

-- | A list of key-value pairs that contain metadata for the access policy.
-- For more information, see
-- <https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html Tagging your IoT SiteWise resources>
-- in the /IoT SiteWise User Guide/.
createAccessPolicy_tags :: Lens.Lens' CreateAccessPolicy (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAccessPolicy_tags = Lens.lens (\CreateAccessPolicy' {tags} -> tags) (\s@CreateAccessPolicy' {} a -> s {tags = a} :: CreateAccessPolicy) Prelude.. Lens.mapping Lens.coerced

-- | The identity for this access policy. Choose an Amazon Web Services SSO
-- user, an Amazon Web Services SSO group, or an IAM user.
createAccessPolicy_accessPolicyIdentity :: Lens.Lens' CreateAccessPolicy Identity
createAccessPolicy_accessPolicyIdentity = Lens.lens (\CreateAccessPolicy' {accessPolicyIdentity} -> accessPolicyIdentity) (\s@CreateAccessPolicy' {} a -> s {accessPolicyIdentity = a} :: CreateAccessPolicy)

-- | The IoT SiteWise Monitor resource for this access policy. Choose either
-- a portal or a project.
createAccessPolicy_accessPolicyResource :: Lens.Lens' CreateAccessPolicy Resource
createAccessPolicy_accessPolicyResource = Lens.lens (\CreateAccessPolicy' {accessPolicyResource} -> accessPolicyResource) (\s@CreateAccessPolicy' {} a -> s {accessPolicyResource = a} :: CreateAccessPolicy)

-- | The permission level for this access policy. Note that a project
-- @ADMINISTRATOR@ is also known as a project owner.
createAccessPolicy_accessPolicyPermission :: Lens.Lens' CreateAccessPolicy Permission
createAccessPolicy_accessPolicyPermission = Lens.lens (\CreateAccessPolicy' {accessPolicyPermission} -> accessPolicyPermission) (\s@CreateAccessPolicy' {} a -> s {accessPolicyPermission = a} :: CreateAccessPolicy)

instance Core.AWSRequest CreateAccessPolicy where
  type
    AWSResponse CreateAccessPolicy =
      CreateAccessPolicyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAccessPolicyResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "accessPolicyId")
            Prelude.<*> (x Core..:> "accessPolicyArn")
      )

instance Prelude.Hashable CreateAccessPolicy

instance Prelude.NFData CreateAccessPolicy

instance Core.ToHeaders CreateAccessPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAccessPolicy where
  toJSON CreateAccessPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("tags" Core..=) Prelude.<$> tags,
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

instance Core.ToPath CreateAccessPolicy where
  toPath = Prelude.const "/access-policies"

instance Core.ToQuery CreateAccessPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAccessPolicyResponse' smart constructor.
data CreateAccessPolicyResponse = CreateAccessPolicyResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ID of the access policy.
    accessPolicyId :: Prelude.Text,
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the access policy, which has the following format.
    --
    -- @arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy\/${AccessPolicyId}@
    accessPolicyArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAccessPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createAccessPolicyResponse_httpStatus' - The response's http status code.
--
-- 'accessPolicyId', 'createAccessPolicyResponse_accessPolicyId' - The ID of the access policy.
--
-- 'accessPolicyArn', 'createAccessPolicyResponse_accessPolicyArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the access policy, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy\/${AccessPolicyId}@
newCreateAccessPolicyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'accessPolicyId'
  Prelude.Text ->
  -- | 'accessPolicyArn'
  Prelude.Text ->
  CreateAccessPolicyResponse
newCreateAccessPolicyResponse
  pHttpStatus_
  pAccessPolicyId_
  pAccessPolicyArn_ =
    CreateAccessPolicyResponse'
      { httpStatus =
          pHttpStatus_,
        accessPolicyId = pAccessPolicyId_,
        accessPolicyArn = pAccessPolicyArn_
      }

-- | The response's http status code.
createAccessPolicyResponse_httpStatus :: Lens.Lens' CreateAccessPolicyResponse Prelude.Int
createAccessPolicyResponse_httpStatus = Lens.lens (\CreateAccessPolicyResponse' {httpStatus} -> httpStatus) (\s@CreateAccessPolicyResponse' {} a -> s {httpStatus = a} :: CreateAccessPolicyResponse)

-- | The ID of the access policy.
createAccessPolicyResponse_accessPolicyId :: Lens.Lens' CreateAccessPolicyResponse Prelude.Text
createAccessPolicyResponse_accessPolicyId = Lens.lens (\CreateAccessPolicyResponse' {accessPolicyId} -> accessPolicyId) (\s@CreateAccessPolicyResponse' {} a -> s {accessPolicyId = a} :: CreateAccessPolicyResponse)

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the access policy, which has the following format.
--
-- @arn:${Partition}:iotsitewise:${Region}:${Account}:access-policy\/${AccessPolicyId}@
createAccessPolicyResponse_accessPolicyArn :: Lens.Lens' CreateAccessPolicyResponse Prelude.Text
createAccessPolicyResponse_accessPolicyArn = Lens.lens (\CreateAccessPolicyResponse' {accessPolicyArn} -> accessPolicyArn) (\s@CreateAccessPolicyResponse' {} a -> s {accessPolicyArn = a} :: CreateAccessPolicyResponse)

instance Prelude.NFData CreateAccessPolicyResponse
