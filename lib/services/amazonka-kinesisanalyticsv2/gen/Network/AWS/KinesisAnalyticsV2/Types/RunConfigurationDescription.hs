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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.RunConfigurationDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.RunConfigurationDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationRestoreConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.FlinkRunConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the starting properties for a Kinesis Data Analytics
-- application.
--
-- /See:/ 'newRunConfigurationDescription' smart constructor.
data RunConfigurationDescription = RunConfigurationDescription'
  { -- | Describes the restore behavior of a restarting application.
    applicationRestoreConfigurationDescription :: Prelude.Maybe ApplicationRestoreConfiguration,
    flinkRunConfigurationDescription :: Prelude.Maybe FlinkRunConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RunConfigurationDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationRestoreConfigurationDescription', 'runConfigurationDescription_applicationRestoreConfigurationDescription' - Describes the restore behavior of a restarting application.
--
-- 'flinkRunConfigurationDescription', 'runConfigurationDescription_flinkRunConfigurationDescription' - Undocumented member.
newRunConfigurationDescription ::
  RunConfigurationDescription
newRunConfigurationDescription =
  RunConfigurationDescription'
    { applicationRestoreConfigurationDescription =
        Prelude.Nothing,
      flinkRunConfigurationDescription =
        Prelude.Nothing
    }

-- | Describes the restore behavior of a restarting application.
runConfigurationDescription_applicationRestoreConfigurationDescription :: Lens.Lens' RunConfigurationDescription (Prelude.Maybe ApplicationRestoreConfiguration)
runConfigurationDescription_applicationRestoreConfigurationDescription = Lens.lens (\RunConfigurationDescription' {applicationRestoreConfigurationDescription} -> applicationRestoreConfigurationDescription) (\s@RunConfigurationDescription' {} a -> s {applicationRestoreConfigurationDescription = a} :: RunConfigurationDescription)

-- | Undocumented member.
runConfigurationDescription_flinkRunConfigurationDescription :: Lens.Lens' RunConfigurationDescription (Prelude.Maybe FlinkRunConfiguration)
runConfigurationDescription_flinkRunConfigurationDescription = Lens.lens (\RunConfigurationDescription' {flinkRunConfigurationDescription} -> flinkRunConfigurationDescription) (\s@RunConfigurationDescription' {} a -> s {flinkRunConfigurationDescription = a} :: RunConfigurationDescription)

instance Core.FromJSON RunConfigurationDescription where
  parseJSON =
    Core.withObject
      "RunConfigurationDescription"
      ( \x ->
          RunConfigurationDescription'
            Prelude.<$> ( x
                            Core..:? "ApplicationRestoreConfigurationDescription"
                        )
            Prelude.<*> (x Core..:? "FlinkRunConfigurationDescription")
      )

instance Prelude.Hashable RunConfigurationDescription

instance Prelude.NFData RunConfigurationDescription
