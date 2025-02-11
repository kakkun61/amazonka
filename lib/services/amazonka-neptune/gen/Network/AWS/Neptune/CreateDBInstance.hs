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
-- Module      : Network.AWS.Neptune.CreateDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB instance.
module Network.AWS.Neptune.CreateDBInstance
  ( -- * Creating a Request
    CreateDBInstance (..),
    newCreateDBInstance,

    -- * Request Lenses
    createDBInstance_engineVersion,
    createDBInstance_dbSecurityGroups,
    createDBInstance_deletionProtection,
    createDBInstance_storageEncrypted,
    createDBInstance_dbClusterIdentifier,
    createDBInstance_masterUserPassword,
    createDBInstance_publiclyAccessible,
    createDBInstance_autoMinorVersionUpgrade,
    createDBInstance_masterUsername,
    createDBInstance_dbSubnetGroupName,
    createDBInstance_monitoringRoleArn,
    createDBInstance_iops,
    createDBInstance_domain,
    createDBInstance_monitoringInterval,
    createDBInstance_tdeCredentialPassword,
    createDBInstance_promotionTier,
    createDBInstance_licenseModel,
    createDBInstance_preferredMaintenanceWindow,
    createDBInstance_characterSetName,
    createDBInstance_enablePerformanceInsights,
    createDBInstance_kmsKeyId,
    createDBInstance_dbParameterGroupName,
    createDBInstance_preferredBackupWindow,
    createDBInstance_availabilityZone,
    createDBInstance_backupRetentionPeriod,
    createDBInstance_performanceInsightsKMSKeyId,
    createDBInstance_vpcSecurityGroupIds,
    createDBInstance_multiAZ,
    createDBInstance_allocatedStorage,
    createDBInstance_optionGroupName,
    createDBInstance_copyTagsToSnapshot,
    createDBInstance_timezone,
    createDBInstance_tdeCredentialArn,
    createDBInstance_domainIAMRoleName,
    createDBInstance_tags,
    createDBInstance_port,
    createDBInstance_enableIAMDatabaseAuthentication,
    createDBInstance_storageType,
    createDBInstance_enableCloudwatchLogsExports,
    createDBInstance_dbName,
    createDBInstance_dbInstanceIdentifier,
    createDBInstance_dbInstanceClass,
    createDBInstance_engine,

    -- * Destructuring the Response
    CreateDBInstanceResponse (..),
    newCreateDBInstanceResponse,

    -- * Response Lenses
    createDBInstanceResponse_dbInstance,
    createDBInstanceResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Neptune.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDBInstance' smart constructor.
data CreateDBInstance = CreateDBInstance'
  { -- | The version number of the database engine to use. Currently, setting
    -- this parameter has no effect.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | A list of DB security groups to associate with this DB instance.
    --
    -- Default: The default DB security group for the database engine.
    dbSecurityGroups :: Prelude.Maybe [Prelude.Text],
    -- | A value that indicates whether the DB instance has deletion protection
    -- enabled. The database can\'t be deleted when deletion protection is
    -- enabled. By default, deletion protection is disabled. See
    -- <https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html Deleting a DB Instance>.
    --
    -- DB instances in a DB cluster can be deleted even when deletion
    -- protection is enabled in their parent DB cluster.
    deletionProtection :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether the DB instance is encrypted.
    --
    -- Not applicable. The encryption for DB instances is managed by the DB
    -- cluster. For more information, see CreateDBCluster.
    --
    -- Default: false
    storageEncrypted :: Prelude.Maybe Prelude.Bool,
    -- | The identifier of the DB cluster that the instance will belong to.
    --
    -- For information on creating a DB cluster, see CreateDBCluster.
    --
    -- Type: String
    dbClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | Not supported by Neptune.
    masterUserPassword :: Prelude.Maybe Prelude.Text,
    -- | This flag should no longer be used.
    publiclyAccessible :: Prelude.Maybe Prelude.Bool,
    -- | Indicates that minor engine upgrades are applied automatically to the DB
    -- instance during the maintenance window.
    --
    -- Default: @true@
    autoMinorVersionUpgrade :: Prelude.Maybe Prelude.Bool,
    -- | Not supported by Neptune.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | A DB subnet group to associate with this DB instance.
    --
    -- If there is no DB subnet group, then it is a non-VPC DB instance.
    dbSubnetGroupName :: Prelude.Maybe Prelude.Text,
    -- | The ARN for the IAM role that permits Neptune to send enhanced
    -- monitoring metrics to Amazon CloudWatch Logs. For example,
    -- @arn:aws:iam:123456789012:role\/emaccess@.
    --
    -- If @MonitoringInterval@ is set to a value other than 0, then you must
    -- supply a @MonitoringRoleArn@ value.
    monitoringRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The amount of Provisioned IOPS (input\/output operations per second) to
    -- be initially allocated for the DB instance.
    iops :: Prelude.Maybe Prelude.Int,
    -- | Specify the Active Directory Domain to create the instance in.
    domain :: Prelude.Maybe Prelude.Text,
    -- | The interval, in seconds, between points when Enhanced Monitoring
    -- metrics are collected for the DB instance. To disable collecting
    -- Enhanced Monitoring metrics, specify 0. The default is 0.
    --
    -- If @MonitoringRoleArn@ is specified, then you must also set
    -- @MonitoringInterval@ to a value other than 0.
    --
    -- Valid Values: @0, 1, 5, 10, 15, 30, 60@
    monitoringInterval :: Prelude.Maybe Prelude.Int,
    -- | The password for the given ARN from the key store in order to access the
    -- device.
    tdeCredentialPassword :: Prelude.Maybe Prelude.Text,
    -- | A value that specifies the order in which an Read Replica is promoted to
    -- the primary instance after a failure of the existing primary instance.
    --
    -- Default: 1
    --
    -- Valid Values: 0 - 15
    promotionTier :: Prelude.Maybe Prelude.Int,
    -- | License model information for this DB instance.
    --
    -- Valid values: @license-included@ | @bring-your-own-license@ |
    -- @general-public-license@
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | The time range each week during which system maintenance can occur, in
    -- Universal Coordinated Time (UTC).
    --
    -- Format: @ddd:hh24:mi-ddd:hh24:mi@
    --
    -- The default is a 30-minute window selected at random from an 8-hour
    -- block of time for each Amazon Region, occurring on a random day of the
    -- week.
    --
    -- Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    --
    -- Constraints: Minimum 30-minute window.
    preferredMaintenanceWindow :: Prelude.Maybe Prelude.Text,
    -- | /(Not supported by Neptune)/
    characterSetName :: Prelude.Maybe Prelude.Text,
    -- | /(Not supported by Neptune)/
    enablePerformanceInsights :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon KMS key identifier for an encrypted DB instance.
    --
    -- The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    -- encryption key. If you are creating a DB instance with the same Amazon
    -- account that owns the KMS encryption key used to encrypt the new DB
    -- instance, then you can use the KMS key alias instead of the ARN for the
    -- KM encryption key.
    --
    -- Not applicable. The KMS key identifier is managed by the DB cluster. For
    -- more information, see CreateDBCluster.
    --
    -- If the @StorageEncrypted@ parameter is true, and you do not specify a
    -- value for the @KmsKeyId@ parameter, then Amazon Neptune will use your
    -- default encryption key. Amazon KMS creates the default encryption key
    -- for your Amazon account. Your Amazon account has a different default
    -- encryption key for each Amazon Region.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB parameter group to associate with this DB instance.
    -- If this argument is omitted, the default DBParameterGroup for the
    -- specified engine is used.
    --
    -- Constraints:
    --
    -- -   Must be 1 to 255 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter
    --
    -- -   Cannot end with a hyphen or contain two consecutive hyphens
    dbParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | The daily time range during which automated backups are created.
    --
    -- Not applicable. The daily time range for creating automated backups is
    -- managed by the DB cluster. For more information, see CreateDBCluster.
    preferredBackupWindow :: Prelude.Maybe Prelude.Text,
    -- | The EC2 Availability Zone that the DB instance is created in
    --
    -- Default: A random, system-chosen Availability Zone in the endpoint\'s
    -- Amazon Region.
    --
    -- Example: @us-east-1d@
    --
    -- Constraint: The AvailabilityZone parameter can\'t be specified if the
    -- MultiAZ parameter is set to @true@. The specified Availability Zone must
    -- be in the same Amazon Region as the current endpoint.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The number of days for which automated backups are retained.
    --
    -- Not applicable. The retention period for automated backups is managed by
    -- the DB cluster. For more information, see CreateDBCluster.
    --
    -- Default: 1
    --
    -- Constraints:
    --
    -- -   Must be a value from 0 to 35
    --
    -- -   Cannot be set to 0 if the DB instance is a source to Read Replicas
    backupRetentionPeriod :: Prelude.Maybe Prelude.Int,
    -- | /(Not supported by Neptune)/
    performanceInsightsKMSKeyId :: Prelude.Maybe Prelude.Text,
    -- | A list of EC2 VPC security groups to associate with this DB instance.
    --
    -- Not applicable. The associated list of EC2 VPC security groups is
    -- managed by the DB cluster. For more information, see CreateDBCluster.
    --
    -- Default: The default EC2 VPC security group for the DB subnet group\'s
    -- VPC.
    vpcSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | Specifies if the DB instance is a Multi-AZ deployment. You can\'t set
    -- the AvailabilityZone parameter if the MultiAZ parameter is set to true.
    multiAZ :: Prelude.Maybe Prelude.Bool,
    -- | Not supported by Neptune.
    allocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | /(Not supported by Neptune)/
    optionGroupName :: Prelude.Maybe Prelude.Text,
    -- | True to copy all tags from the DB instance to snapshots of the DB
    -- instance, and otherwise false. The default is false.
    copyTagsToSnapshot :: Prelude.Maybe Prelude.Bool,
    -- | The time zone of the DB instance.
    timezone :: Prelude.Maybe Prelude.Text,
    -- | The ARN from the key store with which to associate the instance for TDE
    -- encryption.
    tdeCredentialArn :: Prelude.Maybe Prelude.Text,
    -- | Specify the name of the IAM role to be used when making API calls to the
    -- Directory Service.
    domainIAMRoleName :: Prelude.Maybe Prelude.Text,
    -- | The tags to assign to the new instance.
    tags :: Prelude.Maybe [Tag],
    -- | The port number on which the database accepts connections.
    --
    -- Not applicable. The port is managed by the DB cluster. For more
    -- information, see CreateDBCluster.
    --
    -- Default: @8182@
    --
    -- Type: Integer
    port :: Prelude.Maybe Prelude.Int,
    -- | Not supported by Neptune (ignored).
    enableIAMDatabaseAuthentication :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the storage type to be associated with the DB instance.
    --
    -- Not applicable. Storage is managed by the DB Cluster.
    storageType :: Prelude.Maybe Prelude.Text,
    -- | The list of log types that need to be enabled for exporting to
    -- CloudWatch Logs.
    enableCloudwatchLogsExports :: Prelude.Maybe [Prelude.Text],
    -- | Not supported.
    dbName :: Prelude.Maybe Prelude.Text,
    -- | The DB instance identifier. This parameter is stored as a lowercase
    -- string.
    --
    -- Constraints:
    --
    -- -   Must contain from 1 to 63 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter.
    --
    -- -   Cannot end with a hyphen or contain two consecutive hyphens.
    --
    -- Example: @mydbinstance@
    dbInstanceIdentifier :: Prelude.Text,
    -- | The compute and memory capacity of the DB instance, for example,
    -- @db.m4.large@. Not all DB instance classes are available in all Amazon
    -- Regions.
    dbInstanceClass :: Prelude.Text,
    -- | The name of the database engine to be used for this instance.
    --
    -- Valid Values: @neptune@
    engine :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDBInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'engineVersion', 'createDBInstance_engineVersion' - The version number of the database engine to use. Currently, setting
-- this parameter has no effect.
--
-- 'dbSecurityGroups', 'createDBInstance_dbSecurityGroups' - A list of DB security groups to associate with this DB instance.
--
-- Default: The default DB security group for the database engine.
--
-- 'deletionProtection', 'createDBInstance_deletionProtection' - A value that indicates whether the DB instance has deletion protection
-- enabled. The database can\'t be deleted when deletion protection is
-- enabled. By default, deletion protection is disabled. See
-- <https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html Deleting a DB Instance>.
--
-- DB instances in a DB cluster can be deleted even when deletion
-- protection is enabled in their parent DB cluster.
--
-- 'storageEncrypted', 'createDBInstance_storageEncrypted' - Specifies whether the DB instance is encrypted.
--
-- Not applicable. The encryption for DB instances is managed by the DB
-- cluster. For more information, see CreateDBCluster.
--
-- Default: false
--
-- 'dbClusterIdentifier', 'createDBInstance_dbClusterIdentifier' - The identifier of the DB cluster that the instance will belong to.
--
-- For information on creating a DB cluster, see CreateDBCluster.
--
-- Type: String
--
-- 'masterUserPassword', 'createDBInstance_masterUserPassword' - Not supported by Neptune.
--
-- 'publiclyAccessible', 'createDBInstance_publiclyAccessible' - This flag should no longer be used.
--
-- 'autoMinorVersionUpgrade', 'createDBInstance_autoMinorVersionUpgrade' - Indicates that minor engine upgrades are applied automatically to the DB
-- instance during the maintenance window.
--
-- Default: @true@
--
-- 'masterUsername', 'createDBInstance_masterUsername' - Not supported by Neptune.
--
-- 'dbSubnetGroupName', 'createDBInstance_dbSubnetGroupName' - A DB subnet group to associate with this DB instance.
--
-- If there is no DB subnet group, then it is a non-VPC DB instance.
--
-- 'monitoringRoleArn', 'createDBInstance_monitoringRoleArn' - The ARN for the IAM role that permits Neptune to send enhanced
-- monitoring metrics to Amazon CloudWatch Logs. For example,
-- @arn:aws:iam:123456789012:role\/emaccess@.
--
-- If @MonitoringInterval@ is set to a value other than 0, then you must
-- supply a @MonitoringRoleArn@ value.
--
-- 'iops', 'createDBInstance_iops' - The amount of Provisioned IOPS (input\/output operations per second) to
-- be initially allocated for the DB instance.
--
-- 'domain', 'createDBInstance_domain' - Specify the Active Directory Domain to create the instance in.
--
-- 'monitoringInterval', 'createDBInstance_monitoringInterval' - The interval, in seconds, between points when Enhanced Monitoring
-- metrics are collected for the DB instance. To disable collecting
-- Enhanced Monitoring metrics, specify 0. The default is 0.
--
-- If @MonitoringRoleArn@ is specified, then you must also set
-- @MonitoringInterval@ to a value other than 0.
--
-- Valid Values: @0, 1, 5, 10, 15, 30, 60@
--
-- 'tdeCredentialPassword', 'createDBInstance_tdeCredentialPassword' - The password for the given ARN from the key store in order to access the
-- device.
--
-- 'promotionTier', 'createDBInstance_promotionTier' - A value that specifies the order in which an Read Replica is promoted to
-- the primary instance after a failure of the existing primary instance.
--
-- Default: 1
--
-- Valid Values: 0 - 15
--
-- 'licenseModel', 'createDBInstance_licenseModel' - License model information for this DB instance.
--
-- Valid values: @license-included@ | @bring-your-own-license@ |
-- @general-public-license@
--
-- 'preferredMaintenanceWindow', 'createDBInstance_preferredMaintenanceWindow' - The time range each week during which system maintenance can occur, in
-- Universal Coordinated Time (UTC).
--
-- Format: @ddd:hh24:mi-ddd:hh24:mi@
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each Amazon Region, occurring on a random day of the
-- week.
--
-- Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
-- Constraints: Minimum 30-minute window.
--
-- 'characterSetName', 'createDBInstance_characterSetName' - /(Not supported by Neptune)/
--
-- 'enablePerformanceInsights', 'createDBInstance_enablePerformanceInsights' - /(Not supported by Neptune)/
--
-- 'kmsKeyId', 'createDBInstance_kmsKeyId' - The Amazon KMS key identifier for an encrypted DB instance.
--
-- The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
-- encryption key. If you are creating a DB instance with the same Amazon
-- account that owns the KMS encryption key used to encrypt the new DB
-- instance, then you can use the KMS key alias instead of the ARN for the
-- KM encryption key.
--
-- Not applicable. The KMS key identifier is managed by the DB cluster. For
-- more information, see CreateDBCluster.
--
-- If the @StorageEncrypted@ parameter is true, and you do not specify a
-- value for the @KmsKeyId@ parameter, then Amazon Neptune will use your
-- default encryption key. Amazon KMS creates the default encryption key
-- for your Amazon account. Your Amazon account has a different default
-- encryption key for each Amazon Region.
--
-- 'dbParameterGroupName', 'createDBInstance_dbParameterGroupName' - The name of the DB parameter group to associate with this DB instance.
-- If this argument is omitted, the default DBParameterGroup for the
-- specified engine is used.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens
--
-- 'preferredBackupWindow', 'createDBInstance_preferredBackupWindow' - The daily time range during which automated backups are created.
--
-- Not applicable. The daily time range for creating automated backups is
-- managed by the DB cluster. For more information, see CreateDBCluster.
--
-- 'availabilityZone', 'createDBInstance_availabilityZone' - The EC2 Availability Zone that the DB instance is created in
--
-- Default: A random, system-chosen Availability Zone in the endpoint\'s
-- Amazon Region.
--
-- Example: @us-east-1d@
--
-- Constraint: The AvailabilityZone parameter can\'t be specified if the
-- MultiAZ parameter is set to @true@. The specified Availability Zone must
-- be in the same Amazon Region as the current endpoint.
--
-- 'backupRetentionPeriod', 'createDBInstance_backupRetentionPeriod' - The number of days for which automated backups are retained.
--
-- Not applicable. The retention period for automated backups is managed by
-- the DB cluster. For more information, see CreateDBCluster.
--
-- Default: 1
--
-- Constraints:
--
-- -   Must be a value from 0 to 35
--
-- -   Cannot be set to 0 if the DB instance is a source to Read Replicas
--
-- 'performanceInsightsKMSKeyId', 'createDBInstance_performanceInsightsKMSKeyId' - /(Not supported by Neptune)/
--
-- 'vpcSecurityGroupIds', 'createDBInstance_vpcSecurityGroupIds' - A list of EC2 VPC security groups to associate with this DB instance.
--
-- Not applicable. The associated list of EC2 VPC security groups is
-- managed by the DB cluster. For more information, see CreateDBCluster.
--
-- Default: The default EC2 VPC security group for the DB subnet group\'s
-- VPC.
--
-- 'multiAZ', 'createDBInstance_multiAZ' - Specifies if the DB instance is a Multi-AZ deployment. You can\'t set
-- the AvailabilityZone parameter if the MultiAZ parameter is set to true.
--
-- 'allocatedStorage', 'createDBInstance_allocatedStorage' - Not supported by Neptune.
--
-- 'optionGroupName', 'createDBInstance_optionGroupName' - /(Not supported by Neptune)/
--
-- 'copyTagsToSnapshot', 'createDBInstance_copyTagsToSnapshot' - True to copy all tags from the DB instance to snapshots of the DB
-- instance, and otherwise false. The default is false.
--
-- 'timezone', 'createDBInstance_timezone' - The time zone of the DB instance.
--
-- 'tdeCredentialArn', 'createDBInstance_tdeCredentialArn' - The ARN from the key store with which to associate the instance for TDE
-- encryption.
--
-- 'domainIAMRoleName', 'createDBInstance_domainIAMRoleName' - Specify the name of the IAM role to be used when making API calls to the
-- Directory Service.
--
-- 'tags', 'createDBInstance_tags' - The tags to assign to the new instance.
--
-- 'port', 'createDBInstance_port' - The port number on which the database accepts connections.
--
-- Not applicable. The port is managed by the DB cluster. For more
-- information, see CreateDBCluster.
--
-- Default: @8182@
--
-- Type: Integer
--
-- 'enableIAMDatabaseAuthentication', 'createDBInstance_enableIAMDatabaseAuthentication' - Not supported by Neptune (ignored).
--
-- 'storageType', 'createDBInstance_storageType' - Specifies the storage type to be associated with the DB instance.
--
-- Not applicable. Storage is managed by the DB Cluster.
--
-- 'enableCloudwatchLogsExports', 'createDBInstance_enableCloudwatchLogsExports' - The list of log types that need to be enabled for exporting to
-- CloudWatch Logs.
--
-- 'dbName', 'createDBInstance_dbName' - Not supported.
--
-- 'dbInstanceIdentifier', 'createDBInstance_dbInstanceIdentifier' - The DB instance identifier. This parameter is stored as a lowercase
-- string.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   First character must be a letter.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
--
-- Example: @mydbinstance@
--
-- 'dbInstanceClass', 'createDBInstance_dbInstanceClass' - The compute and memory capacity of the DB instance, for example,
-- @db.m4.large@. Not all DB instance classes are available in all Amazon
-- Regions.
--
-- 'engine', 'createDBInstance_engine' - The name of the database engine to be used for this instance.
--
-- Valid Values: @neptune@
newCreateDBInstance ::
  -- | 'dbInstanceIdentifier'
  Prelude.Text ->
  -- | 'dbInstanceClass'
  Prelude.Text ->
  -- | 'engine'
  Prelude.Text ->
  CreateDBInstance
newCreateDBInstance
  pDBInstanceIdentifier_
  pDBInstanceClass_
  pEngine_ =
    CreateDBInstance'
      { engineVersion = Prelude.Nothing,
        dbSecurityGroups = Prelude.Nothing,
        deletionProtection = Prelude.Nothing,
        storageEncrypted = Prelude.Nothing,
        dbClusterIdentifier = Prelude.Nothing,
        masterUserPassword = Prelude.Nothing,
        publiclyAccessible = Prelude.Nothing,
        autoMinorVersionUpgrade = Prelude.Nothing,
        masterUsername = Prelude.Nothing,
        dbSubnetGroupName = Prelude.Nothing,
        monitoringRoleArn = Prelude.Nothing,
        iops = Prelude.Nothing,
        domain = Prelude.Nothing,
        monitoringInterval = Prelude.Nothing,
        tdeCredentialPassword = Prelude.Nothing,
        promotionTier = Prelude.Nothing,
        licenseModel = Prelude.Nothing,
        preferredMaintenanceWindow = Prelude.Nothing,
        characterSetName = Prelude.Nothing,
        enablePerformanceInsights = Prelude.Nothing,
        kmsKeyId = Prelude.Nothing,
        dbParameterGroupName = Prelude.Nothing,
        preferredBackupWindow = Prelude.Nothing,
        availabilityZone = Prelude.Nothing,
        backupRetentionPeriod = Prelude.Nothing,
        performanceInsightsKMSKeyId = Prelude.Nothing,
        vpcSecurityGroupIds = Prelude.Nothing,
        multiAZ = Prelude.Nothing,
        allocatedStorage = Prelude.Nothing,
        optionGroupName = Prelude.Nothing,
        copyTagsToSnapshot = Prelude.Nothing,
        timezone = Prelude.Nothing,
        tdeCredentialArn = Prelude.Nothing,
        domainIAMRoleName = Prelude.Nothing,
        tags = Prelude.Nothing,
        port = Prelude.Nothing,
        enableIAMDatabaseAuthentication = Prelude.Nothing,
        storageType = Prelude.Nothing,
        enableCloudwatchLogsExports = Prelude.Nothing,
        dbName = Prelude.Nothing,
        dbInstanceIdentifier = pDBInstanceIdentifier_,
        dbInstanceClass = pDBInstanceClass_,
        engine = pEngine_
      }

-- | The version number of the database engine to use. Currently, setting
-- this parameter has no effect.
createDBInstance_engineVersion :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_engineVersion = Lens.lens (\CreateDBInstance' {engineVersion} -> engineVersion) (\s@CreateDBInstance' {} a -> s {engineVersion = a} :: CreateDBInstance)

-- | A list of DB security groups to associate with this DB instance.
--
-- Default: The default DB security group for the database engine.
createDBInstance_dbSecurityGroups :: Lens.Lens' CreateDBInstance (Prelude.Maybe [Prelude.Text])
createDBInstance_dbSecurityGroups = Lens.lens (\CreateDBInstance' {dbSecurityGroups} -> dbSecurityGroups) (\s@CreateDBInstance' {} a -> s {dbSecurityGroups = a} :: CreateDBInstance) Prelude.. Lens.mapping Lens.coerced

-- | A value that indicates whether the DB instance has deletion protection
-- enabled. The database can\'t be deleted when deletion protection is
-- enabled. By default, deletion protection is disabled. See
-- <https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html Deleting a DB Instance>.
--
-- DB instances in a DB cluster can be deleted even when deletion
-- protection is enabled in their parent DB cluster.
createDBInstance_deletionProtection :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_deletionProtection = Lens.lens (\CreateDBInstance' {deletionProtection} -> deletionProtection) (\s@CreateDBInstance' {} a -> s {deletionProtection = a} :: CreateDBInstance)

-- | Specifies whether the DB instance is encrypted.
--
-- Not applicable. The encryption for DB instances is managed by the DB
-- cluster. For more information, see CreateDBCluster.
--
-- Default: false
createDBInstance_storageEncrypted :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_storageEncrypted = Lens.lens (\CreateDBInstance' {storageEncrypted} -> storageEncrypted) (\s@CreateDBInstance' {} a -> s {storageEncrypted = a} :: CreateDBInstance)

-- | The identifier of the DB cluster that the instance will belong to.
--
-- For information on creating a DB cluster, see CreateDBCluster.
--
-- Type: String
createDBInstance_dbClusterIdentifier :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_dbClusterIdentifier = Lens.lens (\CreateDBInstance' {dbClusterIdentifier} -> dbClusterIdentifier) (\s@CreateDBInstance' {} a -> s {dbClusterIdentifier = a} :: CreateDBInstance)

-- | Not supported by Neptune.
createDBInstance_masterUserPassword :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_masterUserPassword = Lens.lens (\CreateDBInstance' {masterUserPassword} -> masterUserPassword) (\s@CreateDBInstance' {} a -> s {masterUserPassword = a} :: CreateDBInstance)

-- | This flag should no longer be used.
createDBInstance_publiclyAccessible :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_publiclyAccessible = Lens.lens (\CreateDBInstance' {publiclyAccessible} -> publiclyAccessible) (\s@CreateDBInstance' {} a -> s {publiclyAccessible = a} :: CreateDBInstance)

-- | Indicates that minor engine upgrades are applied automatically to the DB
-- instance during the maintenance window.
--
-- Default: @true@
createDBInstance_autoMinorVersionUpgrade :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_autoMinorVersionUpgrade = Lens.lens (\CreateDBInstance' {autoMinorVersionUpgrade} -> autoMinorVersionUpgrade) (\s@CreateDBInstance' {} a -> s {autoMinorVersionUpgrade = a} :: CreateDBInstance)

-- | Not supported by Neptune.
createDBInstance_masterUsername :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_masterUsername = Lens.lens (\CreateDBInstance' {masterUsername} -> masterUsername) (\s@CreateDBInstance' {} a -> s {masterUsername = a} :: CreateDBInstance)

-- | A DB subnet group to associate with this DB instance.
--
-- If there is no DB subnet group, then it is a non-VPC DB instance.
createDBInstance_dbSubnetGroupName :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_dbSubnetGroupName = Lens.lens (\CreateDBInstance' {dbSubnetGroupName} -> dbSubnetGroupName) (\s@CreateDBInstance' {} a -> s {dbSubnetGroupName = a} :: CreateDBInstance)

-- | The ARN for the IAM role that permits Neptune to send enhanced
-- monitoring metrics to Amazon CloudWatch Logs. For example,
-- @arn:aws:iam:123456789012:role\/emaccess@.
--
-- If @MonitoringInterval@ is set to a value other than 0, then you must
-- supply a @MonitoringRoleArn@ value.
createDBInstance_monitoringRoleArn :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_monitoringRoleArn = Lens.lens (\CreateDBInstance' {monitoringRoleArn} -> monitoringRoleArn) (\s@CreateDBInstance' {} a -> s {monitoringRoleArn = a} :: CreateDBInstance)

-- | The amount of Provisioned IOPS (input\/output operations per second) to
-- be initially allocated for the DB instance.
createDBInstance_iops :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Int)
createDBInstance_iops = Lens.lens (\CreateDBInstance' {iops} -> iops) (\s@CreateDBInstance' {} a -> s {iops = a} :: CreateDBInstance)

-- | Specify the Active Directory Domain to create the instance in.
createDBInstance_domain :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_domain = Lens.lens (\CreateDBInstance' {domain} -> domain) (\s@CreateDBInstance' {} a -> s {domain = a} :: CreateDBInstance)

-- | The interval, in seconds, between points when Enhanced Monitoring
-- metrics are collected for the DB instance. To disable collecting
-- Enhanced Monitoring metrics, specify 0. The default is 0.
--
-- If @MonitoringRoleArn@ is specified, then you must also set
-- @MonitoringInterval@ to a value other than 0.
--
-- Valid Values: @0, 1, 5, 10, 15, 30, 60@
createDBInstance_monitoringInterval :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Int)
createDBInstance_monitoringInterval = Lens.lens (\CreateDBInstance' {monitoringInterval} -> monitoringInterval) (\s@CreateDBInstance' {} a -> s {monitoringInterval = a} :: CreateDBInstance)

