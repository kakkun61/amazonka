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
-- Module      : Network.AWS.QLDB.ExportJournalToS3
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports journal contents within a date and time range from a ledger into
-- a specified Amazon Simple Storage Service (Amazon S3) bucket. The data
-- is written as files in Amazon Ion format.
--
-- If the ledger with the given @Name@ doesn\'t exist, then throws
-- @ResourceNotFoundException@.
--
-- If the ledger with the given @Name@ is in @CREATING@ status, then throws
-- @ResourcePreconditionNotMetException@.
--
-- You can initiate up to two concurrent journal export requests for each
-- ledger. Beyond this limit, journal export requests throw
-- @LimitExceededException@.
module Network.AWS.QLDB.ExportJournalToS3
  ( -- * Creating a Request
    ExportJournalToS3 (..),
    newExportJournalToS3,

    -- * Request Lenses
    exportJournalToS3_name,
    exportJournalToS3_inclusiveStartTime,
    exportJournalToS3_exclusiveEndTime,
    exportJournalToS3_s3ExportConfiguration,
    exportJournalToS3_roleArn,

    -- * Destructuring the Response
    ExportJournalToS3Response (..),
    newExportJournalToS3Response,

    -- * Response Lenses
    exportJournalToS3Response_httpStatus,
    exportJournalToS3Response_exportId,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QLDB.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newExportJournalToS3' smart constructor.
data ExportJournalToS3 = ExportJournalToS3'
  { -- | The name of the ledger.
    name :: Prelude.Text,
    -- | The inclusive start date and time for the range of journal contents to
    -- export.
    --
    -- The @InclusiveStartTime@ must be in @ISO 8601@ date and time format and
    -- in Universal Coordinated Time (UTC). For example:
    -- @2019-06-13T21:36:34Z@.
    --
    -- The @InclusiveStartTime@ must be before @ExclusiveEndTime@.
    --
    -- If you provide an @InclusiveStartTime@ that is before the ledger\'s
    -- @CreationDateTime@, Amazon QLDB defaults it to the ledger\'s
    -- @CreationDateTime@.
    inclusiveStartTime :: Core.POSIX,
    -- | The exclusive end date and time for the range of journal contents to
    -- export.
    --
    -- The @ExclusiveEndTime@ must be in @ISO 8601@ date and time format and in
    -- Universal Coordinated Time (UTC). For example: @2019-06-13T21:36:34Z@.
    --
    -- The @ExclusiveEndTime@ must be less than or equal to the current UTC
    -- date and time.
    exclusiveEndTime :: Core.POSIX,
    -- | The configuration settings of the Amazon S3 bucket destination for your
    -- export request.
    s3ExportConfiguration :: S3ExportConfiguration,
    -- | The Amazon Resource Name (ARN) of the IAM role that grants QLDB
    -- permissions for a journal export job to do the following:
    --
    -- -   Write objects into your Amazon Simple Storage Service (Amazon S3)
    --     bucket.
    --
    -- -   (Optional) Use your customer master key (CMK) in Key Management
    --     Service (KMS) for server-side encryption of your exported data.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportJournalToS3' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'exportJournalToS3_name' - The name of the ledger.
--
-- 'inclusiveStartTime', 'exportJournalToS3_inclusiveStartTime' - The inclusive start date and time for the range of journal contents to
-- export.
--
-- The @InclusiveStartTime@ must be in @ISO 8601@ date and time format and
-- in Universal Coordinated Time (UTC). For example:
-- @2019-06-13T21:36:34Z@.
--
-- The @InclusiveStartTime@ must be before @ExclusiveEndTime@.
--
-- If you provide an @InclusiveStartTime@ that is before the ledger\'s
-- @CreationDateTime@, Amazon QLDB defaults it to the ledger\'s
-- @CreationDateTime@.
--
-- 'exclusiveEndTime', 'exportJournalToS3_exclusiveEndTime' - The exclusive end date and time for the range of journal contents to
-- export.
--
-- The @ExclusiveEndTime@ must be in @ISO 8601@ date and time format and in
-- Universal Coordinated Time (UTC). For example: @2019-06-13T21:36:34Z@.
--
-- The @ExclusiveEndTime@ must be less than or equal to the current UTC
-- date and time.
--
-- 's3ExportConfiguration', 'exportJournalToS3_s3ExportConfiguration' - The configuration settings of the Amazon S3 bucket destination for your
-- export request.
--
-- 'roleArn', 'exportJournalToS3_roleArn' - The Amazon Resource Name (ARN) of the IAM role that grants QLDB
-- permissions for a journal export job to do the following:
--
-- -   Write objects into your Amazon Simple Storage Service (Amazon S3)
--     bucket.
--
-- -   (Optional) Use your customer master key (CMK) in Key Management
--     Service (KMS) for server-side encryption of your exported data.
newExportJournalToS3 ::
  -- | 'name'
  Prelude.Text ->
  -- | 'inclusiveStartTime'
  Prelude.UTCTime ->
  -- | 'exclusiveEndTime'
  Prelude.UTCTime ->
  -- | 's3ExportConfiguration'
  S3ExportConfiguration ->
  -- | 'roleArn'
  Prelude.Text ->
  ExportJournalToS3
newExportJournalToS3
  pName_
  pInclusiveStartTime_
  pExclusiveEndTime_
  pS3ExportConfiguration_
  pRoleArn_ =
    ExportJournalToS3'
      { name = pName_,
        inclusiveStartTime =
          Core._Time Lens.# pInclusiveStartTime_,
        exclusiveEndTime =
          Core._Time Lens.# pExclusiveEndTime_,
        s3ExportConfiguration = pS3ExportConfiguration_,
        roleArn = pRoleArn_
      }

-- | The name of the ledger.
exportJournalToS3_name :: Lens.Lens' ExportJournalToS3 Prelude.Text
exportJournalToS3_name = Lens.lens (\ExportJournalToS3' {name} -> name) (\s@ExportJournalToS3' {} a -> s {name = a} :: ExportJournalToS3)

-- | The inclusive start date and time for the range of journal contents to
-- export.
--
-- The @InclusiveStartTime@ must be in @ISO 8601@ date and time format and
-- in Universal Coordinated Time (UTC). For example:
-- @2019-06-13T21:36:34Z@.
--
-- The @InclusiveStartTime@ must be before @ExclusiveEndTime@.
--
-- If you provide an @InclusiveStartTime@ that is before the ledger\'s
-- @CreationDateTime@, Amazon QLDB defaults it to the ledger\'s
-- @CreationDateTime@.
exportJournalToS3_inclusiveStartTime :: Lens.Lens' ExportJournalToS3 Prelude.UTCTime
exportJournalToS3_inclusiveStartTime = Lens.lens (\ExportJournalToS3' {inclusiveStartTime} -> inclusiveStartTime) (\s@ExportJournalToS3' {} a -> s {inclusiveStartTime = a} :: ExportJournalToS3) Prelude.. Core._Time

-- | The exclusive end date and time for the range of journal contents to
-- export.
--
-- The @ExclusiveEndTime@ must be in @ISO 8601@ date and time format and in
-- Universal Coordinated Time (UTC). For example: @2019-06-13T21:36:34Z@.
--
-- The @ExclusiveEndTime@ must be less than or equal to the current UTC
-- date and time.
exportJournalToS3_exclusiveEndTime :: Lens.Lens' ExportJournalToS3 Prelude.UTCTime
exportJournalToS3_exclusiveEndTime = Lens.lens (\ExportJournalToS3' {exclusiveEndTime} -> exclusiveEndTime) (\s@ExportJournalToS3' {} a -> s {exclusiveEndTime = a} :: ExportJournalToS3) Prelude.. Core._Time

-- | The configuration settings of the Amazon S3 bucket destination for your
-- export request.
exportJournalToS3_s3ExportConfiguration :: Lens.Lens' ExportJournalToS3 S3ExportConfiguration
exportJournalToS3_s3ExportConfiguration = Lens.lens (\ExportJournalToS3' {s3ExportConfiguration} -> s3ExportConfiguration) (\s@ExportJournalToS3' {} a -> s {s3ExportConfiguration = a} :: ExportJournalToS3)

-- | The Amazon Resource Name (ARN) of the IAM role that grants QLDB
-- permissions for a journal export job to do the following:
--
-- -   Write objects into your Amazon Simple Storage Service (Amazon S3)
--     bucket.
--
-- -   (Optional) Use your customer master key (CMK) in Key Management
--     Service (KMS) for server-side encryption of your exported data.
exportJournalToS3_roleArn :: Lens.Lens' ExportJournalToS3 Prelude.Text
exportJournalToS3_roleArn = Lens.lens (\ExportJournalToS3' {roleArn} -> roleArn) (\s@ExportJournalToS3' {} a -> s {roleArn = a} :: ExportJournalToS3)

instance Core.AWSRequest ExportJournalToS3 where
  type
    AWSResponse ExportJournalToS3 =
      ExportJournalToS3Response
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ExportJournalToS3Response'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "ExportId")
      )

instance Prelude.Hashable ExportJournalToS3

instance Prelude.NFData ExportJournalToS3

instance Core.ToHeaders ExportJournalToS3 where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ExportJournalToS3 where
  toJSON ExportJournalToS3' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("InclusiveStartTime" Core..= inclusiveStartTime),
            Prelude.Just
              ("ExclusiveEndTime" Core..= exclusiveEndTime),
            Prelude.Just
              ( "S3ExportConfiguration"
                  Core..= s3ExportConfiguration
              ),
            Prelude.Just ("RoleArn" Core..= roleArn)
          ]
      )

