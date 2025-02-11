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
-- Module      : Network.AWS.AppRunner.StartDeployment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiate a manual deployment of the latest commit in a source code
-- repository or the latest image in a source image repository to an App
-- Runner service.
--
-- For a source code repository, App Runner retrieves the commit and builds
-- a Docker image. For a source image repository, App Runner retrieves the
-- latest Docker image. In both cases, App Runner then deploys the new
-- image to your service and starts a new container instance.
--
-- This is an asynchronous operation. On a successful call, you can use the
-- returned @OperationId@ and the ListOperations call to track the
-- operation\'s progress.
module Network.AWS.AppRunner.StartDeployment
  ( -- * Creating a Request
    StartDeployment (..),
    newStartDeployment,

    -- * Request Lenses
    startDeployment_serviceArn,

    -- * Destructuring the Response
    StartDeploymentResponse (..),
    newStartDeploymentResponse,

    -- * Response Lenses
    startDeploymentResponse_httpStatus,
    startDeploymentResponse_operationId,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartDeployment' smart constructor.
data StartDeployment = StartDeployment'
  { -- | The Amazon Resource Name (ARN) of the App Runner service that you want
    -- to manually deploy to.
    serviceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartDeployment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceArn', 'startDeployment_serviceArn' - The Amazon Resource Name (ARN) of the App Runner service that you want
-- to manually deploy to.
newStartDeployment ::
  -- | 'serviceArn'
  Prelude.Text ->
  StartDeployment
newStartDeployment pServiceArn_ =
  StartDeployment' {serviceArn = pServiceArn_}

-- | The Amazon Resource Name (ARN) of the App Runner service that you want
-- to manually deploy to.
startDeployment_serviceArn :: Lens.Lens' StartDeployment Prelude.Text
startDeployment_serviceArn = Lens.lens (\StartDeployment' {serviceArn} -> serviceArn) (\s@StartDeployment' {} a -> s {serviceArn = a} :: StartDeployment)

instance Core.AWSRequest StartDeployment where
  type
    AWSResponse StartDeployment =
      StartDeploymentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StartDeploymentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "OperationId")
      )

instance Prelude.Hashable StartDeployment

instance Prelude.NFData StartDeployment

instance Core.ToHeaders StartDeployment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("AppRunner.StartDeployment" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartDeployment where
  toJSON StartDeployment' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ServiceArn" Core..= serviceArn)]
      )

instance Core.ToPath StartDeployment where
  toPath = Prelude.const "/"

instance Core.ToQuery StartDeployment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartDeploymentResponse' smart constructor.
data StartDeploymentResponse = StartDeploymentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The unique ID of the asynchronous operation that this request started.
    -- You can use it combined with the ListOperations call to track the
    -- operation\'s progress.
    operationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartDeploymentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startDeploymentResponse_httpStatus' - The response's http status code.
--
-- 'operationId', 'startDeploymentResponse_operationId' - The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
newStartDeploymentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'operationId'
  Prelude.Text ->
  StartDeploymentResponse
newStartDeploymentResponse pHttpStatus_ pOperationId_ =
  StartDeploymentResponse'
    { httpStatus = pHttpStatus_,
      operationId = pOperationId_
    }

-- | The response's http status code.
startDeploymentResponse_httpStatus :: Lens.Lens' StartDeploymentResponse Prelude.Int
startDeploymentResponse_httpStatus = Lens.lens (\StartDeploymentResponse' {httpStatus} -> httpStatus) (\s@StartDeploymentResponse' {} a -> s {httpStatus = a} :: StartDeploymentResponse)

-- | The unique ID of the asynchronous operation that this request started.
-- You can use it combined with the ListOperations call to track the
-- operation\'s progress.
startDeploymentResponse_operationId :: Lens.Lens' StartDeploymentResponse Prelude.Text
startDeploymentResponse_operationId = Lens.lens (\StartDeploymentResponse' {operationId} -> operationId) (\s@StartDeploymentResponse' {} a -> s {operationId = a} :: StartDeploymentResponse)

instance Prelude.NFData StartDeploymentResponse
