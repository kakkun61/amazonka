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
-- Module      : Network.AWS.MGN.Types.DataReplicationInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.DataReplicationInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types.DataReplicationError
import Network.AWS.MGN.Types.DataReplicationInfoReplicatedDisk
import Network.AWS.MGN.Types.DataReplicationInitiation
import Network.AWS.MGN.Types.DataReplicationState
import qualified Network.AWS.Prelude as Prelude

-- | Request data replication info.
--
-- /See:/ 'newDataReplicationInfo' smart constructor.
data DataReplicationInfo = DataReplicationInfo'
  { -- | Request to query whether data replication has been initiated.
    dataReplicationInitiation :: Prelude.Maybe DataReplicationInitiation,
    -- | Error in obtaining data replication info.
    dataReplicationError :: Prelude.Maybe DataReplicationError,
    -- | Request to query data replication lag durating.
    lagDuration :: Prelude.Maybe Prelude.Text,
    -- | Request to query the data replication state.
    dataReplicationState :: Prelude.Maybe DataReplicationState,
    -- | Request to query disks replicated.
    replicatedDisks :: Prelude.Maybe [DataReplicationInfoReplicatedDisk],
    -- | Request to query the time when data replication will be complete.
    etaDateTime :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataReplicationInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataReplicationInitiation', 'dataReplicationInfo_dataReplicationInitiation' - Request to query whether data replication has been initiated.
--
-- 'dataReplicationError', 'dataReplicationInfo_dataReplicationError' - Error in obtaining data replication info.
--
-- 'lagDuration', 'dataReplicationInfo_lagDuration' - Request to query data replication lag durating.
--
-- 'dataReplicationState', 'dataReplicationInfo_dataReplicationState' - Request to query the data replication state.
--
-- 'replicatedDisks', 'dataReplicationInfo_replicatedDisks' - Request to query disks replicated.
--
-- 'etaDateTime', 'dataReplicationInfo_etaDateTime' - Request to query the time when data replication will be complete.
newDataReplicationInfo ::
  DataReplicationInfo
newDataReplicationInfo =
  DataReplicationInfo'
    { dataReplicationInitiation =
        Prelude.Nothing,
      dataReplicationError = Prelude.Nothing,
      lagDuration = Prelude.Nothing,
      dataReplicationState = Prelude.Nothing,
      replicatedDisks = Prelude.Nothing,
      etaDateTime = Prelude.Nothing
    }

-- | Request to query whether data replication has been initiated.
dataReplicationInfo_dataReplicationInitiation :: Lens.Lens' DataReplicationInfo (Prelude.Maybe DataReplicationInitiation)
dataReplicationInfo_dataReplicationInitiation = Lens.lens (\DataReplicationInfo' {dataReplicationInitiation} -> dataReplicationInitiation) (\s@DataReplicationInfo' {} a -> s {dataReplicationInitiation = a} :: DataReplicationInfo)

-- | Error in obtaining data replication info.
dataReplicationInfo_dataReplicationError :: Lens.Lens' DataReplicationInfo (Prelude.Maybe DataReplicationError)
dataReplicationInfo_dataReplicationError = Lens.lens (\DataReplicationInfo' {dataReplicationError} -> dataReplicationError) (\s@DataReplicationInfo' {} a -> s {dataReplicationError = a} :: DataReplicationInfo)

-- | Request to query data replication lag durating.
dataReplicationInfo_lagDuration :: Lens.Lens' DataReplicationInfo (Prelude.Maybe Prelude.Text)
dataReplicationInfo_lagDuration = Lens.lens (\DataReplicationInfo' {lagDuration} -> lagDuration) (\s@DataReplicationInfo' {} a -> s {lagDuration = a} :: DataReplicationInfo)

-- | Request to query the data replication state.
dataReplicationInfo_dataReplicationState :: Lens.Lens' DataReplicationInfo (Prelude.Maybe DataReplicationState)
dataReplicationInfo_dataReplicationState = Lens.lens (\DataReplicationInfo' {dataReplicationState} -> dataReplicationState) (\s@DataReplicationInfo' {} a -> s {dataReplicationState = a} :: DataReplicationInfo)

-- | Request to query disks replicated.
dataReplicationInfo_replicatedDisks :: Lens.Lens' DataReplicationInfo (Prelude.Maybe [DataReplicationInfoReplicatedDisk])
dataReplicationInfo_replicatedDisks = Lens.lens (\DataReplicationInfo' {replicatedDisks} -> replicatedDisks) (\s@DataReplicationInfo' {} a -> s {replicatedDisks = a} :: DataReplicationInfo) Prelude.. Lens.mapping Lens.coerced

-- | Request to query the time when data replication will be complete.
dataReplicationInfo_etaDateTime :: Lens.Lens' DataReplicationInfo (Prelude.Maybe Prelude.Text)
dataReplicationInfo_etaDateTime = Lens.lens (\DataReplicationInfo' {etaDateTime} -> etaDateTime) (\s@DataReplicationInfo' {} a -> s {etaDateTime = a} :: DataReplicationInfo)

instance Core.FromJSON DataReplicationInfo where
  parseJSON =
    Core.withObject
      "DataReplicationInfo"
      ( \x ->
          DataReplicationInfo'
            Prelude.<$> (x Core..:? "dataReplicationInitiation")
            Prelude.<*> (x Core..:? "dataReplicationError")
            Prelude.<*> (x Core..:? "lagDuration")
            Prelude.<*> (x Core..:? "dataReplicationState")
            Prelude.<*> ( x Core..:? "replicatedDisks"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "etaDateTime")
      )

instance Prelude.Hashable DataReplicationInfo

instance Prelude.NFData DataReplicationInfo
