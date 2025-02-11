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
-- Module      : Network.AWS.Location.UpdateTracker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified properties of a given tracker resource.
module Network.AWS.Location.UpdateTracker
  ( -- * Creating a Request
    UpdateTracker (..),
    newUpdateTracker,

    -- * Request Lenses
    updateTracker_pricingPlan,
    updateTracker_pricingPlanDataSource,
    updateTracker_description,
    updateTracker_positionFiltering,
    updateTracker_trackerName,

    -- * Destructuring the Response
    UpdateTrackerResponse (..),
    newUpdateTrackerResponse,

    -- * Response Lenses
    updateTrackerResponse_httpStatus,
    updateTrackerResponse_trackerArn,
    updateTrackerResponse_trackerName,
    updateTrackerResponse_updateTime,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateTracker' smart constructor.
data UpdateTracker = UpdateTracker'
  { -- | Updates the pricing plan for the tracker resource.
    --
    -- For more information about each pricing plan option restrictions, see
    -- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing>.
    pricingPlan :: Prelude.Maybe PricingPlan,
    -- | Updates the data provider for the tracker resource.
    --
    -- A required value for the following pricing plans: @MobileAssetTracking@|
    -- @MobileAssetManagement@
    --
    -- For more information about
    -- <https://aws.amazon.com/location/data-providers/ data providers> and
    -- <https://aws.amazon.com/location/pricing/ pricing plans>, see the Amazon
    -- Location Service product page
    --
    -- This can only be updated when updating the @PricingPlan@ in the same
    -- request.
    --
    -- Amazon Location Service uses @PricingPlanDataSource@ to calculate
    -- billing for your tracker resource. Your data won\'t be shared with the
    -- data provider, and will remain in your AWS account and Region unless you
    -- move it.
    pricingPlanDataSource :: Prelude.Maybe Prelude.Text,
    -- | Updates the description for the tracker resource.
    description :: Prelude.Maybe Prelude.Text,
    -- | Updates the position filtering for the tracker resource.
    --
    -- Valid values:
    --
    -- -   @TimeBased@ - Location updates are evaluated against linked geofence
    --     collections, but not every location update is stored. If your update
    --     frequency is more often than 30 seconds, only one update per 30
    --     seconds is stored for each unique device ID.
    --
    -- -   @DistanceBased@ - If the device has moved less than 30 m (98.4 ft),
    --     location updates are ignored. Location updates within this distance
    --     are neither evaluated against linked geofence collections, nor
    --     stored. This helps control costs by reducing the number of geofence
    --     evaluations and device positions to retrieve. Distance-based
    --     filtering can also reduce the jitter effect when displaying device
    --     trajectory on a map.
    positionFiltering :: Prelude.Maybe PositionFiltering,
    -- | The name of the tracker resource to update.
    trackerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTracker' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pricingPlan', 'updateTracker_pricingPlan' - Updates the pricing plan for the tracker resource.
--
-- For more information about each pricing plan option restrictions, see
-- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing>.
--
-- 'pricingPlanDataSource', 'updateTracker_pricingPlanDataSource' - Updates the data provider for the tracker resource.
--
-- A required value for the following pricing plans: @MobileAssetTracking@|
-- @MobileAssetManagement@
--
-- For more information about
-- <https://aws.amazon.com/location/data-providers/ data providers> and
-- <https://aws.amazon.com/location/pricing/ pricing plans>, see the Amazon
-- Location Service product page
--
-- This can only be updated when updating the @PricingPlan@ in the same
-- request.
--
-- Amazon Location Service uses @PricingPlanDataSource@ to calculate
-- billing for your tracker resource. Your data won\'t be shared with the
-- data provider, and will remain in your AWS account and Region unless you
-- move it.
--
-- 'description', 'updateTracker_description' - Updates the description for the tracker resource.
--
-- 'positionFiltering', 'updateTracker_positionFiltering' - Updates the position filtering for the tracker resource.
--
-- Valid values:
--
-- -   @TimeBased@ - Location updates are evaluated against linked geofence
--     collections, but not every location update is stored. If your update
--     frequency is more often than 30 seconds, only one update per 30
--     seconds is stored for each unique device ID.
--
-- -   @DistanceBased@ - If the device has moved less than 30 m (98.4 ft),
--     location updates are ignored. Location updates within this distance
--     are neither evaluated against linked geofence collections, nor
--     stored. This helps control costs by reducing the number of geofence
--     evaluations and device positions to retrieve. Distance-based
--     filtering can also reduce the jitter effect when displaying device
--     trajectory on a map.
--
-- 'trackerName', 'updateTracker_trackerName' - The name of the tracker resource to update.
newUpdateTracker ::
  -- | 'trackerName'
  Prelude.Text ->
  UpdateTracker
newUpdateTracker pTrackerName_ =
  UpdateTracker'
    { pricingPlan = Prelude.Nothing,
      pricingPlanDataSource = Prelude.Nothing,
      description = Prelude.Nothing,
      positionFiltering = Prelude.Nothing,
      trackerName = pTrackerName_
    }

-- | Updates the pricing plan for the tracker resource.
--
-- For more information about each pricing plan option restrictions, see
-- <https://aws.amazon.com/location/pricing/ Amazon Location Service pricing>.
updateTracker_pricingPlan :: Lens.Lens' UpdateTracker (Prelude.Maybe PricingPlan)
updateTracker_pricingPlan = Lens.lens (\UpdateTracker' {pricingPlan} -> pricingPlan) (\s@UpdateTracker' {} a -> s {pricingPlan = a} :: UpdateTracker)

-- | Updates the data provider for the tracker resource.
--
-- A required value for the following pricing plans: @MobileAssetTracking@|
-- @MobileAssetManagement@
--
-- For more information about
-- <https://aws.amazon.com/location/data-providers/ data providers> and
-- <https://aws.amazon.com/location/pricing/ pricing plans>, see the Amazon
-- Location Service product page
--
-- This can only be updated when updating the @PricingPlan@ in the same
-- request.
--
-- Amazon Location Service uses @PricingPlanDataSource@ to calculate
-- billing for your tracker resource. Your data won\'t be shared with the
-- data provider, and will remain in your AWS account and Region unless you
-- move it.
updateTracker_pricingPlanDataSource :: Lens.Lens' UpdateTracker (Prelude.Maybe Prelude.Text)
updateTracker_pricingPlanDataSource = Lens.lens (\UpdateTracker' {pricingPlanDataSource} -> pricingPlanDataSource) (\s@UpdateTracker' {} a -> s {pricingPlanDataSource = a} :: UpdateTracker)

-- | Updates the description for the tracker resource.
updateTracker_description :: Lens.Lens' UpdateTracker (Prelude.Maybe Prelude.Text)
updateTracker_description = Lens.lens (\UpdateTracker' {description} -> description) (\s@UpdateTracker' {} a -> s {description = a} :: UpdateTracker)

-- | Updates the position filtering for the tracker resource.
--
-- Valid values:
--
-- -   @TimeBased@ - Location updates are evaluated against linked geofence
--     collections, but not every location update is stored. If your update
--     frequency is more often than 30 seconds, only one update per 30
--     seconds is stored for each unique device ID.
--
-- -   @DistanceBased@ - If the device has moved less than 30 m (98.4 ft),
--     location updates are ignored. Location updates within this distance
--     are neither evaluated against linked geofence collections, nor
--     stored. This helps control costs by reducing the number of geofence
--     evaluations and device positions to retrieve. Distance-based
--     filtering can also reduce the jitter effect when displaying device
--     trajectory on a map.
updateTracker_positionFiltering :: Lens.Lens' UpdateTracker (Prelude.Maybe PositionFiltering)
updateTracker_positionFiltering = Lens.lens (\UpdateTracker' {positionFiltering} -> positionFiltering) (\s@UpdateTracker' {} a -> s {positionFiltering = a} :: UpdateTracker)

-- | The name of the tracker resource to update.
updateTracker_trackerName :: Lens.Lens' UpdateTracker Prelude.Text
updateTracker_trackerName = Lens.lens (\UpdateTracker' {trackerName} -> trackerName) (\s@UpdateTracker' {} a -> s {trackerName = a} :: UpdateTracker)

instance Core.AWSRequest UpdateTracker where
  type
    AWSResponse UpdateTracker =
      UpdateTrackerResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTrackerResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "TrackerArn")
            Prelude.<*> (x Core..:> "TrackerName")
            Prelude.<*> (x Core..:> "UpdateTime")
      )

