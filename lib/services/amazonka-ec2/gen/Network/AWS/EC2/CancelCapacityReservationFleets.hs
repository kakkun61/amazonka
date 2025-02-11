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
-- Module      : Network.AWS.EC2.CancelCapacityReservationFleets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels one or more Capacity Reservation Fleets. When you cancel a
-- Capacity Reservation Fleet, the following happens:
--
-- -   The Capacity Reservation Fleet\'s status changes to @cancelled@.
--
-- -   The individual Capacity Reservations in the Fleet are cancelled.
--     Instances running in the Capacity Reservations at the time of
--     cancelling the Fleet continue to run in shared capacity.
--
-- -   The Fleet stops creating new Capacity Reservations.
module Network.AWS.EC2.CancelCapacityReservationFleets
  ( -- * Creating a Request
    CancelCapacityReservationFleets (..),
    newCancelCapacityReservationFleets,

    -- * Request Lenses
    cancelCapacityReservationFleets_dryRun,
    cancelCapacityReservationFleets_capacityReservationFleetIds,

    -- * Destructuring the Response
    CancelCapacityReservationFleetsResponse (..),
    newCancelCapacityReservationFleetsResponse,

    -- * Response Lenses
    cancelCapacityReservationFleetsResponse_failedFleetCancellations,
    cancelCapacityReservationFleetsResponse_successfulFleetCancellations,
    cancelCapacityReservationFleetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCancelCapacityReservationFleets' smart constructor.
data CancelCapacityReservationFleets = CancelCapacityReservationFleets'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The IDs of the Capacity Reservation Fleets to cancel.
    capacityReservationFleetIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelCapacityReservationFleets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'cancelCapacityReservationFleets_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'capacityReservationFleetIds', 'cancelCapacityReservationFleets_capacityReservationFleetIds' - The IDs of the Capacity Reservation Fleets to cancel.
newCancelCapacityReservationFleets ::
  CancelCapacityReservationFleets
newCancelCapacityReservationFleets =
  CancelCapacityReservationFleets'
    { dryRun =
        Prelude.Nothing,
      capacityReservationFleetIds =
        Prelude.mempty
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
cancelCapacityReservationFleets_dryRun :: Lens.Lens' CancelCapacityReservationFleets (Prelude.Maybe Prelude.Bool)
cancelCapacityReservationFleets_dryRun = Lens.lens (\CancelCapacityReservationFleets' {dryRun} -> dryRun) (\s@CancelCapacityReservationFleets' {} a -> s {dryRun = a} :: CancelCapacityReservationFleets)

-- | The IDs of the Capacity Reservation Fleets to cancel.
cancelCapacityReservationFleets_capacityReservationFleetIds :: Lens.Lens' CancelCapacityReservationFleets [Prelude.Text]
cancelCapacityReservationFleets_capacityReservationFleetIds = Lens.lens (\CancelCapacityReservationFleets' {capacityReservationFleetIds} -> capacityReservationFleetIds) (\s@CancelCapacityReservationFleets' {} a -> s {capacityReservationFleetIds = a} :: CancelCapacityReservationFleets) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    CancelCapacityReservationFleets
  where
  type
    AWSResponse CancelCapacityReservationFleets =
      CancelCapacityReservationFleetsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CancelCapacityReservationFleetsResponse'
            Prelude.<$> ( x Core..@? "failedFleetCancellationSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> ( x Core..@? "successfulFleetCancellationSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CancelCapacityReservationFleets

instance
  Prelude.NFData
    CancelCapacityReservationFleets

instance
  Core.ToHeaders
    CancelCapacityReservationFleets
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CancelCapacityReservationFleets where
  toPath = Prelude.const "/"

instance Core.ToQuery CancelCapacityReservationFleets where
  toQuery CancelCapacityReservationFleets' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "CancelCapacityReservationFleets" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Core.=: dryRun,
        Core.toQueryList
          "CapacityReservationFleetId"
          capacityReservationFleetIds
      ]

-- | /See:/ 'newCancelCapacityReservationFleetsResponse' smart constructor.
data CancelCapacityReservationFleetsResponse = CancelCapacityReservationFleetsResponse'
  { -- | Information about the Capacity Reservation Fleets that could not be
    -- cancelled.
    failedFleetCancellations :: Prelude.Maybe [FailedCapacityReservationFleetCancellationResult],
    -- | Information about the Capacity Reservation Fleets that were successfully
    -- cancelled.
    successfulFleetCancellations :: Prelude.Maybe [CapacityReservationFleetCancellationState],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CancelCapacityReservationFleetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failedFleetCancellations', 'cancelCapacityReservationFleetsResponse_failedFleetCancellations' - Information about the Capacity Reservation Fleets that could not be
-- cancelled.
--
-- 'successfulFleetCancellations', 'cancelCapacityReservationFleetsResponse_successfulFleetCancellations' - Information about the Capacity Reservation Fleets that were successfully
-- cancelled.
--
-- 'httpStatus', 'cancelCapacityReservationFleetsResponse_httpStatus' - The response's http status code.
newCancelCapacityReservationFleetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelCapacityReservationFleetsResponse
newCancelCapacityReservationFleetsResponse
  pHttpStatus_ =
    CancelCapacityReservationFleetsResponse'
      { failedFleetCancellations =
          Prelude.Nothing,
        successfulFleetCancellations =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the Capacity Reservation Fleets that could not be
-- cancelled.
cancelCapacityReservationFleetsResponse_failedFleetCancellations :: Lens.Lens' CancelCapacityReservationFleetsResponse (Prelude.Maybe [FailedCapacityReservationFleetCancellationResult])
cancelCapacityReservationFleetsResponse_failedFleetCancellations = Lens.lens (\CancelCapacityReservationFleetsResponse' {failedFleetCancellations} -> failedFleetCancellations) (\s@CancelCapacityReservationFleetsResponse' {} a -> s {failedFleetCancellations = a} :: CancelCapacityReservationFleetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Information about the Capacity Reservation Fleets that were successfully
-- cancelled.
cancelCapacityReservationFleetsResponse_successfulFleetCancellations :: Lens.Lens' CancelCapacityReservationFleetsResponse (Prelude.Maybe [CapacityReservationFleetCancellationState])
cancelCapacityReservationFleetsResponse_successfulFleetCancellations = Lens.lens (\CancelCapacityReservationFleetsResponse' {successfulFleetCancellations} -> successfulFleetCancellations) (\s@CancelCapacityReservationFleetsResponse' {} a -> s {successfulFleetCancellations = a} :: CancelCapacityReservationFleetsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
cancelCapacityReservationFleetsResponse_httpStatus :: Lens.Lens' CancelCapacityReservationFleetsResponse Prelude.Int
cancelCapacityReservationFleetsResponse_httpStatus = Lens.lens (\CancelCapacityReservationFleetsResponse' {httpStatus} -> httpStatus) (\s@CancelCapacityReservationFleetsResponse' {} a -> s {httpStatus = a} :: CancelCapacityReservationFleetsResponse)

instance
  Prelude.NFData
    CancelCapacityReservationFleetsResponse
