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
-- Module      : Network.AWS.Forecast.Types.DatasetImportJobSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Forecast.Types.DatasetImportJobSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types.DataSource
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a summary of the dataset import job properties used in the
-- ListDatasetImportJobs operation. To get the complete set of properties,
-- call the DescribeDatasetImportJob operation, and provide the
-- @DatasetImportJobArn@.
--
-- /See:/ 'newDatasetImportJobSummary' smart constructor.
data DatasetImportJobSummary = DatasetImportJobSummary'
  { -- | When the dataset import job was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The status of the dataset import job. States include:
    --
    -- -   @ACTIVE@
    --
    -- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
    --
    -- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
    --
    -- -   @CREATE_STOPPING@, @CREATE_STOPPED@
    status :: Prelude.Maybe Prelude.Text,
    -- | The name of the dataset import job.
    datasetImportJobName :: Prelude.Maybe Prelude.Text,
    -- | The location of the training data to import and an AWS Identity and
    -- Access Management (IAM) role that Amazon Forecast can assume to access
    -- the data. The training data must be stored in an Amazon S3 bucket.
    --
    -- If encryption is used, @DataSource@ includes an AWS Key Management
    -- Service (KMS) key.
    dataSource :: Prelude.Maybe DataSource,
    -- | The Amazon Resource Name (ARN) of the dataset import job.
    datasetImportJobArn :: Prelude.Maybe Prelude.Text,
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
-- Create a value of 'DatasetImportJobSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'datasetImportJobSummary_creationTime' - When the dataset import job was created.
--
-- 'status', 'datasetImportJobSummary_status' - The status of the dataset import job. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
--
-- 'datasetImportJobName', 'datasetImportJobSummary_datasetImportJobName' - The name of the dataset import job.
--
-- 'dataSource', 'datasetImportJobSummary_dataSource' - The location of the training data to import and an AWS Identity and
-- Access Management (IAM) role that Amazon Forecast can assume to access
-- the data. The training data must be stored in an Amazon S3 bucket.
--
-- If encryption is used, @DataSource@ includes an AWS Key Management
-- Service (KMS) key.
--
-- 'datasetImportJobArn', 'datasetImportJobSummary_datasetImportJobArn' - The Amazon Resource Name (ARN) of the dataset import job.
--
-- 'message', 'datasetImportJobSummary_message' - If an error occurred, an informational message about the error.
--
-- 'lastModificationTime', 'datasetImportJobSummary_lastModificationTime' - The last time the resource was modified. The timestamp depends on the
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
newDatasetImportJobSummary ::
  DatasetImportJobSummary
newDatasetImportJobSummary =
  DatasetImportJobSummary'
    { creationTime =
        Prelude.Nothing,
      status = Prelude.Nothing,
      datasetImportJobName = Prelude.Nothing,
      dataSource = Prelude.Nothing,
      datasetImportJobArn = Prelude.Nothing,
      message = Prelude.Nothing,
      lastModificationTime = Prelude.Nothing
    }

-- | When the dataset import job was created.
datasetImportJobSummary_creationTime :: Lens.Lens' DatasetImportJobSummary (Prelude.Maybe Prelude.UTCTime)
datasetImportJobSummary_creationTime = Lens.lens (\DatasetImportJobSummary' {creationTime} -> creationTime) (\s@DatasetImportJobSummary' {} a -> s {creationTime = a} :: DatasetImportJobSummary) Prelude.. Lens.mapping Core._Time

-- | The status of the dataset import job. States include:
--
-- -   @ACTIVE@
--
-- -   @CREATE_PENDING@, @CREATE_IN_PROGRESS@, @CREATE_FAILED@
--
-- -   @DELETE_PENDING@, @DELETE_IN_PROGRESS@, @DELETE_FAILED@
--
-- -   @CREATE_STOPPING@, @CREATE_STOPPED@
datasetImportJobSummary_status :: Lens.Lens' DatasetImportJobSummary (Prelude.Maybe Prelude.Text)
datasetImportJobSummary_status = Lens.lens (\DatasetImportJobSummary' {status} -> status) (\s@DatasetImportJobSummary' {} a -> s {status = a} :: DatasetImportJobSummary)

-- | The name of the dataset import job.
datasetImportJobSummary_datasetImportJobName :: Lens.Lens' DatasetImportJobSummary (Prelude.Maybe Prelude.Text)
datasetImportJobSummary_datasetImportJobName = Lens.lens (\DatasetImportJobSummary' {datasetImportJobName} -> datasetImportJobName) (\s@DatasetImportJobSummary' {} a -> s {datasetImportJobName = a} :: DatasetImportJobSummary)

-- | The location of the training data to import and an AWS Identity and
-- Access Management (IAM) role that Amazon Forecast can assume to access
-- the data. The training data must be stored in an Amazon S3 bucket.
--
-- If encryption is used, @DataSource@ includes an AWS Key Management
-- Service (KMS) key.
datasetImportJobSummary_dataSource :: Lens.Lens' DatasetImportJobSummary (Prelude.Maybe DataSource)
datasetImportJobSummary_dataSource = Lens.lens (\DatasetImportJobSummary' {dataSource} -> dataSource) (\s@DatasetImportJobSummary' {} a -> s {dataSource = a} :: DatasetImportJobSummary)

-- | The Amazon Resource Name (ARN) of the dataset import job.
datasetImportJobSummary_datasetImportJobArn :: Lens.Lens' DatasetImportJobSummary (Prelude.Maybe Prelude.Text)
datasetImportJobSummary_datasetImportJobArn = Lens.lens (\DatasetImportJobSummary' {datasetImportJobArn} -> datasetImportJobArn) (\s@DatasetImportJobSummary' {} a -> s {datasetImportJobArn = a} :: DatasetImportJobSummary)

-- | If an error occurred, an informational message about the error.
datasetImportJobSummary_message :: Lens.Lens' DatasetImportJobSummary (Prelude.Maybe Prelude.Text)
datasetImportJobSummary_message = Lens.lens (\DatasetImportJobSummary' {message} -> message) (\s@DatasetImportJobSummary' {} a -> s {message = a} :: DatasetImportJobSummary)

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
datasetImportJobSummary_lastModificationTime :: Lens.Lens' DatasetImportJobSummary (Prelude.Maybe Prelude.UTCTime)
datasetImportJobSummary_lastModificationTime = Lens.lens (\DatasetImportJobSummary' {lastModificationTime} -> lastModificationTime) (\s@DatasetImportJobSummary' {} a -> s {lastModificationTime = a} :: DatasetImportJobSummary) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON DatasetImportJobSummary where
  parseJSON =
    Core.withObject
      "DatasetImportJobSummary"
      ( \x ->
          DatasetImportJobSummary'
            Prelude.<$> (x Core..:? "CreationTime")
            Prelude.<*> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "DatasetImportJobName")
            Prelude.<*> (x Core..:? "DataSource")
            Prelude.<*> (x Core..:? "DatasetImportJobArn")
            Prelude.<*> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "LastModificationTime")
      )

instance Prelude.Hashable DatasetImportJobSummary

instance Prelude.NFData DatasetImportJobSummary
