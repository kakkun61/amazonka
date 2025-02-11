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
-- Module      : Network.AWS.MediaTailor.DeletePrefetchSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a prefetch schedule for a specific playback configuration. If
-- you call DeletePrefetchSchedule on an expired prefetch schedule,
-- MediaTailor returns an HTTP 404 status code.
module Network.AWS.MediaTailor.DeletePrefetchSchedule
  ( -- * Creating a Request
    DeletePrefetchSchedule (..),
    newDeletePrefetchSchedule,

    -- * Request Lenses
    deletePrefetchSchedule_name,
    deletePrefetchSchedule_playbackConfigurationName,

    -- * Destructuring the Response
    DeletePrefetchScheduleResponse (..),
    newDeletePrefetchScheduleResponse,

    -- * Response Lenses
    deletePrefetchScheduleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaTailor.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeletePrefetchSchedule' smart constructor.
data DeletePrefetchSchedule = DeletePrefetchSchedule'
  { -- | The identifier for the playback configuration.
    name :: Prelude.Text,
    -- | The name of the playback configuration.
    playbackConfigurationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePrefetchSchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deletePrefetchSchedule_name' - The identifier for the playback configuration.
--
-- 'playbackConfigurationName', 'deletePrefetchSchedule_playbackConfigurationName' - The name of the playback configuration.
newDeletePrefetchSchedule ::
  -- | 'name'
  Prelude.Text ->
  -- | 'playbackConfigurationName'
  Prelude.Text ->
  DeletePrefetchSchedule
newDeletePrefetchSchedule
  pName_
  pPlaybackConfigurationName_ =
    DeletePrefetchSchedule'
      { name = pName_,
        playbackConfigurationName =
          pPlaybackConfigurationName_
      }

-- | The identifier for the playback configuration.
deletePrefetchSchedule_name :: Lens.Lens' DeletePrefetchSchedule Prelude.Text
deletePrefetchSchedule_name = Lens.lens (\DeletePrefetchSchedule' {name} -> name) (\s@DeletePrefetchSchedule' {} a -> s {name = a} :: DeletePrefetchSchedule)

-- | The name of the playback configuration.
deletePrefetchSchedule_playbackConfigurationName :: Lens.Lens' DeletePrefetchSchedule Prelude.Text
deletePrefetchSchedule_playbackConfigurationName = Lens.lens (\DeletePrefetchSchedule' {playbackConfigurationName} -> playbackConfigurationName) (\s@DeletePrefetchSchedule' {} a -> s {playbackConfigurationName = a} :: DeletePrefetchSchedule)

instance Core.AWSRequest DeletePrefetchSchedule where
  type
    AWSResponse DeletePrefetchSchedule =
      DeletePrefetchScheduleResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeletePrefetchScheduleResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeletePrefetchSchedule

instance Prelude.NFData DeletePrefetchSchedule

instance Core.ToHeaders DeletePrefetchSchedule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeletePrefetchSchedule where
  toPath DeletePrefetchSchedule' {..} =
    Prelude.mconcat
      [ "/prefetchSchedule/",
        Core.toBS playbackConfigurationName,
        "/",
        Core.toBS name
      ]

instance Core.ToQuery DeletePrefetchSchedule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeletePrefetchScheduleResponse' smart constructor.
data DeletePrefetchScheduleResponse = DeletePrefetchScheduleResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePrefetchScheduleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePrefetchScheduleResponse_httpStatus' - The response's http status code.
newDeletePrefetchScheduleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeletePrefetchScheduleResponse
newDeletePrefetchScheduleResponse pHttpStatus_ =
  DeletePrefetchScheduleResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deletePrefetchScheduleResponse_httpStatus :: Lens.Lens' DeletePrefetchScheduleResponse Prelude.Int
deletePrefetchScheduleResponse_httpStatus = Lens.lens (\DeletePrefetchScheduleResponse' {httpStatus} -> httpStatus) (\s@DeletePrefetchScheduleResponse' {} a -> s {httpStatus = a} :: DeletePrefetchScheduleResponse)

instance
  Prelude.NFData
    DeletePrefetchScheduleResponse
