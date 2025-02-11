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
-- Module      : Network.AWS.CloudTrail.UpdateTrail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates trail settings that control what events you are logging, and how
-- to handle log files. Changes to a trail do not require stopping the
-- CloudTrail service. Use this action to designate an existing bucket for
-- log delivery. If the existing bucket has previously been a target for
-- CloudTrail log files, an IAM policy exists for the bucket. @UpdateTrail@
-- must be called from the region in which the trail was created;
-- otherwise, an @InvalidHomeRegionException@ is thrown.
module Network.AWS.CloudTrail.UpdateTrail
  ( -- * Creating a Request
    UpdateTrail (..),
    newUpdateTrail,

    -- * Request Lenses
    updateTrail_s3KeyPrefix,
    updateTrail_snsTopicName,
    updateTrail_enableLogFileValidation,
    updateTrail_cloudWatchLogsLogGroupArn,
    updateTrail_kmsKeyId,
    updateTrail_includeGlobalServiceEvents,
    updateTrail_isOrganizationTrail,
    updateTrail_cloudWatchLogsRoleArn,
    updateTrail_s3BucketName,
    updateTrail_isMultiRegionTrail,
    updateTrail_name,

    -- * Destructuring the Response
    UpdateTrailResponse (..),
    newUpdateTrailResponse,

    -- * Response Lenses
    updateTrailResponse_logFileValidationEnabled,
    updateTrailResponse_trailARN,
    updateTrailResponse_s3KeyPrefix,
    updateTrailResponse_snsTopicARN,
    updateTrailResponse_snsTopicName,
    updateTrailResponse_cloudWatchLogsLogGroupArn,
    updateTrailResponse_kmsKeyId,
    updateTrailResponse_name,
    updateTrailResponse_includeGlobalServiceEvents,
    updateTrailResponse_isOrganizationTrail,
    updateTrailResponse_cloudWatchLogsRoleArn,
    updateTrailResponse_s3BucketName,
    updateTrailResponse_isMultiRegionTrail,
    updateTrailResponse_httpStatus,
  )
where

