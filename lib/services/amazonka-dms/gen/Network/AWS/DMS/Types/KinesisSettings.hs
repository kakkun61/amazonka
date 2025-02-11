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
-- Module      : Network.AWS.DMS.Types.KinesisSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.KinesisSettings where

import qualified Network.AWS.Core as Core
import Network.AWS.DMS.Types.MessageFormatValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information that describes an Amazon Kinesis Data Stream
-- endpoint. This information includes the output format of records applied
-- to the endpoint and details of transaction and control table data
-- information.
--
-- /See:/ 'newKinesisSettings' smart constructor.
data KinesisSettings = KinesisSettings'
  { -- | Provides detailed transaction information from the source database. This
    -- information includes a commit timestamp, a log position, and values for
    -- @transaction_id@, previous @transaction_id@, and @transaction_record_id@
    -- (the record offset within a transaction). The default is @false@.
    includeTransactionDetails :: Prelude.Maybe Prelude.Bool,
    -- | Includes any data definition language (DDL) operations that change the
    -- table in the control data, such as @rename-table@, @drop-table@,
    -- @add-column@, @drop-column@, and @rename-column@. The default is
    -- @false@.
    includeTableAlterOperations :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) for the IAM role that DMS uses to write
    -- to the Kinesis data stream. The role must allow the @iam:PassRole@
    -- action.
    serviceAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Prefixes schema and table names to partition values, when the partition
    -- type is @primary-key-type@. Doing this increases data distribution among
    -- Kinesis shards. For example, suppose that a SysBench schema has
    -- thousands of tables and each table has only limited range for a primary
    -- key. In this case, the same primary key is sent from thousands of tables
    -- to the same shard, which causes throttling. The default is @false@.
    partitionIncludeSchemaTable :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams
    -- endpoint.
    streamArn :: Prelude.Maybe Prelude.Text,
    -- | Shows detailed control information for table definition, column
    -- definition, and table and column changes in the Kinesis message output.
    -- The default is @false@.
    includeControlDetails :: Prelude.Maybe Prelude.Bool,
    -- | Set this optional parameter to @true@ to avoid adding a \'0x\' prefix to
    -- raw data in hexadecimal format. For example, by default, DMS adds a
    -- \'0x\' prefix to the LOB column type in hexadecimal format moving from
    -- an Oracle source to an Amazon Kinesis target. Use the @NoHexPrefix@
    -- endpoint setting to enable migration of RAW data type columns without
    -- adding the \'0x\' prefix.
    noHexPrefix :: Prelude.Maybe Prelude.Bool,
    -- | Shows the partition value within the Kinesis message output, unless the
    -- partition type is @schema-table-type@. The default is @false@.
    includePartitionValue :: Prelude.Maybe Prelude.Bool,
    -- | The output format for the records created on the endpoint. The message
    -- format is @JSON@ (default) or @JSON_UNFORMATTED@ (a single line with no
    -- tab).
    messageFormat :: Prelude.Maybe MessageFormatValue,
    -- | Include NULL and empty columns for records migrated to the endpoint. The
    -- default is @false@.
    includeNullAndEmpty :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeTransactionDetails', 'kinesisSettings_includeTransactionDetails' - Provides detailed transaction information from the source database. This
