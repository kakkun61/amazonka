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
-- Module      : Network.AWS.Comprehend.Types.SentimentDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.SentimentDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.VpcConfig
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about a sentiment detection job.
--
-- /See:/ 'newSentimentDetectionJobProperties' smart constructor.
data SentimentDetectionJobProperties = SentimentDetectionJobProperties'
  { -- | The language code of the input documents.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | The identifier assigned to the sentiment detection job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the sentiment detection job. It is a
    -- unique, fully qualified identifier for the job. It includes the AWS
    -- account, Region, and the job ID. The format of the ARN is as follows:
    --
    -- @arn:\<partition>:comprehend:\<region>:\<account-id>:sentiment-detection-job\/\<job-id>@
    --
    -- The following is an example job ARN:
    --
    -- @arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job\/1234abcd12ab34cd56ef1234567890ab@
    jobArn :: Prelude.Maybe Prelude.Text,
    -- | The name that you assigned to the sentiment detection job
    jobName :: Prelude.Maybe Prelude.Text,
    -- | The input data configuration that you supplied when you created the
    -- sentiment detection job.
    inputDataConfig :: Prelude.Maybe InputDataConfig,
    -- | Configuration parameters for a private Virtual Private Cloud (VPC)
    -- containing the resources you are using for your sentiment detection job.
    -- For more information, see
    -- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
    vpcConfig :: Prelude.Maybe VpcConfig,
    -- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
    -- uses to encrypt data on the storage volume attached to the ML compute
    -- instance(s) that process the analysis job. The VolumeKmsKeyId can be
    -- either of the following formats:
    --
    -- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
    --
    -- -   Amazon Resource Name (ARN) of a KMS Key:
    --     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
    volumeKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The time that the sentiment detection job ended.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The output data configuration that you supplied when you created the
    -- sentiment detection job.
    outputDataConfig :: Prelude.Maybe OutputDataConfig,
    -- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access
    -- to your input data.
    dataAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the sentiment detection job. If the status is
    -- @FAILED@, the @Messages@ field shows the reason for the failure.
    jobStatus :: Prelude.Maybe JobStatus,
    -- | A description of the status of a job.
    message :: Prelude.Maybe Prelude.Text,
    -- | The time that the sentiment detection job was submitted for processing.
    submitTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SentimentDetectionJobProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'languageCode', 'sentimentDetectionJobProperties_languageCode' - The language code of the input documents.
--
-- 'jobId', 'sentimentDetectionJobProperties_jobId' - The identifier assigned to the sentiment detection job.
--
-- 'jobArn', 'sentimentDetectionJobProperties_jobArn' - The Amazon Resource Name (ARN) of the sentiment detection job. It is a
-- unique, fully qualified identifier for the job. It includes the AWS
-- account, Region, and the job ID. The format of the ARN is as follows:
--
-- @arn:\<partition>:comprehend:\<region>:\<account-id>:sentiment-detection-job\/\<job-id>@
--
-- The following is an example job ARN:
--
-- @arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job\/1234abcd12ab34cd56ef1234567890ab@
--
-- 'jobName', 'sentimentDetectionJobProperties_jobName' - The name that you assigned to the sentiment detection job
--
-- 'inputDataConfig', 'sentimentDetectionJobProperties_inputDataConfig' - The input data configuration that you supplied when you created the
-- sentiment detection job.
--
-- 'vpcConfig', 'sentimentDetectionJobProperties_vpcConfig' - Configuration parameters for a private Virtual Private Cloud (VPC)
-- containing the resources you are using for your sentiment detection job.
-- For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
--
-- 'volumeKmsKeyId', 'sentimentDetectionJobProperties_volumeKmsKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt data on the storage volume attached to the ML compute
-- instance(s) that process the analysis job. The VolumeKmsKeyId can be
-- either of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- 'endTime', 'sentimentDetectionJobProperties_endTime' - The time that the sentiment detection job ended.
--
-- 'outputDataConfig', 'sentimentDetectionJobProperties_outputDataConfig' - The output data configuration that you supplied when you created the
-- sentiment detection job.
--
-- 'dataAccessRoleArn', 'sentimentDetectionJobProperties_dataAccessRoleArn' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access
-- to your input data.
--
-- 'jobStatus', 'sentimentDetectionJobProperties_jobStatus' - The current status of the sentiment detection job. If the status is
-- @FAILED@, the @Messages@ field shows the reason for the failure.
--
-- 'message', 'sentimentDetectionJobProperties_message' - A description of the status of a job.
--
-- 'submitTime', 'sentimentDetectionJobProperties_submitTime' - The time that the sentiment detection job was submitted for processing.
newSentimentDetectionJobProperties ::
  SentimentDetectionJobProperties
newSentimentDetectionJobProperties =
  SentimentDetectionJobProperties'
    { languageCode =
        Prelude.Nothing,
      jobId = Prelude.Nothing,
      jobArn = Prelude.Nothing,
      jobName = Prelude.Nothing,
      inputDataConfig = Prelude.Nothing,
      vpcConfig = Prelude.Nothing,
      volumeKmsKeyId = Prelude.Nothing,
      endTime = Prelude.Nothing,
      outputDataConfig = Prelude.Nothing,
      dataAccessRoleArn = Prelude.Nothing,
      jobStatus = Prelude.Nothing,
      message = Prelude.Nothing,
      submitTime = Prelude.Nothing
    }

-- | The language code of the input documents.
sentimentDetectionJobProperties_languageCode :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe LanguageCode)
sentimentDetectionJobProperties_languageCode = Lens.lens (\SentimentDetectionJobProperties' {languageCode} -> languageCode) (\s@SentimentDetectionJobProperties' {} a -> s {languageCode = a} :: SentimentDetectionJobProperties)