instance Prelude.Hashable UpdateTracker

instance Prelude.NFData UpdateTracker

instance Core.ToHeaders UpdateTracker where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTracker where
  toJSON UpdateTracker' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PricingPlan" Core..=) Prelude.<$> pricingPlan,
            ("PricingPlanDataSource" Core..=)
              Prelude.<$> pricingPlanDataSource,
            ("Description" Core..=) Prelude.<$> description,
            ("PositionFiltering" Core..=)
              Prelude.<$> positionFiltering
          ]
      )

instance Core.ToPath UpdateTracker where
  toPath UpdateTracker' {..} =
    Prelude.mconcat
      ["/tracking/v0/trackers/", Core.toBS trackerName]

instance Core.ToQuery UpdateTracker where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTrackerResponse' smart constructor.
data UpdateTrackerResponse = UpdateTrackerResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the updated tracker resource. Used to
    -- specify a resource across AWS.
    --
    -- -   Format example:
    --     @arn:aws:geo:region:account-id:tracker\/ExampleTracker@
    trackerArn :: Prelude.Text,
    -- | The name of the updated tracker resource.
    trackerName :: Prelude.Text,
    -- | The timestamp for when the tracker resource was last updated in
    -- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
    -- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
    updateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTrackerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateTrackerResponse_httpStatus' - The response's http status code.
