{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.ModifyReplicationInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the replication instance to apply new settings. You can change
-- one or more parameters by specifying these parameters and the new values
-- in the request.
--
-- Some settings are applied during the maintenance window.
module Network.AWS.DMS.ModifyReplicationInstance
  ( -- * Creating a Request
    ModifyReplicationInstance (..),
    newModifyReplicationInstance,

    -- * Request Lenses
    modifyReplicationInstance_engineVersion,
    modifyReplicationInstance_autoMinorVersionUpgrade,
    modifyReplicationInstance_allowMajorVersionUpgrade,
    modifyReplicationInstance_preferredMaintenanceWindow,
    modifyReplicationInstance_vpcSecurityGroupIds,
    modifyReplicationInstance_multiAZ,
    modifyReplicationInstance_allocatedStorage,
    modifyReplicationInstance_applyImmediately,
    modifyReplicationInstance_replicationInstanceClass,
    modifyReplicationInstance_replicationInstanceIdentifier,
    modifyReplicationInstance_replicationInstanceArn,

    -- * Destructuring the Response
    ModifyReplicationInstanceResponse (..),
    newModifyReplicationInstanceResponse,

    -- * Response Lenses
    modifyReplicationInstanceResponse_replicationInstance,
    modifyReplicationInstanceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newModifyReplicationInstance' smart constructor.
data ModifyReplicationInstance = ModifyReplicationInstance'
  { -- | The engine version number of the replication instance.
    --
    -- When modifying a major engine version of an instance, also set
    -- @AllowMajorVersionUpgrade@ to @true@.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates that minor version upgrades are applied
    -- automatically to the replication instance during the maintenance window.
    -- Changing this parameter doesn\'t result in an outage, except in the case
    -- described following. The change is asynchronously applied as soon as
    -- possible.
    --
    -- An outage does result if these factors apply:
    --
    -- -   This parameter is set to @true@ during the maintenance window.
    --
    -- -   A newer minor version is available.
    --
    -- -   DMS has enabled automatic patching for the given engine version.
    autoMinorVersionUpgrade :: Prelude.Maybe Prelude.Bool,
    -- | Indicates that major version upgrades are allowed. Changing this
    -- parameter does not result in an outage, and the change is asynchronously
    -- applied as soon as possible.
    --
    -- This parameter must be set to @true@ when specifying a value for the
    -- @EngineVersion@ parameter that is a different major version than the
    -- replication instance\'s current version.
    allowMajorVersionUpgrade :: Prelude.Maybe Prelude.Bool,
    -- | The weekly time range (in UTC) during which system maintenance can
    -- occur, which might result in an outage. Changing this parameter does not
    -- result in an outage, except in the following situation, and the change
    -- is asynchronously applied as soon as possible. If moving this window to
    -- the current time, there must be at least 30 minutes between the current
    -- time and end of the window to ensure pending changes are applied.
    --
    -- Default: Uses existing setting
    --
    -- Format: ddd:hh24:mi-ddd:hh24:mi
    --
    -- Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun
    --
    -- Constraints: Must be at least 30 minutes
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | Specifies the VPC security group to be used with the replication
    -- instance. The VPC security group must work with the VPC containing the
    -- replication instance.
    vpcSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | Specifies whether the replication instance is a Multi-AZ deployment. You
    -- can\'t set the @AvailabilityZone@ parameter if the Multi-AZ parameter is
    -- set to @true@.
    multiAZ :: Prelude.Maybe Prelude.Bool,
    -- | The amount of storage (in gigabytes) to be allocated for the replication
    -- instance.
    allocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | Indicates whether the changes should be applied immediately or during
    -- the next maintenance window.
    applyImmediately :: Prelude.Maybe Prelude.Bool,
    -- | The compute and memory capacity of the replication instance as defined
    -- for the specified replication instance class. For example to specify the
    -- instance class dms.c4.large, set this parameter to @\"dms.c4.large\"@.
    --
    -- For more information on the settings and capacities for the available
    -- replication instance classes, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right DMS replication instance for your migration>.
    replicationInstanceClass :: Prelude.Maybe Prelude.Text,
    -- | The replication instance identifier. This parameter is stored as a
    -- lowercase string.
    replicationInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the replication instance.
    replicationInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyReplicationInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineVersion', 'modifyReplicationInstance_engineVersion' - The engine version number of the replication instance.
--
-- When modifying a major engine version of an instance, also set
-- @AllowMajorVersionUpgrade@ to @true@.
--
-- 'autoMinorVersionUpgrade', 'modifyReplicationInstance_autoMinorVersionUpgrade' - A value that indicates that minor version upgrades are applied
-- automatically to the replication instance during the maintenance window.
-- Changing this parameter doesn\'t result in an outage, except in the case
-- described following. The change is asynchronously applied as soon as
-- possible.
--
-- An outage does result if these factors apply:
--
-- -   This parameter is set to @true@ during the maintenance window.
--
-- -   A newer minor version is available.
--
-- -   DMS has enabled automatic patching for the given engine version.
--
-- 'allowMajorVersionUpgrade', 'modifyReplicationInstance_allowMajorVersionUpgrade' - Indicates that major version upgrades are allowed. Changing this
-- parameter does not result in an outage, and the change is asynchronously
-- applied as soon as possible.
--
-- This parameter must be set to @true@ when specifying a value for the
-- @EngineVersion@ parameter that is a different major version than the
-- replication instance\'s current version.
--
-- 'preferredMaintenanceWindow', 'modifyReplicationInstance_preferredMaintenanceWindow' - The weekly time range (in UTC) during which system maintenance can
-- occur, which might result in an outage. Changing this parameter does not
-- result in an outage, except in the following situation, and the change
-- is asynchronously applied as soon as possible. If moving this window to
-- the current time, there must be at least 30 minutes between the current
-- time and end of the window to ensure pending changes are applied.
--
-- Default: Uses existing setting
--
-- Format: ddd:hh24:mi-ddd:hh24:mi
--
-- Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun
--
-- Constraints: Must be at least 30 minutes
--
-- 'vpcSecurityGroupIds', 'modifyReplicationInstance_vpcSecurityGroupIds' - Specifies the VPC security group to be used with the replication
-- instance. The VPC security group must work with the VPC containing the
-- replication instance.
--
-- 'multiAZ', 'modifyReplicationInstance_multiAZ' - Specifies whether the replication instance is a Multi-AZ deployment. You
-- can\'t set the @AvailabilityZone@ parameter if the Multi-AZ parameter is
-- set to @true@.
--
-- 'allocatedStorage', 'modifyReplicationInstance_allocatedStorage' - The amount of storage (in gigabytes) to be allocated for the replication
-- instance.
--
-- 'applyImmediately', 'modifyReplicationInstance_applyImmediately' - Indicates whether the changes should be applied immediately or during
-- the next maintenance window.
--
-- 'replicationInstanceClass', 'modifyReplicationInstance_replicationInstanceClass' - The compute and memory capacity of the replication instance as defined
-- for the specified replication instance class. For example to specify the
-- instance class dms.c4.large, set this parameter to @\"dms.c4.large\"@.
--
-- For more information on the settings and capacities for the available
-- replication instance classes, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right DMS replication instance for your migration>.
--
-- 'replicationInstanceIdentifier', 'modifyReplicationInstance_replicationInstanceIdentifier' - The replication instance identifier. This parameter is stored as a
-- lowercase string.
--
-- 'replicationInstanceArn', 'modifyReplicationInstance_replicationInstanceArn' - The Amazon Resource Name (ARN) of the replication instance.
newModifyReplicationInstance ::
  -- | 'replicationInstanceArn'
  Prelude.Text ->
  ModifyReplicationInstance
newModifyReplicationInstance pReplicationInstanceArn_ =
  ModifyReplicationInstance'
    { engineVersion =
        Prelude.Nothing,
      autoMinorVersionUpgrade = Prelude.Nothing,
      allowMajorVersionUpgrade = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      vpcSecurityGroupIds = Prelude.Nothing,
      multiAZ = Prelude.Nothing,
      allocatedStorage = Prelude.Nothing,
      applyImmediately = Prelude.Nothing,
      replicationInstanceClass = Prelude.Nothing,
      replicationInstanceIdentifier = Prelude.Nothing,
      replicationInstanceArn =
        pReplicationInstanceArn_
    }

-- | The engine version number of the replication instance.
--
-- When modifying a major engine version of an instance, also set
-- @AllowMajorVersionUpgrade@ to @true@.
modifyReplicationInstance_engineVersion :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Text)
modifyReplicationInstance_engineVersion = Lens.lens (\ModifyReplicationInstance' {engineVersion} -> engineVersion) (\s@ModifyReplicationInstance' {} a -> s {engineVersion = a} :: ModifyReplicationInstance)

-- | A value that indicates that minor version upgrades are applied
-- automatically to the replication instance during the maintenance window.
-- Changing this parameter doesn\'t result in an outage, except in the case
-- described following. The change is asynchronously applied as soon as
-- possible.
--
-- An outage does result if these factors apply:
--
-- -   This parameter is set to @true@ during the maintenance window.
--
-- -   A newer minor version is available.
--
-- -   DMS has enabled automatic patching for the given engine version.
modifyReplicationInstance_autoMinorVersionUpgrade :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Bool)
modifyReplicationInstance_autoMinorVersionUpgrade = Lens.lens (\ModifyReplicationInstance' {autoMinorVersionUpgrade} -> autoMinorVersionUpgrade) (\s@ModifyReplicationInstance' {} a -> s {autoMinorVersionUpgrade = a} :: ModifyReplicationInstance)

-- | Indicates that major version upgrades are allowed. Changing this
-- parameter does not result in an outage, and the change is asynchronously
-- applied as soon as possible.
--
-- This parameter must be set to @true@ when specifying a value for the
-- @EngineVersion@ parameter that is a different major version than the
-- replication instance\'s current version.
modifyReplicationInstance_allowMajorVersionUpgrade :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Bool)
modifyReplicationInstance_allowMajorVersionUpgrade = Lens.lens (\ModifyReplicationInstance' {allowMajorVersionUpgrade} -> allowMajorVersionUpgrade) (\s@ModifyReplicationInstance' {} a -> s {allowMajorVersionUpgrade = a} :: ModifyReplicationInstance)

