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
-- Module      : Network.AWS.Rekognition.GetContentModeration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the inappropriate, unwanted, or offensive content analysis results
-- for a Amazon Rekognition Video analysis started by
-- StartContentModeration. For a list of moderation labels in Amazon
-- Rekognition, see
-- <https://docs.aws.amazon.com/rekognition/latest/dg/moderation.html#moderation-api Using the image and video moderation APIs>.
--
-- Amazon Rekognition Video inappropriate or offensive content detection in
-- a stored video is an asynchronous operation. You start analysis by
-- calling StartContentModeration which returns a job identifier (@JobId@).
-- When analysis finishes, Amazon Rekognition Video publishes a completion
-- status to the Amazon Simple Notification Service topic registered in the
-- initial call to @StartContentModeration@. To get the results of the
-- content analysis, first check that the status value published to the
-- Amazon SNS topic is @SUCCEEDED@. If so, call @GetContentModeration@ and
-- pass the job identifier (@JobId@) from the initial call to
-- @StartContentModeration@.
--
-- For more information, see Working with Stored Videos in the Amazon
-- Rekognition Devlopers Guide.
--
-- @GetContentModeration@ returns detected inappropriate, unwanted, or
-- offensive content moderation labels, and the time they are detected, in
-- an array, @ModerationLabels@, of ContentModerationDetection objects.
--
-- By default, the moderated labels are returned sorted by time, in
-- milliseconds from the start of the video. You can also sort them by
-- moderated label by specifying @NAME@ for the @SortBy@ input parameter.
--
-- Since video analysis can return a large number of results, use the
-- @MaxResults@ parameter to limit the number of labels returned in a
-- single call to @GetContentModeration@. If there are more results than
-- specified in @MaxResults@, the value of @NextToken@ in the operation
-- response contains a pagination token for getting the next set of
-- results. To get the next page of results, call @GetContentModeration@
-- and populate the @NextToken@ request parameter with the value of
-- @NextToken@ returned from the previous call to @GetContentModeration@.
--
-- For more information, see Content moderation in the Amazon Rekognition
-- Developer Guide.
module Network.AWS.Rekognition.GetContentModeration
  ( -- * Creating a Request
    GetContentModeration (..),
    newGetContentModeration,

    -- * Request Lenses
    getContentModeration_nextToken,
    getContentModeration_maxResults,
    getContentModeration_sortBy,
    getContentModeration_jobId,

    -- * Destructuring the Response
    GetContentModerationResponse (..),
    newGetContentModerationResponse,

    -- * Response Lenses
    getContentModerationResponse_nextToken,
    getContentModerationResponse_videoMetadata,
    getContentModerationResponse_statusMessage,
    getContentModerationResponse_jobStatus,
    getContentModerationResponse_moderationModelVersion,
    getContentModerationResponse_moderationLabels,
    getContentModerationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Rekognition.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetContentModeration' smart constructor.
data GetContentModeration = GetContentModeration'
  { -- | If the previous response was incomplete (because there is more data to
    -- retrieve), Amazon Rekognition returns a pagination token in the
    -- response. You can use this pagination token to retrieve the next set of
    -- content moderation labels.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of results to return per paginated call. The largest
    -- value you can specify is 1000. If you specify a value greater than 1000,
    -- a maximum of 1000 results is returned. The default value is 1000.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Sort to use for elements in the @ModerationLabelDetections@ array. Use
    -- @TIMESTAMP@ to sort array elements by the time labels are detected. Use
    -- @NAME@ to alphabetically group elements for a label together. Within
    -- each label group, the array element are sorted by detection confidence.
    -- The default sort is by @TIMESTAMP@.
    sortBy :: Prelude.Maybe ContentModerationSortBy,
    -- | The identifier for the inappropriate, unwanted, or offensive content
    -- moderation job. Use @JobId@ to identify the job in a subsequent call to
    -- @GetContentModeration@.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContentModeration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getContentModeration_nextToken' - If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Rekognition returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- content moderation labels.
--
-- 'maxResults', 'getContentModeration_maxResults' - Maximum number of results to return per paginated call. The largest
-- value you can specify is 1000. If you specify a value greater than 1000,
-- a maximum of 1000 results is returned. The default value is 1000.
--
-- 'sortBy', 'getContentModeration_sortBy' - Sort to use for elements in the @ModerationLabelDetections@ array. Use
-- @TIMESTAMP@ to sort array elements by the time labels are detected. Use
-- @NAME@ to alphabetically group elements for a label together. Within
-- each label group, the array element are sorted by detection confidence.
-- The default sort is by @TIMESTAMP@.
--
-- 'jobId', 'getContentModeration_jobId' - The identifier for the inappropriate, unwanted, or offensive content
-- moderation job. Use @JobId@ to identify the job in a subsequent call to
-- @GetContentModeration@.
newGetContentModeration ::
  -- | 'jobId'
  Prelude.Text ->
  GetContentModeration
newGetContentModeration pJobId_ =
  GetContentModeration'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      jobId = pJobId_
    }

-- | If the previous response was incomplete (because there is more data to
-- retrieve), Amazon Rekognition returns a pagination token in the
-- response. You can use this pagination token to retrieve the next set of
-- content moderation labels.
getContentModeration_nextToken :: Lens.Lens' GetContentModeration (Prelude.Maybe Prelude.Text)
getContentModeration_nextToken = Lens.lens (\GetContentModeration' {nextToken} -> nextToken) (\s@GetContentModeration' {} a -> s {nextToken = a} :: GetContentModeration)

-- | Maximum number of results to return per paginated call. The largest
-- value you can specify is 1000. If you specify a value greater than 1000,
-- a maximum of 1000 results is returned. The default value is 1000.
getContentModeration_maxResults :: Lens.Lens' GetContentModeration (Prelude.Maybe Prelude.Natural)
getContentModeration_maxResults = Lens.lens (\GetContentModeration' {maxResults} -> maxResults) (\s@GetContentModeration' {} a -> s {maxResults = a} :: GetContentModeration)

-- | Sort to use for elements in the @ModerationLabelDetections@ array. Use
-- @TIMESTAMP@ to sort array elements by the time labels are detected. Use
-- @NAME@ to alphabetically group elements for a label together. Within
-- each label group, the array element are sorted by detection confidence.
-- The default sort is by @TIMESTAMP@.
getContentModeration_sortBy :: Lens.Lens' GetContentModeration (Prelude.Maybe ContentModerationSortBy)
getContentModeration_sortBy = Lens.lens (\GetContentModeration' {sortBy} -> sortBy) (\s@GetContentModeration' {} a -> s {sortBy = a} :: GetContentModeration)

-- | The identifier for the inappropriate, unwanted, or offensive content
-- moderation job. Use @JobId@ to identify the job in a subsequent call to
-- @GetContentModeration@.
getContentModeration_jobId :: Lens.Lens' GetContentModeration Prelude.Text
getContentModeration_jobId = Lens.lens (\GetContentModeration' {jobId} -> jobId) (\s@GetContentModeration' {} a -> s {jobId = a} :: GetContentModeration)

instance Core.AWSRequest GetContentModeration where
  type
    AWSResponse GetContentModeration =
      GetContentModerationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetContentModerationResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "VideoMetadata")
            Prelude.<*> (x Core..?> "StatusMessage")
            Prelude.<*> (x Core..?> "JobStatus")
            Prelude.<*> (x Core..?> "ModerationModelVersion")
            Prelude.<*> ( x Core..?> "ModerationLabels"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetContentModeration

instance Prelude.NFData GetContentModeration

instance Core.ToHeaders GetContentModeration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "RekognitionService.GetContentModeration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetContentModeration where
  toJSON GetContentModeration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("SortBy" Core..=) Prelude.<$> sortBy,
            Prelude.Just ("JobId" Core..= jobId)
          ]
      )

