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
-- Module      : Network.AWS.ImageBuilder.DeleteInfrastructureConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an infrastructure configuration.
module Network.AWS.ImageBuilder.DeleteInfrastructureConfiguration
  ( -- * Creating a Request
    DeleteInfrastructureConfiguration (..),
    newDeleteInfrastructureConfiguration,

    -- * Request Lenses
    deleteInfrastructureConfiguration_infrastructureConfigurationArn,

    -- * Destructuring the Response
    DeleteInfrastructureConfigurationResponse (..),
    newDeleteInfrastructureConfigurationResponse,

    -- * Response Lenses
    deleteInfrastructureConfigurationResponse_requestId,
    deleteInfrastructureConfigurationResponse_infrastructureConfigurationArn,
    deleteInfrastructureConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteInfrastructureConfiguration' smart constructor.
data DeleteInfrastructureConfiguration = DeleteInfrastructureConfiguration'
  { -- | The Amazon Resource Name (ARN) of the infrastructure configuration to
    -- delete.
    infrastructureConfigurationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInfrastructureConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'infrastructureConfigurationArn', 'deleteInfrastructureConfiguration_infrastructureConfigurationArn' - The Amazon Resource Name (ARN) of the infrastructure configuration to
-- delete.
newDeleteInfrastructureConfiguration ::
  -- | 'infrastructureConfigurationArn'
  Prelude.Text ->
  DeleteInfrastructureConfiguration
newDeleteInfrastructureConfiguration
  pInfrastructureConfigurationArn_ =
    DeleteInfrastructureConfiguration'
      { infrastructureConfigurationArn =
          pInfrastructureConfigurationArn_
      }

-- | The Amazon Resource Name (ARN) of the infrastructure configuration to
-- delete.
deleteInfrastructureConfiguration_infrastructureConfigurationArn :: Lens.Lens' DeleteInfrastructureConfiguration Prelude.Text
deleteInfrastructureConfiguration_infrastructureConfigurationArn = Lens.lens (\DeleteInfrastructureConfiguration' {infrastructureConfigurationArn} -> infrastructureConfigurationArn) (\s@DeleteInfrastructureConfiguration' {} a -> s {infrastructureConfigurationArn = a} :: DeleteInfrastructureConfiguration)

instance
  Core.AWSRequest
    DeleteInfrastructureConfiguration
  where
  type
    AWSResponse DeleteInfrastructureConfiguration =
      DeleteInfrastructureConfigurationResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteInfrastructureConfigurationResponse'
            Prelude.<$> (x Core..?> "requestId")
              Prelude.<*> (x Core..?> "infrastructureConfigurationArn")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteInfrastructureConfiguration

instance
  Prelude.NFData
    DeleteInfrastructureConfiguration

instance
  Core.ToHeaders
    DeleteInfrastructureConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToPath
    DeleteInfrastructureConfiguration
  where
  toPath =
    Prelude.const "/DeleteInfrastructureConfiguration"

instance
  Core.ToQuery
    DeleteInfrastructureConfiguration
  where
  toQuery DeleteInfrastructureConfiguration' {..} =
    Prelude.mconcat
      [ "infrastructureConfigurationArn"
          Core.=: infrastructureConfigurationArn
      ]

-- | /See:/ 'newDeleteInfrastructureConfigurationResponse' smart constructor.
data DeleteInfrastructureConfigurationResponse = DeleteInfrastructureConfigurationResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the infrastructure configuration that
    -- was deleted.
    infrastructureConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteInfrastructureConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteInfrastructureConfigurationResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'infrastructureConfigurationArn', 'deleteInfrastructureConfigurationResponse_infrastructureConfigurationArn' - The Amazon Resource Name (ARN) of the infrastructure configuration that
-- was deleted.
--
-- 'httpStatus', 'deleteInfrastructureConfigurationResponse_httpStatus' - The response's http status code.
newDeleteInfrastructureConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteInfrastructureConfigurationResponse
newDeleteInfrastructureConfigurationResponse
  pHttpStatus_ =
    DeleteInfrastructureConfigurationResponse'
      { requestId =
          Prelude.Nothing,
        infrastructureConfigurationArn =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The request ID that uniquely identifies this request.
deleteInfrastructureConfigurationResponse_requestId :: Lens.Lens' DeleteInfrastructureConfigurationResponse (Prelude.Maybe Prelude.Text)
deleteInfrastructureConfigurationResponse_requestId = Lens.lens (\DeleteInfrastructureConfigurationResponse' {requestId} -> requestId) (\s@DeleteInfrastructureConfigurationResponse' {} a -> s {requestId = a} :: DeleteInfrastructureConfigurationResponse)

-- | The Amazon Resource Name (ARN) of the infrastructure configuration that
-- was deleted.
deleteInfrastructureConfigurationResponse_infrastructureConfigurationArn :: Lens.Lens' DeleteInfrastructureConfigurationResponse (Prelude.Maybe Prelude.Text)
deleteInfrastructureConfigurationResponse_infrastructureConfigurationArn = Lens.lens (\DeleteInfrastructureConfigurationResponse' {infrastructureConfigurationArn} -> infrastructureConfigurationArn) (\s@DeleteInfrastructureConfigurationResponse' {} a -> s {infrastructureConfigurationArn = a} :: DeleteInfrastructureConfigurationResponse)

-- | The response's http status code.
deleteInfrastructureConfigurationResponse_httpStatus :: Lens.Lens' DeleteInfrastructureConfigurationResponse Prelude.Int
deleteInfrastructureConfigurationResponse_httpStatus = Lens.lens (\DeleteInfrastructureConfigurationResponse' {httpStatus} -> httpStatus) (\s@DeleteInfrastructureConfigurationResponse' {} a -> s {httpStatus = a} :: DeleteInfrastructureConfigurationResponse)

instance
  Prelude.NFData
    DeleteInfrastructureConfigurationResponse
