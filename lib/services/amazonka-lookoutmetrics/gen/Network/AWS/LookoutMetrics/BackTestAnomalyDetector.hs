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
-- Module      : Network.AWS.LookoutMetrics.BackTestAnomalyDetector
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a backtest for anomaly detection for the specified resource.
module Network.AWS.LookoutMetrics.BackTestAnomalyDetector
  ( -- * Creating a Request
    BackTestAnomalyDetector (..),
    newBackTestAnomalyDetector,

    -- * Request Lenses
    backTestAnomalyDetector_anomalyDetectorArn,

    -- * Destructuring the Response
    BackTestAnomalyDetectorResponse (..),
    newBackTestAnomalyDetectorResponse,

    -- * Response Lenses
    backTestAnomalyDetectorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBackTestAnomalyDetector' smart constructor.
data BackTestAnomalyDetector = BackTestAnomalyDetector'
  { -- | The Amazon Resource Name (ARN) of the anomaly detector.
    anomalyDetectorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BackTestAnomalyDetector' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyDetectorArn', 'backTestAnomalyDetector_anomalyDetectorArn' - The Amazon Resource Name (ARN) of the anomaly detector.
newBackTestAnomalyDetector ::
  -- | 'anomalyDetectorArn'
  Prelude.Text ->
  BackTestAnomalyDetector
newBackTestAnomalyDetector pAnomalyDetectorArn_ =
  BackTestAnomalyDetector'
    { anomalyDetectorArn =
        pAnomalyDetectorArn_
    }

-- | The Amazon Resource Name (ARN) of the anomaly detector.
backTestAnomalyDetector_anomalyDetectorArn :: Lens.Lens' BackTestAnomalyDetector Prelude.Text
backTestAnomalyDetector_anomalyDetectorArn = Lens.lens (\BackTestAnomalyDetector' {anomalyDetectorArn} -> anomalyDetectorArn) (\s@BackTestAnomalyDetector' {} a -> s {anomalyDetectorArn = a} :: BackTestAnomalyDetector)

instance Core.AWSRequest BackTestAnomalyDetector where
  type
    AWSResponse BackTestAnomalyDetector =
      BackTestAnomalyDetectorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          BackTestAnomalyDetectorResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BackTestAnomalyDetector

instance Prelude.NFData BackTestAnomalyDetector

instance Core.ToHeaders BackTestAnomalyDetector where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BackTestAnomalyDetector where
  toJSON BackTestAnomalyDetector' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AnomalyDetectorArn" Core..= anomalyDetectorArn)
          ]
      )

instance Core.ToPath BackTestAnomalyDetector where
  toPath = Prelude.const "/BackTestAnomalyDetector"

instance Core.ToQuery BackTestAnomalyDetector where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBackTestAnomalyDetectorResponse' smart constructor.
data BackTestAnomalyDetectorResponse = BackTestAnomalyDetectorResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BackTestAnomalyDetectorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'backTestAnomalyDetectorResponse_httpStatus' - The response's http status code.
newBackTestAnomalyDetectorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BackTestAnomalyDetectorResponse
newBackTestAnomalyDetectorResponse pHttpStatus_ =
  BackTestAnomalyDetectorResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
backTestAnomalyDetectorResponse_httpStatus :: Lens.Lens' BackTestAnomalyDetectorResponse Prelude.Int
backTestAnomalyDetectorResponse_httpStatus = Lens.lens (\BackTestAnomalyDetectorResponse' {httpStatus} -> httpStatus) (\s@BackTestAnomalyDetectorResponse' {} a -> s {httpStatus = a} :: BackTestAnomalyDetectorResponse)

instance
  Prelude.NFData
    BackTestAnomalyDetectorResponse
