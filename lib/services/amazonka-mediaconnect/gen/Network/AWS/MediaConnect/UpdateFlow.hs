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
-- Module      : Network.AWS.MediaConnect.UpdateFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates flow
module Network.AWS.MediaConnect.UpdateFlow
  ( -- * Creating a Request
    UpdateFlow (..),
    newUpdateFlow,

    -- * Request Lenses
    updateFlow_sourceFailoverConfig,
    updateFlow_flowArn,

    -- * Destructuring the Response
    UpdateFlowResponse (..),
    newUpdateFlowResponse,

    -- * Response Lenses
    updateFlowResponse_flow,
    updateFlowResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConnect.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to update flow.
--
-- /See:/ 'newUpdateFlow' smart constructor.
data UpdateFlow = UpdateFlow'
  { sourceFailoverConfig :: Prelude.Maybe UpdateFailoverConfig,
    -- | The flow that you want to update.
    flowArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFlow' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceFailoverConfig', 'updateFlow_sourceFailoverConfig' - Undocumented member.
--
-- 'flowArn', 'updateFlow_flowArn' - The flow that you want to update.
newUpdateFlow ::
  -- | 'flowArn'
  Prelude.Text ->
  UpdateFlow
newUpdateFlow pFlowArn_ =
  UpdateFlow'
    { sourceFailoverConfig = Prelude.Nothing,
      flowArn = pFlowArn_
    }

-- | Undocumented member.
updateFlow_sourceFailoverConfig :: Lens.Lens' UpdateFlow (Prelude.Maybe UpdateFailoverConfig)
updateFlow_sourceFailoverConfig = Lens.lens (\UpdateFlow' {sourceFailoverConfig} -> sourceFailoverConfig) (\s@UpdateFlow' {} a -> s {sourceFailoverConfig = a} :: UpdateFlow)

-- | The flow that you want to update.
updateFlow_flowArn :: Lens.Lens' UpdateFlow Prelude.Text
updateFlow_flowArn = Lens.lens (\UpdateFlow' {flowArn} -> flowArn) (\s@UpdateFlow' {} a -> s {flowArn = a} :: UpdateFlow)

instance Core.AWSRequest UpdateFlow where
  type AWSResponse UpdateFlow = UpdateFlowResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFlowResponse'
            Prelude.<$> (x Core..?> "flow")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFlow

instance Prelude.NFData UpdateFlow

instance Core.ToHeaders UpdateFlow where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFlow where
  toJSON UpdateFlow' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("sourceFailoverConfig" Core..=)
              Prelude.<$> sourceFailoverConfig
          ]
      )

instance Core.ToPath UpdateFlow where
  toPath UpdateFlow' {..} =
    Prelude.mconcat ["/v1/flows/", Core.toBS flowArn]

instance Core.ToQuery UpdateFlow where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFlowResponse' smart constructor.
data UpdateFlowResponse = UpdateFlowResponse'
  { flow :: Prelude.Maybe Flow,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFlowResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flow', 'updateFlowResponse_flow' - Undocumented member.
--
-- 'httpStatus', 'updateFlowResponse_httpStatus' - The response's http status code.
newUpdateFlowResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFlowResponse
newUpdateFlowResponse pHttpStatus_ =
  UpdateFlowResponse'
    { flow = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateFlowResponse_flow :: Lens.Lens' UpdateFlowResponse (Prelude.Maybe Flow)
updateFlowResponse_flow = Lens.lens (\UpdateFlowResponse' {flow} -> flow) (\s@UpdateFlowResponse' {} a -> s {flow = a} :: UpdateFlowResponse)

-- | The response's http status code.
updateFlowResponse_httpStatus :: Lens.Lens' UpdateFlowResponse Prelude.Int
updateFlowResponse_httpStatus = Lens.lens (\UpdateFlowResponse' {httpStatus} -> httpStatus) (\s@UpdateFlowResponse' {} a -> s {httpStatus = a} :: UpdateFlowResponse)

instance Prelude.NFData UpdateFlowResponse
