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
-- Module      : Network.AWS.CloudTrail.GetTrailStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a JSON-formatted list of information about the specified trail.
-- Fields include information on delivery errors, Amazon SNS and Amazon S3
-- errors, and start and stop logging times for each trail. This operation
-- returns trail status from a single region. To return trail status from
-- all regions, you must call the operation on each region.
module Network.AWS.CloudTrail.GetTrailStatus
  ( -- * Creating a Request
    GetTrailStatus (..),
    newGetTrailStatus,

    -- * Request Lenses
    getTrailStatus_name,

    -- * Destructuring the Response
    GetTrailStatusResponse (..),
    newGetTrailStatusResponse,

    -- * Response Lenses
    getTrailStatusResponse_timeLoggingStopped,
    getTrailStatusResponse_latestDeliveryError,
    getTrailStatusResponse_latestDigestDeliveryTime,
    getTrailStatusResponse_latestNotificationAttemptSucceeded,
    getTrailStatusResponse_startLoggingTime,
    getTrailStatusResponse_latestNotificationError,
    getTrailStatusResponse_latestDeliveryAttemptSucceeded,
    getTrailStatusResponse_isLogging,
    getTrailStatusResponse_timeLoggingStarted,
    getTrailStatusResponse_latestDigestDeliveryError,
    getTrailStatusResponse_latestDeliveryAttemptTime,
    getTrailStatusResponse_latestDeliveryTime,
    getTrailStatusResponse_latestCloudWatchLogsDeliveryTime,
    getTrailStatusResponse_latestCloudWatchLogsDeliveryError,
    getTrailStatusResponse_latestNotificationTime,
    getTrailStatusResponse_latestNotificationAttemptTime,
    getTrailStatusResponse_stopLoggingTime,
    getTrailStatusResponse_httpStatus,
  )
where

import Network.AWS.CloudTrail.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The name of a trail about which you want the current status.
--
-- /See:/ 'newGetTrailStatus' smart constructor.
data GetTrailStatus = GetTrailStatus'
  { -- | Specifies the name or the CloudTrail ARN of the trail for which you are
    -- requesting status. To get the status of a shadow trail (a replication of
    -- the trail in another region), you must specify its ARN. The following is
    -- the format of a trail ARN.
    --
    -- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTrailStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getTrailStatus_name' - Specifies the name or the CloudTrail ARN of the trail for which you are
-- requesting status. To get the status of a shadow trail (a replication of
-- the trail in another region), you must specify its ARN. The following is
-- the format of a trail ARN.
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
newGetTrailStatus ::
  -- | 'name'
  Prelude.Text ->
  GetTrailStatus
newGetTrailStatus pName_ =
  GetTrailStatus' {name = pName_}

-- | Specifies the name or the CloudTrail ARN of the trail for which you are
-- requesting status. To get the status of a shadow trail (a replication of
-- the trail in another region), you must specify its ARN. The following is
-- the format of a trail ARN.
--
-- @arn:aws:cloudtrail:us-east-2:123456789012:trail\/MyTrail@
getTrailStatus_name :: Lens.Lens' GetTrailStatus Prelude.Text
getTrailStatus_name = Lens.lens (\GetTrailStatus' {name} -> name) (\s@GetTrailStatus' {} a -> s {name = a} :: GetTrailStatus)

instance Core.AWSRequest GetTrailStatus where
  type
    AWSResponse GetTrailStatus =
      GetTrailStatusResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetTrailStatusResponse'
            Prelude.<$> (x Core..?> "TimeLoggingStopped")
            Prelude.<*> (x Core..?> "LatestDeliveryError")
            Prelude.<*> (x Core..?> "LatestDigestDeliveryTime")
            Prelude.<*> (x Core..?> "LatestNotificationAttemptSucceeded")
            Prelude.<*> (x Core..?> "StartLoggingTime")
            Prelude.<*> (x Core..?> "LatestNotificationError")
            Prelude.<*> (x Core..?> "LatestDeliveryAttemptSucceeded")
            Prelude.<*> (x Core..?> "IsLogging")
            Prelude.<*> (x Core..?> "TimeLoggingStarted")
            Prelude.<*> (x Core..?> "LatestDigestDeliveryError")
            Prelude.<*> (x Core..?> "LatestDeliveryAttemptTime")
            Prelude.<*> (x Core..?> "LatestDeliveryTime")
            Prelude.<*> (x Core..?> "LatestCloudWatchLogsDeliveryTime")
            Prelude.<*> (x Core..?> "LatestCloudWatchLogsDeliveryError")
            Prelude.<*> (x Core..?> "LatestNotificationTime")
            Prelude.<*> (x Core..?> "LatestNotificationAttemptTime")
            Prelude.<*> (x Core..?> "StopLoggingTime")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetTrailStatus

instance Prelude.NFData GetTrailStatus

instance Core.ToHeaders GetTrailStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetTrailStatus" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetTrailStatus where
  toJSON GetTrailStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Name" Core..= name)]
      )