-- | The identifier assigned to the sentiment detection job.
sentimentDetectionJobProperties_jobId :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.Text)
sentimentDetectionJobProperties_jobId = Lens.lens (\SentimentDetectionJobProperties' {jobId} -> jobId) (\s@SentimentDetectionJobProperties' {} a -> s {jobId = a} :: SentimentDetectionJobProperties)

-- | The Amazon Resource Name (ARN) of the sentiment detection job. It is a
-- unique, fully qualified identifier for the job. It includes the AWS
-- account, Region, and the job ID. The format of the ARN is as follows:
--
-- @arn:\<partition>:comprehend:\<region>:\<account-id>:sentiment-detection-job\/\<job-id>@
--
-- The following is an example job ARN:
--
-- @arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job\/1234abcd12ab34cd56ef1234567890ab@
sentimentDetectionJobProperties_jobArn :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.Text)
sentimentDetectionJobProperties_jobArn = Lens.lens (\SentimentDetectionJobProperties' {jobArn} -> jobArn) (\s@SentimentDetectionJobProperties' {} a -> s {jobArn = a} :: SentimentDetectionJobProperties)

-- | The name that you assigned to the sentiment detection job
sentimentDetectionJobProperties_jobName :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.Text)
sentimentDetectionJobProperties_jobName = Lens.lens (\SentimentDetectionJobProperties' {jobName} -> jobName) (\s@SentimentDetectionJobProperties' {} a -> s {jobName = a} :: SentimentDetectionJobProperties)

-- | The input data configuration that you supplied when you created the
-- sentiment detection job.
sentimentDetectionJobProperties_inputDataConfig :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe InputDataConfig)
sentimentDetectionJobProperties_inputDataConfig = Lens.lens (\SentimentDetectionJobProperties' {inputDataConfig} -> inputDataConfig) (\s@SentimentDetectionJobProperties' {} a -> s {inputDataConfig = a} :: SentimentDetectionJobProperties)

-- | Configuration parameters for a private Virtual Private Cloud (VPC)
-- containing the resources you are using for your sentiment detection job.
-- For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
sentimentDetectionJobProperties_vpcConfig :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe VpcConfig)
sentimentDetectionJobProperties_vpcConfig = Lens.lens (\SentimentDetectionJobProperties' {vpcConfig} -> vpcConfig) (\s@SentimentDetectionJobProperties' {} a -> s {vpcConfig = a} :: SentimentDetectionJobProperties)

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt data on the storage volume attached to the ML compute
-- instance(s) that process the analysis job. The VolumeKmsKeyId can be
-- either of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
sentimentDetectionJobProperties_volumeKmsKeyId :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.Text)
sentimentDetectionJobProperties_volumeKmsKeyId = Lens.lens (\SentimentDetectionJobProperties' {volumeKmsKeyId} -> volumeKmsKeyId) (\s@SentimentDetectionJobProperties' {} a -> s {volumeKmsKeyId = a} :: SentimentDetectionJobProperties)

