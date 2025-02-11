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
-- Module      : Network.AWS.AppRunner.Types.AutoScalingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppRunner.Types.AutoScalingConfiguration where

import Network.AWS.AppRunner.Types.AutoScalingConfigurationStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an App Runner automatic scaling configuration resource.
-- Multiple revisions of a configuration have the same
-- @AutoScalingConfigurationName@ and different
-- @AutoScalingConfigurationRevision@ values.
--
-- A higher @MinSize@ increases the spread of your App Runner service over
-- more Availability Zones in the Amazon Web Services Region. The tradeoff
-- is a higher minimal cost.
--
-- A lower @MaxSize@ controls your cost. The tradeoff is lower
-- responsiveness during peak demand.
--
-- /See:/ 'newAutoScalingConfiguration' smart constructor.
data AutoScalingConfiguration = AutoScalingConfiguration'
  { -- | The current state of the auto scaling configuration. If the status of a
    -- configuration revision is @INACTIVE@, it was deleted and can\'t be used.
    -- Inactive configuration revisions are permanently removed some time after
    -- they are deleted.
    status :: Prelude.Maybe AutoScalingConfigurationStatus,
    -- | The customer-provided auto scaling configuration name. It can be used in
    -- multiple revisions of a configuration.
    autoScalingConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | The time when the auto scaling configuration was created. It\'s in Unix
    -- time stamp format.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The maximum number of instances that a service scales up to. At most
    -- @MaxSize@ instances actively serve traffic for your service.
    maxSize :: Prelude.Maybe Prelude.Int,
    -- | The revision of this auto scaling configuration. It\'s unique among all
    -- the active configurations (@\"Status\": \"ACTIVE\"@) that share the same
    -- @AutoScalingConfigurationName@.
    autoScalingConfigurationRevision :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) of this auto scaling configuration.
    autoScalingConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The minimum number of instances that App Runner provisions for a
    -- service. The service always has at least @MinSize@ provisioned
    -- instances. Some of them actively serve traffic. The rest of them
    -- (provisioned and inactive instances) are a cost-effective compute
    -- capacity reserve and are ready to be quickly activated. You pay for
    -- memory usage of all the provisioned instances. You pay for CPU usage of
    -- only the active subset.
    --
    -- App Runner temporarily doubles the number of provisioned instances
    -- during deployments, to maintain the same capacity for both old and new
    -- code.
    minSize :: Prelude.Maybe Prelude.Int,
    -- | The time when the auto scaling configuration was deleted. It\'s in Unix
    -- time stamp format.
    deletedAt :: Prelude.Maybe Core.POSIX,
    -- | It\'s set to @true@ for the configuration with the highest @Revision@
    -- among all configurations that share the same @Name@. It\'s set to
    -- @false@ otherwise.
    latest :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of concurrent requests that an instance processes. If
    -- the number of concurrent requests exceeds this limit, App Runner scales
    -- the service up.
    maxConcurrency :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoScalingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'autoScalingConfiguration_status' - The current state of the auto scaling configuration. If the status of a
-- configuration revision is @INACTIVE@, it was deleted and can\'t be used.
-- Inactive configuration revisions are permanently removed some time after
-- they are deleted.
--
-- 'autoScalingConfigurationName', 'autoScalingConfiguration_autoScalingConfigurationName' - The customer-provided auto scaling configuration name. It can be used in
-- multiple revisions of a configuration.
--
-- 'createdAt', 'autoScalingConfiguration_createdAt' - The time when the auto scaling configuration was created. It\'s in Unix
-- time stamp format.
--
-- 'maxSize', 'autoScalingConfiguration_maxSize' - The maximum number of instances that a service scales up to. At most
-- @MaxSize@ instances actively serve traffic for your service.
--
-- 'autoScalingConfigurationRevision', 'autoScalingConfiguration_autoScalingConfigurationRevision' - The revision of this auto scaling configuration. It\'s unique among all
-- the active configurations (@\"Status\": \"ACTIVE\"@) that share the same
-- @AutoScalingConfigurationName@.
--
-- 'autoScalingConfigurationArn', 'autoScalingConfiguration_autoScalingConfigurationArn' - The Amazon Resource Name (ARN) of this auto scaling configuration.
--
-- 'minSize', 'autoScalingConfiguration_minSize' - The minimum number of instances that App Runner provisions for a
-- service. The service always has at least @MinSize@ provisioned
-- instances. Some of them actively serve traffic. The rest of them
-- (provisioned and inactive instances) are a cost-effective compute
-- capacity reserve and are ready to be quickly activated. You pay for
-- memory usage of all the provisioned instances. You pay for CPU usage of
-- only the active subset.
--
-- App Runner temporarily doubles the number of provisioned instances
-- during deployments, to maintain the same capacity for both old and new
-- code.
--
-- 'deletedAt', 'autoScalingConfiguration_deletedAt' - The time when the auto scaling configuration was deleted. It\'s in Unix
-- time stamp format.
--
-- 'latest', 'autoScalingConfiguration_latest' - It\'s set to @true@ for the configuration with the highest @Revision@
-- among all configurations that share the same @Name@. It\'s set to
-- @false@ otherwise.
--
-- 'maxConcurrency', 'autoScalingConfiguration_maxConcurrency' - The maximum number of concurrent requests that an instance processes. If
-- the number of concurrent requests exceeds this limit, App Runner scales
-- the service up.
newAutoScalingConfiguration ::
  AutoScalingConfiguration
newAutoScalingConfiguration =
  AutoScalingConfiguration'
    { status = Prelude.Nothing,
      autoScalingConfigurationName = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      maxSize = Prelude.Nothing,
      autoScalingConfigurationRevision =
        Prelude.Nothing,
      autoScalingConfigurationArn = Prelude.Nothing,
      minSize = Prelude.Nothing,
      deletedAt = Prelude.Nothing,
      latest = Prelude.Nothing,
      maxConcurrency = Prelude.Nothing
    }

-- | The current state of the auto scaling configuration. If the status of a
-- configuration revision is @INACTIVE@, it was deleted and can\'t be used.
-- Inactive configuration revisions are permanently removed some time after
-- they are deleted.
autoScalingConfiguration_status :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe AutoScalingConfigurationStatus)
autoScalingConfiguration_status = Lens.lens (\AutoScalingConfiguration' {status} -> status) (\s@AutoScalingConfiguration' {} a -> s {status = a} :: AutoScalingConfiguration)

-- | The customer-provided auto scaling configuration name. It can be used in
-- multiple revisions of a configuration.
autoScalingConfiguration_autoScalingConfigurationName :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Text)
autoScalingConfiguration_autoScalingConfigurationName = Lens.lens (\AutoScalingConfiguration' {autoScalingConfigurationName} -> autoScalingConfigurationName) (\s@AutoScalingConfiguration' {} a -> s {autoScalingConfigurationName = a} :: AutoScalingConfiguration)