instance Core.ToPath GetTrailStatus where
  toPath = Prelude.const "/"

instance Core.ToQuery GetTrailStatus where
  toQuery = Prelude.const Prelude.mempty

-- | Returns the objects or data listed below if successful. Otherwise,
-- returns an error.
--
-- /See:/ 'newGetTrailStatusResponse' smart constructor.
data GetTrailStatusResponse = GetTrailStatusResponse'
  { -- | This field is no longer in use.
    timeLoggingStopped :: Prelude.Maybe Prelude.Text,
    -- | Displays any Amazon S3 error that CloudTrail encountered when attempting
    -- to deliver log files to the designated bucket. For more information, see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses>
    -- in the Amazon S3 API Reference.
    --
    -- This error occurs only when there is a problem with the destination S3
    -- bucket, and does not occur for requests that time out. To resolve the
    -- issue, create a new bucket, and then call @UpdateTrail@ to specify the
    -- new bucket; or fix the existing objects so that CloudTrail can again
    -- write to the bucket.
    latestDeliveryError :: Prelude.Maybe Prelude.Text,
    -- | Specifies the date and time that CloudTrail last delivered a digest file
    -- to an account\'s Amazon S3 bucket.
    latestDigestDeliveryTime :: Prelude.Maybe Core.POSIX,
    -- | This field is no longer in use.
    latestNotificationAttemptSucceeded :: Prelude.Maybe Prelude.Text,
    -- | Specifies the most recent date and time when CloudTrail started
    -- recording API calls for an Amazon Web Services account.
    startLoggingTime :: Prelude.Maybe Core.POSIX,
    -- | Displays any Amazon SNS error that CloudTrail encountered when
    -- attempting to send a notification. For more information about Amazon SNS
    -- errors, see the
    -- <https://docs.aws.amazon.com/sns/latest/dg/welcome.html Amazon SNS Developer Guide>.
    latestNotificationError :: Prelude.Maybe Prelude.Text,
    -- | This field is no longer in use.
    latestDeliveryAttemptSucceeded :: Prelude.Maybe Prelude.Text,
    -- | Whether the CloudTrail trail is currently logging Amazon Web Services
    -- API calls.
    isLogging :: Prelude.Maybe Prelude.Bool,
    -- | This field is no longer in use.
    timeLoggingStarted :: Prelude.Maybe Prelude.Text,
    -- | Displays any Amazon S3 error that CloudTrail encountered when attempting
    -- to deliver a digest file to the designated bucket. For more information,
    -- see
    -- <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses>
    -- in the Amazon S3 API Reference.
    --
    -- This error occurs only when there is a problem with the destination S3
    -- bucket, and does not occur for requests that time out. To resolve the
    -- issue, create a new bucket, and then call @UpdateTrail@ to specify the
    -- new bucket; or fix the existing objects so that CloudTrail can again
    -- write to the bucket.
    latestDigestDeliveryError :: Prelude.Maybe Prelude.Text,
    -- | This field is no longer in use.
    latestDeliveryAttemptTime :: Prelude.Maybe Prelude.Text,
    -- | Specifies the date and time that CloudTrail last delivered log files to
    -- an account\'s Amazon S3 bucket.
    latestDeliveryTime :: Prelude.Maybe Core.POSIX,
    -- | Displays the most recent date and time when CloudTrail delivered logs to
    -- CloudWatch Logs.
    latestCloudWatchLogsDeliveryTime :: Prelude.Maybe Core.POSIX,
    -- | Displays any CloudWatch Logs error that CloudTrail encountered when
    -- attempting to deliver logs to CloudWatch Logs.
    latestCloudWatchLogsDeliveryError :: Prelude.Maybe Prelude.Text,
    -- | Specifies the date and time of the most recent Amazon SNS notification
    -- that CloudTrail has written a new log file to an account\'s Amazon S3
    -- bucket.
    latestNotificationTime :: Prelude.Maybe Core.POSIX,
    -- | This field is no longer in use.
    latestNotificationAttemptTime :: Prelude.Maybe Prelude.Text,
    -- | Specifies the most recent date and time when CloudTrail stopped
    -- recording API calls for an Amazon Web Services account.
    stopLoggingTime :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetTrailStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeLoggingStopped', 'getTrailStatusResponse_timeLoggingStopped' - This field is no longer in use.
--
-- 'latestDeliveryError', 'getTrailStatusResponse_latestDeliveryError' - Displays any Amazon S3 error that CloudTrail encountered when attempting
-- to deliver log files to the designated bucket. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses>
-- in the Amazon S3 API Reference.
--
-- This error occurs only when there is a problem with the destination S3
-- bucket, and does not occur for requests that time out. To resolve the
-- issue, create a new bucket, and then call @UpdateTrail@ to specify the
-- new bucket; or fix the existing objects so that CloudTrail can again
-- write to the bucket.
--
-- 'latestDigestDeliveryTime', 'getTrailStatusResponse_latestDigestDeliveryTime' - Specifies the date and time that CloudTrail last delivered a digest file
-- to an account\'s Amazon S3 bucket.
--
-- 'latestNotificationAttemptSucceeded', 'getTrailStatusResponse_latestNotificationAttemptSucceeded' - This field is no longer in use.
--
-- 'startLoggingTime', 'getTrailStatusResponse_startLoggingTime' - Specifies the most recent date and time when CloudTrail started
-- recording API calls for an Amazon Web Services account.
--
-- 'latestNotificationError', 'getTrailStatusResponse_latestNotificationError' - Displays any Amazon SNS error that CloudTrail encountered when
-- attempting to send a notification. For more information about Amazon SNS
-- errors, see the
-- <https://docs.aws.amazon.com/sns/latest/dg/welcome.html Amazon SNS Developer Guide>.
--
-- 'latestDeliveryAttemptSucceeded', 'getTrailStatusResponse_latestDeliveryAttemptSucceeded' - This field is no longer in use.
--
-- 'isLogging', 'getTrailStatusResponse_isLogging' - Whether the CloudTrail trail is currently logging Amazon Web Services
-- API calls.
--
-- 'timeLoggingStarted', 'getTrailStatusResponse_timeLoggingStarted' - This field is no longer in use.
--
-- 'latestDigestDeliveryError', 'getTrailStatusResponse_latestDigestDeliveryError' - Displays any Amazon S3 error that CloudTrail encountered when attempting
-- to deliver a digest file to the designated bucket. For more information,
-- see
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses>
-- in the Amazon S3 API Reference.
--
-- This error occurs only when there is a problem with the destination S3
-- bucket, and does not occur for requests that time out. To resolve the
-- issue, create a new bucket, and then call @UpdateTrail@ to specify the
-- new bucket; or fix the existing objects so that CloudTrail can again
-- write to the bucket.
--
-- 'latestDeliveryAttemptTime', 'getTrailStatusResponse_latestDeliveryAttemptTime' - This field is no longer in use.
--
-- 'latestDeliveryTime', 'getTrailStatusResponse_latestDeliveryTime' - Specifies the date and time that CloudTrail last delivered log files to
-- an account\'s Amazon S3 bucket.
--
-- 'latestCloudWatchLogsDeliveryTime', 'getTrailStatusResponse_latestCloudWatchLogsDeliveryTime' - Displays the most recent date and time when CloudTrail delivered logs to
-- CloudWatch Logs.
--
-- 'latestCloudWatchLogsDeliveryError', 'getTrailStatusResponse_latestCloudWatchLogsDeliveryError' - Displays any CloudWatch Logs error that CloudTrail encountered when
-- attempting to deliver logs to CloudWatch Logs.
--
-- 'latestNotificationTime', 'getTrailStatusResponse_latestNotificationTime' - Specifies the date and time of the most recent Amazon SNS notification
-- that CloudTrail has written a new log file to an account\'s Amazon S3
-- bucket.
--
-- 'latestNotificationAttemptTime', 'getTrailStatusResponse_latestNotificationAttemptTime' - This field is no longer in use.
--
-- 'stopLoggingTime', 'getTrailStatusResponse_stopLoggingTime' - Specifies the most recent date and time when CloudTrail stopped
-- recording API calls for an Amazon Web Services account.
--
-- 'httpStatus', 'getTrailStatusResponse_httpStatus' - The response's http status code.
newGetTrailStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetTrailStatusResponse
newGetTrailStatusResponse pHttpStatus_ =
  GetTrailStatusResponse'
    { timeLoggingStopped =
        Prelude.Nothing,
      latestDeliveryError = Prelude.Nothing,
      latestDigestDeliveryTime = Prelude.Nothing,
      latestNotificationAttemptSucceeded =
        Prelude.Nothing,
      startLoggingTime = Prelude.Nothing,
      latestNotificationError = Prelude.Nothing,
      latestDeliveryAttemptSucceeded = Prelude.Nothing,
      isLogging = Prelude.Nothing,
      timeLoggingStarted = Prelude.Nothing,
      latestDigestDeliveryError = Prelude.Nothing,
      latestDeliveryAttemptTime = Prelude.Nothing,
      latestDeliveryTime = Prelude.Nothing,
      latestCloudWatchLogsDeliveryTime = Prelude.Nothing,
      latestCloudWatchLogsDeliveryError = Prelude.Nothing,
      latestNotificationTime = Prelude.Nothing,
      latestNotificationAttemptTime = Prelude.Nothing,
      stopLoggingTime = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | This field is no longer in use.
getTrailStatusResponse_timeLoggingStopped :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_timeLoggingStopped = Lens.lens (\GetTrailStatusResponse' {timeLoggingStopped} -> timeLoggingStopped) (\s@GetTrailStatusResponse' {} a -> s {timeLoggingStopped = a} :: GetTrailStatusResponse)

-- | Displays any Amazon S3 error that CloudTrail encountered when attempting
-- to deliver log files to the designated bucket. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses>
-- in the Amazon S3 API Reference.
--
-- This error occurs only when there is a problem with the destination S3
-- bucket, and does not occur for requests that time out. To resolve the
-- issue, create a new bucket, and then call @UpdateTrail@ to specify the
-- new bucket; or fix the existing objects so that CloudTrail can again
-- write to the bucket.
getTrailStatusResponse_latestDeliveryError :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestDeliveryError = Lens.lens (\GetTrailStatusResponse' {latestDeliveryError} -> latestDeliveryError) (\s@GetTrailStatusResponse' {} a -> s {latestDeliveryError = a} :: GetTrailStatusResponse)

-- | Specifies the date and time that CloudTrail last delivered a digest file
-- to an account\'s Amazon S3 bucket.
getTrailStatusResponse_latestDigestDeliveryTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.UTCTime)
getTrailStatusResponse_latestDigestDeliveryTime = Lens.lens (\GetTrailStatusResponse' {latestDigestDeliveryTime} -> latestDigestDeliveryTime) (\s@GetTrailStatusResponse' {} a -> s {latestDigestDeliveryTime = a} :: GetTrailStatusResponse) Prelude.. Lens.mapping Core._Time

-- | This field is no longer in use.
getTrailStatusResponse_latestNotificationAttemptSucceeded :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestNotificationAttemptSucceeded = Lens.lens (\GetTrailStatusResponse' {latestNotificationAttemptSucceeded} -> latestNotificationAttemptSucceeded) (\s@GetTrailStatusResponse' {} a -> s {latestNotificationAttemptSucceeded = a} :: GetTrailStatusResponse)

-- | Specifies the most recent date and time when CloudTrail started
-- recording API calls for an Amazon Web Services account.
getTrailStatusResponse_startLoggingTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.UTCTime)
getTrailStatusResponse_startLoggingTime = Lens.lens (\GetTrailStatusResponse' {startLoggingTime} -> startLoggingTime) (\s@GetTrailStatusResponse' {} a -> s {startLoggingTime = a} :: GetTrailStatusResponse) Prelude.. Lens.mapping Core._Time

