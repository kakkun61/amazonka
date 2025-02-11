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
-- Module      : Network.AWS.ApplicationInsights.DescribeObservation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an anomaly or error with the application.
module Network.AWS.ApplicationInsights.DescribeObservation
  ( -- * Creating a Request
    DescribeObservation (..),
    newDescribeObservation,

    -- * Request Lenses
    describeObservation_observationId,

    -- * Destructuring the Response
    DescribeObservationResponse (..),
    newDescribeObservationResponse,

    -- * Response Lenses
    describeObservationResponse_observation,
    describeObservationResponse_httpStatus,
  )
where

import Network.AWS.ApplicationInsights.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeObservation' smart constructor.
data DescribeObservation = DescribeObservation'
  { -- | The ID of the observation.
    observationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeObservation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'observationId', 'describeObservation_observationId' - The ID of the observation.
newDescribeObservation ::
  -- | 'observationId'
  Prelude.Text ->
  DescribeObservation
newDescribeObservation pObservationId_ =
  DescribeObservation'
    { observationId =
        pObservationId_
    }

-- | The ID of the observation.
describeObservation_observationId :: Lens.Lens' DescribeObservation Prelude.Text
describeObservation_observationId = Lens.lens (\DescribeObservation' {observationId} -> observationId) (\s@DescribeObservation' {} a -> s {observationId = a} :: DescribeObservation)

instance Core.AWSRequest DescribeObservation where
  type
    AWSResponse DescribeObservation =
      DescribeObservationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeObservationResponse'
            Prelude.<$> (x Core..?> "Observation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeObservation

instance Prelude.NFData DescribeObservation

instance Core.ToHeaders DescribeObservation where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.DescribeObservation" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeObservation where
  toJSON DescribeObservation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ObservationId" Core..= observationId)
          ]
      )

instance Core.ToPath DescribeObservation where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeObservation where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeObservationResponse' smart constructor.
data DescribeObservationResponse = DescribeObservationResponse'
  { -- | Information about the observation.
    observation :: Prelude.Maybe Observation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeObservationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'observation', 'describeObservationResponse_observation' - Information about the observation.
--
-- 'httpStatus', 'describeObservationResponse_httpStatus' - The response's http status code.
newDescribeObservationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeObservationResponse
newDescribeObservationResponse pHttpStatus_ =
  DescribeObservationResponse'
    { observation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the observation.
describeObservationResponse_observation :: Lens.Lens' DescribeObservationResponse (Prelude.Maybe Observation)
describeObservationResponse_observation = Lens.lens (\DescribeObservationResponse' {observation} -> observation) (\s@DescribeObservationResponse' {} a -> s {observation = a} :: DescribeObservationResponse)

-- | The response's http status code.
describeObservationResponse_httpStatus :: Lens.Lens' DescribeObservationResponse Prelude.Int
describeObservationResponse_httpStatus = Lens.lens (\DescribeObservationResponse' {httpStatus} -> httpStatus) (\s@DescribeObservationResponse' {} a -> s {httpStatus = a} :: DescribeObservationResponse)

instance Prelude.NFData DescribeObservationResponse