import Network.AWS.CloudTrail.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Specifies settings to update for the trail.
--
-- /See:/ 'newUpdateTrail' smart constructor.
data UpdateTrail = UpdateTrail'
  { -- | Specifies the Amazon S3 key prefix that comes after the name of the
    -- bucket you have designated for log file delivery. For more information,
    -- see
    -- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files>.
    -- The maximum length is 200 characters.
    s3KeyPrefix :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the Amazon SNS topic defined for notification of
    -- log file delivery. The maximum length is 256 characters.
    snsTopicName :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether log file validation is enabled. The default is false.
    --
    -- When you disable log file integrity validation, the chain of digest
    -- files is broken after one hour. CloudTrail does not create digest files
    -- for log files that were delivered during a period in which log file
    -- integrity validation was disabled. For example, if you enable log file
    -- integrity validation at noon on January 1, disable it at noon on January
    -- 2, and re-enable it at noon on January 10, digest files will not be
    -- created for the log files delivered from noon on January 2 to noon on
    -- January 10. The same applies whenever you stop CloudTrail logging or
    -- delete a trail.
    enableLogFileValidation :: Prelude.Maybe Prelude.Bool,
    -- | Specifies a log group name using an Amazon Resource Name (ARN), a unique
    -- identifier that represents the log group to which CloudTrail logs are
    -- delivered. Not required unless you specify @CloudWatchLogsRoleArn@.
    cloudWatchLogsLogGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the KMS key ID to use to encrypt the logs delivered by
    -- CloudTrail. The value can be an alias name prefixed by \"alias\/\", a
    -- fully specified ARN to an alias, a fully specified ARN to a key, or a
    -- globally unique identifier.
    --
    -- CloudTrail also supports KMS multi-Region keys. For more information
    -- about multi-Region keys, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html Using multi-Region keys>
    -- in the /Key Management Service Developer Guide/.
    --
    -- Examples:
    --
    -- -   alias\/MyAliasName
    --
    -- -   arn:aws:kms:us-east-2:123456789012:alias\/MyAliasName
    --
    -- -   arn:aws:kms:us-east-2:123456789012:key\/12345678-1234-1234-1234-123456789012
    --
    -- -   12345678-1234-1234-1234-123456789012
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the trail is publishing events from global services
    -- such as IAM to the log files.
    includeGlobalServiceEvents :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether the trail is applied to all accounts in an
    -- organization in Organizations, or only for the current Amazon Web
    -- Services account. The default is false, and cannot be true unless the
    -- call is made on behalf of an Amazon Web Services account that is the
    -- management account for an organization in Organizations. If the trail is
    -- not an organization trail and this is set to @true@, the trail will be
    -- created in all Amazon Web Services accounts that belong to the
    -- organization. If the trail is an organization trail and this is set to
    -- @false@, the trail will remain in the current Amazon Web Services
    -- account but be deleted from all member accounts in the organization.
    isOrganizationTrail :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the role for the CloudWatch Logs endpoint to assume to write
    -- to a user\'s log group.
    cloudWatchLogsRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the Amazon S3 bucket designated for publishing log
    -- files. See
    -- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements>.
    s3BucketName :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the trail applies only to the current region or to all
    -- regions. The default is false. If the trail exists only in the current
    -- region and this value is set to true, shadow trails (replications of the
    -- trail) will be created in the other regions. If the trail exists in all
    -- regions and this value is set to false, the trail will remain in the
    -- region where it was created, and its shadow trails in other regions will
    -- be deleted. As a best practice, consider using trails that log events in
    -- all regions.
    isMultiRegionTrail :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the name of the trail or trail ARN. If @Name@ is a trail name,
    -- the string must meet the following requirements:
    --
    -- -   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
    --     underscores (_), or dashes (-)
    --
    -- -   Start with a letter or number, and end with a letter or number
    --
    -- -   Be between 3 and 128 characters
    --
    -- -   Have no adjacent periods, underscores or dashes. Names like
    --     @my-_namespace@ and @my--namespace@ are not valid.
    --
    -- -   Not be in IP address format (for example, 192.168.5.4)
    --
    -- If @Name@ is a trail ARN, it must be in the following format.
    --
    -- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTrail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3KeyPrefix', 'updateTrail_s3KeyPrefix' - Specifies the Amazon S3 key prefix that comes after the name of the
-- bucket you have designated for log file delivery. For more information,
-- see
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files>.
-- The maximum length is 200 characters.
--
-- 'snsTopicName', 'updateTrail_snsTopicName' - Specifies the name of the Amazon SNS topic defined for notification of
-- log file delivery. The maximum length is 256 characters.
--
-- 'enableLogFileValidation', 'updateTrail_enableLogFileValidation' - Specifies whether log file validation is enabled. The default is false.
--
-- When you disable log file integrity validation, the chain of digest
-- files is broken after one hour. CloudTrail does not create digest files
-- for log files that were delivered during a period in which log file
-- integrity validation was disabled. For example, if you enable log file
-- integrity validation at noon on January 1, disable it at noon on January
-- 2, and re-enable it at noon on January 10, digest files will not be
-- created for the log files delivered from noon on January 2 to noon on
-- January 10. The same applies whenever you stop CloudTrail logging or
-- delete a trail.
--
-- 'cloudWatchLogsLogGroupArn', 'updateTrail_cloudWatchLogsLogGroupArn' - Specifies a log group name using an Amazon Resource Name (ARN), a unique
-- identifier that represents the log group to which CloudTrail logs are
-- delivered. Not required unless you specify @CloudWatchLogsRoleArn@.
--
-- 'kmsKeyId', 'updateTrail_kmsKeyId' - Specifies the KMS key ID to use to encrypt the logs delivered by
-- CloudTrail. The value can be an alias name prefixed by \"alias\/\", a
-- fully specified ARN to an alias, a fully specified ARN to a key, or a
-- globally unique identifier.
--
-- CloudTrail also supports KMS multi-Region keys. For more information
-- about multi-Region keys, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html Using multi-Region keys>
-- in the /Key Management Service Developer Guide/.
--
-- Examples:
--
-- -   alias\/MyAliasName
--
-- -   arn:aws:kms:us-east-2:123456789012:alias\/MyAliasName
--
-- -   arn:aws:kms:us-east-2:123456789012:key\/12345678-1234-1234-1234-123456789012
--
-- -   12345678-1234-1234-1234-123456789012
--
-- 'includeGlobalServiceEvents', 'updateTrail_includeGlobalServiceEvents' - Specifies whether the trail is publishing events from global services
-- such as IAM to the log files.
--
-- 'isOrganizationTrail', 'updateTrail_isOrganizationTrail' - Specifies whether the trail is applied to all accounts in an
-- organization in Organizations, or only for the current Amazon Web
-- Services account. The default is false, and cannot be true unless the
-- call is made on behalf of an Amazon Web Services account that is the
-- management account for an organization in Organizations. If the trail is
-- not an organization trail and this is set to @true@, the trail will be
-- created in all Amazon Web Services accounts that belong to the
-- organization. If the trail is an organization trail and this is set to
-- @false@, the trail will remain in the current Amazon Web Services
-- account but be deleted from all member accounts in the organization.
--
-- 'cloudWatchLogsRoleArn', 'updateTrail_cloudWatchLogsRoleArn' - Specifies the role for the CloudWatch Logs endpoint to assume to write
-- to a user\'s log group.
--
-- 's3BucketName', 'updateTrail_s3BucketName' - Specifies the name of the Amazon S3 bucket designated for publishing log
-- files. See
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements>.
--
-- 'isMultiRegionTrail', 'updateTrail_isMultiRegionTrail' - Specifies whether the trail applies only to the current region or to all
-- regions. The default is false. If the trail exists only in the current
-- region and this value is set to true, shadow trails (replications of the
-- trail) will be created in the other regions. If the trail exists in all
-- regions and this value is set to false, the trail will remain in the
-- region where it was created, and its shadow trails in other regions will
-- be deleted. As a best practice, consider using trails that log events in
-- all regions.
--
-- 'name', 'updateTrail_name' - Specifies the name of the trail or trail ARN. If @Name@ is a trail name,
-- the string must meet the following requirements:
--
-- -   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
--     underscores (_), or dashes (-)
--
-- -   Start with a letter or number, and end with a letter or number
--
-- -   Be between 3 and 128 characters
--
-- -   Have no adjacent periods, underscores or dashes. Names like
--     @my-_namespace@ and @my--namespace@ are not valid.
--
-- -   Not be in IP address format (for example, 192.168.5.4)
--
-- If @Name@ is a trail ARN, it must be in the following format.
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
newUpdateTrail ::
  -- | 'name'
  Prelude.Text ->
  UpdateTrail
newUpdateTrail pName_ =
  UpdateTrail'
    { s3KeyPrefix = Prelude.Nothing,
      snsTopicName = Prelude.Nothing,
      enableLogFileValidation = Prelude.Nothing,
      cloudWatchLogsLogGroupArn = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      includeGlobalServiceEvents = Prelude.Nothing,
      isOrganizationTrail = Prelude.Nothing,
      cloudWatchLogsRoleArn = Prelude.Nothing,
      s3BucketName = Prelude.Nothing,
      isMultiRegionTrail = Prelude.Nothing,
      name = pName_
    }

-- | Specifies the Amazon S3 key prefix that comes after the name of the
-- bucket you have designated for log file delivery. For more information,
-- see
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your CloudTrail Log Files>.
-- The maximum length is 200 characters.
updateTrail_s3KeyPrefix :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Text)
updateTrail_s3KeyPrefix = Lens.lens (\UpdateTrail' {s3KeyPrefix} -> s3KeyPrefix) (\s@UpdateTrail' {} a -> s {s3KeyPrefix = a} :: UpdateTrail)