-- information includes a commit timestamp, a log position, and values for
-- @transaction_id@, previous @transaction_id@, and @transaction_record_id@
-- (the record offset within a transaction). The default is @false@.
--
-- 'includeTableAlterOperations', 'kinesisSettings_includeTableAlterOperations' - Includes any data definition language (DDL) operations that change the
-- table in the control data, such as @rename-table@, @drop-table@,
-- @add-column@, @drop-column@, and @rename-column@. The default is
-- @false@.
--
-- 'serviceAccessRoleArn', 'kinesisSettings_serviceAccessRoleArn' - The Amazon Resource Name (ARN) for the IAM role that DMS uses to write
-- to the Kinesis data stream. The role must allow the @iam:PassRole@
-- action.
--
-- 'partitionIncludeSchemaTable', 'kinesisSettings_partitionIncludeSchemaTable' - Prefixes schema and table names to partition values, when the partition
-- type is @primary-key-type@. Doing this increases data distribution among
-- Kinesis shards. For example, suppose that a SysBench schema has
-- thousands of tables and each table has only limited range for a primary
-- key. In this case, the same primary key is sent from thousands of tables
-- to the same shard, which causes throttling. The default is @false@.
--
-- 'streamArn', 'kinesisSettings_streamArn' - The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams
-- endpoint.
--
-- 'includeControlDetails', 'kinesisSettings_includeControlDetails' - Shows detailed control information for table definition, column
-- definition, and table and column changes in the Kinesis message output.
-- The default is @false@.
--
-- 'noHexPrefix', 'kinesisSettings_noHexPrefix' - Set this optional parameter to @true@ to avoid adding a \'0x\' prefix to
-- raw data in hexadecimal format. For example, by default, DMS adds a
-- \'0x\' prefix to the LOB column type in hexadecimal format moving from
-- an Oracle source to an Amazon Kinesis target. Use the @NoHexPrefix@
-- endpoint setting to enable migration of RAW data type columns without
-- adding the \'0x\' prefix.
--
-- 'includePartitionValue', 'kinesisSettings_includePartitionValue' - Shows the partition value within the Kinesis message output, unless the
-- partition type is @schema-table-type@. The default is @false@.
--
-- 'messageFormat', 'kinesisSettings_messageFormat' - The output format for the records created on the endpoint. The message
-- format is @JSON@ (default) or @JSON_UNFORMATTED@ (a single line with no
-- tab).
--
-- 'includeNullAndEmpty', 'kinesisSettings_includeNullAndEmpty' - Include NULL and empty columns for records migrated to the endpoint. The
-- default is @false@.
newKinesisSettings ::
  KinesisSettings
newKinesisSettings =
  KinesisSettings'
    { includeTransactionDetails =
        Prelude.Nothing,
      includeTableAlterOperations = Prelude.Nothing,
      serviceAccessRoleArn = Prelude.Nothing,
      partitionIncludeSchemaTable = Prelude.Nothing,
      streamArn = Prelude.Nothing,
      includeControlDetails = Prelude.Nothing,
      noHexPrefix = Prelude.Nothing,
      includePartitionValue = Prelude.Nothing,
      messageFormat = Prelude.Nothing,
      includeNullAndEmpty = Prelude.Nothing
    }

-- | Provides detailed transaction information from the source database. This
-- information includes a commit timestamp, a log position, and values for
-- @transaction_id@, previous @transaction_id@, and @transaction_record_id@
-- (the record offset within a transaction). The default is @false@.
kinesisSettings_includeTransactionDetails :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Bool)
kinesisSettings_includeTransactionDetails = Lens.lens (\KinesisSettings' {includeTransactionDetails} -> includeTransactionDetails) (\s@KinesisSettings' {} a -> s {includeTransactionDetails = a} :: KinesisSettings)

-- | Includes any data definition language (DDL) operations that change the
-- table in the control data, such as @rename-table@, @drop-table@,
-- @add-column@, @drop-column@, and @rename-column@. The default is
-- @false@.
kinesisSettings_includeTableAlterOperations :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Bool)
kinesisSettings_includeTableAlterOperations = Lens.lens (\KinesisSettings' {includeTableAlterOperations} -> includeTableAlterOperations) (\s@KinesisSettings' {} a -> s {includeTableAlterOperations = a} :: KinesisSettings)

-- | The Amazon Resource Name (ARN) for the IAM role that DMS uses to write
-- to the Kinesis data stream. The role must allow the @iam:PassRole@
-- action.
kinesisSettings_serviceAccessRoleArn :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Text)
kinesisSettings_serviceAccessRoleArn = Lens.lens (\KinesisSettings' {serviceAccessRoleArn} -> serviceAccessRoleArn) (\s@KinesisSettings' {} a -> s {serviceAccessRoleArn = a} :: KinesisSettings)

-- | Prefixes schema and table names to partition values, when the partition
-- type is @primary-key-type@. Doing this increases data distribution among
-- Kinesis shards. For example, suppose that a SysBench schema has
-- thousands of tables and each table has only limited range for a primary
-- key. In this case, the same primary key is sent from thousands of tables
-- to the same shard, which causes throttling. The default is @false@.
kinesisSettings_partitionIncludeSchemaTable :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Bool)
kinesisSettings_partitionIncludeSchemaTable = Lens.lens (\KinesisSettings' {partitionIncludeSchemaTable} -> partitionIncludeSchemaTable) (\s@KinesisSettings' {} a -> s {partitionIncludeSchemaTable = a} :: KinesisSettings)

-- | The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams
-- endpoint.
kinesisSettings_streamArn :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Text)
kinesisSettings_streamArn = Lens.lens (\KinesisSettings' {streamArn} -> streamArn) (\s@KinesisSettings' {} a -> s {streamArn = a} :: KinesisSettings)