-- | The password for the given ARN from the key store in order to access the
-- device.
createDBInstance_tdeCredentialPassword :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_tdeCredentialPassword = Lens.lens (\CreateDBInstance' {tdeCredentialPassword} -> tdeCredentialPassword) (\s@CreateDBInstance' {} a -> s {tdeCredentialPassword = a} :: CreateDBInstance)

-- | A value that specifies the order in which an Read Replica is promoted to
-- the primary instance after a failure of the existing primary instance.
--
-- Default: 1
--
-- Valid Values: 0 - 15
createDBInstance_promotionTier :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Int)
createDBInstance_promotionTier = Lens.lens (\CreateDBInstance' {promotionTier} -> promotionTier) (\s@CreateDBInstance' {} a -> s {promotionTier = a} :: CreateDBInstance)

-- | License model information for this DB instance.
--
-- Valid values: @license-included@ | @bring-your-own-license@ |
-- @general-public-license@
createDBInstance_licenseModel :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_licenseModel = Lens.lens (\CreateDBInstance' {licenseModel} -> licenseModel) (\s@CreateDBInstance' {} a -> s {licenseModel = a} :: CreateDBInstance)

-- | The time range each week during which system maintenance can occur, in
-- Universal Coordinated Time (UTC).
--
-- Format: @ddd:hh24:mi-ddd:hh24:mi@
--
-- The default is a 30-minute window selected at random from an 8-hour
-- block of time for each Amazon Region, occurring on a random day of the
-- week.
--
-- Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
--
-- Constraints: Minimum 30-minute window.
createDBInstance_preferredMaintenanceWindow :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_preferredMaintenanceWindow = Lens.lens (\CreateDBInstance' {preferredMaintenanceWindow} -> preferredMaintenanceWindow) (\s@CreateDBInstance' {} a -> s {preferredMaintenanceWindow = a} :: CreateDBInstance)

