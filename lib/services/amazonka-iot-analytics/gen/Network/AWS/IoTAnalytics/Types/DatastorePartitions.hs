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
-- Module      : Network.AWS.IoTAnalytics.Types.DatastorePartitions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatastorePartitions where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types.DatastorePartition
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the partition dimensions in a data store.
--
-- /See:/ 'newDatastorePartitions' smart constructor.
data DatastorePartitions = DatastorePartitions'
  { -- | A list of partition dimensions in a data store.
    partitions :: Prelude.Maybe [DatastorePartition]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatastorePartitions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partitions', 'datastorePartitions_partitions' - A list of partition dimensions in a data store.
newDatastorePartitions ::
  DatastorePartitions
newDatastorePartitions =
  DatastorePartitions' {partitions = Prelude.Nothing}

-- | A list of partition dimensions in a data store.
datastorePartitions_partitions :: Lens.Lens' DatastorePartitions (Prelude.Maybe [DatastorePartition])
datastorePartitions_partitions = Lens.lens (\DatastorePartitions' {partitions} -> partitions) (\s@DatastorePartitions' {} a -> s {partitions = a} :: DatastorePartitions) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON DatastorePartitions where
  parseJSON =
    Core.withObject
      "DatastorePartitions"
      ( \x ->
          DatastorePartitions'
            Prelude.<$> (x Core..:? "partitions" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable DatastorePartitions

instance Prelude.NFData DatastorePartitions

instance Core.ToJSON DatastorePartitions where
  toJSON DatastorePartitions' {..} =
    Core.object
      ( Prelude.catMaybes
          [("partitions" Core..=) Prelude.<$> partitions]
      )
