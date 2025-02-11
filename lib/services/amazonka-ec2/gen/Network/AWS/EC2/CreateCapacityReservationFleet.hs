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
-- Module      : Network.AWS.EC2.CreateCapacityReservationFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Capacity Reservation Fleet. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/work-with-cr-fleets.html#create-crfleet Create a Capacity Reservation Fleet>
-- in the Amazon EC2 User Guide.
module Network.AWS.EC2.CreateCapacityReservationFleet
  ( -- * Creating a Request
    CreateCapacityReservationFleet (..),
    newCreateCapacityReservationFleet,

    -- * Request Lenses
    createCapacityReservationFleet_clientToken,
    createCapacityReservationFleet_endDate,
    createCapacityReservationFleet_instanceMatchCriteria,
    createCapacityReservationFleet_tagSpecifications,
    createCapacityReservationFleet_tenancy,
    createCapacityReservationFleet_allocationStrategy,
    createCapacityReservationFleet_dryRun,
    createCapacityReservationFleet_instanceTypeSpecifications,
    createCapacityReservationFleet_totalTargetCapacity,

    -- * Destructuring the Response
    CreateCapacityReservationFleetResponse (..),
    newCreateCapacityReservationFleetResponse,

    -- * Response Lenses
    createCapacityReservationFleetResponse_capacityReservationFleetId,
    createCapacityReservationFleetResponse_state,
    createCapacityReservationFleetResponse_totalFulfilledCapacity,
    createCapacityReservationFleetResponse_endDate,
    createCapacityReservationFleetResponse_instanceMatchCriteria,
    createCapacityReservationFleetResponse_fleetCapacityReservations,
    createCapacityReservationFleetResponse_totalTargetCapacity,
    createCapacityReservationFleetResponse_tenancy,
    createCapacityReservationFleetResponse_allocationStrategy,
    createCapacityReservationFleetResponse_createTime,
    createCapacityReservationFleetResponse_tags,
    createCapacityReservationFleetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateCapacityReservationFleet' smart constructor.
data CreateCapacityReservationFleet = CreateCapacityReservationFleet'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensure Idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The date and time at which the Capacity Reservation Fleet expires. When
    -- the Capacity Reservation Fleet expires, its state changes to @expired@
    -- and all of the Capacity Reservations in the Fleet expire.
    --
    -- The Capacity Reservation Fleet expires within an hour after the
    -- specified time. For example, if you specify @5\/31\/2019@, @13:30:55@,
    -- the Capacity Reservation Fleet is guaranteed to expire between
    -- @13:30:55@ and @14:30:55@ on @5\/31\/2019@.
    endDate :: Prelude.Maybe Core.ISO8601,
    -- | Indicates the type of instance launches that the Capacity Reservation
    -- Fleet accepts. All Capacity Reservations in the Fleet inherit this
    -- instance matching criteria.
    --
    -- Currently, Capacity Reservation Fleets support @open@ instance matching
    -- criteria only. This means that instances that have matching attributes
    -- (instance type, platform, and Availability Zone) run in the Capacity
    -- Reservations automatically. Instances do not need to explicitly target a
    -- Capacity Reservation Fleet to use its reserved capacity.
    instanceMatchCriteria :: Prelude.Maybe FleetInstanceMatchCriteria,
    -- | The tags to assign to the Capacity Reservation Fleet. The tags are
    -- automatically assigned to the Capacity Reservations in the Fleet.
    tagSpecifications :: Prelude.Maybe [TagSpecification],
    -- | Indicates the tenancy of the Capacity Reservation Fleet. All Capacity
    -- Reservations in the Fleet inherit this tenancy. The Capacity Reservation
    -- Fleet can have one of the following tenancy settings:
    --
    -- -   @default@ - The Capacity Reservation Fleet is created on hardware
    --     that is shared with other Amazon Web Services accounts.
    --
    -- -   @dedicated@ - The Capacity Reservations are created on single-tenant
    --     hardware that is dedicated to a single Amazon Web Services account.
    tenancy :: Prelude.Maybe FleetCapacityReservationTenancy,
    -- | The strategy used by the Capacity Reservation Fleet to determine which
    -- of the specified instance types to use. Currently, only the
    -- @prioritized@ allocation strategy is supported. For more information,
    -- see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#allocation-strategy Allocation strategy>
    -- in the Amazon EC2 User Guide.
    --
    -- Valid values: @prioritized@
    allocationStrategy :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | Information about the instance types for which to reserve the capacity.
    instanceTypeSpecifications :: [ReservationFleetInstanceSpecification],
    -- | The total number of capacity units to be reserved by the Capacity
    -- Reservation Fleet. This value, together with the instance type weights
    -- that you assign to each instance type used by the Fleet determine the
    -- number of instances for which the Fleet reserves capacity. Both values
    -- are based on units that make sense for your workload. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
    -- in the Amazon EC2 User Guide.
    totalTargetCapacity :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCapacityReservationFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createCapacityReservationFleet_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensure Idempotency>.
--
-- 'endDate', 'createCapacityReservationFleet_endDate' - The date and time at which the Capacity Reservation Fleet expires. When
-- the Capacity Reservation Fleet expires, its state changes to @expired@
-- and all of the Capacity Reservations in the Fleet expire.
--
-- The Capacity Reservation Fleet expires within an hour after the
-- specified time. For example, if you specify @5\/31\/2019@, @13:30:55@,
-- the Capacity Reservation Fleet is guaranteed to expire between
-- @13:30:55@ and @14:30:55@ on @5\/31\/2019@.
--
-- 'instanceMatchCriteria', 'createCapacityReservationFleet_instanceMatchCriteria' - Indicates the type of instance launches that the Capacity Reservation
-- Fleet accepts. All Capacity Reservations in the Fleet inherit this
-- instance matching criteria.
--
-- Currently, Capacity Reservation Fleets support @open@ instance matching
-- criteria only. This means that instances that have matching attributes
-- (instance type, platform, and Availability Zone) run in the Capacity
-- Reservations automatically. Instances do not need to explicitly target a
-- Capacity Reservation Fleet to use its reserved capacity.
--
-- 'tagSpecifications', 'createCapacityReservationFleet_tagSpecifications' - The tags to assign to the Capacity Reservation Fleet. The tags are
-- automatically assigned to the Capacity Reservations in the Fleet.
--
-- 'tenancy', 'createCapacityReservationFleet_tenancy' - Indicates the tenancy of the Capacity Reservation Fleet. All Capacity
-- Reservations in the Fleet inherit this tenancy. The Capacity Reservation
-- Fleet can have one of the following tenancy settings:
--
-- -   @default@ - The Capacity Reservation Fleet is created on hardware
--     that is shared with other Amazon Web Services accounts.
--
-- -   @dedicated@ - The Capacity Reservations are created on single-tenant
--     hardware that is dedicated to a single Amazon Web Services account.
--
-- 'allocationStrategy', 'createCapacityReservationFleet_allocationStrategy' - The strategy used by the Capacity Reservation Fleet to determine which
-- of the specified instance types to use. Currently, only the
-- @prioritized@ allocation strategy is supported. For more information,
-- see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#allocation-strategy Allocation strategy>
-- in the Amazon EC2 User Guide.
--
-- Valid values: @prioritized@
--
-- 'dryRun', 'createCapacityReservationFleet_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'instanceTypeSpecifications', 'createCapacityReservationFleet_instanceTypeSpecifications' - Information about the instance types for which to reserve the capacity.
--
-- 'totalTargetCapacity', 'createCapacityReservationFleet_totalTargetCapacity' - The total number of capacity units to be reserved by the Capacity
-- Reservation Fleet. This value, together with the instance type weights
-- that you assign to each instance type used by the Fleet determine the
-- number of instances for which the Fleet reserves capacity. Both values
-- are based on units that make sense for your workload. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
-- in the Amazon EC2 User Guide.
newCreateCapacityReservationFleet ::
  -- | 'totalTargetCapacity'
  Prelude.Int ->
  CreateCapacityReservationFleet
newCreateCapacityReservationFleet
  pTotalTargetCapacity_ =
    CreateCapacityReservationFleet'
      { clientToken =
          Prelude.Nothing,
        endDate = Prelude.Nothing,
        instanceMatchCriteria = Prelude.Nothing,
        tagSpecifications = Prelude.Nothing,
        tenancy = Prelude.Nothing,
        allocationStrategy = Prelude.Nothing,
        dryRun = Prelude.Nothing,
        instanceTypeSpecifications = Prelude.mempty,
        totalTargetCapacity = pTotalTargetCapacity_
      }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensure Idempotency>.
createCapacityReservationFleet_clientToken :: Lens.Lens' CreateCapacityReservationFleet (Prelude.Maybe Prelude.Text)
createCapacityReservationFleet_clientToken = Lens.lens (\CreateCapacityReservationFleet' {clientToken} -> clientToken) (\s@CreateCapacityReservationFleet' {} a -> s {clientToken = a} :: CreateCapacityReservationFleet)

-- | The date and time at which the Capacity Reservation Fleet expires. When
-- the Capacity Reservation Fleet expires, its state changes to @expired@
-- and all of the Capacity Reservations in the Fleet expire.
--
-- The Capacity Reservation Fleet expires within an hour after the
-- specified time. For example, if you specify @5\/31\/2019@, @13:30:55@,
-- the Capacity Reservation Fleet is guaranteed to expire between
-- @13:30:55@ and @14:30:55@ on @5\/31\/2019@.
createCapacityReservationFleet_endDate :: Lens.Lens' CreateCapacityReservationFleet (Prelude.Maybe Prelude.UTCTime)
createCapacityReservationFleet_endDate = Lens.lens (\CreateCapacityReservationFleet' {endDate} -> endDate) (\s@CreateCapacityReservationFleet' {} a -> s {endDate = a} :: CreateCapacityReservationFleet) Prelude.. Lens.mapping Core._Time

-- | Indicates the type of instance launches that the Capacity Reservation
-- Fleet accepts. All Capacity Reservations in the Fleet inherit this
-- instance matching criteria.
--
-- Currently, Capacity Reservation Fleets support @open@ instance matching
-- criteria only. This means that instances that have matching attributes
-- (instance type, platform, and Availability Zone) run in the Capacity
-- Reservations automatically. Instances do not need to explicitly target a
-- Capacity Reservation Fleet to use its reserved capacity.
createCapacityReservationFleet_instanceMatchCriteria :: Lens.Lens' CreateCapacityReservationFleet (Prelude.Maybe FleetInstanceMatchCriteria)
createCapacityReservationFleet_instanceMatchCriteria = Lens.lens (\CreateCapacityReservationFleet' {instanceMatchCriteria} -> instanceMatchCriteria) (\s@CreateCapacityReservationFleet' {} a -> s {instanceMatchCriteria = a} :: CreateCapacityReservationFleet)

-- | The tags to assign to the Capacity Reservation Fleet. The tags are
-- automatically assigned to the Capacity Reservations in the Fleet.
createCapacityReservationFleet_tagSpecifications :: Lens.Lens' CreateCapacityReservationFleet (Prelude.Maybe [TagSpecification])
createCapacityReservationFleet_tagSpecifications = Lens.lens (\CreateCapacityReservationFleet' {tagSpecifications} -> tagSpecifications) (\s@CreateCapacityReservationFleet' {} a -> s {tagSpecifications = a} :: CreateCapacityReservationFleet) Prelude.. Lens.mapping Lens.coerced

-- | Indicates the tenancy of the Capacity Reservation Fleet. All Capacity
-- Reservations in the Fleet inherit this tenancy. The Capacity Reservation
-- Fleet can have one of the following tenancy settings:
--
-- -   @default@ - The Capacity Reservation Fleet is created on hardware
--     that is shared with other Amazon Web Services accounts.
--
-- -   @dedicated@ - The Capacity Reservations are created on single-tenant
--     hardware that is dedicated to a single Amazon Web Services account.
createCapacityReservationFleet_tenancy :: Lens.Lens' CreateCapacityReservationFleet (Prelude.Maybe FleetCapacityReservationTenancy)
createCapacityReservationFleet_tenancy = Lens.lens (\CreateCapacityReservationFleet' {tenancy} -> tenancy) (\s@CreateCapacityReservationFleet' {} a -> s {tenancy = a} :: CreateCapacityReservationFleet)

-- | The strategy used by the Capacity Reservation Fleet to determine which
-- of the specified instance types to use. Currently, only the
-- @prioritized@ allocation strategy is supported. For more information,
-- see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#allocation-strategy Allocation strategy>
-- in the Amazon EC2 User Guide.
--
-- Valid values: @prioritized@
createCapacityReservationFleet_allocationStrategy :: Lens.Lens' CreateCapacityReservationFleet (Prelude.Maybe Prelude.Text)
createCapacityReservationFleet_allocationStrategy = Lens.lens (\CreateCapacityReservationFleet' {allocationStrategy} -> allocationStrategy) (\s@CreateCapacityReservationFleet' {} a -> s {allocationStrategy = a} :: CreateCapacityReservationFleet)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createCapacityReservationFleet_dryRun :: Lens.Lens' CreateCapacityReservationFleet (Prelude.Maybe Prelude.Bool)
createCapacityReservationFleet_dryRun = Lens.lens (\CreateCapacityReservationFleet' {dryRun} -> dryRun) (\s@CreateCapacityReservationFleet' {} a -> s {dryRun = a} :: CreateCapacityReservationFleet)

-- | Information about the instance types for which to reserve the capacity.
createCapacityReservationFleet_instanceTypeSpecifications :: Lens.Lens' CreateCapacityReservationFleet [ReservationFleetInstanceSpecification]
createCapacityReservationFleet_instanceTypeSpecifications = Lens.lens (\CreateCapacityReservationFleet' {instanceTypeSpecifications} -> instanceTypeSpecifications) (\s@CreateCapacityReservationFleet' {} a -> s {instanceTypeSpecifications = a} :: CreateCapacityReservationFleet) Prelude.. Lens.coerced

-- | The total number of capacity units to be reserved by the Capacity
-- Reservation Fleet. This value, together with the instance type weights
-- that you assign to each instance type used by the Fleet determine the
-- number of instances for which the Fleet reserves capacity. Both values
-- are based on units that make sense for your workload. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
-- in the Amazon EC2 User Guide.
createCapacityReservationFleet_totalTargetCapacity :: Lens.Lens' CreateCapacityReservationFleet Prelude.Int
createCapacityReservationFleet_totalTargetCapacity = Lens.lens (\CreateCapacityReservationFleet' {totalTargetCapacity} -> totalTargetCapacity) (\s@CreateCapacityReservationFleet' {} a -> s {totalTargetCapacity = a} :: CreateCapacityReservationFleet)

instance
  Core.AWSRequest
    CreateCapacityReservationFleet
  where
  type
    AWSResponse CreateCapacityReservationFleet =
      CreateCapacityReservationFleetResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CreateCapacityReservationFleetResponse'
            Prelude.<$> (x Core..@? "capacityReservationFleetId")
            Prelude.<*> (x Core..@? "state")
            Prelude.<*> (x Core..@? "totalFulfilledCapacity")
            Prelude.<*> (x Core..@? "endDate")
            Prelude.<*> (x Core..@? "instanceMatchCriteria")
            Prelude.<*> ( x Core..@? "fleetCapacityReservationSet"
                            Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (x Core..@? "totalTargetCapacity")
            Prelude.<*> (x Core..@? "tenancy")
            Prelude.<*> (x Core..@? "allocationStrategy")
            Prelude.<*> (x Core..@? "createTime")
            Prelude.<*> ( x Core..@? "tagSet" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateCapacityReservationFleet

instance
  Prelude.NFData
    CreateCapacityReservationFleet

instance
  Core.ToHeaders
    CreateCapacityReservationFleet
  where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateCapacityReservationFleet where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateCapacityReservationFleet where
  toQuery CreateCapacityReservationFleet' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "CreateCapacityReservationFleet" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "ClientToken" Core.=: clientToken,
        "EndDate" Core.=: endDate,
        "InstanceMatchCriteria"
          Core.=: instanceMatchCriteria,
        Core.toQuery
          ( Core.toQueryList "TagSpecification"
              Prelude.<$> tagSpecifications
          ),
        "Tenancy" Core.=: tenancy,
        "AllocationStrategy" Core.=: allocationStrategy,
        "DryRun" Core.=: dryRun,
        Core.toQueryList
          "InstanceTypeSpecification"
          instanceTypeSpecifications,
        "TotalTargetCapacity" Core.=: totalTargetCapacity
      ]

-- | /See:/ 'newCreateCapacityReservationFleetResponse' smart constructor.
data CreateCapacityReservationFleetResponse = CreateCapacityReservationFleetResponse'
  { -- | The ID of the Capacity Reservation Fleet.
    capacityReservationFleetId :: Prelude.Maybe Prelude.Text,
    -- | The status of the Capacity Reservation Fleet.
    state :: Prelude.Maybe CapacityReservationFleetState,
    -- | The requested capacity units that have been successfully reserved.
    totalFulfilledCapacity :: Prelude.Maybe Prelude.Double,
    -- | The date and time at which the Capacity Reservation Fleet expires.
    endDate :: Prelude.Maybe Core.ISO8601,
    -- | The instance matching criteria for the Capacity Reservation Fleet.
    instanceMatchCriteria :: Prelude.Maybe FleetInstanceMatchCriteria,
    -- | Information about the individual Capacity Reservations in the Capacity
    -- Reservation Fleet.
    fleetCapacityReservations :: Prelude.Maybe [FleetCapacityReservation],
    -- | The total number of capacity units for which the Capacity Reservation
    -- Fleet reserves capacity.
    totalTargetCapacity :: Prelude.Maybe Prelude.Int,
    -- | Indicates the tenancy of Capacity Reservation Fleet.
    tenancy :: Prelude.Maybe FleetCapacityReservationTenancy,
    -- | The allocation strategy used by the Capacity Reservation Fleet.
    allocationStrategy :: Prelude.Maybe Prelude.Text,
    -- | The date and time at which the Capacity Reservation Fleet was created.
    createTime :: Prelude.Maybe Core.ISO8601,
    -- | The tags assigned to the Capacity Reservation Fleet.
    tags :: Prelude.Maybe [Tag],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCapacityReservationFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'capacityReservationFleetId', 'createCapacityReservationFleetResponse_capacityReservationFleetId' - The ID of the Capacity Reservation Fleet.
--
-- 'state', 'createCapacityReservationFleetResponse_state' - The status of the Capacity Reservation Fleet.
--
-- 'totalFulfilledCapacity', 'createCapacityReservationFleetResponse_totalFulfilledCapacity' - The requested capacity units that have been successfully reserved.
--
-- 'endDate', 'createCapacityReservationFleetResponse_endDate' - The date and time at which the Capacity Reservation Fleet expires.
--
-- 'instanceMatchCriteria', 'createCapacityReservationFleetResponse_instanceMatchCriteria' - The instance matching criteria for the Capacity Reservation Fleet.
--
-- 'fleetCapacityReservations', 'createCapacityReservationFleetResponse_fleetCapacityReservations' - Information about the individual Capacity Reservations in the Capacity
-- Reservation Fleet.
--
-- 'totalTargetCapacity', 'createCapacityReservationFleetResponse_totalTargetCapacity' - The total number of capacity units for which the Capacity Reservation
-- Fleet reserves capacity.
--
-- 'tenancy', 'createCapacityReservationFleetResponse_tenancy' - Indicates the tenancy of Capacity Reservation Fleet.
--
-- 'allocationStrategy', 'createCapacityReservationFleetResponse_allocationStrategy' - The allocation strategy used by the Capacity Reservation Fleet.
--
-- 'createTime', 'createCapacityReservationFleetResponse_createTime' - The date and time at which the Capacity Reservation Fleet was created.
--
-- 'tags', 'createCapacityReservationFleetResponse_tags' - The tags assigned to the Capacity Reservation Fleet.
--
-- 'httpStatus', 'createCapacityReservationFleetResponse_httpStatus' - The response's http status code.
newCreateCapacityReservationFleetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCapacityReservationFleetResponse
newCreateCapacityReservationFleetResponse
  pHttpStatus_ =
    CreateCapacityReservationFleetResponse'
      { capacityReservationFleetId =
          Prelude.Nothing,
        state = Prelude.Nothing,
        totalFulfilledCapacity =
          Prelude.Nothing,
        endDate = Prelude.Nothing,
        instanceMatchCriteria =
          Prelude.Nothing,
        fleetCapacityReservations =
          Prelude.Nothing,
        totalTargetCapacity =
          Prelude.Nothing,
        tenancy = Prelude.Nothing,
        allocationStrategy =
          Prelude.Nothing,
        createTime = Prelude.Nothing,
        tags = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The ID of the Capacity Reservation Fleet.
createCapacityReservationFleetResponse_capacityReservationFleetId :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe Prelude.Text)
createCapacityReservationFleetResponse_capacityReservationFleetId = Lens.lens (\CreateCapacityReservationFleetResponse' {capacityReservationFleetId} -> capacityReservationFleetId) (\s@CreateCapacityReservationFleetResponse' {} a -> s {capacityReservationFleetId = a} :: CreateCapacityReservationFleetResponse)

-- | The status of the Capacity Reservation Fleet.
createCapacityReservationFleetResponse_state :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe CapacityReservationFleetState)
createCapacityReservationFleetResponse_state = Lens.lens (\CreateCapacityReservationFleetResponse' {state} -> state) (\s@CreateCapacityReservationFleetResponse' {} a -> s {state = a} :: CreateCapacityReservationFleetResponse)

-- | The requested capacity units that have been successfully reserved.
createCapacityReservationFleetResponse_totalFulfilledCapacity :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe Prelude.Double)
createCapacityReservationFleetResponse_totalFulfilledCapacity = Lens.lens (\CreateCapacityReservationFleetResponse' {totalFulfilledCapacity} -> totalFulfilledCapacity) (\s@CreateCapacityReservationFleetResponse' {} a -> s {totalFulfilledCapacity = a} :: CreateCapacityReservationFleetResponse)

-- | The date and time at which the Capacity Reservation Fleet expires.
createCapacityReservationFleetResponse_endDate :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe Prelude.UTCTime)
createCapacityReservationFleetResponse_endDate = Lens.lens (\CreateCapacityReservationFleetResponse' {endDate} -> endDate) (\s@CreateCapacityReservationFleetResponse' {} a -> s {endDate = a} :: CreateCapacityReservationFleetResponse) Prelude.. Lens.mapping Core._Time