-- | Specifies the name of the Amazon SNS topic defined for notification of
-- log file delivery. The maximum length is 256 characters.
updateTrail_snsTopicName :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Text)
updateTrail_snsTopicName = Lens.lens (\UpdateTrail' {snsTopicName} -> snsTopicName) (\s@UpdateTrail' {} a -> s {snsTopicName = a} :: UpdateTrail)

-- | Specifies whether log file validation is enabled. The default is false.
--
-- When you disable log file integrity validation, the chain of digest
-- files is broken after one hour. CloudTrail does not create digest files
-- for log files that were delivered during a period in which log file
-- integrity validation was disabled. For example, if you enable log file
-- integrity validation at noon on January 1, disable it at noon on January
-- 2, and re-enable it at noon on January 10, digest files will not be
-- created for the log files delivered from noon on January 2 to noon on
-- January 10. The same applies whenever you stop CloudTrail logging or
-- delete a trail.
updateTrail_enableLogFileValidation :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Bool)
updateTrail_enableLogFileValidation = Lens.lens (\UpdateTrail' {enableLogFileValidation} -> enableLogFileValidation) (\s@UpdateTrail' {} a -> s {enableLogFileValidation = a} :: UpdateTrail)

-- | Specifies a log group name using an Amazon Resource Name (ARN), a unique
-- identifier that represents the log group to which CloudTrail logs are
-- delivered. Not required unless you specify @CloudWatchLogsRoleArn@.
updateTrail_cloudWatchLogsLogGroupArn :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Text)
updateTrail_cloudWatchLogsLogGroupArn = Lens.lens (\UpdateTrail' {cloudWatchLogsLogGroupArn} -> cloudWatchLogsLogGroupArn) (\s@UpdateTrail' {} a -> s {cloudWatchLogsLogGroupArn = a} :: UpdateTrail)