-- | The time when the auto scaling configuration was created. It\'s in Unix
-- time stamp format.
autoScalingConfiguration_createdAt :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.UTCTime)
autoScalingConfiguration_createdAt = Lens.lens (\AutoScalingConfiguration' {createdAt} -> createdAt) (\s@AutoScalingConfiguration' {} a -> s {createdAt = a} :: AutoScalingConfiguration) Prelude.. Lens.mapping Core._Time

-- | The maximum number of instances that a service scales up to. At most
-- @MaxSize@ instances actively serve traffic for your service.
autoScalingConfiguration_maxSize :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_maxSize = Lens.lens (\AutoScalingConfiguration' {maxSize} -> maxSize) (\s@AutoScalingConfiguration' {} a -> s {maxSize = a} :: AutoScalingConfiguration)

-- | The revision of this auto scaling configuration. It\'s unique among all
-- the active configurations (@\"Status\": \"ACTIVE\"@) that share the same
-- @AutoScalingConfigurationName@.
autoScalingConfiguration_autoScalingConfigurationRevision :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_autoScalingConfigurationRevision = Lens.lens (\AutoScalingConfiguration' {autoScalingConfigurationRevision} -> autoScalingConfigurationRevision) (\s@AutoScalingConfiguration' {} a -> s {autoScalingConfigurationRevision = a} :: AutoScalingConfiguration)

-- | The Amazon Resource Name (ARN) of this auto scaling configuration.
autoScalingConfiguration_autoScalingConfigurationArn :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Text)
autoScalingConfiguration_autoScalingConfigurationArn = Lens.lens (\AutoScalingConfiguration' {autoScalingConfigurationArn} -> autoScalingConfigurationArn) (\s@AutoScalingConfiguration' {} a -> s {autoScalingConfigurationArn = a} :: AutoScalingConfiguration)

