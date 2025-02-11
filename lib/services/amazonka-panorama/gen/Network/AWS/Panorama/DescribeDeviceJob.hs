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
-- Module      : Network.AWS.Panorama.DescribeDeviceJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a device job.
module Network.AWS.Panorama.DescribeDeviceJob
  ( -- * Creating a Request
    DescribeDeviceJob (..),
    newDescribeDeviceJob,

    -- * Request Lenses
    describeDeviceJob_jobId,

    -- * Destructuring the Response
    DescribeDeviceJobResponse (..),
    newDescribeDeviceJobResponse,

    -- * Response Lenses
    describeDeviceJobResponse_status,
    describeDeviceJobResponse_jobId,
    describeDeviceJobResponse_createdTime,
    describeDeviceJobResponse_deviceArn,
    describeDeviceJobResponse_imageVersion,
    describeDeviceJobResponse_deviceName,
    describeDeviceJobResponse_deviceId,
    describeDeviceJobResponse_deviceType,
    describeDeviceJobResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Panorama.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDeviceJob' smart constructor.
data DescribeDeviceJob = DescribeDeviceJob'
  { -- | The job\'s ID.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDeviceJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'describeDeviceJob_jobId' - The job\'s ID.
newDescribeDeviceJob ::
  -- | 'jobId'
  Prelude.Text ->
  DescribeDeviceJob
newDescribeDeviceJob pJobId_ =
  DescribeDeviceJob' {jobId = pJobId_}

-- | The job\'s ID.
describeDeviceJob_jobId :: Lens.Lens' DescribeDeviceJob Prelude.Text
describeDeviceJob_jobId = Lens.lens (\DescribeDeviceJob' {jobId} -> jobId) (\s@DescribeDeviceJob' {} a -> s {jobId = a} :: DescribeDeviceJob)

instance Core.AWSRequest DescribeDeviceJob where
  type
    AWSResponse DescribeDeviceJob =
      DescribeDeviceJobResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDeviceJobResponse'
            Prelude.<$> (x Core..?> "Status")
            Prelude.<*> (x Core..?> "JobId")
            Prelude.<*> (x Core..?> "CreatedTime")
            Prelude.<*> (x Core..?> "DeviceArn")
            Prelude.<*> (x Core..?> "ImageVersion")
            Prelude.<*> (x Core..?> "DeviceName")
            Prelude.<*> (x Core..?> "DeviceId")
            Prelude.<*> (x Core..?> "DeviceType")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDeviceJob

instance Prelude.NFData DescribeDeviceJob

instance Core.ToHeaders DescribeDeviceJob where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeDeviceJob where
  toPath DescribeDeviceJob' {..} =
    Prelude.mconcat ["/jobs/", Core.toBS jobId]

instance Core.ToQuery DescribeDeviceJob where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDeviceJobResponse' smart constructor.
data DescribeDeviceJobResponse = DescribeDeviceJobResponse'
  { -- | The job\'s status.
    status :: Prelude.Maybe UpdateProgress,
    -- | The job\'s ID.
    jobId :: Prelude.Maybe Prelude.Text,
    -- | When the job was created.
    createdTime :: Prelude.Maybe Core.POSIX,
    -- | The device\'s ARN.
    deviceArn :: Prelude.Maybe Prelude.Text,
    -- | For an OTA job, the target version of the device software.
    imageVersion :: Prelude.Maybe Prelude.Text,
    -- | The device\'s name.
    deviceName :: Prelude.Maybe Prelude.Text,
    -- | The device\'s ID.
    deviceId :: Prelude.Maybe Prelude.Text,
    -- | The device\'s type.
    deviceType :: Prelude.Maybe DeviceType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDeviceJobResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'describeDeviceJobResponse_status' - The job\'s status.
--
-- 'jobId', 'describeDeviceJobResponse_jobId' - The job\'s ID.
--
-- 'createdTime', 'describeDeviceJobResponse_createdTime' - When the job was created.
--
-- 'deviceArn', 'describeDeviceJobResponse_deviceArn' - The device\'s ARN.
--
-- 'imageVersion', 'describeDeviceJobResponse_imageVersion' - For an OTA job, the target version of the device software.
--
-- 'deviceName', 'describeDeviceJobResponse_deviceName' - The device\'s name.
--
-- 'deviceId', 'describeDeviceJobResponse_deviceId' - The device\'s ID.
--
-- 'deviceType', 'describeDeviceJobResponse_deviceType' - The device\'s type.
--
-- 'httpStatus', 'describeDeviceJobResponse_httpStatus' - The response's http status code.
newDescribeDeviceJobResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDeviceJobResponse
newDescribeDeviceJobResponse pHttpStatus_ =
  DescribeDeviceJobResponse'
    { status =
        Prelude.Nothing,
      jobId = Prelude.Nothing,
      createdTime = Prelude.Nothing,
      deviceArn = Prelude.Nothing,
      imageVersion = Prelude.Nothing,
      deviceName = Prelude.Nothing,
      deviceId = Prelude.Nothing,
      deviceType = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The job\'s status.
describeDeviceJobResponse_status :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe UpdateProgress)
describeDeviceJobResponse_status = Lens.lens (\DescribeDeviceJobResponse' {status} -> status) (\s@DescribeDeviceJobResponse' {} a -> s {status = a} :: DescribeDeviceJobResponse)

-- | The job\'s ID.
describeDeviceJobResponse_jobId :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe Prelude.Text)
describeDeviceJobResponse_jobId = Lens.lens (\DescribeDeviceJobResponse' {jobId} -> jobId) (\s@DescribeDeviceJobResponse' {} a -> s {jobId = a} :: DescribeDeviceJobResponse)

-- | When the job was created.
describeDeviceJobResponse_createdTime :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe Prelude.UTCTime)
describeDeviceJobResponse_createdTime = Lens.lens (\DescribeDeviceJobResponse' {createdTime} -> createdTime) (\s@DescribeDeviceJobResponse' {} a -> s {createdTime = a} :: DescribeDeviceJobResponse) Prelude.. Lens.mapping Core._Time

-- | The device\'s ARN.
describeDeviceJobResponse_deviceArn :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe Prelude.Text)
describeDeviceJobResponse_deviceArn = Lens.lens (\DescribeDeviceJobResponse' {deviceArn} -> deviceArn) (\s@DescribeDeviceJobResponse' {} a -> s {deviceArn = a} :: DescribeDeviceJobResponse)

