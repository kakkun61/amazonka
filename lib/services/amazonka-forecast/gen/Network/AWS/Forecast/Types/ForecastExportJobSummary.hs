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
-- Module      : Network.AWS.Forecast.Types.ForecastExportJobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.ForecastExportJobSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types.DataDestination
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a summary of the forecast export job properties used in the
-- ListForecastExportJobs operation. To get the complete set of properties,
-- call the DescribeForecastExportJob operation, and provide the listed
-- @ForecastExportJobArn@.
--
-- /See:/ 'newForecastExportJobSummary' smart constructor.
data ForecastExportJobSummary = ForecastExportJobSummary'
  { -- | When the forecast export job was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The status of the forecast export job. States include:
    --
    -- -   @ACTIVE@
    --
    -- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
    --
    -- -   @CREATE_STOPPING@, @CREATE_STOPPED@
    --
    -- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
    --
    -- The @Status@ of the forecast export job must be @ACTIVE@ before you can
    -- access the forecast in your S3 bucket.
    status :: Prelude.Maybe Prelude.Text,
    -- | The path to the Amazon Simple Storage Service (Amazon S3) bucket where
    -- the forecast is exported.
    destination :: Prelude.Maybe DataDestination,
    -- | The Amazon Resource Name (ARN) of the forecast export job.
    forecastExportJobArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the forecast export job.
    forecastExportJobName :: Prelude.Maybe Prelude.Text,
    -- | If an error occurred, an informational message about the error.
    message :: Prelude.Maybe Prelude.Text,
    -- | The last time the resource was modified. The timestamp depends on the
    -- status of the job:
    --
    -- -   @CREATE_PENDING@ - The @CreationTime@.
    --
    -- -   @CREATE_IN_PROGRESS@ - The current timestamp.
    --
    -- -   @CREATE_STOPPING@ - The current timestamp.
    --
    -- -   @CREATE_STOPPED@ - When the job stopped.
    --
    -- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
    lastModificationTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ForecastExportJobSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'forecastExportJobSummary_creationTime' - When the forecast export job was created.
--
-- 'status', 'forecastExportJobSummary_status' - The status of the forecast export job. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- The @Status@ of the forecast export job must be @ACTIVE@ before you can
-- access the forecast in your S3 bucket.
--
-- 'destination', 'forecastExportJobSummary_destination' - The path to the Amazon Simple Storage Service (Amazon S3) bucket where
-- the forecast is exported.
--
-- 'forecastExportJobArn', 'forecastExportJobSummary_forecastExportJobArn' - The Amazon Resource Name (ARN) of the forecast export job.
--
-- 'forecastExportJobName', 'forecastExportJobSummary_forecastExportJobName' - The name of the forecast export job.
--
-- 'message', 'forecastExportJobSummary_message' - If an error occurred, an informational message about the error.
--
-- 'lastModificationTime', 'forecastExportJobSummary_lastModificationTime' - The last time the resource was modified. The timestamp depends on the
-- status of the job:
--
-- -   @CREATE_PENDING@ - The @CreationTime@.
--
-- -   @CREATE_IN_PROGRESS@ - The current timestamp.
--
-- -   @CREATE_STOPPING@ - The current timestamp.
--
-- -   @CREATE_STOPPED@ - When the job stopped.
--
-- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
newForecastExportJobSummary ::
  ForecastExportJobSummary
newForecastExportJobSummary =
  ForecastExportJobSummary'
    { creationTime =
        Prelude.Nothing,
      status = Prelude.Nothing,
      destination = Prelude.Nothing,
      forecastExportJobArn = Prelude.Nothing,
      forecastExportJobName = Prelude.Nothing,
      message = Prelude.Nothing,
      lastModificationTime = Prelude.Nothing
    }

-- | When the forecast export job was created.
forecastExportJobSummary_creationTime :: Lens.Lens' ForecastExportJobSummary (Prelude.Maybe Prelude.UTCTime)
forecastExportJobSummary_creationTime = Lens.lens (\ForecastExportJobSummary' {creationTime} -> creationTime) (\s@ForecastExportJobSummary' {} a -> s {creationTime = a} :: ForecastExportJobSummary) Prelude.. Lens.mapping Core._Time

-- | The status of the forecast export job. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- The @Status@ of the forecast export job must be @ACTIVE@ before you can
-- access the forecast in your S3 bucket.
forecastExportJobSummary_status :: Lens.Lens' ForecastExportJobSummary (Prelude.Maybe Prelude.Text)
forecastExportJobSummary_status = Lens.lens (\ForecastExportJobSummary' {status} -> status) (\s@ForecastExportJobSummary' {} a -> s {status = a} :: ForecastExportJobSummary)

-- | The path to the Amazon Simple Storage Service (Amazon S3) bucket where
-- the forecast is exported.
forecastExportJobSummary_destination :: Lens.Lens' ForecastExportJobSummary (Prelude.Maybe DataDestination)
forecastExportJobSummary_destination = Lens.lens (\ForecastExportJobSummary' {destination} -> destination) (\s@ForecastExportJobSummary' {} a -> s {destination = a} :: ForecastExportJobSummary)

-- | The Amazon Resource Name (ARN) of the forecast export job.
forecastExportJobSummary_forecastExportJobArn :: Lens.Lens' ForecastExportJobSummary (Prelude.Maybe Prelude.Text)
forecastExportJobSummary_forecastExportJobArn = Lens.lens (\ForecastExportJobSummary' {forecastExportJobArn} -> forecastExportJobArn) (\s@ForecastExportJobSummary' {} a -> s {forecastExportJobArn = a} :: ForecastExportJobSummary)

-- | The name of the forecast export job.
forecastExportJobSummary_forecastExportJobName :: Lens.Lens' ForecastExportJobSummary (Prelude.Maybe Prelude.Text)
forecastExportJobSummary_forecastExportJobName = Lens.lens (\ForecastExportJobSummary' {forecastExportJobName} -> forecastExportJobName) (\s@ForecastExportJobSummary' {} a -> s {forecastExportJobName = a} :: ForecastExportJobSummary)

-- | If an error occurred, an informational message about the error.
forecastExportJobSummary_message :: Lens.Lens' ForecastExportJobSummary (Prelude.Maybe Prelude.Text)
forecastExportJobSummary_message = Lens.lens (\ForecastExportJobSummary' {message} -> message) (\s@ForecastExportJobSummary' {} a -> s {message = a} :: ForecastExportJobSummary)

-- | The last time the resource was modified. The timestamp depends on the
-- status of the job:
--
-- -   @CREATE_PENDING@ - The @CreationTime@.
--
-- -   @CREATE_IN_PROGRESS@ - The current timestamp.
--
-- -   @CREATE_STOPPING@ - The current timestamp.
--
-- -   @CREATE_STOPPED@ - When the job stopped.
--
-- -   @ACTIVE@ or @CREATE_FAILED@ - When the job finished or failed.
forecastExportJobSummary_lastModificationTime :: Lens.Lens' ForecastExportJobSummary (Prelude.Maybe Prelude.UTCTime)
forecastExportJobSummary_lastModificationTime = Lens.lens (\ForecastExportJobSummary' {lastModificationTime} -> lastModificationTime) (\s@ForecastExportJobSummary' {} a -> s {lastModificationTime = a} :: ForecastExportJobSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ForecastExportJobSummary where
  parseJSON =
    Core.withObject
      "ForecastExportJobSummary"
      ( \x ->
          ForecastExportJobSummary'
            Prelude.<$> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "Destination")
            Prelude.<*> (x Core..:? "ForecastExportJobArn")
            Prelude.<*> (x Core..:? "ForecastExportJobName")
            Prelude.<*> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "LastModificationTime")
      )

instance Prelude.Hashable ForecastExportJobSummary

instance Prelude.NFData ForecastExportJobSummary
