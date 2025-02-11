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
-- Module      : Network.AWS.LicenseManager.UpdateLicenseSpecificationsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or removes the specified license configurations for the specified
-- Amazon Web Services resource.
--
-- You can update the license specifications of AMIs, instances, and hosts.
-- You cannot update the license specifications for launch templates and
-- CloudFormation templates, as they send license configurations to the
-- operation that creates the resource.
module Network.AWS.LicenseManager.UpdateLicenseSpecificationsForResource
  ( -- * Creating a Request
    UpdateLicenseSpecificationsForResource (..),
    newUpdateLicenseSpecificationsForResource,

    -- * Request Lenses
    updateLicenseSpecificationsForResource_addLicenseSpecifications,
    updateLicenseSpecificationsForResource_removeLicenseSpecifications,
    updateLicenseSpecificationsForResource_resourceArn,

    -- * Destructuring the Response
    UpdateLicenseSpecificationsForResourceResponse (..),
    newUpdateLicenseSpecificationsForResourceResponse,

    -- * Response Lenses
    updateLicenseSpecificationsForResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateLicenseSpecificationsForResource' smart constructor.
data UpdateLicenseSpecificationsForResource = UpdateLicenseSpecificationsForResource'
  { -- | ARNs of the license configurations to add.
    addLicenseSpecifications :: Prelude.Maybe [LicenseSpecification],
    -- | ARNs of the license configurations to remove.
    removeLicenseSpecifications :: Prelude.Maybe [LicenseSpecification],
    -- | Amazon Resource Name (ARN) of the Amazon Web Services resource.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLicenseSpecificationsForResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'addLicenseSpecifications', 'updateLicenseSpecificationsForResource_addLicenseSpecifications' - ARNs of the license configurations to add.
--
-- 'removeLicenseSpecifications', 'updateLicenseSpecificationsForResource_removeLicenseSpecifications' - ARNs of the license configurations to remove.
--
-- 'resourceArn', 'updateLicenseSpecificationsForResource_resourceArn' - Amazon Resource Name (ARN) of the Amazon Web Services resource.
newUpdateLicenseSpecificationsForResource ::
  -- | 'resourceArn'
  Prelude.Text ->
  UpdateLicenseSpecificationsForResource
newUpdateLicenseSpecificationsForResource
  pResourceArn_ =
    UpdateLicenseSpecificationsForResource'
      { addLicenseSpecifications =
          Prelude.Nothing,
        removeLicenseSpecifications =
          Prelude.Nothing,
        resourceArn = pResourceArn_
      }

-- | ARNs of the license configurations to add.
updateLicenseSpecificationsForResource_addLicenseSpecifications :: Lens.Lens' UpdateLicenseSpecificationsForResource (Prelude.Maybe [LicenseSpecification])
updateLicenseSpecificationsForResource_addLicenseSpecifications = Lens.lens (\UpdateLicenseSpecificationsForResource' {addLicenseSpecifications} -> addLicenseSpecifications) (\s@UpdateLicenseSpecificationsForResource' {} a -> s {addLicenseSpecifications = a} :: UpdateLicenseSpecificationsForResource) Prelude.. Lens.mapping Lens.coerced

-- | ARNs of the license configurations to remove.
updateLicenseSpecificationsForResource_removeLicenseSpecifications :: Lens.Lens' UpdateLicenseSpecificationsForResource (Prelude.Maybe [LicenseSpecification])
updateLicenseSpecificationsForResource_removeLicenseSpecifications = Lens.lens (\UpdateLicenseSpecificationsForResource' {removeLicenseSpecifications} -> removeLicenseSpecifications) (\s@UpdateLicenseSpecificationsForResource' {} a -> s {removeLicenseSpecifications = a} :: UpdateLicenseSpecificationsForResource) Prelude.. Lens.mapping Lens.coerced

-- | Amazon Resource Name (ARN) of the Amazon Web Services resource.
updateLicenseSpecificationsForResource_resourceArn :: Lens.Lens' UpdateLicenseSpecificationsForResource Prelude.Text
updateLicenseSpecificationsForResource_resourceArn = Lens.lens (\UpdateLicenseSpecificationsForResource' {resourceArn} -> resourceArn) (\s@UpdateLicenseSpecificationsForResource' {} a -> s {resourceArn = a} :: UpdateLicenseSpecificationsForResource)

instance
  Core.AWSRequest
    UpdateLicenseSpecificationsForResource
  where
  type
    AWSResponse
      UpdateLicenseSpecificationsForResource =
      UpdateLicenseSpecificationsForResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateLicenseSpecificationsForResourceResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateLicenseSpecificationsForResource

instance
  Prelude.NFData
    UpdateLicenseSpecificationsForResource

instance
  Core.ToHeaders
    UpdateLicenseSpecificationsForResource
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.UpdateLicenseSpecificationsForResource" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    UpdateLicenseSpecificationsForResource
  where
  toJSON UpdateLicenseSpecificationsForResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AddLicenseSpecifications" Core..=)
              Prelude.<$> addLicenseSpecifications,
            ("RemoveLicenseSpecifications" Core..=)
              Prelude.<$> removeLicenseSpecifications,
            Prelude.Just ("ResourceArn" Core..= resourceArn)
          ]
      )

instance
  Core.ToPath
    UpdateLicenseSpecificationsForResource
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    UpdateLicenseSpecificationsForResource
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLicenseSpecificationsForResourceResponse' smart constructor.
data UpdateLicenseSpecificationsForResourceResponse = UpdateLicenseSpecificationsForResourceResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLicenseSpecificationsForResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateLicenseSpecificationsForResourceResponse_httpStatus' - The response's http status code.
newUpdateLicenseSpecificationsForResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLicenseSpecificationsForResourceResponse
newUpdateLicenseSpecificationsForResourceResponse
  pHttpStatus_ =
    UpdateLicenseSpecificationsForResourceResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
updateLicenseSpecificationsForResourceResponse_httpStatus :: Lens.Lens' UpdateLicenseSpecificationsForResourceResponse Prelude.Int
updateLicenseSpecificationsForResourceResponse_httpStatus = Lens.lens (\UpdateLicenseSpecificationsForResourceResponse' {httpStatus} -> httpStatus) (\s@UpdateLicenseSpecificationsForResourceResponse' {} a -> s {httpStatus = a} :: UpdateLicenseSpecificationsForResourceResponse)

instance
  Prelude.NFData
    UpdateLicenseSpecificationsForResourceResponse