-- | For an OTA job, the target version of the device software.
describeDeviceJobResponse_imageVersion :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe Prelude.Text)
describeDeviceJobResponse_imageVersion = Lens.lens (\DescribeDeviceJobResponse' {imageVersion} -> imageVersion) (\s@DescribeDeviceJobResponse' {} a -> s {imageVersion = a} :: DescribeDeviceJobResponse)

-- | The device\'s name.
describeDeviceJobResponse_deviceName :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe Prelude.Text)
describeDeviceJobResponse_deviceName = Lens.lens (\DescribeDeviceJobResponse' {deviceName} -> deviceName) (\s@DescribeDeviceJobResponse' {} a -> s {deviceName = a} :: DescribeDeviceJobResponse)

-- | The device\'s ID.
describeDeviceJobResponse_deviceId :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe Prelude.Text)
describeDeviceJobResponse_deviceId = Lens.lens (\DescribeDeviceJobResponse' {deviceId} -> deviceId) (\s@DescribeDeviceJobResponse' {} a -> s {deviceId = a} :: DescribeDeviceJobResponse)

-- | The device\'s type.
describeDeviceJobResponse_deviceType :: Lens.Lens' DescribeDeviceJobResponse (Prelude.Maybe DeviceType)
describeDeviceJobResponse_deviceType = Lens.lens (\DescribeDeviceJobResponse' {deviceType} -> deviceType) (\s@DescribeDeviceJobResponse' {} a -> s {deviceType = a} :: DescribeDeviceJobResponse)

-- | The response's http status code.
describeDeviceJobResponse_httpStatus :: Lens.Lens' DescribeDeviceJobResponse Prelude.Int
describeDeviceJobResponse_httpStatus = Lens.lens (\DescribeDeviceJobResponse' {httpStatus} -> httpStatus) (\s@DescribeDeviceJobResponse' {} a -> s {httpStatus = a} :: DescribeDeviceJobResponse)

instance Prelude.NFData DescribeDeviceJobResponse