-- | Specifies the KMS key ID to use to encrypt the logs delivered by
-- CloudTrail. The value can be an alias name prefixed by \"alias\/\", a
-- fully specified ARN to an alias, a fully specified ARN to a key, or a
-- globally unique identifier.
--
-- CloudTrail also supports KMS multi-Region keys. For more information
-- about multi-Region keys, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html Using multi-Region keys>
-- in the /Key Management Service Developer Guide/.
--
-- Examples:
--
-- -   alias\/MyAliasName
--
-- -   arn:aws:kms:us-east-2:123456789012:alias\/MyAliasName
--
-- -   arn:aws:kms:us-east-2:123456789012:key\/12345678-1234-1234-1234-123456789012
--
-- -   12345678-1234-1234-1234-123456789012
updateTrail_kmsKeyId :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Text)
updateTrail_kmsKeyId = Lens.lens (\UpdateTrail' {kmsKeyId} -> kmsKeyId) (\s@UpdateTrail' {} a -> s {kmsKeyId = a} :: UpdateTrail)

-- | Specifies whether the trail is publishing events from global services
-- such as IAM to the log files.
updateTrail_includeGlobalServiceEvents :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Bool)
updateTrail_includeGlobalServiceEvents = Lens.lens (\UpdateTrail' {includeGlobalServiceEvents} -> includeGlobalServiceEvents) (\s@UpdateTrail' {} a -> s {includeGlobalServiceEvents = a} :: UpdateTrail)

-- | Specifies whether the trail is applied to all accounts in an
-- organization in Organizations, or only for the current Amazon Web
-- Services account. The default is false, and cannot be true unless the
-- call is made on behalf of an Amazon Web Services account that is the
-- management account for an organization in Organizations. If the trail is
-- not an organization trail and this is set to @true@, the trail will be
-- created in all Amazon Web Services accounts that belong to the
-- organization. If the trail is an organization trail and this is set to
-- @false@, the trail will remain in the current Amazon Web Services
-- account but be deleted from all member accounts in the organization.
updateTrail_isOrganizationTrail :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Bool)
updateTrail_isOrganizationTrail = Lens.lens (\UpdateTrail' {isOrganizationTrail} -> isOrganizationTrail) (\s@UpdateTrail' {} a -> s {isOrganizationTrail = a} :: UpdateTrail)

