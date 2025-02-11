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
-- Module      : Network.AWS.Location.GetMapTile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a vector data tile from the map resource. Map tiles are used
-- by clients to render a map. they\'re addressed using a grid arrangement
-- with an X coordinate, Y coordinate, and Z (zoom) level.
--
-- The origin (0, 0) is the top left of the map. Increasing the zoom level
-- by 1 doubles both the X and Y dimensions, so a tile containing data for
-- the entire world at (0\/0\/0) will be split into 4 tiles at zoom 1
-- (1\/0\/0, 1\/0\/1, 1\/1\/0, 1\/1\/1).
module Network.AWS.Location.GetMapTile
  ( -- * Creating a Request
    GetMapTile (..),
    newGetMapTile,

    -- * Request Lenses
    getMapTile_mapName,
    getMapTile_x,
    getMapTile_y,
    getMapTile_z,

    -- * Destructuring the Response
    GetMapTileResponse (..),
    newGetMapTileResponse,

    -- * Response Lenses
    getMapTileResponse_blob,
    getMapTileResponse_contentType,
    getMapTileResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetMapTile' smart constructor.
data GetMapTile = GetMapTile'
  { -- | The map resource to retrieve the map tiles from.
    mapName :: Prelude.Text,
    -- | The X axis value for the map tile.
    x :: Prelude.Text,
    -- | The Y axis value for the map tile.
    y :: Prelude.Text,
    -- | The zoom value for the map tile.
    z :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMapTile' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mapName', 'getMapTile_mapName' - The map resource to retrieve the map tiles from.
--
-- 'x', 'getMapTile_x' - The X axis value for the map tile.
--
-- 'y', 'getMapTile_y' - The Y axis value for the map tile.
--
-- 'z', 'getMapTile_z' - The zoom value for the map tile.
newGetMapTile ::
  -- | 'mapName'
  Prelude.Text ->
  -- | 'x'
  Prelude.Text ->
  -- | 'y'
  Prelude.Text ->
  -- | 'z'
  Prelude.Text ->
  GetMapTile
newGetMapTile pMapName_ pX_ pY_ pZ_ =
  GetMapTile'
    { mapName = pMapName_,
      x = pX_,
      y = pY_,
      z = pZ_
    }

-- | The map resource to retrieve the map tiles from.
getMapTile_mapName :: Lens.Lens' GetMapTile Prelude.Text
getMapTile_mapName = Lens.lens (\GetMapTile' {mapName} -> mapName) (\s@GetMapTile' {} a -> s {mapName = a} :: GetMapTile)

-- | The X axis value for the map tile.
getMapTile_x :: Lens.Lens' GetMapTile Prelude.Text
getMapTile_x = Lens.lens (\GetMapTile' {x} -> x) (\s@GetMapTile' {} a -> s {x = a} :: GetMapTile)

-- | The Y axis value for the map tile.
getMapTile_y :: Lens.Lens' GetMapTile Prelude.Text
getMapTile_y = Lens.lens (\GetMapTile' {y} -> y) (\s@GetMapTile' {} a -> s {y = a} :: GetMapTile)

-- | The zoom value for the map tile.
getMapTile_z :: Lens.Lens' GetMapTile Prelude.Text
getMapTile_z = Lens.lens (\GetMapTile' {z} -> z) (\s@GetMapTile' {} a -> s {z = a} :: GetMapTile)

instance Core.AWSRequest GetMapTile where
  type AWSResponse GetMapTile = GetMapTileResponse
  request = Request.get defaultService
  response =
    Response.receiveBytes
      ( \s h x ->
          GetMapTileResponse'
            Prelude.<$> (Prelude.pure (Prelude.Just (Prelude.coerce x)))
            Prelude.<*> (h Core..#? "Content-Type")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMapTile

instance Prelude.NFData GetMapTile

instance Core.ToHeaders GetMapTile where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetMapTile where
  toPath GetMapTile' {..} =
    Prelude.mconcat
      [ "/maps/v0/maps/",
        Core.toBS mapName,
        "/tiles/",
        Core.toBS z,
        "/",
        Core.toBS x,
        "/",
        Core.toBS y
      ]

instance Core.ToQuery GetMapTile where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMapTileResponse' smart constructor.
data GetMapTileResponse = GetMapTileResponse'
  { -- | Contains Mapbox Vector Tile (MVT) data.
    blob :: Prelude.Maybe Prelude.ByteString,
    -- | The map tile\'s content type. For example,
    -- @application\/vnd.mapbox-vector-tile@.
    contentType :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMapTileResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'blob', 'getMapTileResponse_blob' - Contains Mapbox Vector Tile (MVT) data.
--
-- 'contentType', 'getMapTileResponse_contentType' - The map tile\'s content type. For example,
-- @application\/vnd.mapbox-vector-tile@.
--
-- 'httpStatus', 'getMapTileResponse_httpStatus' - The response's http status code.
newGetMapTileResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMapTileResponse
newGetMapTileResponse pHttpStatus_ =
  GetMapTileResponse'
    { blob = Prelude.Nothing,
      contentType = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains Mapbox Vector Tile (MVT) data.
getMapTileResponse_blob :: Lens.Lens' GetMapTileResponse (Prelude.Maybe Prelude.ByteString)
getMapTileResponse_blob = Lens.lens (\GetMapTileResponse' {blob} -> blob) (\s@GetMapTileResponse' {} a -> s {blob = a} :: GetMapTileResponse)

-- | The map tile\'s content type. For example,
-- @application\/vnd.mapbox-vector-tile@.
getMapTileResponse_contentType :: Lens.Lens' GetMapTileResponse (Prelude.Maybe Prelude.Text)
getMapTileResponse_contentType = Lens.lens (\GetMapTileResponse' {contentType} -> contentType) (\s@GetMapTileResponse' {} a -> s {contentType = a} :: GetMapTileResponse)

-- | The response's http status code.
getMapTileResponse_httpStatus :: Lens.Lens' GetMapTileResponse Prelude.Int
getMapTileResponse_httpStatus = Lens.lens (\GetMapTileResponse' {httpStatus} -> httpStatus) (\s@GetMapTileResponse' {} a -> s {httpStatus = a} :: GetMapTileResponse)

instance Prelude.NFData GetMapTileResponse