-- | The instance matching criteria for the Capacity Reservation Fleet.
createCapacityReservationFleetResponse_instanceMatchCriteria :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe FleetInstanceMatchCriteria)
createCapacityReservationFleetResponse_instanceMatchCriteria = Lens.lens (\CreateCapacityReservationFleetResponse' {instanceMatchCriteria} -> instanceMatchCriteria) (\s@CreateCapacityReservationFleetResponse' {} a -> s {instanceMatchCriteria = a} :: CreateCapacityReservationFleetResponse)

-- | Information about the individual Capacity Reservations in the Capacity
-- Reservation Fleet.
createCapacityReservationFleetResponse_fleetCapacityReservations :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe [FleetCapacityReservation])
createCapacityReservationFleetResponse_fleetCapacityReservations = Lens.lens (\CreateCapacityReservationFleetResponse' {fleetCapacityReservations} -> fleetCapacityReservations) (\s@CreateCapacityReservationFleetResponse' {} a -> s {fleetCapacityReservations = a} :: CreateCapacityReservationFleetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The total number of capacity units for which the Capacity Reservation
-- Fleet reserves capacity.
createCapacityReservationFleetResponse_totalTargetCapacity :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe Prelude.Int)
createCapacityReservationFleetResponse_totalTargetCapacity = Lens.lens (\CreateCapacityReservationFleetResponse' {totalTargetCapacity} -> totalTargetCapacity) (\s@CreateCapacityReservationFleetResponse' {} a -> s {totalTargetCapacity = a} :: CreateCapacityReservationFleetResponse)