-- | /(Not supported by Neptune)/
createDBInstance_characterSetName :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_characterSetName = Lens.lens (\CreateDBInstance' {characterSetName} -> characterSetName) (\s@CreateDBInstance' {} a -> s {characterSetName = a} :: CreateDBInstance)

-- | /(Not supported by Neptune)/
createDBInstance_enablePerformanceInsights :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_enablePerformanceInsights = Lens.lens (\CreateDBInstance' {enablePerformanceInsights} -> enablePerformanceInsights) (\s@CreateDBInstance' {} a -> s {enablePerformanceInsights = a} :: CreateDBInstance)

-- | The Amazon KMS key identifier for an encrypted DB instance.
--
-- The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
-- encryption key. If you are creating a DB instance with the same Amazon
-- account that owns the KMS encryption key used to encrypt the new DB
-- instance, then you can use the KMS key alias instead of the ARN for the
-- KM encryption key.
--
-- Not applicable. The KMS key identifier is managed by the DB cluster. For
-- more information, see CreateDBCluster.
--
-- If the @StorageEncrypted@ parameter is true, and you do not specify a
-- value for the @KmsKeyId@ parameter, then Amazon Neptune will use your
-- default encryption key. Amazon KMS creates the default encryption key
-- for your Amazon account. Your Amazon account has a different default
-- encryption key for each Amazon Region.
createDBInstance_kmsKeyId :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_kmsKeyId = Lens.lens (\CreateDBInstance' {kmsKeyId} -> kmsKeyId) (\s@CreateDBInstance' {} a -> s {kmsKeyId = a} :: CreateDBInstance)