-- | The minimum number of instances that App Runner provisions for a
-- service. The service always has at least @MinSize@ provisioned
-- instances. Some of them actively serve traffic. The rest of them
-- (provisioned and inactive instances) are a cost-effective compute
-- capacity reserve and are ready to be quickly activated. You pay for
-- memory usage of all the provisioned instances. You pay for CPU usage of
-- only the active subset.
--
-- App Runner temporarily doubles the number of provisioned instances
-- during deployments, to maintain the same capacity for both old and new
-- code.
autoScalingConfiguration_minSize :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_minSize = Lens.lens (\AutoScalingConfiguration' {minSize} -> minSize) (\s@AutoScalingConfiguration' {} a -> s {minSize = a} :: AutoScalingConfiguration)

-- | The time when the auto scaling configuration was deleted. It\'s in Unix
-- time stamp format.
autoScalingConfiguration_deletedAt :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.UTCTime)
autoScalingConfiguration_deletedAt = Lens.lens (\AutoScalingConfiguration' {deletedAt} -> deletedAt) (\s@AutoScalingConfiguration' {} a -> s {deletedAt = a} :: AutoScalingConfiguration) Prelude.. Lens.mapping Core._Time

-- | It\'s set to @true@ for the configuration with the highest @Revision@
-- among all configurations that share the same @Name@. It\'s set to
-- @false@ otherwise.
autoScalingConfiguration_latest :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Bool)
autoScalingConfiguration_latest = Lens.lens (\AutoScalingConfiguration' {latest} -> latest) (\s@AutoScalingConfiguration' {} a -> s {latest = a} :: AutoScalingConfiguration)

-- | The maximum number of concurrent requests that an instance processes. If
-- the number of concurrent requests exceeds this limit, App Runner scales
-- the service up.
autoScalingConfiguration_maxConcurrency :: Lens.Lens' AutoScalingConfiguration (Prelude.Maybe Prelude.Int)
autoScalingConfiguration_maxConcurrency = Lens.lens (\AutoScalingConfiguration' {maxConcurrency} -> maxConcurrency) (\s@AutoScalingConfiguration' {} a -> s {maxConcurrency = a} :: AutoScalingConfiguration)

instance Core.FromJSON AutoScalingConfiguration where
  parseJSON =
    Core.withObject
      "AutoScalingConfiguration"
      ( \x ->
          AutoScalingConfiguration'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "AutoScalingConfigurationName")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "MaxSize")
            Prelude.<*> (x Core..:? "AutoScalingConfigurationRevision")
            Prelude.<*> (x Core..:? "AutoScalingConfigurationArn")
            Prelude.<*> (x Core..:? "MinSize")
            Prelude.<*> (x Core..:? "DeletedAt")
            Prelude.<*> (x Core..:? "Latest")
            Prelude.<*> (x Core..:? "MaxConcurrency")
      )

instance Prelude.Hashable AutoScalingConfiguration

instance Prelude.NFData AutoScalingConfiguration