-- | Displays any Amazon SNS error that CloudTrail encountered when
-- attempting to send a notification. For more information about Amazon SNS
-- errors, see the
-- <https://docs.aws.amazon.com/sns/latest/dg/welcome.html Amazon SNS Developer Guide>.
getTrailStatusResponse_latestNotificationError :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestNotificationError = Lens.lens (\GetTrailStatusResponse' {latestNotificationError} -> latestNotificationError) (\s@GetTrailStatusResponse' {} a -> s {latestNotificationError = a} :: GetTrailStatusResponse)

-- | This field is no longer in use.
getTrailStatusResponse_latestDeliveryAttemptSucceeded :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestDeliveryAttemptSucceeded = Lens.lens (\GetTrailStatusResponse' {latestDeliveryAttemptSucceeded} -> latestDeliveryAttemptSucceeded) (\s@GetTrailStatusResponse' {} a -> s {latestDeliveryAttemptSucceeded = a} :: GetTrailStatusResponse)

-- | Whether the CloudTrail trail is currently logging Amazon Web Services
-- API calls.
getTrailStatusResponse_isLogging :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Bool)
getTrailStatusResponse_isLogging = Lens.lens (\GetTrailStatusResponse' {isLogging} -> isLogging) (\s@GetTrailStatusResponse' {} a -> s {isLogging = a} :: GetTrailStatusResponse)

