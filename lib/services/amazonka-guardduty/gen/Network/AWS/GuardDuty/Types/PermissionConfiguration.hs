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
-- Module      : Network.AWS.GuardDuty.Types.PermissionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.PermissionConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.GuardDuty.Types.AccountLevelPermissions
import Network.AWS.GuardDuty.Types.BucketLevelPermissions
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about how permissions are configured for the S3
-- bucket.
--
-- /See:/ 'newPermissionConfiguration' smart constructor.
data PermissionConfiguration = PermissionConfiguration'
  { -- | Contains information about the bucket level permissions for the S3
    -- bucket.
    bucketLevelPermissions :: Prelude.Maybe BucketLevelPermissions,
    -- | Contains information about the account level permissions on the S3
    -- bucket.
    accountLevelPermissions :: Prelude.Maybe AccountLevelPermissions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PermissionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketLevelPermissions', 'permissionConfiguration_bucketLevelPermissions' - Contains information about the bucket level permissions for the S3
-- bucket.
--
-- 'accountLevelPermissions', 'permissionConfiguration_accountLevelPermissions' - Contains information about the account level permissions on the S3
-- bucket.
newPermissionConfiguration ::
  PermissionConfiguration
newPermissionConfiguration =
  PermissionConfiguration'
    { bucketLevelPermissions =
        Prelude.Nothing,
      accountLevelPermissions = Prelude.Nothing
    }

-- | Contains information about the bucket level permissions for the S3
-- bucket.
permissionConfiguration_bucketLevelPermissions :: Lens.Lens' PermissionConfiguration (Prelude.Maybe BucketLevelPermissions)
permissionConfiguration_bucketLevelPermissions = Lens.lens (\PermissionConfiguration' {bucketLevelPermissions} -> bucketLevelPermissions) (\s@PermissionConfiguration' {} a -> s {bucketLevelPermissions = a} :: PermissionConfiguration)

-- | Contains information about the account level permissions on the S3
-- bucket.
permissionConfiguration_accountLevelPermissions :: Lens.Lens' PermissionConfiguration (Prelude.Maybe AccountLevelPermissions)
permissionConfiguration_accountLevelPermissions = Lens.lens (\PermissionConfiguration' {accountLevelPermissions} -> accountLevelPermissions) (\s@PermissionConfiguration' {} a -> s {accountLevelPermissions = a} :: PermissionConfiguration)

instance Core.FromJSON PermissionConfiguration where
  parseJSON =
    Core.withObject
      "PermissionConfiguration"
      ( \x ->
          PermissionConfiguration'
            Prelude.<$> (x Core..:? "bucketLevelPermissions")
            Prelude.<*> (x Core..:? "accountLevelPermissions")
      )

instance Prelude.Hashable PermissionConfiguration

instance Prelude.NFData PermissionConfiguration
