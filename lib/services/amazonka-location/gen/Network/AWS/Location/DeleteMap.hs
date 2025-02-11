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
-- Module      : Network.AWS.Location.DeleteMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a map resource from your AWS account.
--
-- This operation deletes the resource permanently. If the map is being
-- used in an application, the map may not render.
module Network.AWS.Location.DeleteMap
  ( -- * Creating a Request
    DeleteMap (..),
    newDeleteMap,

    -- * Request Lenses
    deleteMap_mapName,

    -- * Destructuring the Response
    DeleteMapResponse (..),
    newDeleteMapResponse,

    -- * Response Lenses
    deleteMapResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteMap' smart constructor.
data DeleteMap = DeleteMap'
  { -- | The name of the map resource to be deleted.
    mapName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMap' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mapName', 'deleteMap_mapName' - The name of the map resource to be deleted.
newDeleteMap ::
  -- | 'mapName'
  Prelude.Text ->
  DeleteMap
newDeleteMap pMapName_ =
  DeleteMap' {mapName = pMapName_}

-- | The name of the map resource to be deleted.
deleteMap_mapName :: Lens.Lens' DeleteMap Prelude.Text
deleteMap_mapName = Lens.lens (\DeleteMap' {mapName} -> mapName) (\s@DeleteMap' {} a -> s {mapName = a} :: DeleteMap)

instance Core.AWSRequest DeleteMap where
  type AWSResponse DeleteMap = DeleteMapResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteMapResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteMap

instance Prelude.NFData DeleteMap

instance Core.ToHeaders DeleteMap where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteMap where
  toPath DeleteMap' {..} =
    Prelude.mconcat
      ["/maps/v0/maps/", Core.toBS mapName]

instance Core.ToQuery DeleteMap where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteMapResponse' smart constructor.
data DeleteMapResponse = DeleteMapResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteMapResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteMapResponse_httpStatus' - The response's http status code.
newDeleteMapResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteMapResponse
newDeleteMapResponse pHttpStatus_ =
  DeleteMapResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteMapResponse_httpStatus :: Lens.Lens' DeleteMapResponse Prelude.Int
deleteMapResponse_httpStatus = Lens.lens (\DeleteMapResponse' {httpStatus} -> httpStatus) (\s@DeleteMapResponse' {} a -> s {httpStatus = a} :: DeleteMapResponse)

instance Prelude.NFData DeleteMapResponse
