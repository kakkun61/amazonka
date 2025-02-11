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
-- Module      : Network.AWS.Panorama.DescribeNodeFromTemplateJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a job to create a camera stream node.
module Network.AWS.Panorama.DescribeNodeFromTemplateJob
  ( -- * Creating a Request
    DescribeNodeFromTemplateJob (..),
    newDescribeNodeFromTemplateJob,

    -- * Request Lenses
    describeNodeFromTemplateJob_jobId,

    -- * Destructuring the Response
    DescribeNodeFromTemplateJobResponse (..),
    newDescribeNodeFromTemplateJobResponse,

    -- * Response Lenses
    describeNodeFromTemplateJobResponse_jobTags,
    describeNodeFromTemplateJobResponse_nodeDescription,
    describeNodeFromTemplateJobResponse_httpStatus,
    describeNodeFromTemplateJobResponse_jobId,
    describeNodeFromTemplateJobResponse_status,
    describeNodeFromTemplateJobResponse_statusMessage,
    describeNodeFromTemplateJobResponse_createdTime,
    describeNodeFromTemplateJobResponse_lastUpdatedTime,
    describeNodeFromTemplateJobResponse_outputPackageName,
    describeNodeFromTemplateJobResponse_outputPackageVersion,
    describeNodeFromTemplateJobResponse_nodeName,
    describeNodeFromTemplateJobResponse_templateType,
    describeNodeFromTemplateJobResponse_templateParameters,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Panorama.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeNodeFromTemplateJob' smart constructor.
data DescribeNodeFromTemplateJob = DescribeNodeFromTemplateJob'
  { -- | The job\'s ID.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNodeFromTemplateJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'describeNodeFromTemplateJob_jobId' - The job\'s ID.
newDescribeNodeFromTemplateJob ::
  -- | 'jobId'
  Prelude.Text ->
  DescribeNodeFromTemplateJob
newDescribeNodeFromTemplateJob pJobId_ =
  DescribeNodeFromTemplateJob' {jobId = pJobId_}

-- | The job\'s ID.
describeNodeFromTemplateJob_jobId :: Lens.Lens' DescribeNodeFromTemplateJob Prelude.Text
describeNodeFromTemplateJob_jobId = Lens.lens (\DescribeNodeFromTemplateJob' {jobId} -> jobId) (\s@DescribeNodeFromTemplateJob' {} a -> s {jobId = a} :: DescribeNodeFromTemplateJob)

instance Core.AWSRequest DescribeNodeFromTemplateJob where
  type
    AWSResponse DescribeNodeFromTemplateJob =
      DescribeNodeFromTemplateJobResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeNodeFromTemplateJobResponse'
            Prelude.<$> (x Core..?> "JobTags" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "NodeDescription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "JobId")
            Prelude.<*> (x Core..:> "Status")
            Prelude.<*> (x Core..:> "StatusMessage")
            Prelude.<*> (x Core..:> "CreatedTime")
            Prelude.<*> (x Core..:> "LastUpdatedTime")
            Prelude.<*> (x Core..:> "OutputPackageName")
            Prelude.<*> (x Core..:> "OutputPackageVersion")
            Prelude.<*> (x Core..:> "NodeName")
            Prelude.<*> (x Core..:> "TemplateType")
            Prelude.<*> ( x Core..?> "TemplateParameters"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable DescribeNodeFromTemplateJob

instance Prelude.NFData DescribeNodeFromTemplateJob

instance Core.ToHeaders DescribeNodeFromTemplateJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeNodeFromTemplateJob where
  toPath DescribeNodeFromTemplateJob' {..} =
    Prelude.mconcat
      ["/packages/template-job/", Core.toBS jobId]

instance Core.ToQuery DescribeNodeFromTemplateJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeNodeFromTemplateJobResponse' smart constructor.
data DescribeNodeFromTemplateJobResponse = DescribeNodeFromTemplateJobResponse'
  { -- | The job\'s tags.
    jobTags :: Prelude.Maybe [JobResourceTags],
    -- | The node\'s description.
    nodeDescription :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The job\'s ID.
    jobId :: Prelude.Text,
    -- | The job\'s status.
    status :: NodeFromTemplateJobStatus,
    -- | The job\'s status message.
    statusMessage :: Prelude.Text,
    -- | When the job was created.
    createdTime :: Core.POSIX,
    -- | When the job was updated.
    lastUpdatedTime :: Core.POSIX,
    -- | The job\'s output package name.
    outputPackageName :: Prelude.Text,
    -- | The job\'s output package version.
    outputPackageVersion :: Prelude.Text,
    -- | The node\'s name.
    nodeName :: Prelude.Text,
    -- | The job\'s template type.
    templateType :: TemplateType,
    -- | The job\'s template parameters.
    templateParameters :: Prelude.HashMap Prelude.Text (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeNodeFromTemplateJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobTags', 'describeNodeFromTemplateJobResponse_jobTags' - The job\'s tags.
--
-- 'nodeDescription', 'describeNodeFromTemplateJobResponse_nodeDescription' - The node\'s description.
--
-- 'httpStatus', 'describeNodeFromTemplateJobResponse_httpStatus' - The response's http status code.
--
-- 'jobId', 'describeNodeFromTemplateJobResponse_jobId' - The job\'s ID.
--
-- 'status', 'describeNodeFromTemplateJobResponse_status' - The job\'s status.
--
-- 'statusMessage', 'describeNodeFromTemplateJobResponse_statusMessage' - The job\'s status message.
--
-- 'createdTime', 'describeNodeFromTemplateJobResponse_createdTime' - When the job was created.
--
-- 'lastUpdatedTime', 'describeNodeFromTemplateJobResponse_lastUpdatedTime' - When the job was updated.
--
-- 'outputPackageName', 'describeNodeFromTemplateJobResponse_outputPackageName' - The job\'s output package name.
--
-- 'outputPackageVersion', 'describeNodeFromTemplateJobResponse_outputPackageVersion' - The job\'s output package version.
--
-- 'nodeName', 'describeNodeFromTemplateJobResponse_nodeName' - The node\'s name.
--
-- 'templateType', 'describeNodeFromTemplateJobResponse_templateType' - The job\'s template type.
--
-- 'templateParameters', 'describeNodeFromTemplateJobResponse_templateParameters' - The job\'s template parameters.
newDescribeNodeFromTemplateJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobId'
  Prelude.Text ->
  -- | 'status'
  NodeFromTemplateJobStatus ->
  -- | 'statusMessage'
  Prelude.Text ->
  -- | 'createdTime'
  Prelude.UTCTime ->
  -- | 'lastUpdatedTime'
  Prelude.UTCTime ->
  -- | 'outputPackageName'
  Prelude.Text ->
  -- | 'outputPackageVersion'
  Prelude.Text ->
  -- | 'nodeName'
  Prelude.Text ->
  -- | 'templateType'
  TemplateType ->
  DescribeNodeFromTemplateJobResponse
newDescribeNodeFromTemplateJobResponse
  pHttpStatus_
  pJobId_
  pStatus_
  pStatusMessage_
  pCreatedTime_
  pLastUpdatedTime_
  pOutputPackageName_
  pOutputPackageVersion_
  pNodeName_
  pTemplateType_ =
    DescribeNodeFromTemplateJobResponse'
      { jobTags =
          Prelude.Nothing,
        nodeDescription = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        jobId = pJobId_,
        status = pStatus_,
        statusMessage = pStatusMessage_,
        createdTime =
          Core._Time Lens.# pCreatedTime_,
        lastUpdatedTime =
          Core._Time Lens.# pLastUpdatedTime_,
        outputPackageName =
          pOutputPackageName_,
        outputPackageVersion =
          pOutputPackageVersion_,
        nodeName = pNodeName_,
        templateType = pTemplateType_,
        templateParameters = Prelude.mempty
      }

-- | The job\'s tags.
describeNodeFromTemplateJobResponse_jobTags :: Lens.Lens' DescribeNodeFromTemplateJobResponse (Prelude.Maybe [JobResourceTags])
describeNodeFromTemplateJobResponse_jobTags = Lens.lens (\DescribeNodeFromTemplateJobResponse' {jobTags} -> jobTags) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {jobTags = a} :: DescribeNodeFromTemplateJobResponse) Prelude.. Lens.mapping Lens.coerced

-- | The node\'s description.
describeNodeFromTemplateJobResponse_nodeDescription :: Lens.Lens' DescribeNodeFromTemplateJobResponse (Prelude.Maybe Prelude.Text)
describeNodeFromTemplateJobResponse_nodeDescription = Lens.lens (\DescribeNodeFromTemplateJobResponse' {nodeDescription} -> nodeDescription) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {nodeDescription = a} :: DescribeNodeFromTemplateJobResponse)

-- | The response's http status code.
describeNodeFromTemplateJobResponse_httpStatus :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.Int
describeNodeFromTemplateJobResponse_httpStatus = Lens.lens (\DescribeNodeFromTemplateJobResponse' {httpStatus} -> httpStatus) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {httpStatus = a} :: DescribeNodeFromTemplateJobResponse)

-- | The job\'s ID.
describeNodeFromTemplateJobResponse_jobId :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.Text
describeNodeFromTemplateJobResponse_jobId = Lens.lens (\DescribeNodeFromTemplateJobResponse' {jobId} -> jobId) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {jobId = a} :: DescribeNodeFromTemplateJobResponse)

-- | The job\'s status.
describeNodeFromTemplateJobResponse_status :: Lens.Lens' DescribeNodeFromTemplateJobResponse NodeFromTemplateJobStatus
describeNodeFromTemplateJobResponse_status = Lens.lens (\DescribeNodeFromTemplateJobResponse' {status} -> status) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {status = a} :: DescribeNodeFromTemplateJobResponse)

-- | The job\'s status message.
describeNodeFromTemplateJobResponse_statusMessage :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.Text
describeNodeFromTemplateJobResponse_statusMessage = Lens.lens (\DescribeNodeFromTemplateJobResponse' {statusMessage} -> statusMessage) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {statusMessage = a} :: DescribeNodeFromTemplateJobResponse)

-- | When the job was created.
describeNodeFromTemplateJobResponse_createdTime :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.UTCTime
describeNodeFromTemplateJobResponse_createdTime = Lens.lens (\DescribeNodeFromTemplateJobResponse' {createdTime} -> createdTime) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {createdTime = a} :: DescribeNodeFromTemplateJobResponse) Prelude.. Core._Time

-- | When the job was updated.
describeNodeFromTemplateJobResponse_lastUpdatedTime :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.UTCTime
describeNodeFromTemplateJobResponse_lastUpdatedTime = Lens.lens (\DescribeNodeFromTemplateJobResponse' {lastUpdatedTime} -> lastUpdatedTime) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {lastUpdatedTime = a} :: DescribeNodeFromTemplateJobResponse) Prelude.. Core._Time

-- | The job\'s output package name.
describeNodeFromTemplateJobResponse_outputPackageName :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.Text
describeNodeFromTemplateJobResponse_outputPackageName = Lens.lens (\DescribeNodeFromTemplateJobResponse' {outputPackageName} -> outputPackageName) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {outputPackageName = a} :: DescribeNodeFromTemplateJobResponse)

-- | The job\'s output package version.
describeNodeFromTemplateJobResponse_outputPackageVersion :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.Text
describeNodeFromTemplateJobResponse_outputPackageVersion = Lens.lens (\DescribeNodeFromTemplateJobResponse' {outputPackageVersion} -> outputPackageVersion) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {outputPackageVersion = a} :: DescribeNodeFromTemplateJobResponse)

-- | The node\'s name.
describeNodeFromTemplateJobResponse_nodeName :: Lens.Lens' DescribeNodeFromTemplateJobResponse Prelude.Text
describeNodeFromTemplateJobResponse_nodeName = Lens.lens (\DescribeNodeFromTemplateJobResponse' {nodeName} -> nodeName) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {nodeName = a} :: DescribeNodeFromTemplateJobResponse)

-- | The job\'s template type.
describeNodeFromTemplateJobResponse_templateType :: Lens.Lens' DescribeNodeFromTemplateJobResponse TemplateType
describeNodeFromTemplateJobResponse_templateType = Lens.lens (\DescribeNodeFromTemplateJobResponse' {templateType} -> templateType) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {templateType = a} :: DescribeNodeFromTemplateJobResponse)

-- | The job\'s template parameters.
describeNodeFromTemplateJobResponse_templateParameters :: Lens.Lens' DescribeNodeFromTemplateJobResponse (Prelude.HashMap Prelude.Text Prelude.Text)
describeNodeFromTemplateJobResponse_templateParameters = Lens.lens (\DescribeNodeFromTemplateJobResponse' {templateParameters} -> templateParameters) (\s@DescribeNodeFromTemplateJobResponse' {} a -> s {templateParameters = a} :: DescribeNodeFromTemplateJobResponse) Prelude.. Lens.coerced

instance
  Prelude.NFData
    DescribeNodeFromTemplateJobResponse
