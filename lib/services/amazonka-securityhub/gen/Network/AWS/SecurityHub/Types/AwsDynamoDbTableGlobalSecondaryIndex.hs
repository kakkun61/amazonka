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
-- Module      : Network.AWS.SecurityHub.Types.AwsDynamoDbTableGlobalSecondaryIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsDynamoDbTableGlobalSecondaryIndex where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableKeySchema
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableProjection
import Network.AWS.SecurityHub.Types.AwsDynamoDbTableProvisionedThroughput

-- | Information abut a global secondary index for the table.
--
-- /See:/ 'newAwsDynamoDbTableGlobalSecondaryIndex' smart constructor.
data AwsDynamoDbTableGlobalSecondaryIndex = AwsDynamoDbTableGlobalSecondaryIndex'
  { -- | Whether the index is currently backfilling.
    backfilling :: Prelude.Maybe Prelude.Bool,
    -- | The total size in bytes of the index.
    indexSizeBytes :: Prelude.Maybe Prelude.Integer,
    -- | The current status of the index.
    indexStatus :: Prelude.Maybe Prelude.Text,
    -- | Information about the provisioned throughput settings for the indexes.
    provisionedThroughput :: Prelude.Maybe AwsDynamoDbTableProvisionedThroughput,
    -- | The ARN of the index.
    indexArn :: Prelude.Maybe Prelude.Text,
    -- | The key schema for the index.
    keySchema :: Prelude.Maybe [AwsDynamoDbTableKeySchema],
    -- | Attributes that are copied from the table into an index.
    projection :: Prelude.Maybe AwsDynamoDbTableProjection,
    -- | The number of items in the index.
    itemCount :: Prelude.Maybe Prelude.Int,
    -- | The name of the index.
    indexName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsDynamoDbTableGlobalSecondaryIndex' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backfilling', 'awsDynamoDbTableGlobalSecondaryIndex_backfilling' - Whether the index is currently backfilling.
--
-- 'indexSizeBytes', 'awsDynamoDbTableGlobalSecondaryIndex_indexSizeBytes' - The total size in bytes of the index.
--
-- 'indexStatus', 'awsDynamoDbTableGlobalSecondaryIndex_indexStatus' - The current status of the index.
--
-- 'provisionedThroughput', 'awsDynamoDbTableGlobalSecondaryIndex_provisionedThroughput' - Information about the provisioned throughput settings for the indexes.
--
-- 'indexArn', 'awsDynamoDbTableGlobalSecondaryIndex_indexArn' - The ARN of the index.
--
-- 'keySchema', 'awsDynamoDbTableGlobalSecondaryIndex_keySchema' - The key schema for the index.
--
-- 'projection', 'awsDynamoDbTableGlobalSecondaryIndex_projection' - Attributes that are copied from the table into an index.
--
-- 'itemCount', 'awsDynamoDbTableGlobalSecondaryIndex_itemCount' - The number of items in the index.
--
-- 'indexName', 'awsDynamoDbTableGlobalSecondaryIndex_indexName' - The name of the index.
newAwsDynamoDbTableGlobalSecondaryIndex ::
  AwsDynamoDbTableGlobalSecondaryIndex
newAwsDynamoDbTableGlobalSecondaryIndex =
  AwsDynamoDbTableGlobalSecondaryIndex'
    { backfilling =
        Prelude.Nothing,
      indexSizeBytes = Prelude.Nothing,
      indexStatus = Prelude.Nothing,
      provisionedThroughput =
        Prelude.Nothing,
      indexArn = Prelude.Nothing,
      keySchema = Prelude.Nothing,
      projection = Prelude.Nothing,
      itemCount = Prelude.Nothing,
      indexName = Prelude.Nothing
    }

-- | Whether the index is currently backfilling.
awsDynamoDbTableGlobalSecondaryIndex_backfilling :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe Prelude.Bool)
awsDynamoDbTableGlobalSecondaryIndex_backfilling = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {backfilling} -> backfilling) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {backfilling = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

-- | The total size in bytes of the index.
awsDynamoDbTableGlobalSecondaryIndex_indexSizeBytes :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe Prelude.Integer)
awsDynamoDbTableGlobalSecondaryIndex_indexSizeBytes = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {indexSizeBytes} -> indexSizeBytes) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {indexSizeBytes = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

-- | The current status of the index.
awsDynamoDbTableGlobalSecondaryIndex_indexStatus :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe Prelude.Text)
awsDynamoDbTableGlobalSecondaryIndex_indexStatus = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {indexStatus} -> indexStatus) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {indexStatus = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

-- | Information about the provisioned throughput settings for the indexes.
awsDynamoDbTableGlobalSecondaryIndex_provisionedThroughput :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe AwsDynamoDbTableProvisionedThroughput)
awsDynamoDbTableGlobalSecondaryIndex_provisionedThroughput = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {provisionedThroughput} -> provisionedThroughput) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {provisionedThroughput = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

-- | The ARN of the index.
awsDynamoDbTableGlobalSecondaryIndex_indexArn :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe Prelude.Text)
awsDynamoDbTableGlobalSecondaryIndex_indexArn = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {indexArn} -> indexArn) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {indexArn = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

-- | The key schema for the index.
awsDynamoDbTableGlobalSecondaryIndex_keySchema :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe [AwsDynamoDbTableKeySchema])
awsDynamoDbTableGlobalSecondaryIndex_keySchema = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {keySchema} -> keySchema) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {keySchema = a} :: AwsDynamoDbTableGlobalSecondaryIndex) Prelude.. Lens.mapping Lens.coerced