-- | The name of the DB parameter group to associate with this DB instance.
-- If this argument is omitted, the default DBParameterGroup for the
-- specified engine is used.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens
createDBInstance_dbParameterGroupName :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_dbParameterGroupName = Lens.lens (\CreateDBInstance' {dbParameterGroupName} -> dbParameterGroupName) (\s@CreateDBInstance' {} a -> s {dbParameterGroupName = a} :: CreateDBInstance)

-- | The daily time range during which automated backups are created.
--
-- Not applicable. The daily time range for creating automated backups is
-- managed by the DB cluster. For more information, see CreateDBCluster.
createDBInstance_preferredBackupWindow :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_preferredBackupWindow = Lens.lens (\CreateDBInstance' {preferredBackupWindow} -> preferredBackupWindow) (\s@CreateDBInstance' {} a -> s {preferredBackupWindow = a} :: CreateDBInstance)

-- | The EC2 Availability Zone that the DB instance is created in
--
-- Default: A random, system-chosen Availability Zone in the endpoint\'s
-- Amazon Region.
--
-- Example: @us-east-1d@
--
-- Constraint: The AvailabilityZone parameter can\'t be specified if the
-- MultiAZ parameter is set to @true@. The specified Availability Zone must
-- be in the same Amazon Region as the current endpoint.
createDBInstance_availabilityZone :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_availabilityZone = Lens.lens (\CreateDBInstance' {availabilityZone} -> availabilityZone) (\s@CreateDBInstance' {} a -> s {availabilityZone = a} :: CreateDBInstance)

