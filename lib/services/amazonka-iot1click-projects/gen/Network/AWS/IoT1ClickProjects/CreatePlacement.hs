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
-- Module      : Network.AWS.IoT1ClickProjects.CreatePlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an empty placement.
module Network.AWS.IoT1ClickProjects.CreatePlacement
  ( -- * Creating a Request
    CreatePlacement (..),
    newCreatePlacement,

    -- * Request Lenses
    createPlacement_attributes,
    createPlacement_placementName,
    createPlacement_projectName,

    -- * Destructuring the Response
    CreatePlacementResponse (..),
    newCreatePlacementResponse,

    -- * Response Lenses
    createPlacementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickProjects.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreatePlacement' smart constructor.
data CreatePlacement = CreatePlacement'
  { -- | Optional user-defined key\/value pairs providing contextual data (such
    -- as location or function) for the placement.
    attributes :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the placement to be created.
    placementName :: Prelude.Text,
    -- | The name of the project in which to create the placement.
    projectName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePlacement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributes', 'createPlacement_attributes' - Optional user-defined key\/value pairs providing contextual data (such
-- as location or function) for the placement.
--
-- 'placementName', 'createPlacement_placementName' - The name of the placement to be created.
--
-- 'projectName', 'createPlacement_projectName' - The name of the project in which to create the placement.
newCreatePlacement ::
  -- | 'placementName'
  Prelude.Text ->
  -- | 'projectName'
  Prelude.Text ->
  CreatePlacement
newCreatePlacement pPlacementName_ pProjectName_ =
  CreatePlacement'
    { attributes = Prelude.Nothing,
      placementName = pPlacementName_,
      projectName = pProjectName_
    }

-- | Optional user-defined key\/value pairs providing contextual data (such
-- as location or function) for the placement.
createPlacement_attributes :: Lens.Lens' CreatePlacement (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createPlacement_attributes = Lens.lens (\CreatePlacement' {attributes} -> attributes) (\s@CreatePlacement' {} a -> s {attributes = a} :: CreatePlacement) Prelude.. Lens.mapping Lens.coerced

-- | The name of the placement to be created.
createPlacement_placementName :: Lens.Lens' CreatePlacement Prelude.Text
createPlacement_placementName = Lens.lens (\CreatePlacement' {placementName} -> placementName) (\s@CreatePlacement' {} a -> s {placementName = a} :: CreatePlacement)

-- | The name of the project in which to create the placement.
createPlacement_projectName :: Lens.Lens' CreatePlacement Prelude.Text
createPlacement_projectName = Lens.lens (\CreatePlacement' {projectName} -> projectName) (\s@CreatePlacement' {} a -> s {projectName = a} :: CreatePlacement)

instance Core.AWSRequest CreatePlacement where
  type
    AWSResponse CreatePlacement =
      CreatePlacementResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreatePlacementResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreatePlacement

instance Prelude.NFData CreatePlacement

instance Core.ToHeaders CreatePlacement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreatePlacement where
  toJSON CreatePlacement' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("attributes" Core..=) Prelude.<$> attributes,
            Prelude.Just
              ("placementName" Core..= placementName)
          ]
      )

instance Core.ToPath CreatePlacement where
  toPath CreatePlacement' {..} =
    Prelude.mconcat
      ["/projects/", Core.toBS projectName, "/placements"]

instance Core.ToQuery CreatePlacement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreatePlacementResponse' smart constructor.
data CreatePlacementResponse = CreatePlacementResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePlacementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createPlacementResponse_httpStatus' - The response's http status code.
newCreatePlacementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreatePlacementResponse
newCreatePlacementResponse pHttpStatus_ =
  CreatePlacementResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
createPlacementResponse_httpStatus :: Lens.Lens' CreatePlacementResponse Prelude.Int
createPlacementResponse_httpStatus = Lens.lens (\CreatePlacementResponse' {httpStatus} -> httpStatus) (\s@CreatePlacementResponse' {} a -> s {httpStatus = a} :: CreatePlacementResponse)

instance Prelude.NFData CreatePlacementResponse