-- | This field is no longer in use.
getTrailStatusResponse_timeLoggingStarted :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_timeLoggingStarted = Lens.lens (\GetTrailStatusResponse' {timeLoggingStarted} -> timeLoggingStarted) (\s@GetTrailStatusResponse' {} a -> s {timeLoggingStarted = a} :: GetTrailStatusResponse)

-- | Displays any Amazon S3 error that CloudTrail encountered when attempting
-- to deliver a digest file to the designated bucket. For more information,
-- see
-- <https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html Error Responses>
-- in the Amazon S3 API Reference.
--
-- This error occurs only when there is a problem with the destination S3
-- bucket, and does not occur for requests that time out. To resolve the
-- issue, create a new bucket, and then call @UpdateTrail@ to specify the
-- new bucket; or fix the existing objects so that CloudTrail can again
-- write to the bucket.
getTrailStatusResponse_latestDigestDeliveryError :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestDigestDeliveryError = Lens.lens (\GetTrailStatusResponse' {latestDigestDeliveryError} -> latestDigestDeliveryError) (\s@GetTrailStatusResponse' {} a -> s {latestDigestDeliveryError = a} :: GetTrailStatusResponse)

-- | This field is no longer in use.
getTrailStatusResponse_latestDeliveryAttemptTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestDeliveryAttemptTime = Lens.lens (\GetTrailStatusResponse' {latestDeliveryAttemptTime} -> latestDeliveryAttemptTime) (\s@GetTrailStatusResponse' {} a -> s {latestDeliveryAttemptTime = a} :: GetTrailStatusResponse)