-- | The number of days for which automated backups are retained.
--
-- Not applicable. The retention period for automated backups is managed by
-- the DB cluster. For more information, see CreateDBCluster.
--
-- Default: 1
--
-- Constraints:
--
-- -   Must be a value from 0 to 35
--
-- -   Cannot be set to 0 if the DB instance is a source to Read Replicas
createDBInstance_backupRetentionPeriod :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Int)
createDBInstance_backupRetentionPeriod = Lens.lens (\CreateDBInstance' {backupRetentionPeriod} -> backupRetentionPeriod) (\s@CreateDBInstance' {} a -> s {backupRetentionPeriod = a} :: CreateDBInstance)

-- | /(Not supported by Neptune)/
createDBInstance_performanceInsightsKMSKeyId :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_performanceInsightsKMSKeyId = Lens.lens (\CreateDBInstance' {performanceInsightsKMSKeyId} -> performanceInsightsKMSKeyId) (\s@CreateDBInstance' {} a -> s {performanceInsightsKMSKeyId = a} :: CreateDBInstance)

-- | A list of EC2 VPC security groups to associate with this DB instance.
--
-- Not applicable. The associated list of EC2 VPC security groups is
-- managed by the DB cluster. For more information, see CreateDBCluster.
--
-- Default: The default EC2 VPC security group for the DB subnet group\'s
-- VPC.
createDBInstance_vpcSecurityGroupIds :: Lens.Lens' CreateDBInstance (Prelude.Maybe [Prelude.Text])
createDBInstance_vpcSecurityGroupIds = Lens.lens (\CreateDBInstance' {vpcSecurityGroupIds} -> vpcSecurityGroupIds) (\s@CreateDBInstance' {} a -> s {vpcSecurityGroupIds = a} :: CreateDBInstance) Prelude.. Lens.mapping Lens.coerced