-- | Specifies the role for the CloudWatch Logs endpoint to assume to write
-- to a user\'s log group.
updateTrail_cloudWatchLogsRoleArn :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Text)
updateTrail_cloudWatchLogsRoleArn = Lens.lens (\UpdateTrail' {cloudWatchLogsRoleArn} -> cloudWatchLogsRoleArn) (\s@UpdateTrail' {} a -> s {cloudWatchLogsRoleArn = a} :: UpdateTrail)

-- | Specifies the name of the Amazon S3 bucket designated for publishing log
-- files. See
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html Amazon S3 Bucket Naming Requirements>.
updateTrail_s3BucketName :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Text)
updateTrail_s3BucketName = Lens.lens (\UpdateTrail' {s3BucketName} -> s3BucketName) (\s@UpdateTrail' {} a -> s {s3BucketName = a} :: UpdateTrail)

-- | Specifies whether the trail applies only to the current region or to all
-- regions. The default is false. If the trail exists only in the current
-- region and this value is set to true, shadow trails (replications of the
-- trail) will be created in the other regions. If the trail exists in all
-- regions and this value is set to false, the trail will remain in the
-- region where it was created, and its shadow trails in other regions will
-- be deleted. As a best practice, consider using trails that log events in
-- all regions.
updateTrail_isMultiRegionTrail :: Lens.Lens' UpdateTrail (Prelude.Maybe Prelude.Bool)
updateTrail_isMultiRegionTrail = Lens.lens (\UpdateTrail' {isMultiRegionTrail} -> isMultiRegionTrail) (\s@UpdateTrail' {} a -> s {isMultiRegionTrail = a} :: UpdateTrail)

-- | Specifies the name of the trail or trail ARN. If @Name@ is a trail name,
-- the string must meet the following requirements:
--
-- -   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
--     underscores (_), or dashes (-)
--
-- -   Start with a letter or number, and end with a letter or number
--
-- -   Be between 3 and 128 characters
--
-- -   Have no adjacent periods, underscores or dashes. Names like
--     @my-_namespace@ and @my--namespace@ are not valid.
--
-- -   Not be in IP address format (for example, 192.168.5.4)
--
-- If @Name@ is a trail ARN, it must be in the following format.
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
updateTrail_name :: Lens.Lens' UpdateTrail Prelude.Text
updateTrail_name = Lens.lens (\UpdateTrail' {name} -> name) (\s@UpdateTrail' {} a -> s {name = a} :: UpdateTrail)

instance Core.AWSRequest UpdateTrail where
  type AWSResponse UpdateTrail = UpdateTrailResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTrailResponse'
            Prelude.<$> (x Core..?> "LogFileValidationEnabled")
            Prelude.<*> (x Core..?> "TrailARN")
            Prelude.<*> (x Core..?> "S3KeyPrefix")
            Prelude.<*> (x Core..?> "SnsTopicARN")
            Prelude.<*> (x Core..?> "SnsTopicName")
            Prelude.<*> (x Core..?> "CloudWatchLogsLogGroupArn")
            Prelude.<*> (x Core..?> "KmsKeyId")
            Prelude.<*> (x Core..?> "Name")
            Prelude.<*> (x Core..?> "IncludeGlobalServiceEvents")
            Prelude.<*> (x Core..?> "IsOrganizationTrail")
            Prelude.<*> (x Core..?> "CloudWatchLogsRoleArn")
            Prelude.<*> (x Core..?> "S3BucketName")
            Prelude.<*> (x Core..?> "IsMultiRegionTrail")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTrail

instance Prelude.NFData UpdateTrail