-- | Specifies the date and time that CloudTrail last delivered log files to
-- an account\'s Amazon S3 bucket.
getTrailStatusResponse_latestDeliveryTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.UTCTime)
getTrailStatusResponse_latestDeliveryTime = Lens.lens (\GetTrailStatusResponse' {latestDeliveryTime} -> latestDeliveryTime) (\s@GetTrailStatusResponse' {} a -> s {latestDeliveryTime = a} :: GetTrailStatusResponse) Prelude.. Lens.mapping Core._Time

-- | Displays the most recent date and time when CloudTrail delivered logs to
-- CloudWatch Logs.
getTrailStatusResponse_latestCloudWatchLogsDeliveryTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.UTCTime)
getTrailStatusResponse_latestCloudWatchLogsDeliveryTime = Lens.lens (\GetTrailStatusResponse' {latestCloudWatchLogsDeliveryTime} -> latestCloudWatchLogsDeliveryTime) (\s@GetTrailStatusResponse' {} a -> s {latestCloudWatchLogsDeliveryTime = a} :: GetTrailStatusResponse) Prelude.. Lens.mapping Core._Time

-- | Displays any CloudWatch Logs error that CloudTrail encountered when
-- attempting to deliver logs to CloudWatch Logs.
getTrailStatusResponse_latestCloudWatchLogsDeliveryError :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestCloudWatchLogsDeliveryError = Lens.lens (\GetTrailStatusResponse' {latestCloudWatchLogsDeliveryError} -> latestCloudWatchLogsDeliveryError) (\s@GetTrailStatusResponse' {} a -> s {latestCloudWatchLogsDeliveryError = a} :: GetTrailStatusResponse)