-- | Specifies if the DB instance is a Multi-AZ deployment. You can\'t set
-- the AvailabilityZone parameter if the MultiAZ parameter is set to true.
createDBInstance_multiAZ :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_multiAZ = Lens.lens (\CreateDBInstance' {multiAZ} -> multiAZ) (\s@CreateDBInstance' {} a -> s {multiAZ = a} :: CreateDBInstance)

-- | Not supported by Neptune.
createDBInstance_allocatedStorage :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Int)
createDBInstance_allocatedStorage = Lens.lens (\CreateDBInstance' {allocatedStorage} -> allocatedStorage) (\s@CreateDBInstance' {} a -> s {allocatedStorage = a} :: CreateDBInstance)

-- | /(Not supported by Neptune)/
createDBInstance_optionGroupName :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_optionGroupName = Lens.lens (\CreateDBInstance' {optionGroupName} -> optionGroupName) (\s@CreateDBInstance' {} a -> s {optionGroupName = a} :: CreateDBInstance)

-- | True to copy all tags from the DB instance to snapshots of the DB
-- instance, and otherwise false. The default is false.
createDBInstance_copyTagsToSnapshot :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_copyTagsToSnapshot = Lens.lens (\CreateDBInstance' {copyTagsToSnapshot} -> copyTagsToSnapshot) (\s@CreateDBInstance' {} a -> s {copyTagsToSnapshot = a} :: CreateDBInstance)

