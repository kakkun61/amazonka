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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ApplicationVersionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ApplicationVersionSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The summary of the application version.
--
-- /See:/ 'newApplicationVersionSummary' smart constructor.
data ApplicationVersionSummary = ApplicationVersionSummary'
  { -- | The ID of the application version. Kinesis Data Analytics updates the
    -- @ApplicationVersionId@ each time you update the application.
    applicationVersionId :: Prelude.Natural,
    -- | The status of the application.
    applicationStatus :: ApplicationStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationVersionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationVersionId', 'applicationVersionSummary_applicationVersionId' - The ID of the application version. Kinesis Data Analytics updates the
-- @ApplicationVersionId@ each time you update the application.
--
-- 'applicationStatus', 'applicationVersionSummary_applicationStatus' - The status of the application.
newApplicationVersionSummary ::
  -- | 'applicationVersionId'
  Prelude.Natural ->
  -- | 'applicationStatus'
  ApplicationStatus ->
  ApplicationVersionSummary
newApplicationVersionSummary
  pApplicationVersionId_
  pApplicationStatus_ =
    ApplicationVersionSummary'
      { applicationVersionId =
          pApplicationVersionId_,
        applicationStatus = pApplicationStatus_
      }

-- | The ID of the application version. Kinesis Data Analytics updates the
-- @ApplicationVersionId@ each time you update the application.
applicationVersionSummary_applicationVersionId :: Lens.Lens' ApplicationVersionSummary Prelude.Natural
applicationVersionSummary_applicationVersionId = Lens.lens (\ApplicationVersionSummary' {applicationVersionId} -> applicationVersionId) (\s@ApplicationVersionSummary' {} a -> s {applicationVersionId = a} :: ApplicationVersionSummary)

-- | The status of the application.
applicationVersionSummary_applicationStatus :: Lens.Lens' ApplicationVersionSummary ApplicationStatus
applicationVersionSummary_applicationStatus = Lens.lens (\ApplicationVersionSummary' {applicationStatus} -> applicationStatus) (\s@ApplicationVersionSummary' {} a -> s {applicationStatus = a} :: ApplicationVersionSummary)

instance Core.FromJSON ApplicationVersionSummary where
  parseJSON =
    Core.withObject
      "ApplicationVersionSummary"
      ( \x ->
          ApplicationVersionSummary'
            Prelude.<$> (x Core..: "ApplicationVersionId")
            Prelude.<*> (x Core..: "ApplicationStatus")
      )

instance Prelude.Hashable ApplicationVersionSummary

instance Prelude.NFData ApplicationVersionSummary