-- | Attributes that are copied from the table into an index.
awsDynamoDbTableGlobalSecondaryIndex_projection :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe AwsDynamoDbTableProjection)
awsDynamoDbTableGlobalSecondaryIndex_projection = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {projection} -> projection) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {projection = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

-- | The number of items in the index.
awsDynamoDbTableGlobalSecondaryIndex_itemCount :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe Prelude.Int)
awsDynamoDbTableGlobalSecondaryIndex_itemCount = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {itemCount} -> itemCount) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {itemCount = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

-- | The name of the index.
awsDynamoDbTableGlobalSecondaryIndex_indexName :: Lens.Lens' AwsDynamoDbTableGlobalSecondaryIndex (Prelude.Maybe Prelude.Text)
awsDynamoDbTableGlobalSecondaryIndex_indexName = Lens.lens (\AwsDynamoDbTableGlobalSecondaryIndex' {indexName} -> indexName) (\s@AwsDynamoDbTableGlobalSecondaryIndex' {} a -> s {indexName = a} :: AwsDynamoDbTableGlobalSecondaryIndex)

instance
  Core.FromJSON
    AwsDynamoDbTableGlobalSecondaryIndex
  where
  parseJSON =
    Core.withObject
      "AwsDynamoDbTableGlobalSecondaryIndex"
      ( \x ->
          AwsDynamoDbTableGlobalSecondaryIndex'
            Prelude.<$> (x Core..:? "Backfilling")
            Prelude.<*> (x Core..:? "IndexSizeBytes")
            Prelude.<*> (x Core..:? "IndexStatus")
            Prelude.<*> (x Core..:? "ProvisionedThroughput")
            Prelude.<*> (x Core..:? "IndexArn")
            Prelude.<*> (x Core..:? "KeySchema" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Projection")
            Prelude.<*> (x Core..:? "ItemCount")
            Prelude.<*> (x Core..:? "IndexName")
      )

instance
  Prelude.Hashable
    AwsDynamoDbTableGlobalSecondaryIndex

instance
  Prelude.NFData
    AwsDynamoDbTableGlobalSecondaryIndex

instance
  Core.ToJSON
    AwsDynamoDbTableGlobalSecondaryIndex
  where
  toJSON AwsDynamoDbTableGlobalSecondaryIndex' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Backfilling" Core..=) Prelude.<$> backfilling,
            ("IndexSizeBytes" Core..=)
              Prelude.<$> indexSizeBytes,
            ("IndexStatus" Core..=) Prelude.<$> indexStatus,
            ("ProvisionedThroughput" Core..=)
              Prelude.<$> provisionedThroughput,
            ("IndexArn" Core..=) Prelude.<$> indexArn,
            ("KeySchema" Core..=) Prelude.<$> keySchema,
            ("Projection" Core..=) Prelude.<$> projection,
            ("ItemCount" Core..=) Prelude.<$> itemCount,
            ("IndexName" Core..=) Prelude.<$> indexName
          ]
      )
