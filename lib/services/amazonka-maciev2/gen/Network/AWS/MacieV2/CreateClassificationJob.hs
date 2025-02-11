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
-- Module      : Network.AWS.MacieV2.CreateClassificationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and defines the settings for a classification job.
module Network.AWS.MacieV2.CreateClassificationJob
  ( -- * Creating a Request
    CreateClassificationJob (..),
    newCreateClassificationJob,

    -- * Request Lenses
    createClassificationJob_initialRun,
    createClassificationJob_samplingPercentage,
    createClassificationJob_managedDataIdentifierSelector,
    createClassificationJob_customDataIdentifierIds,
    createClassificationJob_managedDataIdentifierIds,
    createClassificationJob_description,
    createClassificationJob_tags,
    createClassificationJob_scheduleFrequency,
    createClassificationJob_s3JobDefinition,
    createClassificationJob_jobType,
    createClassificationJob_clientToken,
    createClassificationJob_name,

    -- * Destructuring the Response
    CreateClassificationJobResponse (..),
    newCreateClassificationJobResponse,

    -- * Response Lenses
    createClassificationJobResponse_jobId,
    createClassificationJobResponse_jobArn,
    createClassificationJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateClassificationJob' smart constructor.
data CreateClassificationJob = CreateClassificationJob'
  { -- | For a recurring job, specifies whether to analyze all existing, eligible
    -- objects immediately after the job is created (true). To analyze only
    -- those objects that are created or changed after you create the job and
    -- before the job\'s first scheduled run, set this value to false.
    --
    -- If you configure the job to run only once, don\'t specify a value for
    -- this property.
    initialRun :: Prelude.Maybe Prelude.Bool,
    -- | The sampling depth, as a percentage, for the job to apply when
    -- processing objects. This value determines the percentage of eligible
    -- objects that the job analyzes. If this value is less than 100, Amazon
    -- Macie selects the objects to analyze at random, up to the specified
    -- percentage, and analyzes all the data in those objects.
    samplingPercentage :: Prelude.Maybe Prelude.Int,
    -- | The selection type to apply when determining which managed data
    -- identifiers the job uses to analyze data. Valid values are:
    --
    -- -   ALL - Use all the managed data identifiers that Amazon Macie
    --     provides. If you specify this value, don\'t specify any values for
    --     the managedDataIdentifierIds property.
    --
    -- -   EXCLUDE - Use all the managed data identifiers that Macie provides
    --     except the managed data identifiers specified by the
    --     managedDataIdentifierIds property.
    --
    -- -   INCLUDE - Use only the managed data identifiers specified by the
    --     managedDataIdentifierIds property.
    --
    -- -   NONE - Don\'t use any managed data identifiers. If you specify this
    --     value, specify at least one custom data identifier for the job
    --     (customDataIdentifierIds) and don\'t specify any values for the
    --     managedDataIdentifierIds property.
    --
    -- If you don\'t specify a value for this property, the job uses all
    -- managed data identifiers. If you don\'t specify a value for this
    -- property or you specify ALL or EXCLUDE for a recurring job, the job also
    -- uses new managed data identifiers as they are released.
    managedDataIdentifierSelector :: Prelude.Maybe ManagedDataIdentifierSelector,
    -- | An array of unique identifiers, one for each custom data identifier for
    -- the job to use when it analyzes data. To use only managed data
    -- identifiers, don\'t specify a value for this property and specify a
    -- value other than NONE for the managedDataIdentifierSelector property.
    customDataIdentifierIds :: Prelude.Maybe [Prelude.Text],
    -- | An array of unique identifiers, one for each managed data identifier for
    -- the job to include (use) or exclude (not use) when it analyzes data.
    -- Inclusion or exclusion depends on the managed data identifier selection
    -- type that you specify for the job (managedDataIdentifierSelector).
    --
    -- To retrieve a list of valid values for this property, use the
    -- ListManagedDataIdentifiers operation.
    managedDataIdentifierIds :: Prelude.Maybe [Prelude.Text],
    -- | A custom description of the job. The description can contain as many as
    -- 200 characters.
    description :: Prelude.Maybe Prelude.Text,
    -- | A map of key-value pairs that specifies the tags to associate with the
    -- job.
    --
    -- A job can have a maximum of 50 tags. Each tag consists of a tag key and
    -- an associated tag value. The maximum length of a tag key is 128
    -- characters. The maximum length of a tag value is 256 characters.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The recurrence pattern for running the job. To run the job only once,
    -- don\'t specify a value for this property and set the value for the
    -- jobType property to ONE_TIME.
    scheduleFrequency :: Prelude.Maybe JobScheduleFrequency,
    -- | The S3 buckets that contain the objects to analyze, and the scope of
    -- that analysis.
    s3JobDefinition :: S3JobDefinition,
    -- | The schedule for running the job. Valid values are:
    --
    -- -   ONE_TIME - Run the job only once. If you specify this value, don\'t
    --     specify a value for the scheduleFrequency property.
    --
    -- -   SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you
    --     specify this value, use the scheduleFrequency property to define the
    --     recurrence pattern for the job.
    jobType :: JobType,
    -- | A unique, case-sensitive token that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Text,
    -- | A custom name for the job. The name can contain as many as 500
    -- characters.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateClassificationJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'initialRun', 'createClassificationJob_initialRun' - For a recurring job, specifies whether to analyze all existing, eligible
-- objects immediately after the job is created (true). To analyze only
-- those objects that are created or changed after you create the job and
-- before the job\'s first scheduled run, set this value to false.
--
-- If you configure the job to run only once, don\'t specify a value for
-- this property.
--
-- 'samplingPercentage', 'createClassificationJob_samplingPercentage' - The sampling depth, as a percentage, for the job to apply when
-- processing objects. This value determines the percentage of eligible
-- objects that the job analyzes. If this value is less than 100, Amazon
-- Macie selects the objects to analyze at random, up to the specified
-- percentage, and analyzes all the data in those objects.
--
-- 'managedDataIdentifierSelector', 'createClassificationJob_managedDataIdentifierSelector' - The selection type to apply when determining which managed data
-- identifiers the job uses to analyze data. Valid values are:
--
-- -   ALL - Use all the managed data identifiers that Amazon Macie
--     provides. If you specify this value, don\'t specify any values for
--     the managedDataIdentifierIds property.
--
-- -   EXCLUDE - Use all the managed data identifiers that Macie provides
--     except the managed data identifiers specified by the
--     managedDataIdentifierIds property.
--
-- -   INCLUDE - Use only the managed data identifiers specified by the
--     managedDataIdentifierIds property.
--
-- -   NONE - Don\'t use any managed data identifiers. If you specify this
--     value, specify at least one custom data identifier for the job
--     (customDataIdentifierIds) and don\'t specify any values for the
--     managedDataIdentifierIds property.
--
-- If you don\'t specify a value for this property, the job uses all
-- managed data identifiers. If you don\'t specify a value for this
-- property or you specify ALL or EXCLUDE for a recurring job, the job also
-- uses new managed data identifiers as they are released.
--
-- 'customDataIdentifierIds', 'createClassificationJob_customDataIdentifierIds' - An array of unique identifiers, one for each custom data identifier for
-- the job to use when it analyzes data. To use only managed data
-- identifiers, don\'t specify a value for this property and specify a
-- value other than NONE for the managedDataIdentifierSelector property.
--
-- 'managedDataIdentifierIds', 'createClassificationJob_managedDataIdentifierIds' - An array of unique identifiers, one for each managed data identifier for
-- the job to include (use) or exclude (not use) when it analyzes data.
-- Inclusion or exclusion depends on the managed data identifier selection
-- type that you specify for the job (managedDataIdentifierSelector).
--
-- To retrieve a list of valid values for this property, use the
-- ListManagedDataIdentifiers operation.
--
-- 'description', 'createClassificationJob_description' - A custom description of the job. The description can contain as many as
-- 200 characters.
--
-- 'tags', 'createClassificationJob_tags' - A map of key-value pairs that specifies the tags to associate with the
-- job.
--
-- A job can have a maximum of 50 tags. Each tag consists of a tag key and
-- an associated tag value. The maximum length of a tag key is 128
-- characters. The maximum length of a tag value is 256 characters.
--
-- 'scheduleFrequency', 'createClassificationJob_scheduleFrequency' - The recurrence pattern for running the job. To run the job only once,
-- don\'t specify a value for this property and set the value for the
-- jobType property to ONE_TIME.
--
-- 's3JobDefinition', 'createClassificationJob_s3JobDefinition' - The S3 buckets that contain the objects to analyze, and the scope of
-- that analysis.
--
-- 'jobType', 'createClassificationJob_jobType' - The schedule for running the job. Valid values are:
--
-- -   ONE_TIME - Run the job only once. If you specify this value, don\'t
--     specify a value for the scheduleFrequency property.
--
-- -   SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you
--     specify this value, use the scheduleFrequency property to define the
--     recurrence pattern for the job.
--
-- 'clientToken', 'createClassificationJob_clientToken' - A unique, case-sensitive token that you provide to ensure the
-- idempotency of the request.
--
-- 'name', 'createClassificationJob_name' - A custom name for the job. The name can contain as many as 500
-- characters.
newCreateClassificationJob ::
  -- | 's3JobDefinition'
  S3JobDefinition ->
  -- | 'jobType'
  JobType ->
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CreateClassificationJob
newCreateClassificationJob
  pS3JobDefinition_
  pJobType_
  pClientToken_
  pName_ =
    CreateClassificationJob'
      { initialRun =
          Prelude.Nothing,
        samplingPercentage = Prelude.Nothing,
        managedDataIdentifierSelector = Prelude.Nothing,
        customDataIdentifierIds = Prelude.Nothing,
        managedDataIdentifierIds = Prelude.Nothing,
        description = Prelude.Nothing,
        tags = Prelude.Nothing,
        scheduleFrequency = Prelude.Nothing,
        s3JobDefinition = pS3JobDefinition_,
        jobType = pJobType_,
        clientToken = pClientToken_,
        name = pName_
      }

-- | For a recurring job, specifies whether to analyze all existing, eligible
-- objects immediately after the job is created (true). To analyze only
-- those objects that are created or changed after you create the job and
-- before the job\'s first scheduled run, set this value to false.
--
-- If you configure the job to run only once, don\'t specify a value for
-- this property.
createClassificationJob_initialRun :: Lens.Lens' CreateClassificationJob (Prelude.Maybe Prelude.Bool)
createClassificationJob_initialRun = Lens.lens (\CreateClassificationJob' {initialRun} -> initialRun) (\s@CreateClassificationJob' {} a -> s {initialRun = a} :: CreateClassificationJob)

-- | The sampling depth, as a percentage, for the job to apply when
-- processing objects. This value determines the percentage of eligible
-- objects that the job analyzes. If this value is less than 100, Amazon
-- Macie selects the objects to analyze at random, up to the specified
-- percentage, and analyzes all the data in those objects.
createClassificationJob_samplingPercentage :: Lens.Lens' CreateClassificationJob (Prelude.Maybe Prelude.Int)
createClassificationJob_samplingPercentage = Lens.lens (\CreateClassificationJob' {samplingPercentage} -> samplingPercentage) (\s@CreateClassificationJob' {} a -> s {samplingPercentage = a} :: CreateClassificationJob)

-- | The selection type to apply when determining which managed data
-- identifiers the job uses to analyze data. Valid values are:
--
-- -   ALL - Use all the managed data identifiers that Amazon Macie
--     provides. If you specify this value, don\'t specify any values for
--     the managedDataIdentifierIds property.
--
-- -   EXCLUDE - Use all the managed data identifiers that Macie provides
--     except the managed data identifiers specified by the
--     managedDataIdentifierIds property.
--
-- -   INCLUDE - Use only the managed data identifiers specified by the
--     managedDataIdentifierIds property.
--
-- -   NONE - Don\'t use any managed data identifiers. If you specify this
--     value, specify at least one custom data identifier for the job
--     (customDataIdentifierIds) and don\'t specify any values for the
--     managedDataIdentifierIds property.
--
-- If you don\'t specify a value for this property, the job uses all
-- managed data identifiers. If you don\'t specify a value for this
-- property or you specify ALL or EXCLUDE for a recurring job, the job also
-- uses new managed data identifiers as they are released.
createClassificationJob_managedDataIdentifierSelector :: Lens.Lens' CreateClassificationJob (Prelude.Maybe ManagedDataIdentifierSelector)
createClassificationJob_managedDataIdentifierSelector = Lens.lens (\CreateClassificationJob' {managedDataIdentifierSelector} -> managedDataIdentifierSelector) (\s@CreateClassificationJob' {} a -> s {managedDataIdentifierSelector = a} :: CreateClassificationJob)

-- | An array of unique identifiers, one for each custom data identifier for
-- the job to use when it analyzes data. To use only managed data
-- identifiers, don\'t specify a value for this property and specify a
-- value other than NONE for the managedDataIdentifierSelector property.
createClassificationJob_customDataIdentifierIds :: Lens.Lens' CreateClassificationJob (Prelude.Maybe [Prelude.Text])
createClassificationJob_customDataIdentifierIds = Lens.lens (\CreateClassificationJob' {customDataIdentifierIds} -> customDataIdentifierIds) (\s@CreateClassificationJob' {} a -> s {customDataIdentifierIds = a} :: CreateClassificationJob) Prelude.. Lens.mapping Lens.coerced

-- | An array of unique identifiers, one for each managed data identifier for
-- the job to include (use) or exclude (not use) when it analyzes data.
-- Inclusion or exclusion depends on the managed data identifier selection
-- type that you specify for the job (managedDataIdentifierSelector).
--
-- To retrieve a list of valid values for this property, use the
-- ListManagedDataIdentifiers operation.
createClassificationJob_managedDataIdentifierIds :: Lens.Lens' CreateClassificationJob (Prelude.Maybe [Prelude.Text])
createClassificationJob_managedDataIdentifierIds = Lens.lens (\CreateClassificationJob' {managedDataIdentifierIds} -> managedDataIdentifierIds) (\s@CreateClassificationJob' {} a -> s {managedDataIdentifierIds = a} :: CreateClassificationJob) Prelude.. Lens.mapping Lens.coerced

-- | A custom description of the job. The description can contain as many as
-- 200 characters.
createClassificationJob_description :: Lens.Lens' CreateClassificationJob (Prelude.Maybe Prelude.Text)
createClassificationJob_description = Lens.lens (\CreateClassificationJob' {description} -> description) (\s@CreateClassificationJob' {} a -> s {description = a} :: CreateClassificationJob)

-- | A map of key-value pairs that specifies the tags to associate with the
-- job.
--
-- A job can have a maximum of 50 tags. Each tag consists of a tag key and
-- an associated tag value. The maximum length of a tag key is 128
-- characters. The maximum length of a tag value is 256 characters.
createClassificationJob_tags :: Lens.Lens' CreateClassificationJob (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createClassificationJob_tags = Lens.lens (\CreateClassificationJob' {tags} -> tags) (\s@CreateClassificationJob' {} a -> s {tags = a} :: CreateClassificationJob) Prelude.. Lens.mapping Lens.coerced

-- | The recurrence pattern for running the job. To run the job only once,
-- don\'t specify a value for this property and set the value for the
-- jobType property to ONE_TIME.
createClassificationJob_scheduleFrequency :: Lens.Lens' CreateClassificationJob (Prelude.Maybe JobScheduleFrequency)
createClassificationJob_scheduleFrequency = Lens.lens (\CreateClassificationJob' {scheduleFrequency} -> scheduleFrequency) (\s@CreateClassificationJob' {} a -> s {scheduleFrequency = a} :: CreateClassificationJob)

-- | The S3 buckets that contain the objects to analyze, and the scope of
-- that analysis.
createClassificationJob_s3JobDefinition :: Lens.Lens' CreateClassificationJob S3JobDefinition
createClassificationJob_s3JobDefinition = Lens.lens (\CreateClassificationJob' {s3JobDefinition} -> s3JobDefinition) (\s@CreateClassificationJob' {} a -> s {s3JobDefinition = a} :: CreateClassificationJob)

-- | The schedule for running the job. Valid values are:
--
-- -   ONE_TIME - Run the job only once. If you specify this value, don\'t
--     specify a value for the scheduleFrequency property.
--
-- -   SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you
--     specify this value, use the scheduleFrequency property to define the
--     recurrence pattern for the job.
createClassificationJob_jobType :: Lens.Lens' CreateClassificationJob JobType
createClassificationJob_jobType = Lens.lens (\CreateClassificationJob' {jobType} -> jobType) (\s@CreateClassificationJob' {} a -> s {jobType = a} :: CreateClassificationJob)

-- | A unique, case-sensitive token that you provide to ensure the
-- idempotency of the request.
createClassificationJob_clientToken :: Lens.Lens' CreateClassificationJob Prelude.Text
createClassificationJob_clientToken = Lens.lens (\CreateClassificationJob' {clientToken} -> clientToken) (\s@CreateClassificationJob' {} a -> s {clientToken = a} :: CreateClassificationJob)

-- | A custom name for the job. The name can contain as many as 500
-- characters.
createClassificationJob_name :: Lens.Lens' CreateClassificationJob Prelude.Text
createClassificationJob_name = Lens.lens (\CreateClassificationJob' {name} -> name) (\s@CreateClassificationJob' {} a -> s {name = a} :: CreateClassificationJob)

instance Core.AWSRequest CreateClassificationJob where
  type
    AWSResponse CreateClassificationJob =
      CreateClassificationJobResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateClassificationJobResponse'
            Prelude.<$> (x Core..?> "jobId")
            Prelude.<*> (x Core..?> "jobArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateClassificationJob

instance Prelude.NFData CreateClassificationJob

instance Core.ToHeaders CreateClassificationJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateClassificationJob where
  toJSON CreateClassificationJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("initialRun" Core..=) Prelude.<$> initialRun,
            ("samplingPercentage" Core..=)
              Prelude.<$> samplingPercentage,
            ("managedDataIdentifierSelector" Core..=)
              Prelude.<$> managedDataIdentifierSelector,
            ("customDataIdentifierIds" Core..=)
              Prelude.<$> customDataIdentifierIds,
            ("managedDataIdentifierIds" Core..=)
              Prelude.<$> managedDataIdentifierIds,
            ("description" Core..=) Prelude.<$> description,
            ("tags" Core..=) Prelude.<$> tags,
            ("scheduleFrequency" Core..=)
              Prelude.<$> scheduleFrequency,
            Prelude.Just
              ("s3JobDefinition" Core..= s3JobDefinition),
            Prelude.Just ("jobType" Core..= jobType),
            Prelude.Just ("clientToken" Core..= clientToken),
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateClassificationJob where
  toPath = Prelude.const "/jobs"

instance Core.ToQuery CreateClassificationJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateClassificationJobResponse' smart constructor.
data CreateClassificationJobResponse = CreateClassificationJobResponse'
  { -- | The unique identifier for the job.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the job.
    jobArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateClassificationJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'createClassificationJobResponse_jobId' - The unique identifier for the job.
--
-- 'jobArn', 'createClassificationJobResponse_jobArn' - The Amazon Resource Name (ARN) of the job.
--
-- 'httpStatus', 'createClassificationJobResponse_httpStatus' - The response's http status code.
newCreateClassificationJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateClassificationJobResponse
newCreateClassificationJobResponse pHttpStatus_ =
  CreateClassificationJobResponse'
    { jobId =
        Prelude.Nothing,
      jobArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier for the job.
createClassificationJobResponse_jobId :: Lens.Lens' CreateClassificationJobResponse (Prelude.Maybe Prelude.Text)
createClassificationJobResponse_jobId = Lens.lens (\CreateClassificationJobResponse' {jobId} -> jobId) (\s@CreateClassificationJobResponse' {} a -> s {jobId = a} :: CreateClassificationJobResponse)

-- | The Amazon Resource Name (ARN) of the job.
createClassificationJobResponse_jobArn :: Lens.Lens' CreateClassificationJobResponse (Prelude.Maybe Prelude.Text)
createClassificationJobResponse_jobArn = Lens.lens (\CreateClassificationJobResponse' {jobArn} -> jobArn) (\s@CreateClassificationJobResponse' {} a -> s {jobArn = a} :: CreateClassificationJobResponse)

-- | The response's http status code.
createClassificationJobResponse_httpStatus :: Lens.Lens' CreateClassificationJobResponse Prelude.Int
createClassificationJobResponse_httpStatus = Lens.lens (\CreateClassificationJobResponse' {httpStatus} -> httpStatus) (\s@CreateClassificationJobResponse' {} a -> s {httpStatus = a} :: CreateClassificationJobResponse)

instance
  Prelude.NFData
    CreateClassificationJobResponse
