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
-- Module      : Network.AWS.DocumentDB.ModifyDBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies a setting for an Amazon DocumentDB cluster. You can change one
-- or more database configuration parameters by specifying these parameters
-- and the new values in the request.
module Network.AWS.DocumentDB.ModifyDBCluster
  ( -- * Creating a Request
    ModifyDBCluster (..),
    newModifyDBCluster,

    -- * Request Lenses
    modifyDBCluster_engineVersion,
    modifyDBCluster_deletionProtection,
    modifyDBCluster_masterUserPassword,
    modifyDBCluster_cloudwatchLogsExportConfiguration,
    modifyDBCluster_preferredMaintenanceWindow,
    modifyDBCluster_preferredBackupWindow,
    modifyDBCluster_backupRetentionPeriod,
    modifyDBCluster_vpcSecurityGroupIds,
    modifyDBCluster_dbClusterParameterGroupName,
    modifyDBCluster_applyImmediately,
    modifyDBCluster_newDBClusterIdentifier,
    modifyDBCluster_port,
    modifyDBCluster_dbClusterIdentifier,

    -- * Destructuring the Response
    ModifyDBClusterResponse (..),
    newModifyDBClusterResponse,

    -- * Response Lenses
    modifyDBClusterResponse_dbCluster,
    modifyDBClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to ModifyDBCluster.
--
-- /See:/ 'newModifyDBCluster' smart constructor.
data ModifyDBCluster = ModifyDBCluster'
  { -- | The version number of the database engine to which you want to upgrade.
    -- Modifying engine version is not supported on Amazon DocumentDB.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether this cluster can be deleted. If @DeletionProtection@
    -- is enabled, the cluster cannot be deleted unless it is modified and
    -- @DeletionProtection@ is disabled. @DeletionProtection@ protects clusters
    -- from being accidentally deleted.
    deletionProtection :: Prelude.Maybe Prelude.Bool,
    -- | The password for the master database user. This password can contain any
    -- printable ASCII character except forward slash (\/), double quote (\"),
    -- or the \"at\" symbol (\@).
    --
    -- Constraints: Must contain from 8 to 100 characters.
    masterUserPassword :: Prelude.Maybe Prelude.Text,
    -- | The configuration setting for the log types to be enabled for export to
    -- Amazon CloudWatch Logs for a specific instance or cluster. The
    -- @EnableLogTypes@ and @DisableLogTypes@ arrays determine which logs are
    -- exported (or not exported) to CloudWatch Logs.
    cloudwatchLogsExportConfiguration :: Prelude.Maybe CloudwatchLogsExportConfiguration,
    -- | The weekly time range during which system maintenance can occur, in
    -- Universal Coordinated Time (UTC).
    --
    -- Format: @ddd:hh24:mi-ddd:hh24:mi@
    --
    -- The default is a 30-minute window selected at random from an 8-hour
    -- block of time for each Region, occurring on a random day of the week.
    --
    -- Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    --
    -- Constraints: Minimum 30-minute window.
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | The daily time range during which automated backups are created if
    -- automated backups are enabled, using the @BackupRetentionPeriod@
    -- parameter.
    --
    -- The default is a 30-minute window selected at random from an 8-hour
    -- block of time for each Region.
    --
    -- Constraints:
    --
    -- -   Must be in the format @hh24:mi-hh24:mi@.
    --
    -- -   Must be in Universal Coordinated Time (UTC).
    --
    -- -   Must not conflict with the preferred maintenance window.
    --
    -- -   Must be at least 30 minutes.
    preferredBackupWindow :: Prelude.Maybe Prelude.Text,
    -- | The number of days for which automated backups are retained. You must
    -- specify a minimum value of 1.
    --
    -- Default: 1
    --
    -- Constraints:
    --
    -- -   Must be a value from 1 to 35.
    backupRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | A list of virtual private cloud (VPC) security groups that the cluster
    -- will belong to.
    vpcSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | The name of the cluster parameter group to use for the cluster.
    dbClusterParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | A value that specifies whether the changes in this request and any
    -- pending changes are asynchronously applied as soon as possible,
    -- regardless of the @PreferredMaintenanceWindow@ setting for the cluster.
    -- If this parameter is set to @false@, changes to the cluster are applied
    -- during the next maintenance window.
    --
    -- The @ApplyImmediately@ parameter affects only the
    -- @NewDBClusterIdentifier@ and @MasterUserPassword@ values. If you set
    -- this parameter value to @false@, the changes to the
    -- @NewDBClusterIdentifier@ and @MasterUserPassword@ values are applied
    -- during the next maintenance window. All other changes are applied
    -- immediately, regardless of the value of the @ApplyImmediately@
    -- parameter.
    --
    -- Default: @false@
    applyImmediately :: Prelude.Maybe Prelude.Bool,
    -- | The new cluster identifier for the cluster when renaming a cluster. This
    -- value is stored as a lowercase string.
    --
    -- Constraints:
    --
    -- -   Must contain from 1 to 63 letters, numbers, or hyphens.
    --
    -- -   The first character must be a letter.
    --
    -- -   Cannot end with a hyphen or contain two consecutive hyphens.
    --
    -- Example: @my-cluster2@
    newDBClusterIdentifier' :: Prelude.Maybe Prelude.Text,
    -- | The port number on which the cluster accepts connections.
    --
    -- Constraints: Must be a value from @1150@ to @65535@.
    --
    -- Default: The same port as the original cluster.
    port :: Prelude.Maybe Prelude.Int,
    -- | The cluster identifier for the cluster that is being modified. This
    -- parameter is not case sensitive.
    --
    -- Constraints:
    --
    -- -   Must match the identifier of an existing @DBCluster@.
    dbClusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyDBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineVersion', 'modifyDBCluster_engineVersion' - The version number of the database engine to which you want to upgrade.
-- Modifying engine version is not supported on Amazon DocumentDB.
--
-- 'deletionProtection', 'modifyDBCluster_deletionProtection' - Specifies whether this cluster can be deleted. If @DeletionProtection@
-- is enabled, the cluster cannot be deleted unless it is modified and
-- @DeletionProtection@ is disabled. @DeletionProtection@ protects clusters
-- from being accidentally deleted.
--
-- 'masterUserPassword', 'modifyDBCluster_masterUserPassword' - The password for the master database user. This password can contain any
-- printable ASCII character except forward slash (\/), double quote (\"),
-- or the \"at\" symbol (\@).
--
-- Constraints: Must contain from 8 to 100 characters.
--
-- 'cloudwatchLogsExportConfiguration', 'modifyDBCluster_cloudwatchLogsExportConfiguration' - The configuration setting for the log types to be enabled for export to
-- Amazon CloudWatch Logs for a specific instance or cluster. The
-- @EnableLogTypes@ and @DisableLogTypes@ arrays determine which logs are
-- exported (or not exported) to CloudWatch Logs.
--
-- 'preferredMaintenanceWindow', 'modifyDBCluster_preferredMaintenanceWindow' - The weekly time range during which system maintenance can occur, in
-- Universal Coordinated Time (UTC).
--
-- Format: @ddd:hh24:mi-ddd:hh24:mi@
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each Region, occurring on a random day of the week.
--
-- Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
--
-- Constraints: Minimum 30-minute window.
--
-- 'preferredBackupWindow', 'modifyDBCluster_preferredBackupWindow' - The daily time range during which automated backups are created if
-- automated backups are enabled, using the @BackupRetentionPeriod@
-- parameter.
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each Region.
--
-- Constraints:
--
-- -   Must be in the format @hh24:mi-hh24:mi@.
--
-- -   Must be in Universal Coordinated Time (UTC).
--
-- -   Must not conflict with the preferred maintenance window.
--
-- -   Must be at least 30 minutes.
--
-- 'backupRetentionPeriod', 'modifyDBCluster_backupRetentionPeriod' - The number of days for which automated backups are retained. You must
-- specify a minimum value of 1.
--
-- Default: 1
--
-- Constraints:
--
-- -   Must be a value from 1 to 35.
--
-- 'vpcSecurityGroupIds', 'modifyDBCluster_vpcSecurityGroupIds' - A list of virtual private cloud (VPC) security groups that the cluster
-- will belong to.
--
-- 'dbClusterParameterGroupName', 'modifyDBCluster_dbClusterParameterGroupName' - The name of the cluster parameter group to use for the cluster.
--
-- 'applyImmediately', 'modifyDBCluster_applyImmediately' - A value that specifies whether the changes in this request and any
-- pending changes are asynchronously applied as soon as possible,
-- regardless of the @PreferredMaintenanceWindow@ setting for the cluster.
-- If this parameter is set to @false@, changes to the cluster are applied
-- during the next maintenance window.
--
-- The @ApplyImmediately@ parameter affects only the
-- @NewDBClusterIdentifier@ and @MasterUserPassword@ values. If you set
-- this parameter value to @false@, the changes to the
-- @NewDBClusterIdentifier@ and @MasterUserPassword@ values are applied
-- during the next maintenance window. All other changes are applied
-- immediately, regardless of the value of the @ApplyImmediately@
-- parameter.
--
-- Default: @false@
--
-- 'newDBClusterIdentifier'', 'modifyDBCluster_newDBClusterIdentifier' - The new cluster identifier for the cluster when renaming a cluster. This
-- value is stored as a lowercase string.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   The first character must be a letter.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
--
-- Example: @my-cluster2@
--
-- 'port', 'modifyDBCluster_port' - The port number on which the cluster accepts connections.
--
-- Constraints: Must be a value from @1150@ to @65535@.
--
-- Default: The same port as the original cluster.
--
-- 'dbClusterIdentifier', 'modifyDBCluster_dbClusterIdentifier' - The cluster identifier for the cluster that is being modified. This
-- parameter is not case sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing @DBCluster@.
newModifyDBCluster ::
  -- | 'dbClusterIdentifier'
  Prelude.Text ->
  ModifyDBCluster
newModifyDBCluster pDBClusterIdentifier_ =
  ModifyDBCluster'
    { engineVersion = Prelude.Nothing,
      deletionProtection = Prelude.Nothing,
      masterUserPassword = Prelude.Nothing,
      cloudwatchLogsExportConfiguration = Prelude.Nothing,
      preferredMaintenanceWindow = Prelude.Nothing,
      preferredBackupWindow = Prelude.Nothing,
      backupRetentionPeriod = Prelude.Nothing,
      vpcSecurityGroupIds = Prelude.Nothing,
      dbClusterParameterGroupName = Prelude.Nothing,
      applyImmediately = Prelude.Nothing,
      newDBClusterIdentifier' = Prelude.Nothing,
      port = Prelude.Nothing,
      dbClusterIdentifier = pDBClusterIdentifier_
    }

-- | The version number of the database engine to which you want to upgrade.
-- Modifying engine version is not supported on Amazon DocumentDB.
modifyDBCluster_engineVersion :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Text)
modifyDBCluster_engineVersion = Lens.lens (\ModifyDBCluster' {engineVersion} -> engineVersion) (\s@ModifyDBCluster' {} a -> s {engineVersion = a} :: ModifyDBCluster)

-- | Specifies whether this cluster can be deleted. If @DeletionProtection@
-- is enabled, the cluster cannot be deleted unless it is modified and
-- @DeletionProtection@ is disabled. @DeletionProtection@ protects clusters
-- from being accidentally deleted.
modifyDBCluster_deletionProtection :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Bool)
modifyDBCluster_deletionProtection = Lens.lens (\ModifyDBCluster' {deletionProtection} -> deletionProtection) (\s@ModifyDBCluster' {} a -> s {deletionProtection = a} :: ModifyDBCluster)

-- | The password for the master database user. This password can contain any
-- printable ASCII character except forward slash (\/), double quote (\"),
-- or the \"at\" symbol (\@).
--
-- Constraints: Must contain from 8 to 100 characters.
modifyDBCluster_masterUserPassword :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Text)
modifyDBCluster_masterUserPassword = Lens.lens (\ModifyDBCluster' {masterUserPassword} -> masterUserPassword) (\s@ModifyDBCluster' {} a -> s {masterUserPassword = a} :: ModifyDBCluster)

-- | The configuration setting for the log types to be enabled for export to
-- Amazon CloudWatch Logs for a specific instance or cluster. The
-- @EnableLogTypes@ and @DisableLogTypes@ arrays determine which logs are
-- exported (or not exported) to CloudWatch Logs.
modifyDBCluster_cloudwatchLogsExportConfiguration :: Lens.Lens' ModifyDBCluster (Prelude.Maybe CloudwatchLogsExportConfiguration)
modifyDBCluster_cloudwatchLogsExportConfiguration = Lens.lens (\ModifyDBCluster' {cloudwatchLogsExportConfiguration} -> cloudwatchLogsExportConfiguration) (\s@ModifyDBCluster' {} a -> s {cloudwatchLogsExportConfiguration = a} :: ModifyDBCluster)

-- | The weekly time range during which system maintenance can occur, in
-- Universal Coordinated Time (UTC).
--
-- Format: @ddd:hh24:mi-ddd:hh24:mi@
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each Region, occurring on a random day of the week.
--
-- Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
--
-- Constraints: Minimum 30-minute window.
modifyDBCluster_preferredMaintenanceWindow :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Text)
modifyDBCluster_preferredMaintenanceWindow = Lens.lens (\ModifyDBCluster' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@ModifyDBCluster' {} a -> s {preferredMaintenanceWindow = a} :: ModifyDBCluster)

-- | The daily time range during which automated backups are created if
-- automated backups are enabled, using the @BackupRetentionPeriod@
-- parameter.
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each Region.
--
-- Constraints:
--
-- -   Must be in the format @hh24:mi-hh24:mi@.
--
-- -   Must be in Universal Coordinated Time (UTC).
--
-- -   Must not conflict with the preferred maintenance window.
--
-- -   Must be at least 30 minutes.
modifyDBCluster_preferredBackupWindow :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Text)
modifyDBCluster_preferredBackupWindow = Lens.lens (\ModifyDBCluster' {preferredBackupWindow} -> preferredBackupWindow) (\s@ModifyDBCluster' {} a -> s {preferredBackupWindow = a} :: ModifyDBCluster)