-- | The time that the sentiment detection job ended.
sentimentDetectionJobProperties_endTime :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.UTCTime)
sentimentDetectionJobProperties_endTime = Lens.lens (\SentimentDetectionJobProperties' {endTime} -> endTime) (\s@SentimentDetectionJobProperties' {} a -> s {endTime = a} :: SentimentDetectionJobProperties) Prelude.. Lens.mapping Core._Time

-- | The output data configuration that you supplied when you created the
-- sentiment detection job.
sentimentDetectionJobProperties_outputDataConfig :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe OutputDataConfig)
sentimentDetectionJobProperties_outputDataConfig = Lens.lens (\SentimentDetectionJobProperties' {outputDataConfig} -> outputDataConfig) (\s@SentimentDetectionJobProperties' {} a -> s {outputDataConfig = a} :: SentimentDetectionJobProperties)

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access
-- to your input data.
sentimentDetectionJobProperties_dataAccessRoleArn :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.Text)
sentimentDetectionJobProperties_dataAccessRoleArn = Lens.lens (\SentimentDetectionJobProperties' {dataAccessRoleArn} -> dataAccessRoleArn) (\s@SentimentDetectionJobProperties' {} a -> s {dataAccessRoleArn = a} :: SentimentDetectionJobProperties)

-- | The current status of the sentiment detection job. If the status is
-- @FAILED@, the @Messages@ field shows the reason for the failure.
sentimentDetectionJobProperties_jobStatus :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe JobStatus)
sentimentDetectionJobProperties_jobStatus = Lens.lens (\SentimentDetectionJobProperties' {jobStatus} -> jobStatus) (\s@SentimentDetectionJobProperties' {} a -> s {jobStatus = a} :: SentimentDetectionJobProperties)

-- | A description of the status of a job.
sentimentDetectionJobProperties_message :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.Text)
sentimentDetectionJobProperties_message = Lens.lens (\SentimentDetectionJobProperties' {message} -> message) (\s@SentimentDetectionJobProperties' {} a -> s {message = a} :: SentimentDetectionJobProperties)

-- | The time that the sentiment detection job was submitted for processing.
sentimentDetectionJobProperties_submitTime :: Lens.Lens' SentimentDetectionJobProperties (Prelude.Maybe Prelude.UTCTime)
sentimentDetectionJobProperties_submitTime = Lens.lens (\SentimentDetectionJobProperties' {submitTime} -> submitTime) (\s@SentimentDetectionJobProperties' {} a -> s {submitTime = a} :: SentimentDetectionJobProperties) Prelude.. Lens.mapping Core._Time

instance
  Core.FromJSON
    SentimentDetectionJobProperties
  where
  parseJSON =
    Core.withObject
      "SentimentDetectionJobProperties"
      ( \x ->
          SentimentDetectionJobProperties'
            Prelude.<$> (x Core..:? "LanguageCode")
            Prelude.<*> (x Core..:? "JobId")
            Prelude.<*> (x Core..:? "JobArn")
            Prelude.<*> (x Core..:? "JobName")
            Prelude.<*> (x Core..:? "InputDataConfig")
            Prelude.<*> (x Core..:? "VpcConfig")
            Prelude.<*> (x Core..:? "VolumeKmsKeyId")
            Prelude.<*> (x Core..:? "EndTime")
            Prelude.<*> (x Core..:? "OutputDataConfig")
            Prelude.<*> (x Core..:? "DataAccessRoleArn")
            Prelude.<*> (x Core..:? "JobStatus")
            Prelude.<*> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "SubmitTime")
      )

instance
  Prelude.Hashable
    SentimentDetectionJobProperties

instance
  Prelude.NFData
    SentimentDetectionJobProperties