instance Core.ToHeaders UpdateTrail where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.UpdateTrail" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateTrail where
  toJSON UpdateTrail' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("S3KeyPrefix" Core..=) Prelude.<$> s3KeyPrefix,
            ("SnsTopicName" Core..=) Prelude.<$> snsTopicName,
            ("EnableLogFileValidation" Core..=)
              Prelude.<$> enableLogFileValidation,
            ("CloudWatchLogsLogGroupArn" Core..=)
              Prelude.<$> cloudWatchLogsLogGroupArn,
            ("KmsKeyId" Core..=) Prelude.<$> kmsKeyId,
            ("IncludeGlobalServiceEvents" Core..=)
              Prelude.<$> includeGlobalServiceEvents,
            ("IsOrganizationTrail" Core..=)
              Prelude.<$> isOrganizationTrail,
            ("CloudWatchLogsRoleArn" Core..=)
              Prelude.<$> cloudWatchLogsRoleArn,
            ("S3BucketName" Core..=) Prelude.<$> s3BucketName,
            ("IsMultiRegionTrail" Core..=)
              Prelude.<$> isMultiRegionTrail,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath UpdateTrail where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateTrail where
  toQuery = Prelude.const Prelude.mempty

-- | Returns the objects or data listed below if successful. Otherwise,
-- returns an error.
--
-- /See:/ 'newUpdateTrailResponse' smart constructor.
data UpdateTrailResponse = UpdateTrailResponse'
  { -- | Specifies whether log file integrity validation is enabled.
    logFileValidationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the ARN of the trail that was updated. The following is the
    -- format of a trail ARN.
    --
    -- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
    trailARN :: Prelude.Maybe Prelude.Text,
    -- | Specifies the Amazon S3 key prefix that comes after the name of the
    -- bucket you have designated for log file delivery. For more information,
    -- see
    -- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your IAM Log Files>.
    s3KeyPrefix :: Prelude.Maybe Prelude.Text,
    -- | Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send
    -- notifications when log files are delivered. The following is the format
    -- of a topic ARN.
    --
    -- @arn:aws:sns:us-east-2:123456789012:MyTopic@
    snsTopicARN :: Prelude.Maybe Prelude.Text,
    -- | This field is no longer in use. Use UpdateTrailResponse$SnsTopicARN.
    snsTopicName :: Prelude.Maybe Prelude.Text,
    -- | Specifies the Amazon Resource Name (ARN) of the log group to which
    -- CloudTrail logs are delivered.
    cloudWatchLogsLogGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the KMS key ID that encrypts the logs delivered by CloudTrail.
    -- The value is a fully specified ARN to a KMS key in the following format.
    --
    -- @arn:aws:kms:us-east-2:123456789012:key\/12345678-1234-1234-1234-123456789012@
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the trail.
    name :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the trail is publishing events from global services
    -- such as IAM to the log files.
    includeGlobalServiceEvents :: Prelude.Maybe Prelude.Bool,
    -- | Specifies whether the trail is an organization trail.
    isOrganizationTrail :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the role for the CloudWatch Logs endpoint to assume to write
    -- to a user\'s log group.
    cloudWatchLogsRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies the name of the Amazon S3 bucket designated for publishing log
    -- files.
    s3BucketName :: Prelude.Maybe Prelude.Text,
    -- | Specifies whether the trail exists in one region or in all regions.
    isMultiRegionTrail :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateTrailResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logFileValidationEnabled', 'updateTrailResponse_logFileValidationEnabled' - Specifies whether log file integrity validation is enabled.
--
-- 'trailARN', 'updateTrailResponse_trailARN' - Specifies the ARN of the trail that was updated. The following is the
-- format of a trail ARN.
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
--
-- 's3KeyPrefix', 'updateTrailResponse_s3KeyPrefix' - Specifies the Amazon S3 key prefix that comes after the name of the
-- bucket you have designated for log file delivery. For more information,
-- see
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your IAM Log Files>.
--
-- 'snsTopicARN', 'updateTrailResponse_snsTopicARN' - Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send
-- notifications when log files are delivered. The following is the format
-- of a topic ARN.
--
-- @arn:aws:sns:us-east-2:123456789012:MyTopic@
--
-- 'snsTopicName', 'updateTrailResponse_snsTopicName' - This field is no longer in use. Use UpdateTrailResponse$SnsTopicARN.
--
-- 'cloudWatchLogsLogGroupArn', 'updateTrailResponse_cloudWatchLogsLogGroupArn' - Specifies the Amazon Resource Name (ARN) of the log group to which
-- CloudTrail logs are delivered.
--
-- 'kmsKeyId', 'updateTrailResponse_kmsKeyId' - Specifies the KMS key ID that encrypts the logs delivered by CloudTrail.
-- The value is a fully specified ARN to a KMS key in the following format.
--
-- @arn:aws:kms:us-east-2:123456789012:key\/12345678-1234-1234-1234-123456789012@
--
-- 'name', 'updateTrailResponse_name' - Specifies the name of the trail.
--
-- 'includeGlobalServiceEvents', 'updateTrailResponse_includeGlobalServiceEvents' - Specifies whether the trail is publishing events from global services
-- such as IAM to the log files.
--
-- 'isOrganizationTrail', 'updateTrailResponse_isOrganizationTrail' - Specifies whether the trail is an organization trail.
--
-- 'cloudWatchLogsRoleArn', 'updateTrailResponse_cloudWatchLogsRoleArn' - Specifies the role for the CloudWatch Logs endpoint to assume to write
-- to a user\'s log group.
--
-- 's3BucketName', 'updateTrailResponse_s3BucketName' - Specifies the name of the Amazon S3 bucket designated for publishing log
-- files.
--
-- 'isMultiRegionTrail', 'updateTrailResponse_isMultiRegionTrail' - Specifies whether the trail exists in one region or in all regions.
--
-- 'httpStatus', 'updateTrailResponse_httpStatus' - The response's http status code.
newUpdateTrailResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateTrailResponse
newUpdateTrailResponse pHttpStatus_ =
  UpdateTrailResponse'
    { logFileValidationEnabled =
        Prelude.Nothing,
      trailARN = Prelude.Nothing,
      s3KeyPrefix = Prelude.Nothing,
      snsTopicARN = Prelude.Nothing,
      snsTopicName = Prelude.Nothing,
      cloudWatchLogsLogGroupArn = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      name = Prelude.Nothing,
      includeGlobalServiceEvents = Prelude.Nothing,
      isOrganizationTrail = Prelude.Nothing,
      cloudWatchLogsRoleArn = Prelude.Nothing,
      s3BucketName = Prelude.Nothing,
      isMultiRegionTrail = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specifies whether log file integrity validation is enabled.
updateTrailResponse_logFileValidationEnabled :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Bool)
updateTrailResponse_logFileValidationEnabled = Lens.lens (\UpdateTrailResponse' {logFileValidationEnabled} -> logFileValidationEnabled) (\s@UpdateTrailResponse' {} a -> s {logFileValidationEnabled = a} :: UpdateTrailResponse)

-- | Specifies the ARN of the trail that was updated. The following is the
-- format of a trail ARN.
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
updateTrailResponse_trailARN :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_trailARN = Lens.lens (\UpdateTrailResponse' {trailARN} -> trailARN) (\s@UpdateTrailResponse' {} a -> s {trailARN = a} :: UpdateTrailResponse)

-- | Specifies the Amazon S3 key prefix that comes after the name of the
-- bucket you have designated for log file delivery. For more information,
-- see
-- <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html Finding Your IAM Log Files>.
updateTrailResponse_s3KeyPrefix :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_s3KeyPrefix = Lens.lens (\UpdateTrailResponse' {s3KeyPrefix} -> s3KeyPrefix) (\s@UpdateTrailResponse' {} a -> s {s3KeyPrefix = a} :: UpdateTrailResponse)

-- | Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send
-- notifications when log files are delivered. The following is the format
-- of a topic ARN.
--
-- @arn:aws:sns:us-east-2:123456789012:MyTopic@
updateTrailResponse_snsTopicARN :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_snsTopicARN = Lens.lens (\UpdateTrailResponse' {snsTopicARN} -> snsTopicARN) (\s@UpdateTrailResponse' {} a -> s {snsTopicARN = a} :: UpdateTrailResponse)

-- | This field is no longer in use. Use UpdateTrailResponse$SnsTopicARN.
updateTrailResponse_snsTopicName :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_snsTopicName = Lens.lens (\UpdateTrailResponse' {snsTopicName} -> snsTopicName) (\s@UpdateTrailResponse' {} a -> s {snsTopicName = a} :: UpdateTrailResponse)

-- | Specifies the Amazon Resource Name (ARN) of the log group to which
-- CloudTrail logs are delivered.
updateTrailResponse_cloudWatchLogsLogGroupArn :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_cloudWatchLogsLogGroupArn = Lens.lens (\UpdateTrailResponse' {cloudWatchLogsLogGroupArn} -> cloudWatchLogsLogGroupArn) (\s@UpdateTrailResponse' {} a -> s {cloudWatchLogsLogGroupArn = a} :: UpdateTrailResponse)

-- | Specifies the KMS key ID that encrypts the logs delivered by CloudTrail.
-- The value is a fully specified ARN to a KMS key in the following format.
--
-- @arn:aws:kms:us-east-2:123456789012:key\/12345678-1234-1234-1234-123456789012@
updateTrailResponse_kmsKeyId :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_kmsKeyId = Lens.lens (\UpdateTrailResponse' {kmsKeyId} -> kmsKeyId) (\s@UpdateTrailResponse' {} a -> s {kmsKeyId = a} :: UpdateTrailResponse)

-- | Specifies the name of the trail.
updateTrailResponse_name :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_name = Lens.lens (\UpdateTrailResponse' {name} -> name) (\s@UpdateTrailResponse' {} a -> s {name = a} :: UpdateTrailResponse)

-- | Specifies whether the trail is publishing events from global services
-- such as IAM to the log files.
updateTrailResponse_includeGlobalServiceEvents :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Bool)
updateTrailResponse_includeGlobalServiceEvents = Lens.lens (\UpdateTrailResponse' {includeGlobalServiceEvents} -> includeGlobalServiceEvents) (\s@UpdateTrailResponse' {} a -> s {includeGlobalServiceEvents = a} :: UpdateTrailResponse)