-- | Shows detailed control information for table definition, column
-- definition, and table and column changes in the Kinesis message output.
-- The default is @false@.
kinesisSettings_includeControlDetails :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Bool)
kinesisSettings_includeControlDetails = Lens.lens (\KinesisSettings' {includeControlDetails} -> includeControlDetails) (\s@KinesisSettings' {} a -> s {includeControlDetails = a} :: KinesisSettings)

-- | Set this optional parameter to @true@ to avoid adding a \'0x\' prefix to
-- raw data in hexadecimal format. For example, by default, DMS adds a
-- \'0x\' prefix to the LOB column type in hexadecimal format moving from
-- an Oracle source to an Amazon Kinesis target. Use the @NoHexPrefix@
-- endpoint setting to enable migration of RAW data type columns without
-- adding the \'0x\' prefix.
kinesisSettings_noHexPrefix :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Bool)
kinesisSettings_noHexPrefix = Lens.lens (\KinesisSettings' {noHexPrefix} -> noHexPrefix) (\s@KinesisSettings' {} a -> s {noHexPrefix = a} :: KinesisSettings)

-- | Shows the partition value within the Kinesis message output, unless the
-- partition type is @schema-table-type@. The default is @false@.
kinesisSettings_includePartitionValue :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Bool)
kinesisSettings_includePartitionValue = Lens.lens (\KinesisSettings' {includePartitionValue} -> includePartitionValue) (\s@KinesisSettings' {} a -> s {includePartitionValue = a} :: KinesisSettings)

-- | The output format for the records created on the endpoint. The message
-- format is @JSON@ (default) or @JSON_UNFORMATTED@ (a single line with no
-- tab).
kinesisSettings_messageFormat :: Lens.Lens' KinesisSettings (Prelude.Maybe MessageFormatValue)
kinesisSettings_messageFormat = Lens.lens (\KinesisSettings' {messageFormat} -> messageFormat) (\s@KinesisSettings' {} a -> s {messageFormat = a} :: KinesisSettings)

-- | Include NULL and empty columns for records migrated to the endpoint. The
-- default is @false@.
kinesisSettings_includeNullAndEmpty :: Lens.Lens' KinesisSettings (Prelude.Maybe Prelude.Bool)
kinesisSettings_includeNullAndEmpty = Lens.lens (\KinesisSettings' {includeNullAndEmpty} -> includeNullAndEmpty) (\s@KinesisSettings' {} a -> s {includeNullAndEmpty = a} :: KinesisSettings)

instance Core.FromJSON KinesisSettings where
  parseJSON =
    Core.withObject
      "KinesisSettings"
      ( \x ->
          KinesisSettings'
            Prelude.<$> (x Core..:? "IncludeTransactionDetails")
            Prelude.<*> (x Core..:? "IncludeTableAlterOperations")
            Prelude.<*> (x Core..:? "ServiceAccessRoleArn")
            Prelude.<*> (x Core..:? "PartitionIncludeSchemaTable")
            Prelude.<*> (x Core..:? "StreamArn")
            Prelude.<*> (x Core..:? "IncludeControlDetails")
            Prelude.<*> (x Core..:? "NoHexPrefix")
            Prelude.<*> (x Core..:? "IncludePartitionValue")
            Prelude.<*> (x Core..:? "MessageFormat")
            Prelude.<*> (x Core..:? "IncludeNullAndEmpty")
      )

instance Prelude.Hashable KinesisSettings

instance Prelude.NFData KinesisSettings

instance Core.ToJSON KinesisSettings where
  toJSON KinesisSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("IncludeTransactionDetails" Core..=)
              Prelude.<$> includeTransactionDetails,
            ("IncludeTableAlterOperations" Core..=)
              Prelude.<$> includeTableAlterOperations,
            ("ServiceAccessRoleArn" Core..=)
              Prelude.<$> serviceAccessRoleArn,
            ("PartitionIncludeSchemaTable" Core..=)
              Prelude.<$> partitionIncludeSchemaTable,
            ("StreamArn" Core..=) Prelude.<$> streamArn,
            ("IncludeControlDetails" Core..=)
              Prelude.<$> includeControlDetails,
            ("NoHexPrefix" Core..=) Prelude.<$> noHexPrefix,
            ("IncludePartitionValue" Core..=)
              Prelude.<$> includePartitionValue,
            ("MessageFormat" Core..=) Prelude.<$> messageFormat,
            ("IncludeNullAndEmpty" Core..=)
              Prelude.<$> includeNullAndEmpty
          ]
      )