-- | The number of days for which automated backups are retained. You must
-- specify a minimum value of 1.
--
-- Default: 1
--
-- Constraints:
--
-- -   Must be a value from 1 to 35.
modifyDBCluster_backupRetentionPeriod :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Int)
modifyDBCluster_backupRetentionPeriod = Lens.lens (\ModifyDBCluster' {backupRetentionPeriod} -> backupRetentionPeriod) (\s@ModifyDBCluster' {} a -> s {backupRetentionPeriod = a} :: ModifyDBCluster)

-- | A list of virtual private cloud (VPC) security groups that the cluster
-- will belong to.
modifyDBCluster_vpcSecurityGroupIds :: Lens.Lens' ModifyDBCluster (Prelude.Maybe [Prelude.Text])
modifyDBCluster_vpcSecurityGroupIds = Lens.lens (\ModifyDBCluster' {vpcSecurityGroupIds} -> vpcSecurityGroupIds) (\s@ModifyDBCluster' {} a -> s {vpcSecurityGroupIds = a} :: ModifyDBCluster) Prelude.. Lens.mapping Lens.coerced

-- | The name of the cluster parameter group to use for the cluster.
modifyDBCluster_dbClusterParameterGroupName :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Text)
modifyDBCluster_dbClusterParameterGroupName = Lens.lens (\ModifyDBCluster' {dbClusterParameterGroupName} -> dbClusterParameterGroupName) (\s@ModifyDBCluster' {} a -> s {dbClusterParameterGroupName = a} :: ModifyDBCluster)