-- | Specifies the date and time of the most recent Amazon SNS notification
-- that CloudTrail has written a new log file to an account\'s Amazon S3
-- bucket.
getTrailStatusResponse_latestNotificationTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.UTCTime)
getTrailStatusResponse_latestNotificationTime = Lens.lens (\GetTrailStatusResponse' {latestNotificationTime} -> latestNotificationTime) (\s@GetTrailStatusResponse' {} a -> s {latestNotificationTime = a} :: GetTrailStatusResponse) Prelude.. Lens.mapping Core._Time

-- | This field is no longer in use.
getTrailStatusResponse_latestNotificationAttemptTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.Text)
getTrailStatusResponse_latestNotificationAttemptTime = Lens.lens (\GetTrailStatusResponse' {latestNotificationAttemptTime} -> latestNotificationAttemptTime) (\s@GetTrailStatusResponse' {} a -> s {latestNotificationAttemptTime = a} :: GetTrailStatusResponse)

-- | Specifies the most recent date and time when CloudTrail stopped
-- recording API calls for an Amazon Web Services account.
getTrailStatusResponse_stopLoggingTime :: Lens.Lens' GetTrailStatusResponse (Prelude.Maybe Prelude.UTCTime)
getTrailStatusResponse_stopLoggingTime = Lens.lens (\GetTrailStatusResponse' {stopLoggingTime} -> stopLoggingTime) (\s@GetTrailStatusResponse' {} a -> s {stopLoggingTime = a} :: GetTrailStatusResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
getTrailStatusResponse_httpStatus :: Lens.Lens' GetTrailStatusResponse Prelude.Int
getTrailStatusResponse_httpStatus = Lens.lens (\GetTrailStatusResponse' {httpStatus} -> httpStatus) (\s@GetTrailStatusResponse' {} a -> s {httpStatus = a} :: GetTrailStatusResponse)

instance Prelude.NFData GetTrailStatusResponse
