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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsClusterConfigurationExecuteCommandConfigurationDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails

-- | Contains the run command configuration for the cluster.
--
-- /See:/ 'newAwsEcsClusterConfigurationExecuteCommandConfigurationDetails' smart constructor.
data AwsEcsClusterConfigurationExecuteCommandConfigurationDetails = AwsEcsClusterConfigurationExecuteCommandConfigurationDetails'
  { -- | The log configuration for the results of the run command actions.
    -- Required if @Logging@ is @NONE@.
    logConfiguration :: Prelude.Maybe AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails,
    -- | The identifier of the KMS key that is used to encrypt the data between
    -- the local client and the container.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The log setting to use for redirecting logs for run command results.
    logging :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logConfiguration', 'awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logConfiguration' - The log configuration for the results of the run command actions.
-- Required if @Logging@ is @NONE@.
--
-- 'kmsKeyId', 'awsEcsClusterConfigurationExecuteCommandConfigurationDetails_kmsKeyId' - The identifier of the KMS key that is used to encrypt the data between
-- the local client and the container.
--
-- 'logging', 'awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logging' - The log setting to use for redirecting logs for run command results.
newAwsEcsClusterConfigurationExecuteCommandConfigurationDetails ::
  AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
newAwsEcsClusterConfigurationExecuteCommandConfigurationDetails =
  AwsEcsClusterConfigurationExecuteCommandConfigurationDetails'
    { logConfiguration =
        Prelude.Nothing,
      kmsKeyId =
        Prelude.Nothing,
      logging =
        Prelude.Nothing
    }

-- | The log configuration for the results of the run command actions.
-- Required if @Logging@ is @NONE@.
awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logConfiguration :: Lens.Lens' AwsEcsClusterConfigurationExecuteCommandConfigurationDetails (Prelude.Maybe AwsEcsClusterConfigurationExecuteCommandConfigurationLogConfigurationDetails)
awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logConfiguration = Lens.lens (\AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' {logConfiguration} -> logConfiguration) (\s@AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' {} a -> s {logConfiguration = a} :: AwsEcsClusterConfigurationExecuteCommandConfigurationDetails)

-- | The identifier of the KMS key that is used to encrypt the data between
-- the local client and the container.
awsEcsClusterConfigurationExecuteCommandConfigurationDetails_kmsKeyId :: Lens.Lens' AwsEcsClusterConfigurationExecuteCommandConfigurationDetails (Prelude.Maybe Prelude.Text)
awsEcsClusterConfigurationExecuteCommandConfigurationDetails_kmsKeyId = Lens.lens (\AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' {kmsKeyId} -> kmsKeyId) (\s@AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' {} a -> s {kmsKeyId = a} :: AwsEcsClusterConfigurationExecuteCommandConfigurationDetails)

-- | The log setting to use for redirecting logs for run command results.
awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logging :: Lens.Lens' AwsEcsClusterConfigurationExecuteCommandConfigurationDetails (Prelude.Maybe Prelude.Text)
awsEcsClusterConfigurationExecuteCommandConfigurationDetails_logging = Lens.lens (\AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' {logging} -> logging) (\s@AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' {} a -> s {logging = a} :: AwsEcsClusterConfigurationExecuteCommandConfigurationDetails)

instance
  Core.FromJSON
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsClusterConfigurationExecuteCommandConfigurationDetails"
      ( \x ->
          AwsEcsClusterConfigurationExecuteCommandConfigurationDetails'
            Prelude.<$> (x Core..:? "LogConfiguration")
              Prelude.<*> (x Core..:? "KmsKeyId")
              Prelude.<*> (x Core..:? "Logging")
      )

instance
  Prelude.Hashable
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails

instance
  Prelude.NFData
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails

instance
  Core.ToJSON
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails
  where
  toJSON
    AwsEcsClusterConfigurationExecuteCommandConfigurationDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("LogConfiguration" Core..=)
                Prelude.<$> logConfiguration,
              ("KmsKeyId" Core..=) Prelude.<$> kmsKeyId,
              ("Logging" Core..=) Prelude.<$> logging
            ]
        )
