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
-- Module      : Network.AWS.MediaTailor.DeletePlaybackConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the playback configuration for the specified name.
module Network.AWS.MediaTailor.DeletePlaybackConfiguration
  ( -- * Creating a Request
    DeletePlaybackConfiguration (..),
    newDeletePlaybackConfiguration,

    -- * Request Lenses
    deletePlaybackConfiguration_name,

    -- * Destructuring the Response
    DeletePlaybackConfigurationResponse (..),
    newDeletePlaybackConfigurationResponse,

    -- * Response Lenses
    deletePlaybackConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaTailor.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeletePlaybackConfiguration' smart constructor.
data DeletePlaybackConfiguration = DeletePlaybackConfiguration'
  { -- | The identifier for the playback configuration.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePlaybackConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deletePlaybackConfiguration_name' - The identifier for the playback configuration.
newDeletePlaybackConfiguration ::
  -- | 'name'
  Prelude.Text ->
  DeletePlaybackConfiguration
newDeletePlaybackConfiguration pName_ =
  DeletePlaybackConfiguration' {name = pName_}

-- | The identifier for the playback configuration.
deletePlaybackConfiguration_name :: Lens.Lens' DeletePlaybackConfiguration Prelude.Text
deletePlaybackConfiguration_name = Lens.lens (\DeletePlaybackConfiguration' {name} -> name) (\s@DeletePlaybackConfiguration' {} a -> s {name = a} :: DeletePlaybackConfiguration)

instance Core.AWSRequest DeletePlaybackConfiguration where
  type
    AWSResponse DeletePlaybackConfiguration =
      DeletePlaybackConfigurationResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeletePlaybackConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeletePlaybackConfiguration

instance Prelude.NFData DeletePlaybackConfiguration

instance Core.ToHeaders DeletePlaybackConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeletePlaybackConfiguration where
  toPath DeletePlaybackConfiguration' {..} =
    Prelude.mconcat
      ["/playbackConfiguration/", Core.toBS name]

instance Core.ToQuery DeletePlaybackConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeletePlaybackConfigurationResponse' smart constructor.
data DeletePlaybackConfigurationResponse = DeletePlaybackConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePlaybackConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePlaybackConfigurationResponse_httpStatus' - The response's http status code.
newDeletePlaybackConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeletePlaybackConfigurationResponse
newDeletePlaybackConfigurationResponse pHttpStatus_ =
  DeletePlaybackConfigurationResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deletePlaybackConfigurationResponse_httpStatus :: Lens.Lens' DeletePlaybackConfigurationResponse Prelude.Int
deletePlaybackConfigurationResponse_httpStatus = Lens.lens (\DeletePlaybackConfigurationResponse' {httpStatus} -> httpStatus) (\s@DeletePlaybackConfigurationResponse' {} a -> s {httpStatus = a} :: DeletePlaybackConfigurationResponse)

instance
  Prelude.NFData
    DeletePlaybackConfigurationResponse
