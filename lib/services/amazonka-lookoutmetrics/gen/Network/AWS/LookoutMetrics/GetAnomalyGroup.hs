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
-- Module      : Network.AWS.LookoutMetrics.GetAnomalyGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns details about a group of anomalous metrics.
module Network.AWS.LookoutMetrics.GetAnomalyGroup
  ( -- * Creating a Request
    GetAnomalyGroup (..),
    newGetAnomalyGroup,

    -- * Request Lenses
    getAnomalyGroup_anomalyGroupId,
    getAnomalyGroup_anomalyDetectorArn,

    -- * Destructuring the Response
    GetAnomalyGroupResponse (..),
    newGetAnomalyGroupResponse,

    -- * Response Lenses
    getAnomalyGroupResponse_anomalyGroup,
    getAnomalyGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAnomalyGroup' smart constructor.
data GetAnomalyGroup = GetAnomalyGroup'
  { -- | The ID of the anomaly group.
    anomalyGroupId :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the anomaly detector.
    anomalyDetectorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAnomalyGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyGroupId', 'getAnomalyGroup_anomalyGroupId' - The ID of the anomaly group.
--
-- 'anomalyDetectorArn', 'getAnomalyGroup_anomalyDetectorArn' - The Amazon Resource Name (ARN) of the anomaly detector.
newGetAnomalyGroup ::
  -- | 'anomalyGroupId'
  Prelude.Text ->
  -- | 'anomalyDetectorArn'
  Prelude.Text ->
  GetAnomalyGroup
newGetAnomalyGroup
  pAnomalyGroupId_
  pAnomalyDetectorArn_ =
    GetAnomalyGroup'
      { anomalyGroupId = pAnomalyGroupId_,
        anomalyDetectorArn = pAnomalyDetectorArn_
      }

-- | The ID of the anomaly group.
getAnomalyGroup_anomalyGroupId :: Lens.Lens' GetAnomalyGroup Prelude.Text
getAnomalyGroup_anomalyGroupId = Lens.lens (\GetAnomalyGroup' {anomalyGroupId} -> anomalyGroupId) (\s@GetAnomalyGroup' {} a -> s {anomalyGroupId = a} :: GetAnomalyGroup)

-- | The Amazon Resource Name (ARN) of the anomaly detector.
getAnomalyGroup_anomalyDetectorArn :: Lens.Lens' GetAnomalyGroup Prelude.Text
getAnomalyGroup_anomalyDetectorArn = Lens.lens (\GetAnomalyGroup' {anomalyDetectorArn} -> anomalyDetectorArn) (\s@GetAnomalyGroup' {} a -> s {anomalyDetectorArn = a} :: GetAnomalyGroup)

instance Core.AWSRequest GetAnomalyGroup where
  type
    AWSResponse GetAnomalyGroup =
      GetAnomalyGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAnomalyGroupResponse'
            Prelude.<$> (x Core..?> "AnomalyGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAnomalyGroup

instance Prelude.NFData GetAnomalyGroup

instance Core.ToHeaders GetAnomalyGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetAnomalyGroup where
  toJSON GetAnomalyGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AnomalyGroupId" Core..= anomalyGroupId),
            Prelude.Just
              ("AnomalyDetectorArn" Core..= anomalyDetectorArn)
          ]
      )

instance Core.ToPath GetAnomalyGroup where
  toPath = Prelude.const "/GetAnomalyGroup"

instance Core.ToQuery GetAnomalyGroup where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAnomalyGroupResponse' smart constructor.
data GetAnomalyGroupResponse = GetAnomalyGroupResponse'
  { -- | Details about the anomaly group.
    anomalyGroup :: Prelude.Maybe AnomalyGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAnomalyGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'anomalyGroup', 'getAnomalyGroupResponse_anomalyGroup' - Details about the anomaly group.
--
-- 'httpStatus', 'getAnomalyGroupResponse_httpStatus' - The response's http status code.
newGetAnomalyGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAnomalyGroupResponse
newGetAnomalyGroupResponse pHttpStatus_ =
  GetAnomalyGroupResponse'
    { anomalyGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Details about the anomaly group.
getAnomalyGroupResponse_anomalyGroup :: Lens.Lens' GetAnomalyGroupResponse (Prelude.Maybe AnomalyGroup)
getAnomalyGroupResponse_anomalyGroup = Lens.lens (\GetAnomalyGroupResponse' {anomalyGroup} -> anomalyGroup) (\s@GetAnomalyGroupResponse' {} a -> s {anomalyGroup = a} :: GetAnomalyGroupResponse)

-- | The response's http status code.
getAnomalyGroupResponse_httpStatus :: Lens.Lens' GetAnomalyGroupResponse Prelude.Int
getAnomalyGroupResponse_httpStatus = Lens.lens (\GetAnomalyGroupResponse' {httpStatus} -> httpStatus) (\s@GetAnomalyGroupResponse' {} a -> s {httpStatus = a} :: GetAnomalyGroupResponse)

instance Prelude.NFData GetAnomalyGroupResponse