-- | The time zone of the DB instance.
createDBInstance_timezone :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_timezone = Lens.lens (\CreateDBInstance' {timezone} -> timezone) (\s@CreateDBInstance' {} a -> s {timezone = a} :: CreateDBInstance)

-- | The ARN from the key store with which to associate the instance for TDE
-- encryption.
createDBInstance_tdeCredentialArn :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_tdeCredentialArn = Lens.lens (\CreateDBInstance' {tdeCredentialArn} -> tdeCredentialArn) (\s@CreateDBInstance' {} a -> s {tdeCredentialArn = a} :: CreateDBInstance)

-- | Specify the name of the IAM role to be used when making API calls to the
-- Directory Service.
createDBInstance_domainIAMRoleName :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_domainIAMRoleName = Lens.lens (\CreateDBInstance' {domainIAMRoleName} -> domainIAMRoleName) (\s@CreateDBInstance' {} a -> s {domainIAMRoleName = a} :: CreateDBInstance)

-- | The tags to assign to the new instance.
createDBInstance_tags :: Lens.Lens' CreateDBInstance (Prelude.Maybe [Tag])
createDBInstance_tags = Lens.lens (\CreateDBInstance' {tags} -> tags) (\s@CreateDBInstance' {} a -> s {tags = a} :: CreateDBInstance) Prelude.. Lens.mapping Lens.coerced

-- | The port number on which the database accepts connections.
--
-- Not applicable. The port is managed by the DB cluster. For more
-- information, see CreateDBCluster.
--
-- Default: @8182@
--
-- Type: Integer
createDBInstance_port :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Int)
createDBInstance_port = Lens.lens (\CreateDBInstance' {port} -> port) (\s@CreateDBInstance' {} a -> s {port = a} :: CreateDBInstance)

-- | Not supported by Neptune (ignored).
createDBInstance_enableIAMDatabaseAuthentication :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Bool)
createDBInstance_enableIAMDatabaseAuthentication = Lens.lens (\CreateDBInstance' {enableIAMDatabaseAuthentication} -> enableIAMDatabaseAuthentication) (\s@CreateDBInstance' {} a -> s {enableIAMDatabaseAuthentication = a} :: CreateDBInstance)

-- | Specifies the storage type to be associated with the DB instance.
--
-- Not applicable. Storage is managed by the DB Cluster.
createDBInstance_storageType :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_storageType = Lens.lens (\CreateDBInstance' {storageType} -> storageType) (\s@CreateDBInstance' {} a -> s {storageType = a} :: CreateDBInstance)

-- | The list of log types that need to be enabled for exporting to
-- CloudWatch Logs.
createDBInstance_enableCloudwatchLogsExports :: Lens.Lens' CreateDBInstance (Prelude.Maybe [Prelude.Text])
createDBInstance_enableCloudwatchLogsExports = Lens.lens (\CreateDBInstance' {enableCloudwatchLogsExports} -> enableCloudwatchLogsExports) (\s@CreateDBInstance' {} a -> s {enableCloudwatchLogsExports = a} :: CreateDBInstance) Prelude.. Lens.mapping Lens.coerced

-- | Not supported.
createDBInstance_dbName :: Lens.Lens' CreateDBInstance (Prelude.Maybe Prelude.Text)
createDBInstance_dbName = Lens.lens (\CreateDBInstance' {dbName} -> dbName) (\s@CreateDBInstance' {} a -> s {dbName = a} :: CreateDBInstance)

-- | The DB instance identifier. This parameter is stored as a lowercase
-- string.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   First character must be a letter.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
--
-- Example: @mydbinstance@
createDBInstance_dbInstanceIdentifier :: Lens.Lens' CreateDBInstance Prelude.Text
createDBInstance_dbInstanceIdentifier = Lens.lens (\CreateDBInstance' {dbInstanceIdentifier} -> dbInstanceIdentifier) (\s@CreateDBInstance' {} a -> s {dbInstanceIdentifier = a} :: CreateDBInstance)

