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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ApplicationConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ApplicationConfigurationUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationCodeConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationSnapshotConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.EnvironmentPropertyUpdates
import Network.AWS.KinesisAnalyticsV2.Types.FlinkApplicationConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.SqlApplicationConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.VpcConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinApplicationConfigurationUpdate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes updates to an application\'s configuration.
--
-- /See:/ 'newApplicationConfigurationUpdate' smart constructor.
data ApplicationConfigurationUpdate = ApplicationConfigurationUpdate'
  { -- | Describes whether snapshots are enabled for a Flink-based Kinesis Data
    -- Analytics application.
    applicationSnapshotConfigurationUpdate :: Prelude.Maybe ApplicationSnapshotConfigurationUpdate,
    -- | Updates to the configuration of a Kinesis Data Analytics Studio
    -- notebook.
    zeppelinApplicationConfigurationUpdate :: Prelude.Maybe ZeppelinApplicationConfigurationUpdate,
    -- | Describes updates to a Flink-based Kinesis Data Analytics application\'s
    -- configuration.
    flinkApplicationConfigurationUpdate :: Prelude.Maybe FlinkApplicationConfigurationUpdate,
    -- | Describes updates to a SQL-based Kinesis Data Analytics application\'s
    -- configuration.
    sqlApplicationConfigurationUpdate :: Prelude.Maybe SqlApplicationConfigurationUpdate,
    -- | Updates to the array of descriptions of VPC configurations available to
    -- the application.
    vpcConfigurationUpdates :: Prelude.Maybe [VpcConfigurationUpdate],
    -- | Describes updates to the environment properties for a Flink-based
    -- Kinesis Data Analytics application.
    environmentPropertyUpdates :: Prelude.Maybe EnvironmentPropertyUpdates,
    -- | Describes updates to an application\'s code configuration.
    applicationCodeConfigurationUpdate :: Prelude.Maybe ApplicationCodeConfigurationUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationSnapshotConfigurationUpdate', 'applicationConfigurationUpdate_applicationSnapshotConfigurationUpdate' - Describes whether snapshots are enabled for a Flink-based Kinesis Data
-- Analytics application.
--
-- 'zeppelinApplicationConfigurationUpdate', 'applicationConfigurationUpdate_zeppelinApplicationConfigurationUpdate' - Updates to the configuration of a Kinesis Data Analytics Studio
-- notebook.
--
-- 'flinkApplicationConfigurationUpdate', 'applicationConfigurationUpdate_flinkApplicationConfigurationUpdate' - Describes updates to a Flink-based Kinesis Data Analytics application\'s
-- configuration.
--
-- 'sqlApplicationConfigurationUpdate', 'applicationConfigurationUpdate_sqlApplicationConfigurationUpdate' - Describes updates to a SQL-based Kinesis Data Analytics application\'s
-- configuration.
--
-- 'vpcConfigurationUpdates', 'applicationConfigurationUpdate_vpcConfigurationUpdates' - Updates to the array of descriptions of VPC configurations available to
-- the application.
--
-- 'environmentPropertyUpdates', 'applicationConfigurationUpdate_environmentPropertyUpdates' - Describes updates to the environment properties for a Flink-based
-- Kinesis Data Analytics application.
--
-- 'applicationCodeConfigurationUpdate', 'applicationConfigurationUpdate_applicationCodeConfigurationUpdate' - Describes updates to an application\'s code configuration.
newApplicationConfigurationUpdate ::
  ApplicationConfigurationUpdate
newApplicationConfigurationUpdate =
  ApplicationConfigurationUpdate'
    { applicationSnapshotConfigurationUpdate =
        Prelude.Nothing,
      zeppelinApplicationConfigurationUpdate =
        Prelude.Nothing,
      flinkApplicationConfigurationUpdate =
        Prelude.Nothing,
      sqlApplicationConfigurationUpdate =
        Prelude.Nothing,
      vpcConfigurationUpdates = Prelude.Nothing,
      environmentPropertyUpdates =
        Prelude.Nothing,
      applicationCodeConfigurationUpdate =
        Prelude.Nothing
    }

-- | Describes whether snapshots are enabled for a Flink-based Kinesis Data
-- Analytics application.
applicationConfigurationUpdate_applicationSnapshotConfigurationUpdate :: Lens.Lens' ApplicationConfigurationUpdate (Prelude.Maybe ApplicationSnapshotConfigurationUpdate)
applicationConfigurationUpdate_applicationSnapshotConfigurationUpdate = Lens.lens (\ApplicationConfigurationUpdate' {applicationSnapshotConfigurationUpdate} -> applicationSnapshotConfigurationUpdate) (\s@ApplicationConfigurationUpdate' {} a -> s {applicationSnapshotConfigurationUpdate = a} :: ApplicationConfigurationUpdate)

-- | Updates to the configuration of a Kinesis Data Analytics Studio
-- notebook.
applicationConfigurationUpdate_zeppelinApplicationConfigurationUpdate :: Lens.Lens' ApplicationConfigurationUpdate (Prelude.Maybe ZeppelinApplicationConfigurationUpdate)
applicationConfigurationUpdate_zeppelinApplicationConfigurationUpdate = Lens.lens (\ApplicationConfigurationUpdate' {zeppelinApplicationConfigurationUpdate} -> zeppelinApplicationConfigurationUpdate) (\s@ApplicationConfigurationUpdate' {} a -> s {zeppelinApplicationConfigurationUpdate = a} :: ApplicationConfigurationUpdate)

-- | Describes updates to a Flink-based Kinesis Data Analytics application\'s
-- configuration.
applicationConfigurationUpdate_flinkApplicationConfigurationUpdate :: Lens.Lens' ApplicationConfigurationUpdate (Prelude.Maybe FlinkApplicationConfigurationUpdate)
applicationConfigurationUpdate_flinkApplicationConfigurationUpdate = Lens.lens (\ApplicationConfigurationUpdate' {flinkApplicationConfigurationUpdate} -> flinkApplicationConfigurationUpdate) (\s@ApplicationConfigurationUpdate' {} a -> s {flinkApplicationConfigurationUpdate = a} :: ApplicationConfigurationUpdate)

-- | Describes updates to a SQL-based Kinesis Data Analytics application\'s
-- configuration.
applicationConfigurationUpdate_sqlApplicationConfigurationUpdate :: Lens.Lens' ApplicationConfigurationUpdate (Prelude.Maybe SqlApplicationConfigurationUpdate)
applicationConfigurationUpdate_sqlApplicationConfigurationUpdate = Lens.lens (\ApplicationConfigurationUpdate' {sqlApplicationConfigurationUpdate} -> sqlApplicationConfigurationUpdate) (\s@ApplicationConfigurationUpdate' {} a -> s {sqlApplicationConfigurationUpdate = a} :: ApplicationConfigurationUpdate)

-- | Updates to the array of descriptions of VPC configurations available to
-- the application.
applicationConfigurationUpdate_vpcConfigurationUpdates :: Lens.Lens' ApplicationConfigurationUpdate (Prelude.Maybe [VpcConfigurationUpdate])
applicationConfigurationUpdate_vpcConfigurationUpdates = Lens.lens (\ApplicationConfigurationUpdate' {vpcConfigurationUpdates} -> vpcConfigurationUpdates) (\s@ApplicationConfigurationUpdate' {} a -> s {vpcConfigurationUpdates = a} :: ApplicationConfigurationUpdate) Prelude.. Lens.mapping Lens.coerced

-- | Describes updates to the environment properties for a Flink-based
-- Kinesis Data Analytics application.
applicationConfigurationUpdate_environmentPropertyUpdates :: Lens.Lens' ApplicationConfigurationUpdate (Prelude.Maybe EnvironmentPropertyUpdates)
applicationConfigurationUpdate_environmentPropertyUpdates = Lens.lens (\ApplicationConfigurationUpdate' {environmentPropertyUpdates} -> environmentPropertyUpdates) (\s@ApplicationConfigurationUpdate' {} a -> s {environmentPropertyUpdates = a} :: ApplicationConfigurationUpdate)

-- | Describes updates to an application\'s code configuration.
applicationConfigurationUpdate_applicationCodeConfigurationUpdate :: Lens.Lens' ApplicationConfigurationUpdate (Prelude.Maybe ApplicationCodeConfigurationUpdate)
applicationConfigurationUpdate_applicationCodeConfigurationUpdate = Lens.lens (\ApplicationConfigurationUpdate' {applicationCodeConfigurationUpdate} -> applicationCodeConfigurationUpdate) (\s@ApplicationConfigurationUpdate' {} a -> s {applicationCodeConfigurationUpdate = a} :: ApplicationConfigurationUpdate)

instance
  Prelude.Hashable
    ApplicationConfigurationUpdate

instance
  Prelude.NFData
    ApplicationConfigurationUpdate

instance Core.ToJSON ApplicationConfigurationUpdate where
  toJSON ApplicationConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ApplicationSnapshotConfigurationUpdate" Core..=)
              Prelude.<$> applicationSnapshotConfigurationUpdate,
            ("ZeppelinApplicationConfigurationUpdate" Core..=)
              Prelude.<$> zeppelinApplicationConfigurationUpdate,
            ("FlinkApplicationConfigurationUpdate" Core..=)
              Prelude.<$> flinkApplicationConfigurationUpdate,
            ("SqlApplicationConfigurationUpdate" Core..=)
              Prelude.<$> sqlApplicationConfigurationUpdate,
            ("VpcConfigurationUpdates" Core..=)
              Prelude.<$> vpcConfigurationUpdates,
            ("EnvironmentPropertyUpdates" Core..=)
              Prelude.<$> environmentPropertyUpdates,
            ("ApplicationCodeConfigurationUpdate" Core..=)
              Prelude.<$> applicationCodeConfigurationUpdate
          ]
      )
