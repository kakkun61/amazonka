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
-- Module      : Network.AWS.GameLift.StopFleetActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Suspends certain types of activity in a fleet location. Currently, this
-- operation is used to stop auto-scaling activity. For multi-location
-- fleets, fleet actions are managed separately for each location.
--
-- Stopping fleet actions has several potential purposes. It allows you to
-- temporarily stop auto-scaling activity but retain your scaling policies
-- for use in the future. For multi-location fleets, you can set up
-- fleet-wide auto-scaling, and then opt out of it for certain locations.
--
-- This operation can be used in the following ways:
--
-- -   To stop actions on instances in the fleet\'s home Region, provide a
--     fleet ID and the type of actions to suspend.
--
-- -   To stop actions on instances in one of the fleet\'s remote
--     locations, provide a fleet ID, a location name, and the type of
--     actions to suspend.
--
-- If successful, GameLift no longer initiates scaling events except in
-- response to manual changes using UpdateFleetCapacity. You can view a
-- fleet\'s stopped actions using DescribeFleetAttributes or
-- DescribeFleetLocationAttributes. Suspended activity can be restarted
-- using StartFleetActions.
--
-- __Learn more__
--
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html Setting up GameLift Fleets>
--
-- __Related actions__
--
-- CreateFleet | UpdateFleetCapacity | PutScalingPolicy |
-- DescribeEC2InstanceLimits | DescribeFleetAttributes |
-- DescribeFleetLocationAttributes | UpdateFleetAttributes |
-- StopFleetActions | DeleteFleet |
-- <https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets All APIs by task>
module Network.AWS.GameLift.StopFleetActions
  ( -- * Creating a Request
    StopFleetActions (..),
    newStopFleetActions,

    -- * Request Lenses
    stopFleetActions_location,
    stopFleetActions_fleetId,
    stopFleetActions_actions,

    -- * Destructuring the Response
    StopFleetActionsResponse (..),
    newStopFleetActionsResponse,

    -- * Response Lenses
    stopFleetActionsResponse_fleetArn,
    stopFleetActionsResponse_fleetId,
    stopFleetActionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GameLift.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for a request operation.
--
-- /See:/ 'newStopFleetActions' smart constructor.
data StopFleetActions = StopFleetActions'
  { -- | The fleet location to stop fleet actions for. Specify a location in the
    -- form of an AWS Region code, such as @us-west-2@.
    location :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the fleet to stop actions on. You can use either
    -- the fleet ID or ARN value.
    fleetId :: Prelude.Text,
    -- | List of actions to suspend on the fleet.
    actions :: Prelude.NonEmpty FleetAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopFleetActions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'location', 'stopFleetActions_location' - The fleet location to stop fleet actions for. Specify a location in the
-- form of an AWS Region code, such as @us-west-2@.
--
-- 'fleetId', 'stopFleetActions_fleetId' - A unique identifier for the fleet to stop actions on. You can use either
-- the fleet ID or ARN value.
--
-- 'actions', 'stopFleetActions_actions' - List of actions to suspend on the fleet.
newStopFleetActions ::
  -- | 'fleetId'
  Prelude.Text ->
  -- | 'actions'
  Prelude.NonEmpty FleetAction ->
  StopFleetActions
newStopFleetActions pFleetId_ pActions_ =
  StopFleetActions'
    { location = Prelude.Nothing,
      fleetId = pFleetId_,
      actions = Lens.coerced Lens.# pActions_
    }

-- | The fleet location to stop fleet actions for. Specify a location in the
-- form of an AWS Region code, such as @us-west-2@.
stopFleetActions_location :: Lens.Lens' StopFleetActions (Prelude.Maybe Prelude.Text)
stopFleetActions_location = Lens.lens (\StopFleetActions' {location} -> location) (\s@StopFleetActions' {} a -> s {location = a} :: StopFleetActions)

-- | A unique identifier for the fleet to stop actions on. You can use either
-- the fleet ID or ARN value.
stopFleetActions_fleetId :: Lens.Lens' StopFleetActions Prelude.Text
stopFleetActions_fleetId = Lens.lens (\StopFleetActions' {fleetId} -> fleetId) (\s@StopFleetActions' {} a -> s {fleetId = a} :: StopFleetActions)

-- | List of actions to suspend on the fleet.
stopFleetActions_actions :: Lens.Lens' StopFleetActions (Prelude.NonEmpty FleetAction)
stopFleetActions_actions = Lens.lens (\StopFleetActions' {actions} -> actions) (\s@StopFleetActions' {} a -> s {actions = a} :: StopFleetActions) Prelude.. Lens.coerced

instance Core.AWSRequest StopFleetActions where
  type
    AWSResponse StopFleetActions =
      StopFleetActionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          StopFleetActionsResponse'
            Prelude.<$> (x Core..?> "FleetArn")
            Prelude.<*> (x Core..?> "FleetId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopFleetActions

instance Prelude.NFData StopFleetActions

instance Core.ToHeaders StopFleetActions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("GameLift.StopFleetActions" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StopFleetActions where
  toJSON StopFleetActions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Location" Core..=) Prelude.<$> location,
            Prelude.Just ("FleetId" Core..= fleetId),
            Prelude.Just ("Actions" Core..= actions)
          ]
      )

instance Core.ToPath StopFleetActions where
  toPath = Prelude.const "/"

instance Core.ToQuery StopFleetActions where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the input for a request operation.
--
-- /See:/ 'newStopFleetActionsResponse' smart constructor.
data StopFleetActionsResponse = StopFleetActionsResponse'
  { -- | The Amazon Resource Name
    -- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
    -- that is assigned to a GameLift fleet resource and uniquely identifies
    -- it. ARNs are unique across all Regions. Format is
    -- @arn:aws:gamelift:\<region>::fleet\/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
    fleetArn :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the fleet to stop actions on.
    fleetId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopFleetActionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fleetArn', 'stopFleetActionsResponse_fleetArn' - The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- that is assigned to a GameLift fleet resource and uniquely identifies
-- it. ARNs are unique across all Regions. Format is
-- @arn:aws:gamelift:\<region>::fleet\/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
--
-- 'fleetId', 'stopFleetActionsResponse_fleetId' - A unique identifier for the fleet to stop actions on.
--
-- 'httpStatus', 'stopFleetActionsResponse_httpStatus' - The response's http status code.
newStopFleetActionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopFleetActionsResponse
newStopFleetActionsResponse pHttpStatus_ =
  StopFleetActionsResponse'
    { fleetArn =
        Prelude.Nothing,
      fleetId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name
-- (<https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html ARN>)
-- that is assigned to a GameLift fleet resource and uniquely identifies
-- it. ARNs are unique across all Regions. Format is
-- @arn:aws:gamelift:\<region>::fleet\/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912@.
stopFleetActionsResponse_fleetArn :: Lens.Lens' StopFleetActionsResponse (Prelude.Maybe Prelude.Text)
stopFleetActionsResponse_fleetArn = Lens.lens (\StopFleetActionsResponse' {fleetArn} -> fleetArn) (\s@StopFleetActionsResponse' {} a -> s {fleetArn = a} :: StopFleetActionsResponse)

-- | A unique identifier for the fleet to stop actions on.
stopFleetActionsResponse_fleetId :: Lens.Lens' StopFleetActionsResponse (Prelude.Maybe Prelude.Text)
stopFleetActionsResponse_fleetId = Lens.lens (\StopFleetActionsResponse' {fleetId} -> fleetId) (\s@StopFleetActionsResponse' {} a -> s {fleetId = a} :: StopFleetActionsResponse)

-- | The response's http status code.
stopFleetActionsResponse_httpStatus :: Lens.Lens' StopFleetActionsResponse Prelude.Int
stopFleetActionsResponse_httpStatus = Lens.lens (\StopFleetActionsResponse' {httpStatus} -> httpStatus) (\s@StopFleetActionsResponse' {} a -> s {httpStatus = a} :: StopFleetActionsResponse)

instance Prelude.NFData StopFleetActionsResponse
