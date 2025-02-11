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
-- Module      : Network.AWS.AccessAnalyzer.Types.CloudTrailDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.CloudTrailDetails where

import Network.AWS.AccessAnalyzer.Types.Trail
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about CloudTrail access.
--
-- /See:/ 'newCloudTrailDetails' smart constructor.
data CloudTrailDetails = CloudTrailDetails'
  { -- | The end of the time range for which IAM Access Analyzer reviews your
    -- CloudTrail events. Events with a timestamp after this time are not
    -- considered to generate a policy. If this is not included in the request,
    -- the default value is the current time.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The ARN of the service role that IAM Access Analyzer uses to access your
    -- CloudTrail trail and service last accessed information.
    accessRole :: Prelude.Text,
    -- | The start of the time range for which IAM Access Analyzer reviews your
    -- CloudTrail events. Events with a timestamp before this time are not
    -- considered to generate a policy.
    startTime :: Core.POSIX,
    -- | A @Trail@ object that contains settings for a trail.
    trails :: [Trail]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudTrailDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endTime', 'cloudTrailDetails_endTime' - The end of the time range for which IAM Access Analyzer reviews your
-- CloudTrail events. Events with a timestamp after this time are not
-- considered to generate a policy. If this is not included in the request,
-- the default value is the current time.
--
-- 'accessRole', 'cloudTrailDetails_accessRole' - The ARN of the service role that IAM Access Analyzer uses to access your
-- CloudTrail trail and service last accessed information.
--
-- 'startTime', 'cloudTrailDetails_startTime' - The start of the time range for which IAM Access Analyzer reviews your
-- CloudTrail events. Events with a timestamp before this time are not
-- considered to generate a policy.
--
-- 'trails', 'cloudTrailDetails_trails' - A @Trail@ object that contains settings for a trail.
newCloudTrailDetails ::
  -- | 'accessRole'
  Prelude.Text ->
  -- | 'startTime'
  Prelude.UTCTime ->
  CloudTrailDetails
newCloudTrailDetails pAccessRole_ pStartTime_ =
  CloudTrailDetails'
    { endTime = Prelude.Nothing,
      accessRole = pAccessRole_,
      startTime = Core._Time Lens.# pStartTime_,
      trails = Prelude.mempty
    }

-- | The end of the time range for which IAM Access Analyzer reviews your
-- CloudTrail events. Events with a timestamp after this time are not
-- considered to generate a policy. If this is not included in the request,
-- the default value is the current time.
cloudTrailDetails_endTime :: Lens.Lens' CloudTrailDetails (Prelude.Maybe Prelude.UTCTime)
cloudTrailDetails_endTime = Lens.lens (\CloudTrailDetails' {endTime} -> endTime) (\s@CloudTrailDetails' {} a -> s {endTime = a} :: CloudTrailDetails) Prelude.. Lens.mapping Core._Time

-- | The ARN of the service role that IAM Access Analyzer uses to access your
-- CloudTrail trail and service last accessed information.
cloudTrailDetails_accessRole :: Lens.Lens' CloudTrailDetails Prelude.Text
cloudTrailDetails_accessRole = Lens.lens (\CloudTrailDetails' {accessRole} -> accessRole) (\s@CloudTrailDetails' {} a -> s {accessRole = a} :: CloudTrailDetails)

-- | The start of the time range for which IAM Access Analyzer reviews your
-- CloudTrail events. Events with a timestamp before this time are not
-- considered to generate a policy.
cloudTrailDetails_startTime :: Lens.Lens' CloudTrailDetails Prelude.UTCTime
cloudTrailDetails_startTime = Lens.lens (\CloudTrailDetails' {startTime} -> startTime) (\s@CloudTrailDetails' {} a -> s {startTime = a} :: CloudTrailDetails) Prelude.. Core._Time

-- | A @Trail@ object that contains settings for a trail.
cloudTrailDetails_trails :: Lens.Lens' CloudTrailDetails [Trail]
cloudTrailDetails_trails = Lens.lens (\CloudTrailDetails' {trails} -> trails) (\s@CloudTrailDetails' {} a -> s {trails = a} :: CloudTrailDetails) Prelude.. Lens.coerced

instance Prelude.Hashable CloudTrailDetails

instance Prelude.NFData CloudTrailDetails

instance Core.ToJSON CloudTrailDetails where
  toJSON CloudTrailDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("endTime" Core..=) Prelude.<$> endTime,
            Prelude.Just ("accessRole" Core..= accessRole),
            Prelude.Just ("startTime" Core..= startTime),
            Prelude.Just ("trails" Core..= trails)
          ]
      )
