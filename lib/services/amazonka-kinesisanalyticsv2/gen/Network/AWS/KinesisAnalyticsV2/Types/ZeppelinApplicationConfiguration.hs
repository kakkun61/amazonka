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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ZeppelinApplicationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ZeppelinApplicationConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.CatalogConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.CustomArtifactConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.DeployAsApplicationConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinMonitoringConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration of a Kinesis Data Analytics Studio notebook.
--
-- /See:/ 'newZeppelinApplicationConfiguration' smart constructor.
data ZeppelinApplicationConfiguration = ZeppelinApplicationConfiguration'
  { -- | The monitoring configuration of a Kinesis Data Analytics Studio
    -- notebook.
    monitoringConfiguration :: Prelude.Maybe ZeppelinMonitoringConfiguration,
    -- | The Amazon Glue Data Catalog that you use in queries in a Kinesis Data
    -- Analytics Studio notebook.
    catalogConfiguration :: Prelude.Maybe CatalogConfiguration,
    -- | The information required to deploy a Kinesis Data Analytics Studio
    -- notebook as an application with durable state.
    deployAsApplicationConfiguration :: Prelude.Maybe DeployAsApplicationConfiguration,
    -- | Custom artifacts are dependency JARs and user-defined functions (UDF).
    customArtifactsConfiguration :: Prelude.Maybe [CustomArtifactConfiguration]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ZeppelinApplicationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'monitoringConfiguration', 'zeppelinApplicationConfiguration_monitoringConfiguration' - The monitoring configuration of a Kinesis Data Analytics Studio
-- notebook.
--
-- 'catalogConfiguration', 'zeppelinApplicationConfiguration_catalogConfiguration' - The Amazon Glue Data Catalog that you use in queries in a Kinesis Data
-- Analytics Studio notebook.
--
-- 'deployAsApplicationConfiguration', 'zeppelinApplicationConfiguration_deployAsApplicationConfiguration' - The information required to deploy a Kinesis Data Analytics Studio
-- notebook as an application with durable state.
--
-- 'customArtifactsConfiguration', 'zeppelinApplicationConfiguration_customArtifactsConfiguration' - Custom artifacts are dependency JARs and user-defined functions (UDF).
newZeppelinApplicationConfiguration ::
  ZeppelinApplicationConfiguration
newZeppelinApplicationConfiguration =
  ZeppelinApplicationConfiguration'
    { monitoringConfiguration =
        Prelude.Nothing,
      catalogConfiguration = Prelude.Nothing,
      deployAsApplicationConfiguration =
        Prelude.Nothing,
      customArtifactsConfiguration =
        Prelude.Nothing
    }

-- | The monitoring configuration of a Kinesis Data Analytics Studio
-- notebook.
zeppelinApplicationConfiguration_monitoringConfiguration :: Lens.Lens' ZeppelinApplicationConfiguration (Prelude.Maybe ZeppelinMonitoringConfiguration)
zeppelinApplicationConfiguration_monitoringConfiguration = Lens.lens (\ZeppelinApplicationConfiguration' {monitoringConfiguration} -> monitoringConfiguration) (\s@ZeppelinApplicationConfiguration' {} a -> s {monitoringConfiguration = a} :: ZeppelinApplicationConfiguration)

-- | The Amazon Glue Data Catalog that you use in queries in a Kinesis Data
-- Analytics Studio notebook.
zeppelinApplicationConfiguration_catalogConfiguration :: Lens.Lens' ZeppelinApplicationConfiguration (Prelude.Maybe CatalogConfiguration)
zeppelinApplicationConfiguration_catalogConfiguration = Lens.lens (\ZeppelinApplicationConfiguration' {catalogConfiguration} -> catalogConfiguration) (\s@ZeppelinApplicationConfiguration' {} a -> s {catalogConfiguration = a} :: ZeppelinApplicationConfiguration)

-- | The information required to deploy a Kinesis Data Analytics Studio
-- notebook as an application with durable state.
zeppelinApplicationConfiguration_deployAsApplicationConfiguration :: Lens.Lens' ZeppelinApplicationConfiguration (Prelude.Maybe DeployAsApplicationConfiguration)
zeppelinApplicationConfiguration_deployAsApplicationConfiguration = Lens.lens (\ZeppelinApplicationConfiguration' {deployAsApplicationConfiguration} -> deployAsApplicationConfiguration) (\s@ZeppelinApplicationConfiguration' {} a -> s {deployAsApplicationConfiguration = a} :: ZeppelinApplicationConfiguration)

-- | Custom artifacts are dependency JARs and user-defined functions (UDF).
zeppelinApplicationConfiguration_customArtifactsConfiguration :: Lens.Lens' ZeppelinApplicationConfiguration (Prelude.Maybe [CustomArtifactConfiguration])
zeppelinApplicationConfiguration_customArtifactsConfiguration = Lens.lens (\ZeppelinApplicationConfiguration' {customArtifactsConfiguration} -> customArtifactsConfiguration) (\s@ZeppelinApplicationConfiguration' {} a -> s {customArtifactsConfiguration = a} :: ZeppelinApplicationConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Prelude.Hashable
    ZeppelinApplicationConfiguration

instance
  Prelude.NFData
    ZeppelinApplicationConfiguration

instance Core.ToJSON ZeppelinApplicationConfiguration where
  toJSON ZeppelinApplicationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("MonitoringConfiguration" Core..=)
              Prelude.<$> monitoringConfiguration,
            ("CatalogConfiguration" Core..=)
              Prelude.<$> catalogConfiguration,
            ("DeployAsApplicationConfiguration" Core..=)
              Prelude.<$> deployAsApplicationConfiguration,
            ("CustomArtifactsConfiguration" Core..=)
              Prelude.<$> customArtifactsConfiguration
          ]
      )
