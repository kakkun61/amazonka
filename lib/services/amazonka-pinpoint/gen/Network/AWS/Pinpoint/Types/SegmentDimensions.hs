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
-- Module      : Network.AWS.Pinpoint.Types.SegmentDimensions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SegmentDimensions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.AttributeDimension
import Network.AWS.Pinpoint.Types.MetricDimension
import Network.AWS.Pinpoint.Types.SegmentBehaviors
import Network.AWS.Pinpoint.Types.SegmentDemographics
import Network.AWS.Pinpoint.Types.SegmentLocation
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the dimension settings for a segment.
--
-- /See:/ 'newSegmentDimensions' smart constructor.
data SegmentDimensions = SegmentDimensions'
  { -- | One or more custom metrics to use as criteria for the segment.
    metrics :: Prelude.Maybe (Prelude.HashMap Prelude.Text MetricDimension),
    -- | The location-based criteria, such as region or GPS coordinates, for the
    -- segment.
    location :: Prelude.Maybe SegmentLocation,
    -- | The demographic-based criteria, such as device platform, for the
    -- segment.
    demographic :: Prelude.Maybe SegmentDemographics,
    -- | One or more custom user attributes to use as criteria for the segment.
    userAttributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text AttributeDimension),
    -- | The behavior-based criteria, such as how recently users have used your
    -- app, for the segment.
    behavior :: Prelude.Maybe SegmentBehaviors,
    -- | One or more custom attributes to use as criteria for the segment.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text AttributeDimension)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SegmentDimensions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metrics', 'segmentDimensions_metrics' - One or more custom metrics to use as criteria for the segment.
--
-- 'location', 'segmentDimensions_location' - The location-based criteria, such as region or GPS coordinates, for the
-- segment.
--
-- 'demographic', 'segmentDimensions_demographic' - The demographic-based criteria, such as device platform, for the
-- segment.
--
-- 'userAttributes', 'segmentDimensions_userAttributes' - One or more custom user attributes to use as criteria for the segment.
--
-- 'behavior', 'segmentDimensions_behavior' - The behavior-based criteria, such as how recently users have used your
-- app, for the segment.
--
-- 'attributes', 'segmentDimensions_attributes' - One or more custom attributes to use as criteria for the segment.
newSegmentDimensions ::
  SegmentDimensions
newSegmentDimensions =
  SegmentDimensions'
    { metrics = Prelude.Nothing,
      location = Prelude.Nothing,
      demographic = Prelude.Nothing,
      userAttributes = Prelude.Nothing,
      behavior = Prelude.Nothing,
      attributes = Prelude.Nothing
    }

-- | One or more custom metrics to use as criteria for the segment.
segmentDimensions_metrics :: Lens.Lens' SegmentDimensions (Prelude.Maybe (Prelude.HashMap Prelude.Text MetricDimension))
segmentDimensions_metrics = Lens.lens (\SegmentDimensions' {metrics} -> metrics) (\s@SegmentDimensions' {} a -> s {metrics = a} :: SegmentDimensions) Prelude.. Lens.mapping Lens.coerced

-- | The location-based criteria, such as region or GPS coordinates, for the
-- segment.
segmentDimensions_location :: Lens.Lens' SegmentDimensions (Prelude.Maybe SegmentLocation)
segmentDimensions_location = Lens.lens (\SegmentDimensions' {location} -> location) (\s@SegmentDimensions' {} a -> s {location = a} :: SegmentDimensions)

-- | The demographic-based criteria, such as device platform, for the
-- segment.
segmentDimensions_demographic :: Lens.Lens' SegmentDimensions (Prelude.Maybe SegmentDemographics)
segmentDimensions_demographic = Lens.lens (\SegmentDimensions' {demographic} -> demographic) (\s@SegmentDimensions' {} a -> s {demographic = a} :: SegmentDimensions)

-- | One or more custom user attributes to use as criteria for the segment.
segmentDimensions_userAttributes :: Lens.Lens' SegmentDimensions (Prelude.Maybe (Prelude.HashMap Prelude.Text AttributeDimension))
segmentDimensions_userAttributes = Lens.lens (\SegmentDimensions' {userAttributes} -> userAttributes) (\s@SegmentDimensions' {} a -> s {userAttributes = a} :: SegmentDimensions) Prelude.. Lens.mapping Lens.coerced

-- | The behavior-based criteria, such as how recently users have used your
-- app, for the segment.
segmentDimensions_behavior :: Lens.Lens' SegmentDimensions (Prelude.Maybe SegmentBehaviors)
segmentDimensions_behavior = Lens.lens (\SegmentDimensions' {behavior} -> behavior) (\s@SegmentDimensions' {} a -> s {behavior = a} :: SegmentDimensions)

-- | One or more custom attributes to use as criteria for the segment.
segmentDimensions_attributes :: Lens.Lens' SegmentDimensions (Prelude.Maybe (Prelude.HashMap Prelude.Text AttributeDimension))
segmentDimensions_attributes = Lens.lens (\SegmentDimensions' {attributes} -> attributes) (\s@SegmentDimensions' {} a -> s {attributes = a} :: SegmentDimensions) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON SegmentDimensions where
  parseJSON =
    Core.withObject
      "SegmentDimensions"
      ( \x ->
          SegmentDimensions'
            Prelude.<$> (x Core..:? "Metrics" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Location")
            Prelude.<*> (x Core..:? "Demographic")
            Prelude.<*> (x Core..:? "UserAttributes" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Behavior")
            Prelude.<*> (x Core..:? "Attributes" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable SegmentDimensions

instance Prelude.NFData SegmentDimensions

instance Core.ToJSON SegmentDimensions where
  toJSON SegmentDimensions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Metrics" Core..=) Prelude.<$> metrics,
            ("Location" Core..=) Prelude.<$> location,
            ("Demographic" Core..=) Prelude.<$> demographic,
            ("UserAttributes" Core..=)
              Prelude.<$> userAttributes,
            ("Behavior" Core..=) Prelude.<$> behavior,
            ("Attributes" Core..=) Prelude.<$> attributes
          ]
      )