-- | The weekly time range (in UTC) during which system maintenance can
-- occur, which might result in an outage. Changing this parameter does not
-- result in an outage, except in the following situation, and the change
-- is asynchronously applied as soon as possible. If moving this window to
-- the current time, there must be at least 30 minutes between the current
-- time and end of the window to ensure pending changes are applied.
--
-- Default: Uses existing setting
--
-- Format: ddd:hh24:mi-ddd:hh24:mi
--
-- Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun
--
-- Constraints: Must be at least 30 minutes
modifyReplicationInstance_preferredMaintenanceWindow :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Text)
modifyReplicationInstance_preferredMaintenanceWindow = Lens.lens (\ModifyReplicationInstance' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@ModifyReplicationInstance' {} a -> s {preferredMaintenanceWindow = a} :: ModifyReplicationInstance)

-- | Specifies the VPC security group to be used with the replication
-- instance. The VPC security group must work with the VPC containing the
-- replication instance.
modifyReplicationInstance_vpcSecurityGroupIds :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe [Prelude.Text])
modifyReplicationInstance_vpcSecurityGroupIds = Lens.lens (\ModifyReplicationInstance' {vpcSecurityGroupIds} -> vpcSecurityGroupIds) (\s@ModifyReplicationInstance' {} a -> s {vpcSecurityGroupIds = a} :: ModifyReplicationInstance) Prelude.. Lens.mapping Lens.coerced

