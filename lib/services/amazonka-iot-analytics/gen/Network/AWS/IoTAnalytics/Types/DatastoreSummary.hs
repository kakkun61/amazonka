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
-- Module      : Network.AWS.IoTAnalytics.Types.DatastoreSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.DatastoreSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types.DatastorePartitions
import Network.AWS.IoTAnalytics.Types.DatastoreStatus
import Network.AWS.IoTAnalytics.Types.DatastoreStorageSummary
import Network.AWS.IoTAnalytics.Types.FileFormatType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A summary of information about a data store.
--
-- /See:/ 'newDatastoreSummary' smart constructor.
data DatastoreSummary = DatastoreSummary'
  { -- | When the data store was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The status of the data store.
    status :: Prelude.Maybe DatastoreStatus,
    -- | The last time when a new message arrived in the data store.
    --
    -- IoT Analytics updates this value at most once per minute for Amazon
    -- Simple Storage Service one data store. Hence, the
    -- @lastMessageArrivalTime@ value is an approximation.
    --
    -- This feature only applies to messages that arrived in the data store
    -- after October 23, 2020.
    lastMessageArrivalTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the data store.
    datastoreName :: Prelude.Maybe Prelude.Text,
    -- | Contains information about the partition dimensions in a data store.
    datastorePartitions :: Prelude.Maybe DatastorePartitions,
    -- | The file format of the data in the data store.
    fileFormatType :: Prelude.Maybe FileFormatType,
    -- | The last time the data store was updated.
    lastUpdateTime :: Prelude.Maybe Core.POSIX,
    -- | Where data in a data store is stored.
    datastoreStorage :: Prelude.Maybe DatastoreStorageSummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatastoreSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'datastoreSummary_creationTime' - When the data store was created.
--
-- 'status', 'datastoreSummary_status' - The status of the data store.
--
-- 'lastMessageArrivalTime', 'datastoreSummary_lastMessageArrivalTime' - The last time when a new message arrived in the data store.
--
-- IoT Analytics updates this value at most once per minute for Amazon
-- Simple Storage Service one data store. Hence, the
-- @lastMessageArrivalTime@ value is an approximation.
--
-- This feature only applies to messages that arrived in the data store
-- after October 23, 2020.
--
-- 'datastoreName', 'datastoreSummary_datastoreName' - The name of the data store.
--
-- 'datastorePartitions', 'datastoreSummary_datastorePartitions' - Contains information about the partition dimensions in a data store.
--
-- 'fileFormatType', 'datastoreSummary_fileFormatType' - The file format of the data in the data store.
--
-- 'lastUpdateTime', 'datastoreSummary_lastUpdateTime' - The last time the data store was updated.
--
-- 'datastoreStorage', 'datastoreSummary_datastoreStorage' - Where data in a data store is stored.
newDatastoreSummary ::
  DatastoreSummary
newDatastoreSummary =
  DatastoreSummary'
    { creationTime = Prelude.Nothing,
      status = Prelude.Nothing,
      lastMessageArrivalTime = Prelude.Nothing,
      datastoreName = Prelude.Nothing,
      datastorePartitions = Prelude.Nothing,
      fileFormatType = Prelude.Nothing,
      lastUpdateTime = Prelude.Nothing,
      datastoreStorage = Prelude.Nothing
    }

-- | When the data store was created.
datastoreSummary_creationTime :: Lens.Lens' DatastoreSummary (Prelude.Maybe Prelude.UTCTime)
datastoreSummary_creationTime = Lens.lens (\DatastoreSummary' {creationTime} -> creationTime) (\s@DatastoreSummary' {} a -> s {creationTime = a} :: DatastoreSummary) Prelude.. Lens.mapping Core._Time

-- | The status of the data store.
datastoreSummary_status :: Lens.Lens' DatastoreSummary (Prelude.Maybe DatastoreStatus)
datastoreSummary_status = Lens.lens (\DatastoreSummary' {status} -> status) (\s@DatastoreSummary' {} a -> s {status = a} :: DatastoreSummary)

-- | The last time when a new message arrived in the data store.
--
-- IoT Analytics updates this value at most once per minute for Amazon
-- Simple Storage Service one data store. Hence, the
-- @lastMessageArrivalTime@ value is an approximation.
--
-- This feature only applies to messages that arrived in the data store
-- after October 23, 2020.
datastoreSummary_lastMessageArrivalTime :: Lens.Lens' DatastoreSummary (Prelude.Maybe Prelude.UTCTime)
datastoreSummary_lastMessageArrivalTime = Lens.lens (\DatastoreSummary' {lastMessageArrivalTime} -> lastMessageArrivalTime) (\s@DatastoreSummary' {} a -> s {lastMessageArrivalTime = a} :: DatastoreSummary) Prelude.. Lens.mapping Core._Time

-- | The name of the data store.
datastoreSummary_datastoreName :: Lens.Lens' DatastoreSummary (Prelude.Maybe Prelude.Text)
datastoreSummary_datastoreName = Lens.lens (\DatastoreSummary' {datastoreName} -> datastoreName) (\s@DatastoreSummary' {} a -> s {datastoreName = a} :: DatastoreSummary)

-- | Contains information about the partition dimensions in a data store.
datastoreSummary_datastorePartitions :: Lens.Lens' DatastoreSummary (Prelude.Maybe DatastorePartitions)
datastoreSummary_datastorePartitions = Lens.lens (\DatastoreSummary' {datastorePartitions} -> datastorePartitions) (\s@DatastoreSummary' {} a -> s {datastorePartitions = a} :: DatastoreSummary)

-- | The file format of the data in the data store.
datastoreSummary_fileFormatType :: Lens.Lens' DatastoreSummary (Prelude.Maybe FileFormatType)
datastoreSummary_fileFormatType = Lens.lens (\DatastoreSummary' {fileFormatType} -> fileFormatType) (\s@DatastoreSummary' {} a -> s {fileFormatType = a} :: DatastoreSummary)

-- | The last time the data store was updated.
datastoreSummary_lastUpdateTime :: Lens.Lens' DatastoreSummary (Prelude.Maybe Prelude.UTCTime)
datastoreSummary_lastUpdateTime = Lens.lens (\DatastoreSummary' {lastUpdateTime} -> lastUpdateTime) (\s@DatastoreSummary' {} a -> s {lastUpdateTime = a} :: DatastoreSummary) Prelude.. Lens.mapping Core._Time

-- | Where data in a data store is stored.
datastoreSummary_datastoreStorage :: Lens.Lens' DatastoreSummary (Prelude.Maybe DatastoreStorageSummary)
datastoreSummary_datastoreStorage = Lens.lens (\DatastoreSummary' {datastoreStorage} -> datastoreStorage) (\s@DatastoreSummary' {} a -> s {datastoreStorage = a} :: DatastoreSummary)

instance Core.FromJSON DatastoreSummary where
  parseJSON =
    Core.withObject
      "DatastoreSummary"
      ( \x ->
          DatastoreSummary'
            Prelude.<$> (x Core..:? "creationTime")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "lastMessageArrivalTime")
            Prelude.<*> (x Core..:? "datastoreName")
            Prelude.<*> (x Core..:? "datastorePartitions")
            Prelude.<*> (x Core..:? "fileFormatType")
            Prelude.<*> (x Core..:? "lastUpdateTime")
            Prelude.<*> (x Core..:? "datastoreStorage")
      )

instance Prelude.Hashable DatastoreSummary

instance Prelude.NFData DatastoreSummary
