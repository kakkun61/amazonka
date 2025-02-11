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
-- Module      : Network.AWS.Chime.DeleteMediaCapturePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the media capture pipeline.
module Network.AWS.Chime.DeleteMediaCapturePipeline
  ( -- * Creating a Request
    DeleteMediaCapturePipeline (..),
    newDeleteMediaCapturePipeline,

    -- * Request Lenses
    deleteMediaCapturePipeline_mediaPipelineId,

    -- * Destructuring the Response
    DeleteMediaCapturePipelineResponse (..),
    newDeleteMediaCapturePipelineResponse,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteMediaCapturePipeline' smart constructor.
data DeleteMediaCapturePipeline = DeleteMediaCapturePipeline'
  { -- | The ID of the media capture pipeline being deleted.
    mediaPipelineId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMediaCapturePipeline' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mediaPipelineId', 'deleteMediaCapturePipeline_mediaPipelineId' - The ID of the media capture pipeline being deleted.
newDeleteMediaCapturePipeline ::
  -- | 'mediaPipelineId'
  Prelude.Text ->
  DeleteMediaCapturePipeline
newDeleteMediaCapturePipeline pMediaPipelineId_ =
  DeleteMediaCapturePipeline'
    { mediaPipelineId =
        pMediaPipelineId_
    }

-- | The ID of the media capture pipeline being deleted.
deleteMediaCapturePipeline_mediaPipelineId :: Lens.Lens' DeleteMediaCapturePipeline Prelude.Text
deleteMediaCapturePipeline_mediaPipelineId = Lens.lens (\DeleteMediaCapturePipeline' {mediaPipelineId} -> mediaPipelineId) (\s@DeleteMediaCapturePipeline' {} a -> s {mediaPipelineId = a} :: DeleteMediaCapturePipeline)

instance Core.AWSRequest DeleteMediaCapturePipeline where
  type
    AWSResponse DeleteMediaCapturePipeline =
      DeleteMediaCapturePipelineResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteMediaCapturePipelineResponse'

instance Prelude.Hashable DeleteMediaCapturePipeline

instance Prelude.NFData DeleteMediaCapturePipeline

instance Core.ToHeaders DeleteMediaCapturePipeline where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteMediaCapturePipeline where
  toPath DeleteMediaCapturePipeline' {..} =
    Prelude.mconcat
      [ "/media-capture-pipelines/",
        Core.toBS mediaPipelineId
      ]

instance Core.ToQuery DeleteMediaCapturePipeline where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteMediaCapturePipelineResponse' smart constructor.
data DeleteMediaCapturePipelineResponse = DeleteMediaCapturePipelineResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMediaCapturePipelineResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteMediaCapturePipelineResponse ::
  DeleteMediaCapturePipelineResponse
newDeleteMediaCapturePipelineResponse =
  DeleteMediaCapturePipelineResponse'

instance
  Prelude.NFData
    DeleteMediaCapturePipelineResponse