--
-- 'trackerArn', 'updateTrackerResponse_trackerArn' - The Amazon Resource Name (ARN) of the updated tracker resource. Used to
-- specify a resource across AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:tracker\/ExampleTracker@
--
-- 'trackerName', 'updateTrackerResponse_trackerName' - The name of the updated tracker resource.
--
-- 'updateTime', 'updateTrackerResponse_updateTime' - The timestamp for when the tracker resource was last updated in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
newUpdateTrackerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'trackerArn'
  Prelude.Text ->
  -- | 'trackerName'
  Prelude.Text ->
  -- | 'updateTime'
  Prelude.UTCTime ->
  UpdateTrackerResponse
newUpdateTrackerResponse
  pHttpStatus_
  pTrackerArn_
  pTrackerName_
  pUpdateTime_ =
    UpdateTrackerResponse'
      { httpStatus = pHttpStatus_,
        trackerArn = pTrackerArn_,
        trackerName = pTrackerName_,
        updateTime = Core._Time Lens.# pUpdateTime_
      }

-- | The response's http status code.
updateTrackerResponse_httpStatus :: Lens.Lens' UpdateTrackerResponse Prelude.Int
updateTrackerResponse_httpStatus = Lens.lens (\UpdateTrackerResponse' {httpStatus} -> httpStatus) (\s@UpdateTrackerResponse' {} a -> s {httpStatus = a} :: UpdateTrackerResponse)

-- | The Amazon Resource Name (ARN) of the updated tracker resource. Used to
-- specify a resource across AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:tracker\/ExampleTracker@
updateTrackerResponse_trackerArn :: Lens.Lens' UpdateTrackerResponse Prelude.Text
updateTrackerResponse_trackerArn = Lens.lens (\UpdateTrackerResponse' {trackerArn} -> trackerArn) (\s@UpdateTrackerResponse' {} a -> s {trackerArn = a} :: UpdateTrackerResponse)

-- | The name of the updated tracker resource.
updateTrackerResponse_trackerName :: Lens.Lens' UpdateTrackerResponse Prelude.Text
updateTrackerResponse_trackerName = Lens.lens (\UpdateTrackerResponse' {trackerName} -> trackerName) (\s@UpdateTrackerResponse' {} a -> s {trackerName = a} :: UpdateTrackerResponse)

-- | The timestamp for when the tracker resource was last updated in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
updateTrackerResponse_updateTime :: Lens.Lens' UpdateTrackerResponse Prelude.UTCTime
updateTrackerResponse_updateTime = Lens.lens (\UpdateTrackerResponse' {updateTime} -> updateTime) (\s@UpdateTrackerResponse' {} a -> s {updateTime = a} :: UpdateTrackerResponse) Prelude.. Core._Time

instance Prelude.NFData UpdateTrackerResponse