instance Core.ToPath GetContentModeration where
  toPath = Prelude.const "/"

instance Core.ToQuery GetContentModeration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetContentModerationResponse' smart constructor.
data GetContentModerationResponse = GetContentModerationResponse'
  { -- | If the response is truncated, Amazon Rekognition Video returns this
    -- token that you can use in the subsequent request to retrieve the next
    -- set of content moderation labels.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about a video that Amazon Rekognition analyzed.
    -- @Videometadata@ is returned in every page of paginated responses from
    -- @GetContentModeration@.
    videoMetadata :: Prelude.Maybe VideoMetadata,
    -- | If the job fails, @StatusMessage@ provides a descriptive error message.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The current status of the content moderation analysis job.
    jobStatus :: Prelude.Maybe VideoJobStatus,
    -- | Version number of the moderation detection model that was used to detect
    -- inappropriate, unwanted, or offensive content.
    moderationModelVersion :: Prelude.Maybe Prelude.Text,
    -- | The detected inappropriate, unwanted, or offensive content moderation
    -- labels and the time(s) they were detected.
    moderationLabels :: Prelude.Maybe [ContentModerationDetection],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetContentModerationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getContentModerationResponse_nextToken' - If the response is truncated, Amazon Rekognition Video returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of content moderation labels.
--
-- 'videoMetadata', 'getContentModerationResponse_videoMetadata' - Information about a video that Amazon Rekognition analyzed.
-- @Videometadata@ is returned in every page of paginated responses from
-- @GetContentModeration@.
--
-- 'statusMessage', 'getContentModerationResponse_statusMessage' - If the job fails, @StatusMessage@ provides a descriptive error message.
--
-- 'jobStatus', 'getContentModerationResponse_jobStatus' - The current status of the content moderation analysis job.
--
-- 'moderationModelVersion', 'getContentModerationResponse_moderationModelVersion' - Version number of the moderation detection model that was used to detect
-- inappropriate, unwanted, or offensive content.
--
-- 'moderationLabels', 'getContentModerationResponse_moderationLabels' - The detected inappropriate, unwanted, or offensive content moderation
-- labels and the time(s) they were detected.
--
-- 'httpStatus', 'getContentModerationResponse_httpStatus' - The response's http status code.
newGetContentModerationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetContentModerationResponse
newGetContentModerationResponse pHttpStatus_ =
  GetContentModerationResponse'
    { nextToken =
        Prelude.Nothing,
      videoMetadata = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      jobStatus = Prelude.Nothing,
      moderationModelVersion = Prelude.Nothing,
      moderationLabels = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the response is truncated, Amazon Rekognition Video returns this
-- token that you can use in the subsequent request to retrieve the next
-- set of content moderation labels.
getContentModerationResponse_nextToken :: Lens.Lens' GetContentModerationResponse (Prelude.Maybe Prelude.Text)
getContentModerationResponse_nextToken = Lens.lens (\GetContentModerationResponse' {nextToken} -> nextToken) (\s@GetContentModerationResponse' {} a -> s {nextToken = a} :: GetContentModerationResponse)

-- | Information about a video that Amazon Rekognition analyzed.
-- @Videometadata@ is returned in every page of paginated responses from
-- @GetContentModeration@.
getContentModerationResponse_videoMetadata :: Lens.Lens' GetContentModerationResponse (Prelude.Maybe VideoMetadata)
getContentModerationResponse_videoMetadata = Lens.lens (\GetContentModerationResponse' {videoMetadata} -> videoMetadata) (\s@GetContentModerationResponse' {} a -> s {videoMetadata = a} :: GetContentModerationResponse)

-- | If the job fails, @StatusMessage@ provides a descriptive error message.
getContentModerationResponse_statusMessage :: Lens.Lens' GetContentModerationResponse (Prelude.Maybe Prelude.Text)
getContentModerationResponse_statusMessage = Lens.lens (\GetContentModerationResponse' {statusMessage} -> statusMessage) (\s@GetContentModerationResponse' {} a -> s {statusMessage = a} :: GetContentModerationResponse)

-- | The current status of the content moderation analysis job.
getContentModerationResponse_jobStatus :: Lens.Lens' GetContentModerationResponse (Prelude.Maybe VideoJobStatus)
getContentModerationResponse_jobStatus = Lens.lens (\GetContentModerationResponse' {jobStatus} -> jobStatus) (\s@GetContentModerationResponse' {} a -> s {jobStatus = a} :: GetContentModerationResponse)

-- | Version number of the moderation detection model that was used to detect
-- inappropriate, unwanted, or offensive content.
getContentModerationResponse_moderationModelVersion :: Lens.Lens' GetContentModerationResponse (Prelude.Maybe Prelude.Text)
getContentModerationResponse_moderationModelVersion = Lens.lens (\GetContentModerationResponse' {moderationModelVersion} -> moderationModelVersion) (\s@GetContentModerationResponse' {} a -> s {moderationModelVersion = a} :: GetContentModerationResponse)

-- | The detected inappropriate, unwanted, or offensive content moderation
-- labels and the time(s) they were detected.
getContentModerationResponse_moderationLabels :: Lens.Lens' GetContentModerationResponse (Prelude.Maybe [ContentModerationDetection])
getContentModerationResponse_moderationLabels = Lens.lens (\GetContentModerationResponse' {moderationLabels} -> moderationLabels) (\s@GetContentModerationResponse' {} a -> s {moderationLabels = a} :: GetContentModerationResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getContentModerationResponse_httpStatus :: Lens.Lens' GetContentModerationResponse Prelude.Int
getContentModerationResponse_httpStatus = Lens.lens (\GetContentModerationResponse' {httpStatus} -> httpStatus) (\s@GetContentModerationResponse' {} a -> s {httpStatus = a} :: GetContentModerationResponse)

instance Prelude.NFData GetContentModerationResponse