-- | Specifies whether the replication instance is a Multi-AZ deployment. You
-- can\'t set the @AvailabilityZone@ parameter if the Multi-AZ parameter is
-- set to @true@.
modifyReplicationInstance_multiAZ :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Bool)
modifyReplicationInstance_multiAZ = Lens.lens (\ModifyReplicationInstance' {multiAZ} -> multiAZ) (\s@ModifyReplicationInstance' {} a -> s {multiAZ = a} :: ModifyReplicationInstance)

-- | The amount of storage (in gigabytes) to be allocated for the replication
-- instance.
modifyReplicationInstance_allocatedStorage :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Int)
modifyReplicationInstance_allocatedStorage = Lens.lens (\ModifyReplicationInstance' {allocatedStorage} -> allocatedStorage) (\s@ModifyReplicationInstance' {} a -> s {allocatedStorage = a} :: ModifyReplicationInstance)

-- | Indicates whether the changes should be applied immediately or during
-- the next maintenance window.
modifyReplicationInstance_applyImmediately :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Bool)
modifyReplicationInstance_applyImmediately = Lens.lens (\ModifyReplicationInstance' {applyImmediately} -> applyImmediately) (\s@ModifyReplicationInstance' {} a -> s {applyImmediately = a} :: ModifyReplicationInstance)

-- | The compute and memory capacity of the replication instance as defined
-- for the specified replication instance class. For example to specify the
-- instance class dms.c4.large, set this parameter to @\"dms.c4.large\"@.
--
-- For more information on the settings and capacities for the available
-- replication instance classes, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth Selecting the right DMS replication instance for your migration>.
modifyReplicationInstance_replicationInstanceClass :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Text)
modifyReplicationInstance_replicationInstanceClass = Lens.lens (\ModifyReplicationInstance' {replicationInstanceClass} -> replicationInstanceClass) (\s@ModifyReplicationInstance' {} a -> s {replicationInstanceClass = a} :: ModifyReplicationInstance)

