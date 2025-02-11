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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails
import Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionVolumesHostDetails

-- | A data volume to mount from another container.
--
-- /See:/ 'newAwsEcsTaskDefinitionVolumesDetails' smart constructor.
data AwsEcsTaskDefinitionVolumesDetails = AwsEcsTaskDefinitionVolumesDetails'
  { -- | Information about a Docker volume.
    dockerVolumeConfiguration :: Prelude.Maybe AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails,
    -- | The name of the data volume.
    name :: Prelude.Maybe Prelude.Text,
    -- | Information about the Amazon Elastic File System file system that is
    -- used for task storage.
    efsVolumeConfiguration :: Prelude.Maybe AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails,
    -- | Information about a bind mount host volume.
    host :: Prelude.Maybe AwsEcsTaskDefinitionVolumesHostDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsTaskDefinitionVolumesDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dockerVolumeConfiguration', 'awsEcsTaskDefinitionVolumesDetails_dockerVolumeConfiguration' - Information about a Docker volume.
--
-- 'name', 'awsEcsTaskDefinitionVolumesDetails_name' - The name of the data volume.
--
-- 'efsVolumeConfiguration', 'awsEcsTaskDefinitionVolumesDetails_efsVolumeConfiguration' - Information about the Amazon Elastic File System file system that is
-- used for task storage.
--
-- 'host', 'awsEcsTaskDefinitionVolumesDetails_host' - Information about a bind mount host volume.
newAwsEcsTaskDefinitionVolumesDetails ::
  AwsEcsTaskDefinitionVolumesDetails
newAwsEcsTaskDefinitionVolumesDetails =
  AwsEcsTaskDefinitionVolumesDetails'
    { dockerVolumeConfiguration =
        Prelude.Nothing,
      name = Prelude.Nothing,
      efsVolumeConfiguration =
        Prelude.Nothing,
      host = Prelude.Nothing
    }

-- | Information about a Docker volume.
awsEcsTaskDefinitionVolumesDetails_dockerVolumeConfiguration :: Lens.Lens' AwsEcsTaskDefinitionVolumesDetails (Prelude.Maybe AwsEcsTaskDefinitionVolumesDockerVolumeConfigurationDetails)
awsEcsTaskDefinitionVolumesDetails_dockerVolumeConfiguration = Lens.lens (\AwsEcsTaskDefinitionVolumesDetails' {dockerVolumeConfiguration} -> dockerVolumeConfiguration) (\s@AwsEcsTaskDefinitionVolumesDetails' {} a -> s {dockerVolumeConfiguration = a} :: AwsEcsTaskDefinitionVolumesDetails)

-- | The name of the data volume.
awsEcsTaskDefinitionVolumesDetails_name :: Lens.Lens' AwsEcsTaskDefinitionVolumesDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionVolumesDetails_name = Lens.lens (\AwsEcsTaskDefinitionVolumesDetails' {name} -> name) (\s@AwsEcsTaskDefinitionVolumesDetails' {} a -> s {name = a} :: AwsEcsTaskDefinitionVolumesDetails)

-- | Information about the Amazon Elastic File System file system that is
-- used for task storage.
awsEcsTaskDefinitionVolumesDetails_efsVolumeConfiguration :: Lens.Lens' AwsEcsTaskDefinitionVolumesDetails (Prelude.Maybe AwsEcsTaskDefinitionVolumesEfsVolumeConfigurationDetails)
awsEcsTaskDefinitionVolumesDetails_efsVolumeConfiguration = Lens.lens (\AwsEcsTaskDefinitionVolumesDetails' {efsVolumeConfiguration} -> efsVolumeConfiguration) (\s@AwsEcsTaskDefinitionVolumesDetails' {} a -> s {efsVolumeConfiguration = a} :: AwsEcsTaskDefinitionVolumesDetails)

-- | Information about a bind mount host volume.
awsEcsTaskDefinitionVolumesDetails_host :: Lens.Lens' AwsEcsTaskDefinitionVolumesDetails (Prelude.Maybe AwsEcsTaskDefinitionVolumesHostDetails)
awsEcsTaskDefinitionVolumesDetails_host = Lens.lens (\AwsEcsTaskDefinitionVolumesDetails' {host} -> host) (\s@AwsEcsTaskDefinitionVolumesDetails' {} a -> s {host = a} :: AwsEcsTaskDefinitionVolumesDetails)

instance
  Core.FromJSON
    AwsEcsTaskDefinitionVolumesDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsTaskDefinitionVolumesDetails"
      ( \x ->
          AwsEcsTaskDefinitionVolumesDetails'
            Prelude.<$> (x Core..:? "DockerVolumeConfiguration")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "EfsVolumeConfiguration")
            Prelude.<*> (x Core..:? "Host")
      )

instance
  Prelude.Hashable
    AwsEcsTaskDefinitionVolumesDetails

instance
  Prelude.NFData
    AwsEcsTaskDefinitionVolumesDetails

instance
  Core.ToJSON
    AwsEcsTaskDefinitionVolumesDetails
  where
  toJSON AwsEcsTaskDefinitionVolumesDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DockerVolumeConfiguration" Core..=)
              Prelude.<$> dockerVolumeConfiguration,
            ("Name" Core..=) Prelude.<$> name,
            ("EfsVolumeConfiguration" Core..=)
              Prelude.<$> efsVolumeConfiguration,
            ("Host" Core..=) Prelude.<$> host
          ]
      )