instance Core.ToPath ExportJournalToS3 where
  toPath ExportJournalToS3' {..} =
    Prelude.mconcat
      ["/ledgers/", Core.toBS name, "/journal-s3-exports"]

instance Core.ToQuery ExportJournalToS3 where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newExportJournalToS3Response' smart constructor.
data ExportJournalToS3Response = ExportJournalToS3Response'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The UUID (represented in Base62-encoded text) that QLDB assigns to each
    -- journal export job.
    --
    -- To describe your export request and check the status of the job, you can
    -- use @ExportId@ to call @DescribeJournalS3Export@.
    exportId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportJournalToS3Response' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'exportJournalToS3Response_httpStatus' - The response's http status code.
--
-- 'exportId', 'exportJournalToS3Response_exportId' - The UUID (represented in Base62-encoded text) that QLDB assigns to each
-- journal export job.
--
-- To describe your export request and check the status of the job, you can
-- use @ExportId@ to call @DescribeJournalS3Export@.
newExportJournalToS3Response ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'exportId'
  Prelude.Text ->
  ExportJournalToS3Response
newExportJournalToS3Response pHttpStatus_ pExportId_ =
  ExportJournalToS3Response'
    { httpStatus =
        pHttpStatus_,
      exportId = pExportId_
    }

-- | The response's http status code.
exportJournalToS3Response_httpStatus :: Lens.Lens' ExportJournalToS3Response Prelude.Int
exportJournalToS3Response_httpStatus = Lens.lens (\ExportJournalToS3Response' {httpStatus} -> httpStatus) (\s@ExportJournalToS3Response' {} a -> s {httpStatus = a} :: ExportJournalToS3Response)

-- | The UUID (represented in Base62-encoded text) that QLDB assigns to each
-- journal export job.
--
-- To describe your export request and check the status of the job, you can
-- use @ExportId@ to call @DescribeJournalS3Export@.
exportJournalToS3Response_exportId :: Lens.Lens' ExportJournalToS3Response Prelude.Text
exportJournalToS3Response_exportId = Lens.lens (\ExportJournalToS3Response' {exportId} -> exportId) (\s@ExportJournalToS3Response' {} a -> s {exportId = a} :: ExportJournalToS3Response)

instance Prelude.NFData ExportJournalToS3Response
