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
-- Module      : Network.AWS.IoT1ClickProjects.UpdatePlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a placement with the given attributes. To clear an attribute,
-- pass an empty value (i.e., \"\").
module Network.AWS.IoT1ClickProjects.UpdatePlacement
  ( -- * Creating a Request
    UpdatePlacement (..),
    newUpdatePlacement,

    -- * Request Lenses
    updatePlacement_attributes,
    updatePlacement_placementName,
    updatePlacement_projectName,

    -- * Destructuring the Response
    UpdatePlacementResponse (..),
    newUpdatePlacementResponse,

    -- * Response Lenses
    updatePlacementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickProjects.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdatePlacement' smart constructor.
data UpdatePlacement = UpdatePlacement'
  { -- | The user-defined object of attributes used to update the placement. The
    -- maximum number of key\/value pairs is 50.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the placement to update.
    placementName :: Prelude.Text,
    -- | The name of the project containing the placement to be updated.
    projectName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePlacement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'updatePlacement_attributes' - The user-defined object of attributes used to update the placement. The
-- maximum number of key\/value pairs is 50.
--
-- 'placementName', 'updatePlacement_placementName' - The name of the placement to update.
--
-- 'projectName', 'updatePlacement_projectName' - The name of the project containing the placement to be updated.
newUpdatePlacement ::
  -- | 'placementName'
  Prelude.Text ->
  -- | 'projectName'
  Prelude.Text ->
  UpdatePlacement
newUpdatePlacement pPlacementName_ pProjectName_ =
  UpdatePlacement'
    { attributes = Prelude.Nothing,
      placementName = pPlacementName_,
      projectName = pProjectName_
    }

-- | The user-defined object of attributes used to update the placement. The
-- maximum number of key\/value pairs is 50.
updatePlacement_attributes :: Lens.Lens' UpdatePlacement (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
updatePlacement_attributes = Lens.lens (\UpdatePlacement' {attributes} -> attributes) (\s@UpdatePlacement' {} a -> s {attributes = a} :: UpdatePlacement) Prelude.. Lens.mapping Lens.coerced

-- | The name of the placement to update.
updatePlacement_placementName :: Lens.Lens' UpdatePlacement Prelude.Text
updatePlacement_placementName = Lens.lens (\UpdatePlacement' {placementName} -> placementName) (\s@UpdatePlacement' {} a -> s {placementName = a} :: UpdatePlacement)

-- | The name of the project containing the placement to be updated.
updatePlacement_projectName :: Lens.Lens' UpdatePlacement Prelude.Text
updatePlacement_projectName = Lens.lens (\UpdatePlacement' {projectName} -> projectName) (\s@UpdatePlacement' {} a -> s {projectName = a} :: UpdatePlacement)

instance Core.AWSRequest UpdatePlacement where
  type
    AWSResponse UpdatePlacement =
      UpdatePlacementResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdatePlacementResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePlacement

instance Prelude.NFData UpdatePlacement

instance Core.ToHeaders UpdatePlacement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdatePlacement where
  toJSON UpdatePlacement' {..} =
    Core.object
      ( Prelude.catMaybes
          [("attributes" Core..=) Prelude.<$> attributes]
      )

instance Core.ToPath UpdatePlacement where
  toPath UpdatePlacement' {..} =
    Prelude.mconcat
      [ "/projects/",
        Core.toBS projectName,
        "/placements/",
        Core.toBS placementName
      ]

instance Core.ToQuery UpdatePlacement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdatePlacementResponse' smart constructor.
data UpdatePlacementResponse = UpdatePlacementResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdatePlacementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updatePlacementResponse_httpStatus' - The response's http status code.
newUpdatePlacementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePlacementResponse
newUpdatePlacementResponse pHttpStatus_ =
  UpdatePlacementResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
updatePlacementResponse_httpStatus :: Lens.Lens' UpdatePlacementResponse Prelude.Int
updatePlacementResponse_httpStatus = Lens.lens (\UpdatePlacementResponse' {httpStatus} -> httpStatus) (\s@UpdatePlacementResponse' {} a -> s {httpStatus = a} :: UpdatePlacementResponse)

instance Prelude.NFData UpdatePlacementResponse
