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
-- Module      : Network.AWS.DevOpsGuru.StartCostEstimation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the creation of an estimate of the monthly cost to analyze your
-- AWS resources.
module Network.AWS.DevOpsGuru.StartCostEstimation
  ( -- * Creating a Request
    StartCostEstimation (..),
    newStartCostEstimation,

    -- * Request Lenses
    startCostEstimation_clientToken,
    startCostEstimation_resourceCollection,

    -- * Destructuring the Response
    StartCostEstimationResponse (..),
    newStartCostEstimationResponse,

    -- * Response Lenses
    startCostEstimationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DevOpsGuru.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartCostEstimation' smart constructor.
data StartCostEstimation = StartCostEstimation'
  { -- | The idempotency token used to identify each cost estimate request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The collection of AWS resources used to create a monthly DevOps Guru
    -- cost estimate.
    resourceCollection :: CostEstimationResourceCollectionFilter
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartCostEstimation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'startCostEstimation_clientToken' - The idempotency token used to identify each cost estimate request.
--
-- 'resourceCollection', 'startCostEstimation_resourceCollection' - The collection of AWS resources used to create a monthly DevOps Guru
-- cost estimate.
newStartCostEstimation ::
  -- | 'resourceCollection'
  CostEstimationResourceCollectionFilter ->
  StartCostEstimation
newStartCostEstimation pResourceCollection_ =
  StartCostEstimation'
    { clientToken = Prelude.Nothing,
      resourceCollection = pResourceCollection_
    }

-- | The idempotency token used to identify each cost estimate request.
startCostEstimation_clientToken :: Lens.Lens' StartCostEstimation (Prelude.Maybe Prelude.Text)
startCostEstimation_clientToken = Lens.lens (\StartCostEstimation' {clientToken} -> clientToken) (\s@StartCostEstimation' {} a -> s {clientToken = a} :: StartCostEstimation)

-- | The collection of AWS resources used to create a monthly DevOps Guru
-- cost estimate.
startCostEstimation_resourceCollection :: Lens.Lens' StartCostEstimation CostEstimationResourceCollectionFilter
startCostEstimation_resourceCollection = Lens.lens (\StartCostEstimation' {resourceCollection} -> resourceCollection) (\s@StartCostEstimation' {} a -> s {resourceCollection = a} :: StartCostEstimation)

instance Core.AWSRequest StartCostEstimation where
  type
    AWSResponse StartCostEstimation =
      StartCostEstimationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          StartCostEstimationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartCostEstimation

instance Prelude.NFData StartCostEstimation

instance Core.ToHeaders StartCostEstimation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartCostEstimation where
  toJSON StartCostEstimation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just
              ("ResourceCollection" Core..= resourceCollection)
          ]
      )

instance Core.ToPath StartCostEstimation where
  toPath = Prelude.const "/cost-estimation"

instance Core.ToQuery StartCostEstimation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartCostEstimationResponse' smart constructor.
data StartCostEstimationResponse = StartCostEstimationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartCostEstimationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startCostEstimationResponse_httpStatus' - The response's http status code.
newStartCostEstimationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartCostEstimationResponse
newStartCostEstimationResponse pHttpStatus_ =
  StartCostEstimationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
startCostEstimationResponse_httpStatus :: Lens.Lens' StartCostEstimationResponse Prelude.Int
startCostEstimationResponse_httpStatus = Lens.lens (\StartCostEstimationResponse' {httpStatus} -> httpStatus) (\s@StartCostEstimationResponse' {} a -> s {httpStatus = a} :: StartCostEstimationResponse)

instance Prelude.NFData StartCostEstimationResponse
