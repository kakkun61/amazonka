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
-- Module      : Network.AWS.DynamoDB.Types.SourceTableFeatureDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SourceTableFeatureDetails where

import qualified Network.AWS.Core as Core
import Network.AWS.DynamoDB.Types.GlobalSecondaryIndexInfo
import Network.AWS.DynamoDB.Types.LocalSecondaryIndexInfo
import Network.AWS.DynamoDB.Types.SSEDescription
import Network.AWS.DynamoDB.Types.StreamSpecification
import Network.AWS.DynamoDB.Types.TimeToLiveDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the details of the features enabled on the table when the
-- backup was created. For example, LSIs, GSIs, streams, TTL.
--
-- /See:/ 'newSourceTableFeatureDetails' smart constructor.
data SourceTableFeatureDetails = SourceTableFeatureDetails'
  { -- | Stream settings on the table when the backup was created.
    streamDescription :: Prelude.Maybe StreamSpecification,
    -- | Represents the GSI properties for the table when the backup was created.
    -- It includes the IndexName, KeySchema, Projection, and
    -- ProvisionedThroughput for the GSIs on the table at the time of backup.
    globalSecondaryIndexes :: Prelude.Maybe [GlobalSecondaryIndexInfo],
    -- | Represents the LSI properties for the table when the backup was created.
    -- It includes the IndexName, KeySchema and Projection for the LSIs on the
    -- table at the time of backup.
    localSecondaryIndexes :: Prelude.Maybe [LocalSecondaryIndexInfo],
    -- | The description of the server-side encryption status on the table when
    -- the backup was created.
    sSEDescription :: Prelude.Maybe SSEDescription,
    -- | Time to Live settings on the table when the backup was created.
    timeToLiveDescription :: Prelude.Maybe TimeToLiveDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SourceTableFeatureDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamDescription', 'sourceTableFeatureDetails_streamDescription' - Stream settings on the table when the backup was created.
--
-- 'globalSecondaryIndexes', 'sourceTableFeatureDetails_globalSecondaryIndexes' - Represents the GSI properties for the table when the backup was created.
-- It includes the IndexName, KeySchema, Projection, and
-- ProvisionedThroughput for the GSIs on the table at the time of backup.
--
-- 'localSecondaryIndexes', 'sourceTableFeatureDetails_localSecondaryIndexes' - Represents the LSI properties for the table when the backup was created.
-- It includes the IndexName, KeySchema and Projection for the LSIs on the
-- table at the time of backup.
--
-- 'sSEDescription', 'sourceTableFeatureDetails_sSEDescription' - The description of the server-side encryption status on the table when
-- the backup was created.
--
-- 'timeToLiveDescription', 'sourceTableFeatureDetails_timeToLiveDescription' - Time to Live settings on the table when the backup was created.
newSourceTableFeatureDetails ::
  SourceTableFeatureDetails
newSourceTableFeatureDetails =
  SourceTableFeatureDetails'
    { streamDescription =
        Prelude.Nothing,
      globalSecondaryIndexes = Prelude.Nothing,
      localSecondaryIndexes = Prelude.Nothing,
      sSEDescription = Prelude.Nothing,
      timeToLiveDescription = Prelude.Nothing
    }

-- | Stream settings on the table when the backup was created.
sourceTableFeatureDetails_streamDescription :: Lens.Lens' SourceTableFeatureDetails (Prelude.Maybe StreamSpecification)
sourceTableFeatureDetails_streamDescription = Lens.lens (\SourceTableFeatureDetails' {streamDescription} -> streamDescription) (\s@SourceTableFeatureDetails' {} a -> s {streamDescription = a} :: SourceTableFeatureDetails)

-- | Represents the GSI properties for the table when the backup was created.
-- It includes the IndexName, KeySchema, Projection, and
-- ProvisionedThroughput for the GSIs on the table at the time of backup.
sourceTableFeatureDetails_globalSecondaryIndexes :: Lens.Lens' SourceTableFeatureDetails (Prelude.Maybe [GlobalSecondaryIndexInfo])
sourceTableFeatureDetails_globalSecondaryIndexes = Lens.lens (\SourceTableFeatureDetails' {globalSecondaryIndexes} -> globalSecondaryIndexes) (\s@SourceTableFeatureDetails' {} a -> s {globalSecondaryIndexes = a} :: SourceTableFeatureDetails) Prelude.. Lens.mapping Lens.coerced

-- | Represents the LSI properties for the table when the backup was created.
-- It includes the IndexName, KeySchema and Projection for the LSIs on the
-- table at the time of backup.
sourceTableFeatureDetails_localSecondaryIndexes :: Lens.Lens' SourceTableFeatureDetails (Prelude.Maybe [LocalSecondaryIndexInfo])
sourceTableFeatureDetails_localSecondaryIndexes = Lens.lens (\SourceTableFeatureDetails' {localSecondaryIndexes} -> localSecondaryIndexes) (\s@SourceTableFeatureDetails' {} a -> s {localSecondaryIndexes = a} :: SourceTableFeatureDetails) Prelude.. Lens.mapping Lens.coerced

-- | The description of the server-side encryption status on the table when
-- the backup was created.
sourceTableFeatureDetails_sSEDescription :: Lens.Lens' SourceTableFeatureDetails (Prelude.Maybe SSEDescription)
sourceTableFeatureDetails_sSEDescription = Lens.lens (\SourceTableFeatureDetails' {sSEDescription} -> sSEDescription) (\s@SourceTableFeatureDetails' {} a -> s {sSEDescription = a} :: SourceTableFeatureDetails)

-- | Time to Live settings on the table when the backup was created.
sourceTableFeatureDetails_timeToLiveDescription :: Lens.Lens' SourceTableFeatureDetails (Prelude.Maybe TimeToLiveDescription)
sourceTableFeatureDetails_timeToLiveDescription = Lens.lens (\SourceTableFeatureDetails' {timeToLiveDescription} -> timeToLiveDescription) (\s@SourceTableFeatureDetails' {} a -> s {timeToLiveDescription = a} :: SourceTableFeatureDetails)

instance Core.FromJSON SourceTableFeatureDetails where
  parseJSON =
    Core.withObject
      "SourceTableFeatureDetails"
      ( \x ->
          SourceTableFeatureDetails'
            Prelude.<$> (x Core..:? "StreamDescription")
            Prelude.<*> ( x Core..:? "GlobalSecondaryIndexes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "LocalSecondaryIndexes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "SSEDescription")
            Prelude.<*> (x Core..:? "TimeToLiveDescription")
      )

instance Prelude.Hashable SourceTableFeatureDetails

instance Prelude.NFData SourceTableFeatureDetails
