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
-- Module      : Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.KeyPhrasesDetectionJobProperties where

import Network.AWS.Comprehend.Types.InputDataConfig
import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.OutputDataConfig
import Network.AWS.Comprehend.Types.VpcConfig
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about a key phrases detection job.
--
-- /See:/ 'newKeyPhrasesDetectionJobProperties' smart constructor.
data KeyPhrasesDetectionJobProperties = KeyPhrasesDetectionJobProperties'
  { -- | The language code of the input documents.
    languageCode :: Prelude.Maybe LanguageCode,
    -- | The identifier assigned to the key phrases detection job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the key phrases detection job. It is a
    -- unique, fully qualified identifier for the job. It includes the AWS
    -- account, Region, and the job ID. The format of the ARN is as follows:
    --
    -- @arn:\<partition>:comprehend:\<region>:\<account-id>:key-phrases-detection-job\/\<job-id>@
    --
    -- The following is an example job ARN:
    --
    -- @arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job\/1234abcd12ab34cd56ef1234567890ab@
    jobArn :: Prelude.Maybe Prelude.Text,
    -- | The name that you assigned the key phrases detection job.
    jobName :: Prelude.Maybe Prelude.Text,
    -- | The input data configuration that you supplied when you created the key
    -- phrases detection job.
    inputDataConfig :: Prelude.Maybe InputDataConfig,
    -- | Configuration parameters for a private Virtual Private Cloud (VPC)
    -- containing the resources you are using for your key phrases detection
    -- job. For more information, see
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
    -- | The time that the key phrases detection job completed.
    endTime :: Prelude.Maybe Core.POSIX,
    -- | The output data configuration that you supplied when you created the key
    -- phrases detection job.
    outputDataConfig :: Prelude.Maybe OutputDataConfig,
    -- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access
    -- to your input data.
    dataAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | The current status of the key phrases detection job. If the status is
    -- @FAILED@, the @Message@ field shows the reason for the failure.
    jobStatus :: Prelude.Maybe JobStatus,
    -- | A description of the status of a job.
    message :: Prelude.Maybe Prelude.Text,
    -- | The time that the key phrases detection job was submitted for
    -- processing.
    submitTime :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KeyPhrasesDetectionJobProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'languageCode', 'keyPhrasesDetectionJobProperties_languageCode' - The language code of the input documents.
--
-- 'jobId', 'keyPhrasesDetectionJobProperties_jobId' - The identifier assigned to the key phrases detection job.
--
-- 'jobArn', 'keyPhrasesDetectionJobProperties_jobArn' - The Amazon Resource Name (ARN) of the key phrases detection job. It is a
-- unique, fully qualified identifier for the job. It includes the AWS
-- account, Region, and the job ID. The format of the ARN is as follows:
--
-- @arn:\<partition>:comprehend:\<region>:\<account-id>:key-phrases-detection-job\/\<job-id>@
--
-- The following is an example job ARN:
--
-- @arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job\/1234abcd12ab34cd56ef1234567890ab@
--
-- 'jobName', 'keyPhrasesDetectionJobProperties_jobName' - The name that you assigned the key phrases detection job.
--
-- 'inputDataConfig', 'keyPhrasesDetectionJobProperties_inputDataConfig' - The input data configuration that you supplied when you created the key
-- phrases detection job.
--
-- 'vpcConfig', 'keyPhrasesDetectionJobProperties_vpcConfig' - Configuration parameters for a private Virtual Private Cloud (VPC)
-- containing the resources you are using for your key phrases detection
-- job. For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
--
-- 'volumeKmsKeyId', 'keyPhrasesDetectionJobProperties_volumeKmsKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt data on the storage volume attached to the ML compute
-- instance(s) that process the analysis job. The VolumeKmsKeyId can be
-- either of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- 'endTime', 'keyPhrasesDetectionJobProperties_endTime' - The time that the key phrases detection job completed.
--
-- 'outputDataConfig', 'keyPhrasesDetectionJobProperties_outputDataConfig' - The output data configuration that you supplied when you created the key
-- phrases detection job.
--
-- 'dataAccessRoleArn', 'keyPhrasesDetectionJobProperties_dataAccessRoleArn' - The Amazon Resource Name (ARN) that gives Amazon Comprehend read access
-- to your input data.
--
-- 'jobStatus', 'keyPhrasesDetectionJobProperties_jobStatus' - The current status of the key phrases detection job. If the status is
-- @FAILED@, the @Message@ field shows the reason for the failure.
--
-- 'message', 'keyPhrasesDetectionJobProperties_message' - A description of the status of a job.
--
-- 'submitTime', 'keyPhrasesDetectionJobProperties_submitTime' - The time that the key phrases detection job was submitted for
-- processing.
newKeyPhrasesDetectionJobProperties ::
  KeyPhrasesDetectionJobProperties
newKeyPhrasesDetectionJobProperties =
  KeyPhrasesDetectionJobProperties'
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
keyPhrasesDetectionJobProperties_languageCode :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe LanguageCode)
keyPhrasesDetectionJobProperties_languageCode = Lens.lens (\KeyPhrasesDetectionJobProperties' {languageCode} -> languageCode) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {languageCode = a} :: KeyPhrasesDetectionJobProperties)

-- | The identifier assigned to the key phrases detection job.
keyPhrasesDetectionJobProperties_jobId :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.Text)
keyPhrasesDetectionJobProperties_jobId = Lens.lens (\KeyPhrasesDetectionJobProperties' {jobId} -> jobId) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {jobId = a} :: KeyPhrasesDetectionJobProperties)

-- | The Amazon Resource Name (ARN) of the key phrases detection job. It is a
-- unique, fully qualified identifier for the job. It includes the AWS
-- account, Region, and the job ID. The format of the ARN is as follows:
--
-- @arn:\<partition>:comprehend:\<region>:\<account-id>:key-phrases-detection-job\/\<job-id>@
--
-- The following is an example job ARN:
--
-- @arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job\/1234abcd12ab34cd56ef1234567890ab@
keyPhrasesDetectionJobProperties_jobArn :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.Text)
keyPhrasesDetectionJobProperties_jobArn = Lens.lens (\KeyPhrasesDetectionJobProperties' {jobArn} -> jobArn) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {jobArn = a} :: KeyPhrasesDetectionJobProperties)

-- | The name that you assigned the key phrases detection job.
keyPhrasesDetectionJobProperties_jobName :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.Text)
keyPhrasesDetectionJobProperties_jobName = Lens.lens (\KeyPhrasesDetectionJobProperties' {jobName} -> jobName) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {jobName = a} :: KeyPhrasesDetectionJobProperties)

-- | The input data configuration that you supplied when you created the key
-- phrases detection job.
keyPhrasesDetectionJobProperties_inputDataConfig :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe InputDataConfig)
keyPhrasesDetectionJobProperties_inputDataConfig = Lens.lens (\KeyPhrasesDetectionJobProperties' {inputDataConfig} -> inputDataConfig) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {inputDataConfig = a} :: KeyPhrasesDetectionJobProperties)

-- | Configuration parameters for a private Virtual Private Cloud (VPC)
-- containing the resources you are using for your key phrases detection
-- job. For more information, see
-- <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC>.
keyPhrasesDetectionJobProperties_vpcConfig :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe VpcConfig)
keyPhrasesDetectionJobProperties_vpcConfig = Lens.lens (\KeyPhrasesDetectionJobProperties' {vpcConfig} -> vpcConfig) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {vpcConfig = a} :: KeyPhrasesDetectionJobProperties)

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
-- uses to encrypt data on the storage volume attached to the ML compute
-- instance(s) that process the analysis job. The VolumeKmsKeyId can be
-- either of the following formats:
--
-- -   KMS Key ID: @\"1234abcd-12ab-34cd-56ef-1234567890ab\"@
--
-- -   Amazon Resource Name (ARN) of a KMS Key:
--     @\"arn:aws:kms:us-west-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab\"@
keyPhrasesDetectionJobProperties_volumeKmsKeyId :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.Text)
keyPhrasesDetectionJobProperties_volumeKmsKeyId = Lens.lens (\KeyPhrasesDetectionJobProperties' {volumeKmsKeyId} -> volumeKmsKeyId) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {volumeKmsKeyId = a} :: KeyPhrasesDetectionJobProperties)

-- | The time that the key phrases detection job completed.
keyPhrasesDetectionJobProperties_endTime :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.UTCTime)
keyPhrasesDetectionJobProperties_endTime = Lens.lens (\KeyPhrasesDetectionJobProperties' {endTime} -> endTime) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {endTime = a} :: KeyPhrasesDetectionJobProperties) Prelude.. Lens.mapping Core._Time

-- | The output data configuration that you supplied when you created the key
-- phrases detection job.
keyPhrasesDetectionJobProperties_outputDataConfig :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe OutputDataConfig)
keyPhrasesDetectionJobProperties_outputDataConfig = Lens.lens (\KeyPhrasesDetectionJobProperties' {outputDataConfig} -> outputDataConfig) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {outputDataConfig = a} :: KeyPhrasesDetectionJobProperties)

-- | The Amazon Resource Name (ARN) that gives Amazon Comprehend read access
-- to your input data.
keyPhrasesDetectionJobProperties_dataAccessRoleArn :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.Text)
keyPhrasesDetectionJobProperties_dataAccessRoleArn = Lens.lens (\KeyPhrasesDetectionJobProperties' {dataAccessRoleArn} -> dataAccessRoleArn) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {dataAccessRoleArn = a} :: KeyPhrasesDetectionJobProperties)

-- | The current status of the key phrases detection job. If the status is
-- @FAILED@, the @Message@ field shows the reason for the failure.
keyPhrasesDetectionJobProperties_jobStatus :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe JobStatus)
keyPhrasesDetectionJobProperties_jobStatus = Lens.lens (\KeyPhrasesDetectionJobProperties' {jobStatus} -> jobStatus) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {jobStatus = a} :: KeyPhrasesDetectionJobProperties)

-- | A description of the status of a job.
keyPhrasesDetectionJobProperties_message :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.Text)
keyPhrasesDetectionJobProperties_message = Lens.lens (\KeyPhrasesDetectionJobProperties' {message} -> message) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {message = a} :: KeyPhrasesDetectionJobProperties)

-- | The time that the key phrases detection job was submitted for
-- processing.
keyPhrasesDetectionJobProperties_submitTime :: Lens.Lens' KeyPhrasesDetectionJobProperties (Prelude.Maybe Prelude.UTCTime)
keyPhrasesDetectionJobProperties_submitTime = Lens.lens (\KeyPhrasesDetectionJobProperties' {submitTime} -> submitTime) (\s@KeyPhrasesDetectionJobProperties' {} a -> s {submitTime = a} :: KeyPhrasesDetectionJobProperties) Prelude.. Lens.mapping Core._Time

instance
  Core.FromJSON
    KeyPhrasesDetectionJobProperties
  where
  parseJSON =
    Core.withObject
      "KeyPhrasesDetectionJobProperties"
      ( \x ->
          KeyPhrasesDetectionJobProperties'
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
    KeyPhrasesDetectionJobProperties

instance
  Prelude.NFData
    KeyPhrasesDetectionJobProperties
