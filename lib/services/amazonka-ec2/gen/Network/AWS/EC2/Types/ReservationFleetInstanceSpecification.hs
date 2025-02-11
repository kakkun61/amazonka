{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReservationFleetInstanceSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReservationFleetInstanceSpecification where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.CapacityReservationInstancePlatform
import Network.AWS.EC2.Types.InstanceType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about an instance type to use in a Capacity Reservation
-- Fleet.
--
-- /See:/ 'newReservationFleetInstanceSpecification' smart constructor.
data ReservationFleetInstanceSpecification = ReservationFleetInstanceSpecification'
  { -- | The priority to assign to the instance type. This value is used to
    -- determine which of the instance types specified for the Fleet should be
    -- prioritized for use. A lower value indicates a high priority. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority Instance type priority>
    -- in the Amazon EC2 User Guide.
    priority :: Prelude.Maybe Prelude.Natural,
    -- | The ID of the Availability Zone in which the Capacity Reservation Fleet
    -- reserves the capacity. A Capacity Reservation Fleet can\'t span
    -- Availability Zones. All instance type specifications that you specify
    -- for the Fleet must use the same Availability Zone.
    availabilityZoneId :: Prelude.Maybe Prelude.Text,
    -- | The number of capacity units provided by the specified instance type.
    -- This value, together with the total target capacity that you specify for
    -- the Fleet determine the number of instances for which the Fleet reserves
    -- capacity. Both values are based on units that make sense for your
    -- workload. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
    -- in the Amazon EC2 User Guide.
    weight :: Prelude.Maybe Prelude.Double,
    -- | The type of operating system for which the Capacity Reservation Fleet
    -- reserves capacity.
    instancePlatform :: Prelude.Maybe CapacityReservationInstancePlatform,
    -- | The instance type for which the Capacity Reservation Fleet reserves
    -- capacity.
    instanceType :: Prelude.Maybe InstanceType,
    -- | Indicates whether the Capacity Reservation Fleet supports EBS-optimized
    -- instances types. This optimization provides dedicated throughput to
    -- Amazon EBS and an optimized configuration stack to provide optimal I\/O
    -- performance. This optimization isn\'t available with all instance types.
    -- Additional usage charges apply when using EBS-optimized instance types.
    ebsOptimized :: Prelude.Maybe Prelude.Bool,
    -- | The Availability Zone in which the Capacity Reservation Fleet reserves
    -- the capacity. A Capacity Reservation Fleet can\'t span Availability
    -- Zones. All instance type specifications that you specify for the Fleet
    -- must use the same Availability Zone.
    availabilityZone :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReservationFleetInstanceSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'priority', 'reservationFleetInstanceSpecification_priority' - The priority to assign to the instance type. This value is used to
-- determine which of the instance types specified for the Fleet should be
-- prioritized for use. A lower value indicates a high priority. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority Instance type priority>
-- in the Amazon EC2 User Guide.
--
-- 'availabilityZoneId', 'reservationFleetInstanceSpecification_availabilityZoneId' - The ID of the Availability Zone in which the Capacity Reservation Fleet
-- reserves the capacity. A Capacity Reservation Fleet can\'t span
-- Availability Zones. All instance type specifications that you specify
-- for the Fleet must use the same Availability Zone.
--
-- 'weight', 'reservationFleetInstanceSpecification_weight' - The number of capacity units provided by the specified instance type.
-- This value, together with the total target capacity that you specify for
-- the Fleet determine the number of instances for which the Fleet reserves
-- capacity. Both values are based on units that make sense for your
-- workload. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
-- in the Amazon EC2 User Guide.
--
-- 'instancePlatform', 'reservationFleetInstanceSpecification_instancePlatform' - The type of operating system for which the Capacity Reservation Fleet
-- reserves capacity.
--
-- 'instanceType', 'reservationFleetInstanceSpecification_instanceType' - The instance type for which the Capacity Reservation Fleet reserves
-- capacity.
--
-- 'ebsOptimized', 'reservationFleetInstanceSpecification_ebsOptimized' - Indicates whether the Capacity Reservation Fleet supports EBS-optimized
-- instances types. This optimization provides dedicated throughput to
-- Amazon EBS and an optimized configuration stack to provide optimal I\/O
-- performance. This optimization isn\'t available with all instance types.
-- Additional usage charges apply when using EBS-optimized instance types.
--
-- 'availabilityZone', 'reservationFleetInstanceSpecification_availabilityZone' - The Availability Zone in which the Capacity Reservation Fleet reserves
-- the capacity. A Capacity Reservation Fleet can\'t span Availability
-- Zones. All instance type specifications that you specify for the Fleet
-- must use the same Availability Zone.
newReservationFleetInstanceSpecification ::
  ReservationFleetInstanceSpecification
newReservationFleetInstanceSpecification =
  ReservationFleetInstanceSpecification'
    { priority =
        Prelude.Nothing,
      availabilityZoneId = Prelude.Nothing,
      weight = Prelude.Nothing,
      instancePlatform = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      ebsOptimized = Prelude.Nothing,
      availabilityZone = Prelude.Nothing
    }

-- | The priority to assign to the instance type. This value is used to
-- determine which of the instance types specified for the Fleet should be
-- prioritized for use. A lower value indicates a high priority. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority Instance type priority>
-- in the Amazon EC2 User Guide.
reservationFleetInstanceSpecification_priority :: Lens.Lens' ReservationFleetInstanceSpecification (Prelude.Maybe Prelude.Natural)
reservationFleetInstanceSpecification_priority = Lens.lens (\ReservationFleetInstanceSpecification' {priority} -> priority) (\s@ReservationFleetInstanceSpecification' {} a -> s {priority = a} :: ReservationFleetInstanceSpecification)

-- | The ID of the Availability Zone in which the Capacity Reservation Fleet
-- reserves the capacity. A Capacity Reservation Fleet can\'t span
-- Availability Zones. All instance type specifications that you specify
-- for the Fleet must use the same Availability Zone.
reservationFleetInstanceSpecification_availabilityZoneId :: Lens.Lens' ReservationFleetInstanceSpecification (Prelude.Maybe Prelude.Text)
reservationFleetInstanceSpecification_availabilityZoneId = Lens.lens (\ReservationFleetInstanceSpecification' {availabilityZoneId} -> availabilityZoneId) (\s@ReservationFleetInstanceSpecification' {} a -> s {availabilityZoneId = a} :: ReservationFleetInstanceSpecification)

-- | The number of capacity units provided by the specified instance type.
-- This value, together with the total target capacity that you specify for
-- the Fleet determine the number of instances for which the Fleet reserves
-- capacity. Both values are based on units that make sense for your
-- workload. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity Total target capacity>
-- in the Amazon EC2 User Guide.
reservationFleetInstanceSpecification_weight :: Lens.Lens' ReservationFleetInstanceSpecification (Prelude.Maybe Prelude.Double)
reservationFleetInstanceSpecification_weight = Lens.lens (\ReservationFleetInstanceSpecification' {weight} -> weight) (\s@ReservationFleetInstanceSpecification' {} a -> s {weight = a} :: ReservationFleetInstanceSpecification)

-- | The type of operating system for which the Capacity Reservation Fleet
-- reserves capacity.
reservationFleetInstanceSpecification_instancePlatform :: Lens.Lens' ReservationFleetInstanceSpecification (Prelude.Maybe CapacityReservationInstancePlatform)
reservationFleetInstanceSpecification_instancePlatform = Lens.lens (\ReservationFleetInstanceSpecification' {instancePlatform} -> instancePlatform) (\s@ReservationFleetInstanceSpecification' {} a -> s {instancePlatform = a} :: ReservationFleetInstanceSpecification)

-- | The instance type for which the Capacity Reservation Fleet reserves
-- capacity.
reservationFleetInstanceSpecification_instanceType :: Lens.Lens' ReservationFleetInstanceSpecification (Prelude.Maybe InstanceType)
reservationFleetInstanceSpecification_instanceType = Lens.lens (\ReservationFleetInstanceSpecification' {instanceType} -> instanceType) (\s@ReservationFleetInstanceSpecification' {} a -> s {instanceType = a} :: ReservationFleetInstanceSpecification)

-- | Indicates whether the Capacity Reservation Fleet supports EBS-optimized
-- instances types. This optimization provides dedicated throughput to
-- Amazon EBS and an optimized configuration stack to provide optimal I\/O
-- performance. This optimization isn\'t available with all instance types.
-- Additional usage charges apply when using EBS-optimized instance types.
reservationFleetInstanceSpecification_ebsOptimized :: Lens.Lens' ReservationFleetInstanceSpecification (Prelude.Maybe Prelude.Bool)
reservationFleetInstanceSpecification_ebsOptimized = Lens.lens (\ReservationFleetInstanceSpecification' {ebsOptimized} -> ebsOptimized) (\s@ReservationFleetInstanceSpecification' {} a -> s {ebsOptimized = a} :: ReservationFleetInstanceSpecification)

-- | The Availability Zone in which the Capacity Reservation Fleet reserves
-- the capacity. A Capacity Reservation Fleet can\'t span Availability
-- Zones. All instance type specifications that you specify for the Fleet
-- must use the same Availability Zone.
reservationFleetInstanceSpecification_availabilityZone :: Lens.Lens' ReservationFleetInstanceSpecification (Prelude.Maybe Prelude.Text)
reservationFleetInstanceSpecification_availabilityZone = Lens.lens (\ReservationFleetInstanceSpecification' {availabilityZone} -> availabilityZone) (\s@ReservationFleetInstanceSpecification' {} a -> s {availabilityZone = a} :: ReservationFleetInstanceSpecification)

instance
  Prelude.Hashable
    ReservationFleetInstanceSpecification

instance
  Prelude.NFData
    ReservationFleetInstanceSpecification

instance
  Core.ToQuery
    ReservationFleetInstanceSpecification
  where
  toQuery ReservationFleetInstanceSpecification' {..} =
    Prelude.mconcat
      [ "Priority" Core.=: priority,
        "AvailabilityZoneId" Core.=: availabilityZoneId,
        "Weight" Core.=: weight,
        "InstancePlatform" Core.=: instancePlatform,
        "InstanceType" Core.=: instanceType,
        "EbsOptimized" Core.=: ebsOptimized,
        "AvailabilityZone" Core.=: availabilityZone
      ]
