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
-- Module      : Network.AWS.IoTSiteWise.Types.BatchPutAssetPropertyErrorEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.BatchPutAssetPropertyErrorEntry where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types.BatchPutAssetPropertyError
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains error information for asset property value entries that are
-- associated with the
-- <https://docs.aws.amazon.com/iot-sitewise/latest/APIReference/API_BatchPutAssetPropertyValue.html BatchPutAssetPropertyValue>
-- API.
--
-- /See:/ 'newBatchPutAssetPropertyErrorEntry' smart constructor.
data BatchPutAssetPropertyErrorEntry = BatchPutAssetPropertyErrorEntry'
  { -- | The ID of the failed entry.
    entryId :: Prelude.Text,
    -- | The list of update property value errors.
    errors :: [BatchPutAssetPropertyError]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchPutAssetPropertyErrorEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entryId', 'batchPutAssetPropertyErrorEntry_entryId' - The ID of the failed entry.
--
-- 'errors', 'batchPutAssetPropertyErrorEntry_errors' - The list of update property value errors.
newBatchPutAssetPropertyErrorEntry ::
  -- | 'entryId'
  Prelude.Text ->
  BatchPutAssetPropertyErrorEntry
newBatchPutAssetPropertyErrorEntry pEntryId_ =
  BatchPutAssetPropertyErrorEntry'
    { entryId =
        pEntryId_,
      errors = Prelude.mempty
    }

-- | The ID of the failed entry.
batchPutAssetPropertyErrorEntry_entryId :: Lens.Lens' BatchPutAssetPropertyErrorEntry Prelude.Text
batchPutAssetPropertyErrorEntry_entryId = Lens.lens (\BatchPutAssetPropertyErrorEntry' {entryId} -> entryId) (\s@BatchPutAssetPropertyErrorEntry' {} a -> s {entryId = a} :: BatchPutAssetPropertyErrorEntry)

-- | The list of update property value errors.
batchPutAssetPropertyErrorEntry_errors :: Lens.Lens' BatchPutAssetPropertyErrorEntry [BatchPutAssetPropertyError]
batchPutAssetPropertyErrorEntry_errors = Lens.lens (\BatchPutAssetPropertyErrorEntry' {errors} -> errors) (\s@BatchPutAssetPropertyErrorEntry' {} a -> s {errors = a} :: BatchPutAssetPropertyErrorEntry) Prelude.. Lens.coerced

instance
  Core.FromJSON
    BatchPutAssetPropertyErrorEntry
  where
  parseJSON =
    Core.withObject
      "BatchPutAssetPropertyErrorEntry"
      ( \x ->
          BatchPutAssetPropertyErrorEntry'
            Prelude.<$> (x Core..: "entryId")
            Prelude.<*> (x Core..:? "errors" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    BatchPutAssetPropertyErrorEntry

instance
  Prelude.NFData
    BatchPutAssetPropertyErrorEntry