-- | The compute and memory capacity of the DB instance, for example,
-- @db.m4.large@. Not all DB instance classes are available in all Amazon
-- Regions.
createDBInstance_dbInstanceClass :: Lens.Lens' CreateDBInstance Prelude.Text
createDBInstance_dbInstanceClass = Lens.lens (\CreateDBInstance' {dbInstanceClass} -> dbInstanceClass) (\s@CreateDBInstance' {} a -> s {dbInstanceClass = a} :: CreateDBInstance)

-- | The name of the database engine to be used for this instance.
--
-- Valid Values: @neptune@
createDBInstance_engine :: Lens.Lens' CreateDBInstance Prelude.Text
createDBInstance_engine = Lens.lens (\CreateDBInstance' {engine} -> engine) (\s@CreateDBInstance' {} a -> s {engine = a} :: CreateDBInstance)

instance Core.AWSRequest CreateDBInstance where
  type
    AWSResponse CreateDBInstance =
      CreateDBInstanceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBInstanceResult"
      ( \s h x ->
          CreateDBInstanceResponse'
            Prelude.<$> (x Core..@? "DBInstance")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDBInstance

instance Prelude.NFData CreateDBInstance

instance Core.ToHeaders CreateDBInstance where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateDBInstance where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateDBInstance where
  toQuery CreateDBInstance' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CreateDBInstance" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "EngineVersion" Core.=: engineVersion,
        "DBSecurityGroups"
          Core.=: Core.toQuery
            ( Core.toQueryList "DBSecurityGroupName"
                Prelude.<$> dbSecurityGroups
            ),
        "DeletionProtection" Core.=: deletionProtection,
        "StorageEncrypted" Core.=: storageEncrypted,
        "DBClusterIdentifier" Core.=: dbClusterIdentifier,
        "MasterUserPassword" Core.=: masterUserPassword,
        "PubliclyAccessible" Core.=: publiclyAccessible,
        "AutoMinorVersionUpgrade"
          Core.=: autoMinorVersionUpgrade,
        "MasterUsername" Core.=: masterUsername,
        "DBSubnetGroupName" Core.=: dbSubnetGroupName,
        "MonitoringRoleArn" Core.=: monitoringRoleArn,
        "Iops" Core.=: iops,
        "Domain" Core.=: domain,
        "MonitoringInterval" Core.=: monitoringInterval,
        "TdeCredentialPassword"
          Core.=: tdeCredentialPassword,
        "PromotionTier" Core.=: promotionTier,
        "LicenseModel" Core.=: licenseModel,
        "PreferredMaintenanceWindow"
          Core.=: preferredMaintenanceWindow,
        "CharacterSetName" Core.=: characterSetName,
        "EnablePerformanceInsights"
          Core.=: enablePerformanceInsights,
        "KmsKeyId" Core.=: kmsKeyId,
        "DBParameterGroupName" Core.=: dbParameterGroupName,
        "PreferredBackupWindow"
          Core.=: preferredBackupWindow,
        "AvailabilityZone" Core.=: availabilityZone,
        "BackupRetentionPeriod"
          Core.=: backupRetentionPeriod,
        "PerformanceInsightsKMSKeyId"
          Core.=: performanceInsightsKMSKeyId,
        "VpcSecurityGroupIds"
          Core.=: Core.toQuery
            ( Core.toQueryList "VpcSecurityGroupId"
                Prelude.<$> vpcSecurityGroupIds
            ),
        "MultiAZ" Core.=: multiAZ,
        "AllocatedStorage" Core.=: allocatedStorage,
        "OptionGroupName" Core.=: optionGroupName,
        "CopyTagsToSnapshot" Core.=: copyTagsToSnapshot,
        "Timezone" Core.=: timezone,
        "TdeCredentialArn" Core.=: tdeCredentialArn,
        "DomainIAMRoleName" Core.=: domainIAMRoleName,
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "Port" Core.=: port,
        "EnableIAMDatabaseAuthentication"
          Core.=: enableIAMDatabaseAuthentication,
        "StorageType" Core.=: storageType,
        "EnableCloudwatchLogsExports"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> enableCloudwatchLogsExports
            ),
        "DBName" Core.=: dbName,
        "DBInstanceIdentifier" Core.=: dbInstanceIdentifier,
        "DBInstanceClass" Core.=: dbInstanceClass,
        "Engine" Core.=: engine
      ]

-- | /See:/ 'newCreateDBInstanceResponse' smart constructor.
data CreateDBInstanceResponse = CreateDBInstanceResponse'
  { dbInstance :: Prelude.Maybe DBInstance,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDBInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbInstance', 'createDBInstanceResponse_dbInstance' - Undocumented member.
--
-- 'httpStatus', 'createDBInstanceResponse_httpStatus' - The response's http status code.
newCreateDBInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDBInstanceResponse
newCreateDBInstanceResponse pHttpStatus_ =
  CreateDBInstanceResponse'
    { dbInstance =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBInstanceResponse_dbInstance :: Lens.Lens' CreateDBInstanceResponse (Prelude.Maybe DBInstance)
createDBInstanceResponse_dbInstance = Lens.lens (\CreateDBInstanceResponse' {dbInstance} -> dbInstance) (\s@CreateDBInstanceResponse' {} a -> s {dbInstance = a} :: CreateDBInstanceResponse)

-- | The response's http status code.
createDBInstanceResponse_httpStatus :: Lens.Lens' CreateDBInstanceResponse Prelude.Int
createDBInstanceResponse_httpStatus = Lens.lens (\CreateDBInstanceResponse' {httpStatus} -> httpStatus) (\s@CreateDBInstanceResponse' {} a -> s {httpStatus = a} :: CreateDBInstanceResponse)

instance Prelude.NFData CreateDBInstanceResponse
