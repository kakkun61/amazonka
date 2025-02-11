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
-- Module      : Network.AWS.Comprehend.UpdateEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates information about the specified endpoint.
module Network.AWS.Comprehend.UpdateEndpoint
  ( -- * Creating a Request
    UpdateEndpoint (..),
    newUpdateEndpoint,

    -- * Request Lenses
    updateEndpoint_desiredModelArn,
    updateEndpoint_desiredInferenceUnits,
    updateEndpoint_desiredDataAccessRoleArn,
    updateEndpoint_endpointArn,

    -- * Destructuring the Response
    UpdateEndpointResponse (..),
    newUpdateEndpointResponse,

    -- * Response Lenses
    updateEndpointResponse_httpStatus,
  )
where

import Network.AWS.Comprehend.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateEndpoint' smart constructor.
data UpdateEndpoint = UpdateEndpoint'
  { -- | The ARN of the new model to use when updating an existing endpoint.
    desiredModelArn :: Prelude.Maybe Prelude.Text,
    -- | The desired number of inference units to be used by the model using this
    -- endpoint. Each inference unit represents of a throughput of 100
    -- characters per second.
    desiredInferenceUnits :: Prelude.Maybe Prelude.Natural,
    -- | Data access role ARN to use in case the new model is encrypted with a
    -- customer CMK.
    desiredDataAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Number (ARN) of the endpoint being updated.
    endpointArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'desiredModelArn', 'updateEndpoint_desiredModelArn' - The ARN of the new model to use when updating an existing endpoint.
--
-- 'desiredInferenceUnits', 'updateEndpoint_desiredInferenceUnits' - The desired number of inference units to be used by the model using this
-- endpoint. Each inference unit represents of a throughput of 100
-- characters per second.
--
-- 'desiredDataAccessRoleArn', 'updateEndpoint_desiredDataAccessRoleArn' - Data access role ARN to use in case the new model is encrypted with a
-- customer CMK.
--
-- 'endpointArn', 'updateEndpoint_endpointArn' - The Amazon Resource Number (ARN) of the endpoint being updated.
newUpdateEndpoint ::
  -- | 'endpointArn'
  Prelude.Text ->
  UpdateEndpoint
newUpdateEndpoint pEndpointArn_ =
  UpdateEndpoint'
    { desiredModelArn = Prelude.Nothing,
      desiredInferenceUnits = Prelude.Nothing,
      desiredDataAccessRoleArn = Prelude.Nothing,
      endpointArn = pEndpointArn_
    }

-- | The ARN of the new model to use when updating an existing endpoint.
updateEndpoint_desiredModelArn :: Lens.Lens' UpdateEndpoint (Prelude.Maybe Prelude.Text)
updateEndpoint_desiredModelArn = Lens.lens (\UpdateEndpoint' {desiredModelArn} -> desiredModelArn) (\s@UpdateEndpoint' {} a -> s {desiredModelArn = a} :: UpdateEndpoint)

-- | The desired number of inference units to be used by the model using this
-- endpoint. Each inference unit represents of a throughput of 100
-- characters per second.
updateEndpoint_desiredInferenceUnits :: Lens.Lens' UpdateEndpoint (Prelude.Maybe Prelude.Natural)
updateEndpoint_desiredInferenceUnits = Lens.lens (\UpdateEndpoint' {desiredInferenceUnits} -> desiredInferenceUnits) (\s@UpdateEndpoint' {} a -> s {desiredInferenceUnits = a} :: UpdateEndpoint)

-- | Data access role ARN to use in case the new model is encrypted with a
-- customer CMK.
updateEndpoint_desiredDataAccessRoleArn :: Lens.Lens' UpdateEndpoint (Prelude.Maybe Prelude.Text)
updateEndpoint_desiredDataAccessRoleArn = Lens.lens (\UpdateEndpoint' {desiredDataAccessRoleArn} -> desiredDataAccessRoleArn) (\s@UpdateEndpoint' {} a -> s {desiredDataAccessRoleArn = a} :: UpdateEndpoint)

-- | The Amazon Resource Number (ARN) of the endpoint being updated.
updateEndpoint_endpointArn :: Lens.Lens' UpdateEndpoint Prelude.Text
updateEndpoint_endpointArn = Lens.lens (\UpdateEndpoint' {endpointArn} -> endpointArn) (\s@UpdateEndpoint' {} a -> s {endpointArn = a} :: UpdateEndpoint)

instance Core.AWSRequest UpdateEndpoint where
  type
    AWSResponse UpdateEndpoint =
      UpdateEndpointResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateEndpointResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateEndpoint

instance Prelude.NFData UpdateEndpoint

instance Core.ToHeaders UpdateEndpoint where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "Comprehend_20171127.UpdateEndpoint" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEndpoint where
  toJSON UpdateEndpoint' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DesiredModelArn" Core..=)
              Prelude.<$> desiredModelArn,
            ("DesiredInferenceUnits" Core..=)
              Prelude.<$> desiredInferenceUnits,
            ("DesiredDataAccessRoleArn" Core..=)
              Prelude.<$> desiredDataAccessRoleArn,
            Prelude.Just ("EndpointArn" Core..= endpointArn)
          ]
      )

instance Core.ToPath UpdateEndpoint where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateEndpoint where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateEndpointResponse' smart constructor.
data UpdateEndpointResponse = UpdateEndpointResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateEndpointResponse_httpStatus' - The response's http status code.
newUpdateEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateEndpointResponse
newUpdateEndpointResponse pHttpStatus_ =
  UpdateEndpointResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updateEndpointResponse_httpStatus :: Lens.Lens' UpdateEndpointResponse Prelude.Int
updateEndpointResponse_httpStatus = Lens.lens (\UpdateEndpointResponse' {httpStatus} -> httpStatus) (\s@UpdateEndpointResponse' {} a -> s {httpStatus = a} :: UpdateEndpointResponse)

instance Prelude.NFData UpdateEndpointResponse