-- | Indicates the tenancy of Capacity Reservation Fleet.
createCapacityReservationFleetResponse_tenancy :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe FleetCapacityReservationTenancy)
createCapacityReservationFleetResponse_tenancy = Lens.lens (\CreateCapacityReservationFleetResponse' {tenancy} -> tenancy) (\s@CreateCapacityReservationFleetResponse' {} a -> s {tenancy = a} :: CreateCapacityReservationFleetResponse)

-- | The allocation strategy used by the Capacity Reservation Fleet.
createCapacityReservationFleetResponse_allocationStrategy :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe Prelude.Text)
createCapacityReservationFleetResponse_allocationStrategy = Lens.lens (\CreateCapacityReservationFleetResponse' {allocationStrategy} -> allocationStrategy) (\s@CreateCapacityReservationFleetResponse' {} a -> s {allocationStrategy = a} :: CreateCapacityReservationFleetResponse)

-- | The date and time at which the Capacity Reservation Fleet was created.
createCapacityReservationFleetResponse_createTime :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe Prelude.UTCTime)
createCapacityReservationFleetResponse_createTime = Lens.lens (\CreateCapacityReservationFleetResponse' {createTime} -> createTime) (\s@CreateCapacityReservationFleetResponse' {} a -> s {createTime = a} :: CreateCapacityReservationFleetResponse) Prelude.. Lens.mapping Core._Time

-- | The tags assigned to the Capacity Reservation Fleet.
createCapacityReservationFleetResponse_tags :: Lens.Lens' CreateCapacityReservationFleetResponse (Prelude.Maybe [Tag])
createCapacityReservationFleetResponse_tags = Lens.lens (\CreateCapacityReservationFleetResponse' {tags} -> tags) (\s@CreateCapacityReservationFleetResponse' {} a -> s {tags = a} :: CreateCapacityReservationFleetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createCapacityReservationFleetResponse_httpStatus :: Lens.Lens' CreateCapacityReservationFleetResponse Prelude.Int
createCapacityReservationFleetResponse_httpStatus = Lens.lens (\CreateCapacityReservationFleetResponse' {httpStatus} -> httpStatus) (\s@CreateCapacityReservationFleetResponse' {} a -> s {httpStatus = a} :: CreateCapacityReservationFleetResponse)

instance
  Prelude.NFData
    CreateCapacityReservationFleetResponse
