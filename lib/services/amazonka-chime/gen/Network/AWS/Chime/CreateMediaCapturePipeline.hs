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
-- Module      : Network.AWS.Chime.CreateMediaCapturePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a media capture pipeline.
module Network.AWS.Chime.CreateMediaCapturePipeline
  ( -- * Creating a Request
    CreateMediaCapturePipeline (..),
    newCreateMediaCapturePipeline,

    -- * Request Lenses
    createMediaCapturePipeline_chimeSdkMeetingConfiguration,
    createMediaCapturePipeline_clientRequestToken,
    createMediaCapturePipeline_sourceType,
    createMediaCapturePipeline_sourceArn,
    createMediaCapturePipeline_sinkType,
    createMediaCapturePipeline_sinkArn,

    -- * Destructuring the Response
    CreateMediaCapturePipelineResponse (..),
    newCreateMediaCapturePipelineResponse,

    -- * Response Lenses
    createMediaCapturePipelineResponse_mediaCapturePipeline,
    createMediaCapturePipelineResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateMediaCapturePipeline' smart constructor.
data CreateMediaCapturePipeline = CreateMediaCapturePipeline'
  { -- | The configuration for a specified media capture pipeline. @SourceType@
    -- must be @ChimeSdkMeeting@.
    chimeSdkMeetingConfiguration :: Prelude.Maybe ChimeSdkMeetingConfiguration,
    -- | The token assigned to the client making the pipeline request.
    clientRequestToken :: Prelude.Maybe (Core.Sensitive Prelude.Text),
    -- | Source type from which the media artifacts will be captured. A Chime SDK
    -- Meeting is the only supported source.
    sourceType :: MediaPipelineSourceType,
    -- | ARN of the source from which the media artifacts are captured.
    sourceArn :: Core.Sensitive Prelude.Text,
    -- | Destination type to which the media artifacts are saved. You must use an
    -- S3 bucket.
    sinkType :: MediaPipelineSinkType,
    -- | The ARN of the sink type.
    sinkArn :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMediaCapturePipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'chimeSdkMeetingConfiguration', 'createMediaCapturePipeline_chimeSdkMeetingConfiguration' - The configuration for a specified media capture pipeline. @SourceType@
-- must be @ChimeSdkMeeting@.
--
-- 'clientRequestToken', 'createMediaCapturePipeline_clientRequestToken' - The token assigned to the client making the pipeline request.
--
-- 'sourceType', 'createMediaCapturePipeline_sourceType' - Source type from which the media artifacts will be captured. A Chime SDK
-- Meeting is the only supported source.
--
-- 'sourceArn', 'createMediaCapturePipeline_sourceArn' - ARN of the source from which the media artifacts are captured.
--
-- 'sinkType', 'createMediaCapturePipeline_sinkType' - Destination type to which the media artifacts are saved. You must use an
-- S3 bucket.
--
-- 'sinkArn', 'createMediaCapturePipeline_sinkArn' - The ARN of the sink type.
newCreateMediaCapturePipeline ::
  -- | 'sourceType'
  MediaPipelineSourceType ->
  -- | 'sourceArn'
  Prelude.Text ->
  -- | 'sinkType'
  MediaPipelineSinkType ->
  -- | 'sinkArn'
  Prelude.Text ->
  CreateMediaCapturePipeline
newCreateMediaCapturePipeline
  pSourceType_
  pSourceArn_
  pSinkType_
  pSinkArn_ =
    CreateMediaCapturePipeline'
      { chimeSdkMeetingConfiguration =
          Prelude.Nothing,
        clientRequestToken = Prelude.Nothing,
        sourceType = pSourceType_,
        sourceArn = Core._Sensitive Lens.# pSourceArn_,
        sinkType = pSinkType_,
        sinkArn = Core._Sensitive Lens.# pSinkArn_
      }

-- | The configuration for a specified media capture pipeline. @SourceType@
-- must be @ChimeSdkMeeting@.
createMediaCapturePipeline_chimeSdkMeetingConfiguration :: Lens.Lens' CreateMediaCapturePipeline (Prelude.Maybe ChimeSdkMeetingConfiguration)
createMediaCapturePipeline_chimeSdkMeetingConfiguration = Lens.lens (\CreateMediaCapturePipeline' {chimeSdkMeetingConfiguration} -> chimeSdkMeetingConfiguration) (\s@CreateMediaCapturePipeline' {} a -> s {chimeSdkMeetingConfiguration = a} :: CreateMediaCapturePipeline)

-- | The token assigned to the client making the pipeline request.
createMediaCapturePipeline_clientRequestToken :: Lens.Lens' CreateMediaCapturePipeline (Prelude.Maybe Prelude.Text)
createMediaCapturePipeline_clientRequestToken = Lens.lens (\CreateMediaCapturePipeline' {clientRequestToken} -> clientRequestToken) (\s@CreateMediaCapturePipeline' {} a -> s {clientRequestToken = a} :: CreateMediaCapturePipeline) Prelude.. Lens.mapping Core._Sensitive

-- | Source type from which the media artifacts will be captured. A Chime SDK
-- Meeting is the only supported source.
createMediaCapturePipeline_sourceType :: Lens.Lens' CreateMediaCapturePipeline MediaPipelineSourceType
createMediaCapturePipeline_sourceType = Lens.lens (\CreateMediaCapturePipeline' {sourceType} -> sourceType) (\s@CreateMediaCapturePipeline' {} a -> s {sourceType = a} :: CreateMediaCapturePipeline)

-- | ARN of the source from which the media artifacts are captured.
createMediaCapturePipeline_sourceArn :: Lens.Lens' CreateMediaCapturePipeline Prelude.Text
createMediaCapturePipeline_sourceArn = Lens.lens (\CreateMediaCapturePipeline' {sourceArn} -> sourceArn) (\s@CreateMediaCapturePipeline' {} a -> s {sourceArn = a} :: CreateMediaCapturePipeline) Prelude.. Core._Sensitive

-- | Destination type to which the media artifacts are saved. You must use an
-- S3 bucket.
createMediaCapturePipeline_sinkType :: Lens.Lens' CreateMediaCapturePipeline MediaPipelineSinkType
createMediaCapturePipeline_sinkType = Lens.lens (\CreateMediaCapturePipeline' {sinkType} -> sinkType) (\s@CreateMediaCapturePipeline' {} a -> s {sinkType = a} :: CreateMediaCapturePipeline)

-- | The ARN of the sink type.
createMediaCapturePipeline_sinkArn :: Lens.Lens' CreateMediaCapturePipeline Prelude.Text
createMediaCapturePipeline_sinkArn = Lens.lens (\CreateMediaCapturePipeline' {sinkArn} -> sinkArn) (\s@CreateMediaCapturePipeline' {} a -> s {sinkArn = a} :: CreateMediaCapturePipeline) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateMediaCapturePipeline where
  type
    AWSResponse CreateMediaCapturePipeline =
      CreateMediaCapturePipelineResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateMediaCapturePipelineResponse'
            Prelude.<$> (x Core..?> "MediaCapturePipeline")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateMediaCapturePipeline

instance Prelude.NFData CreateMediaCapturePipeline

instance Core.ToHeaders CreateMediaCapturePipeline where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateMediaCapturePipeline where
  toJSON CreateMediaCapturePipeline' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ChimeSdkMeetingConfiguration" Core..=)
              Prelude.<$> chimeSdkMeetingConfiguration,
            ("ClientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            Prelude.Just ("SourceType" Core..= sourceType),
            Prelude.Just ("SourceArn" Core..= sourceArn),
            Prelude.Just ("SinkType" Core..= sinkType),
            Prelude.Just ("SinkArn" Core..= sinkArn)
          ]
      )

instance Core.ToPath CreateMediaCapturePipeline where
  toPath = Prelude.const "/media-capture-pipelines"

instance Core.ToQuery CreateMediaCapturePipeline where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateMediaCapturePipelineResponse' smart constructor.
data CreateMediaCapturePipelineResponse = CreateMediaCapturePipelineResponse'
  { -- | A media capture pipeline object, the ID, source type, source ARN, sink
    -- type, and sink ARN of a media capture pipeline object.
    mediaCapturePipeline :: Prelude.Maybe MediaCapturePipeline,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateMediaCapturePipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaCapturePipeline', 'createMediaCapturePipelineResponse_mediaCapturePipeline' - A media capture pipeline object, the ID, source type, source ARN, sink
-- type, and sink ARN of a media capture pipeline object.
--
-- 'httpStatus', 'createMediaCapturePipelineResponse_httpStatus' - The response's http status code.
newCreateMediaCapturePipelineResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateMediaCapturePipelineResponse
newCreateMediaCapturePipelineResponse pHttpStatus_ =
  CreateMediaCapturePipelineResponse'
    { mediaCapturePipeline =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A media capture pipeline object, the ID, source type, source ARN, sink
-- type, and sink ARN of a media capture pipeline object.
createMediaCapturePipelineResponse_mediaCapturePipeline :: Lens.Lens' CreateMediaCapturePipelineResponse (Prelude.Maybe MediaCapturePipeline)
createMediaCapturePipelineResponse_mediaCapturePipeline = Lens.lens (\CreateMediaCapturePipelineResponse' {mediaCapturePipeline} -> mediaCapturePipeline) (\s@CreateMediaCapturePipelineResponse' {} a -> s {mediaCapturePipeline = a} :: CreateMediaCapturePipelineResponse)

-- | The response's http status code.
createMediaCapturePipelineResponse_httpStatus :: Lens.Lens' CreateMediaCapturePipelineResponse Prelude.Int
createMediaCapturePipelineResponse_httpStatus = Lens.lens (\CreateMediaCapturePipelineResponse' {httpStatus} -> httpStatus) (\s@CreateMediaCapturePipelineResponse' {} a -> s {httpStatus = a} :: CreateMediaCapturePipelineResponse)

instance
  Prelude.NFData
    CreateMediaCapturePipelineResponse