-- | The replication instance identifier. This parameter is stored as a
-- lowercase string.
modifyReplicationInstance_replicationInstanceIdentifier :: Lens.Lens' ModifyReplicationInstance (Prelude.Maybe Prelude.Text)
modifyReplicationInstance_replicationInstanceIdentifier = Lens.lens (\ModifyReplicationInstance' {replicationInstanceIdentifier} -> replicationInstanceIdentifier) (\s@ModifyReplicationInstance' {} a -> s {replicationInstanceIdentifier = a} :: ModifyReplicationInstance)

-- | The Amazon Resource Name (ARN) of the replication instance.
modifyReplicationInstance_replicationInstanceArn :: Lens.Lens' ModifyReplicationInstance Prelude.Text
modifyReplicationInstance_replicationInstanceArn = Lens.lens (\ModifyReplicationInstance' {replicationInstanceArn} -> replicationInstanceArn) (\s@ModifyReplicationInstance' {} a -> s {replicationInstanceArn = a} :: ModifyReplicationInstance)

instance Core.AWSRequest ModifyReplicationInstance where
  type
    AWSResponse ModifyReplicationInstance =
      ModifyReplicationInstanceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ModifyReplicationInstanceResponse'
            Prelude.<$> (x Core..?> "ReplicationInstance")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ModifyReplicationInstance

instance Prelude.NFData ModifyReplicationInstance

instance Core.ToHeaders ModifyReplicationInstance where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonDMSv20160101.ModifyReplicationInstance" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ModifyReplicationInstance where
  toJSON ModifyReplicationInstance' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EngineVersion" Core..=) Prelude.<$> engineVersion,
            ("AutoMinorVersionUpgrade" Core..=)
              Prelude.<$> autoMinorVersionUpgrade,
            ("AllowMajorVersionUpgrade" Core..=)
              Prelude.<$> allowMajorVersionUpgrade,
            ("PreferredMaintenanceWindow" Core..=)
              Prelude.<$> preferredMaintenanceWindow,
            ("VpcSecurityGroupIds" Core..=)
              Prelude.<$> vpcSecurityGroupIds,
            ("MultiAZ" Core..=) Prelude.<$> multiAZ,
            ("AllocatedStorage" Core..=)
              Prelude.<$> allocatedStorage,
            ("ApplyImmediately" Core..=)
              Prelude.<$> applyImmediately,
            ("ReplicationInstanceClass" Core..=)
              Prelude.<$> replicationInstanceClass,
            ("ReplicationInstanceIdentifier" Core..=)
              Prelude.<$> replicationInstanceIdentifier,
            Prelude.Just
              ( "ReplicationInstanceArn"
                  Core..= replicationInstanceArn
              )
          ]
      )

instance Core.ToPath ModifyReplicationInstance where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyReplicationInstance where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newModifyReplicationInstanceResponse' smart constructor.
data ModifyReplicationInstanceResponse = ModifyReplicationInstanceResponse'
  { -- | The modified replication instance.
    replicationInstance :: Prelude.Maybe ReplicationInstance,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyReplicationInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationInstance', 'modifyReplicationInstanceResponse_replicationInstance' - The modified replication instance.
--
-- 'httpStatus', 'modifyReplicationInstanceResponse_httpStatus' - The response's http status code.
newModifyReplicationInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyReplicationInstanceResponse
newModifyReplicationInstanceResponse pHttpStatus_ =
  ModifyReplicationInstanceResponse'
    { replicationInstance =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The modified replication instance.
modifyReplicationInstanceResponse_replicationInstance :: Lens.Lens' ModifyReplicationInstanceResponse (Prelude.Maybe ReplicationInstance)
modifyReplicationInstanceResponse_replicationInstance = Lens.lens (\ModifyReplicationInstanceResponse' {replicationInstance} -> replicationInstance) (\s@ModifyReplicationInstanceResponse' {} a -> s {replicationInstance = a} :: ModifyReplicationInstanceResponse)

-- | The response's http status code.
modifyReplicationInstanceResponse_httpStatus :: Lens.Lens' ModifyReplicationInstanceResponse Prelude.Int
modifyReplicationInstanceResponse_httpStatus = Lens.lens (\ModifyReplicationInstanceResponse' {httpStatus} -> httpStatus) (\s@ModifyReplicationInstanceResponse' {} a -> s {httpStatus = a} :: ModifyReplicationInstanceResponse)

instance
  Prelude.NFData
    ModifyReplicationInstanceResponse
