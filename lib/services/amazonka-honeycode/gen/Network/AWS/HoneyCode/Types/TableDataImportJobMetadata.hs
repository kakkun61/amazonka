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
-- Module      : Network.AWS.HoneyCode.Types.TableDataImportJobMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.TableDataImportJobMetadata where

import qualified Network.AWS.Core as Core
import Network.AWS.HoneyCode.Types.ImportDataSource
import Network.AWS.HoneyCode.Types.ImportJobSubmitter
import Network.AWS.HoneyCode.Types.ImportOptions
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The metadata associated with the table data import job that was
-- submitted.
--
-- /See:/ 'newTableDataImportJobMetadata' smart constructor.
data TableDataImportJobMetadata = TableDataImportJobMetadata'
  { -- | Details about the submitter of the import request.
    submitter :: ImportJobSubmitter,
    -- | The timestamp when the job was submitted for import.
    submitTime :: Core.POSIX,
    -- | The options that was specified at the time of submitting the import
    -- request.
    importOptions :: ImportOptions,
    -- | The source of the data that was submitted for import.
    dataSource :: ImportDataSource
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TableDataImportJobMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'submitter', 'tableDataImportJobMetadata_submitter' - Details about the submitter of the import request.
--
-- 'submitTime', 'tableDataImportJobMetadata_submitTime' - The timestamp when the job was submitted for import.
--
-- 'importOptions', 'tableDataImportJobMetadata_importOptions' - The options that was specified at the time of submitting the import
-- request.
--
-- 'dataSource', 'tableDataImportJobMetadata_dataSource' - The source of the data that was submitted for import.
newTableDataImportJobMetadata ::
  -- | 'submitter'
  ImportJobSubmitter ->
  -- | 'submitTime'
  Prelude.UTCTime ->
  -- | 'importOptions'
  ImportOptions ->
  -- | 'dataSource'
  ImportDataSource ->
  TableDataImportJobMetadata
newTableDataImportJobMetadata
  pSubmitter_
  pSubmitTime_
  pImportOptions_
  pDataSource_ =
    TableDataImportJobMetadata'
      { submitter =
          pSubmitter_,
        submitTime = Core._Time Lens.# pSubmitTime_,
        importOptions = pImportOptions_,
        dataSource = pDataSource_
      }

-- | Details about the submitter of the import request.
tableDataImportJobMetadata_submitter :: Lens.Lens' TableDataImportJobMetadata ImportJobSubmitter
tableDataImportJobMetadata_submitter = Lens.lens (\TableDataImportJobMetadata' {submitter} -> submitter) (\s@TableDataImportJobMetadata' {} a -> s {submitter = a} :: TableDataImportJobMetadata)

-- | The timestamp when the job was submitted for import.
tableDataImportJobMetadata_submitTime :: Lens.Lens' TableDataImportJobMetadata Prelude.UTCTime
tableDataImportJobMetadata_submitTime = Lens.lens (\TableDataImportJobMetadata' {submitTime} -> submitTime) (\s@TableDataImportJobMetadata' {} a -> s {submitTime = a} :: TableDataImportJobMetadata) Prelude.. Core._Time

-- | The options that was specified at the time of submitting the import
-- request.
tableDataImportJobMetadata_importOptions :: Lens.Lens' TableDataImportJobMetadata ImportOptions
tableDataImportJobMetadata_importOptions = Lens.lens (\TableDataImportJobMetadata' {importOptions} -> importOptions) (\s@TableDataImportJobMetadata' {} a -> s {importOptions = a} :: TableDataImportJobMetadata)

-- | The source of the data that was submitted for import.
tableDataImportJobMetadata_dataSource :: Lens.Lens' TableDataImportJobMetadata ImportDataSource
tableDataImportJobMetadata_dataSource = Lens.lens (\TableDataImportJobMetadata' {dataSource} -> dataSource) (\s@TableDataImportJobMetadata' {} a -> s {dataSource = a} :: TableDataImportJobMetadata)

instance Core.FromJSON TableDataImportJobMetadata where
  parseJSON =
    Core.withObject
      "TableDataImportJobMetadata"
      ( \x ->
          TableDataImportJobMetadata'
            Prelude.<$> (x Core..: "submitter")
            Prelude.<*> (x Core..: "submitTime")
            Prelude.<*> (x Core..: "importOptions")
            Prelude.<*> (x Core..: "dataSource")
      )

instance Prelude.Hashable TableDataImportJobMetadata

instance Prelude.NFData TableDataImportJobMetadata
