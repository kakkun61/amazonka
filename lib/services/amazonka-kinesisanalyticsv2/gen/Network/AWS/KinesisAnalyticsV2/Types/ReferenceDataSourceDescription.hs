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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ReferenceDataSourceDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ReferenceDataSourceDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.S3ReferenceDataSourceDescription
import Network.AWS.KinesisAnalyticsV2.Types.SourceSchema
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For a SQL-based Kinesis Data Analytics application, describes the
-- reference data source configured for an application.
--
-- /See:/ 'newReferenceDataSourceDescription' smart constructor.
data ReferenceDataSourceDescription = ReferenceDataSourceDescription'
  { -- | Describes the format of the data in the streaming source, and how each
    -- data element maps to corresponding columns created in the in-application
    -- stream.
    referenceSchema :: Prelude.Maybe SourceSchema,
    -- | The ID of the reference data source. This is the ID that Kinesis Data
    -- Analytics assigns when you add the reference data source to your
    -- application using the CreateApplication or UpdateApplication operation.
    referenceId :: Prelude.Text,
    -- | The in-application table name created by the specific reference data
    -- source configuration.
    tableName :: Prelude.Text,
    -- | Provides the Amazon S3 bucket name, the object key name that contains
    -- the reference data.
    s3ReferenceDataSourceDescription :: S3ReferenceDataSourceDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReferenceDataSourceDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'referenceSchema', 'referenceDataSourceDescription_referenceSchema' - Describes the format of the data in the streaming source, and how each
-- data element maps to corresponding columns created in the in-application
-- stream.
--
-- 'referenceId', 'referenceDataSourceDescription_referenceId' - The ID of the reference data source. This is the ID that Kinesis Data
-- Analytics assigns when you add the reference data source to your
-- application using the CreateApplication or UpdateApplication operation.
--
-- 'tableName', 'referenceDataSourceDescription_tableName' - The in-application table name created by the specific reference data
-- source configuration.
--
-- 's3ReferenceDataSourceDescription', 'referenceDataSourceDescription_s3ReferenceDataSourceDescription' - Provides the Amazon S3 bucket name, the object key name that contains
-- the reference data.
newReferenceDataSourceDescription ::
  -- | 'referenceId'
  Prelude.Text ->
  -- | 'tableName'
  Prelude.Text ->
  -- | 's3ReferenceDataSourceDescription'
  S3ReferenceDataSourceDescription ->
  ReferenceDataSourceDescription
newReferenceDataSourceDescription
  pReferenceId_
  pTableName_
  pS3ReferenceDataSourceDescription_ =
    ReferenceDataSourceDescription'
      { referenceSchema =
          Prelude.Nothing,
        referenceId = pReferenceId_,
        tableName = pTableName_,
        s3ReferenceDataSourceDescription =
          pS3ReferenceDataSourceDescription_
      }

-- | Describes the format of the data in the streaming source, and how each
-- data element maps to corresponding columns created in the in-application
-- stream.
referenceDataSourceDescription_referenceSchema :: Lens.Lens' ReferenceDataSourceDescription (Prelude.Maybe SourceSchema)
referenceDataSourceDescription_referenceSchema = Lens.lens (\ReferenceDataSourceDescription' {referenceSchema} -> referenceSchema) (\s@ReferenceDataSourceDescription' {} a -> s {referenceSchema = a} :: ReferenceDataSourceDescription)

-- | The ID of the reference data source. This is the ID that Kinesis Data
-- Analytics assigns when you add the reference data source to your
-- application using the CreateApplication or UpdateApplication operation.
referenceDataSourceDescription_referenceId :: Lens.Lens' ReferenceDataSourceDescription Prelude.Text
referenceDataSourceDescription_referenceId = Lens.lens (\ReferenceDataSourceDescription' {referenceId} -> referenceId) (\s@ReferenceDataSourceDescription' {} a -> s {referenceId = a} :: ReferenceDataSourceDescription)

-- | The in-application table name created by the specific reference data
-- source configuration.
referenceDataSourceDescription_tableName :: Lens.Lens' ReferenceDataSourceDescription Prelude.Text
referenceDataSourceDescription_tableName = Lens.lens (\ReferenceDataSourceDescription' {tableName} -> tableName) (\s@ReferenceDataSourceDescription' {} a -> s {tableName = a} :: ReferenceDataSourceDescription)

-- | Provides the Amazon S3 bucket name, the object key name that contains
-- the reference data.
referenceDataSourceDescription_s3ReferenceDataSourceDescription :: Lens.Lens' ReferenceDataSourceDescription S3ReferenceDataSourceDescription
referenceDataSourceDescription_s3ReferenceDataSourceDescription = Lens.lens (\ReferenceDataSourceDescription' {s3ReferenceDataSourceDescription} -> s3ReferenceDataSourceDescription) (\s@ReferenceDataSourceDescription' {} a -> s {s3ReferenceDataSourceDescription = a} :: ReferenceDataSourceDescription)

instance Core.FromJSON ReferenceDataSourceDescription where
  parseJSON =
    Core.withObject
      "ReferenceDataSourceDescription"
      ( \x ->
          ReferenceDataSourceDescription'
            Prelude.<$> (x Core..:? "ReferenceSchema")
            Prelude.<*> (x Core..: "ReferenceId")
            Prelude.<*> (x Core..: "TableName")
            Prelude.<*> (x Core..: "S3ReferenceDataSourceDescription")
      )

instance
  Prelude.Hashable
    ReferenceDataSourceDescription

instance
  Prelude.NFData
    ReferenceDataSourceDescription