-- | A value that specifies whether the changes in this request and any
-- pending changes are asynchronously applied as soon as possible,
-- regardless of the @PreferredMaintenanceWindow@ setting for the cluster.
-- If this parameter is set to @false@, changes to the cluster are applied
-- during the next maintenance window.
--
-- The @ApplyImmediately@ parameter affects only the
-- @NewDBClusterIdentifier@ and @MasterUserPassword@ values. If you set
-- this parameter value to @false@, the changes to the
-- @NewDBClusterIdentifier@ and @MasterUserPassword@ values are applied
-- during the next maintenance window. All other changes are applied
-- immediately, regardless of the value of the @ApplyImmediately@
-- parameter.
--
-- Default: @false@
modifyDBCluster_applyImmediately :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Bool)
modifyDBCluster_applyImmediately = Lens.lens (\ModifyDBCluster' {applyImmediately} -> applyImmediately) (\s@ModifyDBCluster' {} a -> s {applyImmediately = a} :: ModifyDBCluster)

-- | The new cluster identifier for the cluster when renaming a cluster. This
-- value is stored as a lowercase string.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   The first character must be a letter.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
--
-- Example: @my-cluster2@
modifyDBCluster_newDBClusterIdentifier :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Text)
modifyDBCluster_newDBClusterIdentifier = Lens.lens (\ModifyDBCluster' {newDBClusterIdentifier'} -> newDBClusterIdentifier') (\s@ModifyDBCluster' {} a -> s {newDBClusterIdentifier' = a} :: ModifyDBCluster)

-- | The port number on which the cluster accepts connections.
--
-- Constraints: Must be a value from @1150@ to @65535@.
--
-- Default: The same port as the original cluster.
modifyDBCluster_port :: Lens.Lens' ModifyDBCluster (Prelude.Maybe Prelude.Int)
modifyDBCluster_port = Lens.lens (\ModifyDBCluster' {port} -> port) (\s@ModifyDBCluster' {} a -> s {port = a} :: ModifyDBCluster)

-- | The cluster identifier for the cluster that is being modified. This
-- parameter is not case sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing @DBCluster@.
modifyDBCluster_dbClusterIdentifier :: Lens.Lens' ModifyDBCluster Prelude.Text
modifyDBCluster_dbClusterIdentifier = Lens.lens (\ModifyDBCluster' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@ModifyDBCluster' {} a -> s {dbClusterIdentifier = a} :: ModifyDBCluster)

instance Core.AWSRequest ModifyDBCluster where
  type
    AWSResponse ModifyDBCluster =
      ModifyDBClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ModifyDBClusterResult"
      ( \s h x ->
          ModifyDBClusterResponse'
            Prelude.<$> (x Core..@? "DBCluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ModifyDBCluster

instance Prelude.NFData ModifyDBCluster

instance Core.ToHeaders ModifyDBCluster where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyDBCluster where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyDBCluster where
  toQuery ModifyDBCluster' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("ModifyDBCluster" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "EngineVersion" Core.=: engineVersion,
        "DeletionProtection" Core.=: deletionProtection,
        "MasterUserPassword" Core.=: masterUserPassword,
        "CloudwatchLogsExportConfiguration"
          Core.=: cloudwatchLogsExportConfiguration,
        "PreferredMaintenanceWindow"
          Core.=: preferredMaintenanceWindow,
        "PreferredBackupWindow"
          Core.=: preferredBackupWindow,
        "BackupRetentionPeriod"
          Core.=: backupRetentionPeriod,
        "VpcSecurityGroupIds"
          Core.=: Core.toQuery
            ( Core.toQueryList "VpcSecurityGroupId"
                Prelude.<$> vpcSecurityGroupIds
            ),
        "DBClusterParameterGroupName"
          Core.=: dbClusterParameterGroupName,
        "ApplyImmediately" Core.=: applyImmediately,
        "NewDBClusterIdentifier"
          Core.=: newDBClusterIdentifier',
        "Port" Core.=: port,
        "DBClusterIdentifier" Core.=: dbClusterIdentifier
      ]

-- | /See:/ 'newModifyDBClusterResponse' smart constructor.
data ModifyDBClusterResponse = ModifyDBClusterResponse'
  { dbCluster :: Prelude.Maybe DBCluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyDBClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbCluster', 'modifyDBClusterResponse_dbCluster' - Undocumented member.
--
-- 'httpStatus', 'modifyDBClusterResponse_httpStatus' - The response's http status code.
newModifyDBClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyDBClusterResponse
newModifyDBClusterResponse pHttpStatus_ =
  ModifyDBClusterResponse'
    { dbCluster =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
modifyDBClusterResponse_dbCluster :: Lens.Lens' ModifyDBClusterResponse (Prelude.Maybe DBCluster)
modifyDBClusterResponse_dbCluster = Lens.lens (\ModifyDBClusterResponse' {dbCluster} -> dbCluster) (\s@ModifyDBClusterResponse' {} a -> s {dbCluster = a} :: ModifyDBClusterResponse)

-- | The response's http status code.
modifyDBClusterResponse_httpStatus :: Lens.Lens' ModifyDBClusterResponse Prelude.Int
modifyDBClusterResponse_httpStatus = Lens.lens (\ModifyDBClusterResponse' {httpStatus} -> httpStatus) (\s@ModifyDBClusterResponse' {} a -> s {httpStatus = a} :: ModifyDBClusterResponse)

instance Prelude.NFData ModifyDBClusterResponse