-- | Specifies whether the trail is an organization trail.
updateTrailResponse_isOrganizationTrail :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Bool)
updateTrailResponse_isOrganizationTrail = Lens.lens (\UpdateTrailResponse' {isOrganizationTrail} -> isOrganizationTrail) (\s@UpdateTrailResponse' {} a -> s {isOrganizationTrail = a} :: UpdateTrailResponse)

-- | Specifies the role for the CloudWatch Logs endpoint to assume to write
-- to a user\'s log group.
updateTrailResponse_cloudWatchLogsRoleArn :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_cloudWatchLogsRoleArn = Lens.lens (\UpdateTrailResponse' {cloudWatchLogsRoleArn} -> cloudWatchLogsRoleArn) (\s@UpdateTrailResponse' {} a -> s {cloudWatchLogsRoleArn = a} :: UpdateTrailResponse)

-- | Specifies the name of the Amazon S3 bucket designated for publishing log
-- files.
updateTrailResponse_s3BucketName :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Text)
updateTrailResponse_s3BucketName = Lens.lens (\UpdateTrailResponse' {s3BucketName} -> s3BucketName) (\s@UpdateTrailResponse' {} a -> s {s3BucketName = a} :: UpdateTrailResponse)

-- | Specifies whether the trail exists in one region or in all regions.
updateTrailResponse_isMultiRegionTrail :: Lens.Lens' UpdateTrailResponse (Prelude.Maybe Prelude.Bool)
updateTrailResponse_isMultiRegionTrail = Lens.lens (\UpdateTrailResponse' {isMultiRegionTrail} -> isMultiRegionTrail) (\s@UpdateTrailResponse' {} a -> s {isMultiRegionTrail = a} :: UpdateTrailResponse)

-- | The response's http status code.
updateTrailResponse_httpStatus :: Lens.Lens' UpdateTrailResponse Prelude.Int
updateTrailResponse_httpStatus = Lens.lens (\UpdateTrailResponse' {httpStatus} -> httpStatus) (\s@UpdateTrailResponse' {} a -> s {httpStatus = a} :: UpdateTrailResponse)

instance Prelude.NFData UpdateTrailResponse
