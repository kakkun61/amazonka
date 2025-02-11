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
-- Module      : Network.AWS.IoT1ClickProjects.DescribePlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a placement in a project.
module Network.AWS.IoT1ClickProjects.DescribePlacement
  ( -- * Creating a Request
    DescribePlacement (..),
    newDescribePlacement,

    -- * Request Lenses
    describePlacement_placementName,
    describePlacement_projectName,

    -- * Destructuring the Response
    DescribePlacementResponse (..),
    newDescribePlacementResponse,

    -- * Response Lenses
    describePlacementResponse_httpStatus,
    describePlacementResponse_placement,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickProjects.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribePlacement' smart constructor.
data DescribePlacement = DescribePlacement'
  { -- | The name of the placement within a project.
    placementName :: Prelude.Text,
    -- | The project containing the placement to be described.
    projectName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePlacement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'placementName', 'describePlacement_placementName' - The name of the placement within a project.
--
-- 'projectName', 'describePlacement_projectName' - The project containing the placement to be described.
newDescribePlacement ::
  -- | 'placementName'
  Prelude.Text ->
  -- | 'projectName'
  Prelude.Text ->
  DescribePlacement
newDescribePlacement pPlacementName_ pProjectName_ =
  DescribePlacement'
    { placementName = pPlacementName_,
      projectName = pProjectName_
    }

-- | The name of the placement within a project.
describePlacement_placementName :: Lens.Lens' DescribePlacement Prelude.Text
describePlacement_placementName = Lens.lens (\DescribePlacement' {placementName} -> placementName) (\s@DescribePlacement' {} a -> s {placementName = a} :: DescribePlacement)

-- | The project containing the placement to be described.
describePlacement_projectName :: Lens.Lens' DescribePlacement Prelude.Text
describePlacement_projectName = Lens.lens (\DescribePlacement' {projectName} -> projectName) (\s@DescribePlacement' {} a -> s {projectName = a} :: DescribePlacement)

instance Core.AWSRequest DescribePlacement where
  type
    AWSResponse DescribePlacement =
      DescribePlacementResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribePlacementResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "placement")
      )

instance Prelude.Hashable DescribePlacement

instance Prelude.NFData DescribePlacement

instance Core.ToHeaders DescribePlacement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribePlacement where
  toPath DescribePlacement' {..} =
    Prelude.mconcat
      [ "/projects/",
        Core.toBS projectName,
        "/placements/",
        Core.toBS placementName
      ]

instance Core.ToQuery DescribePlacement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribePlacementResponse' smart constructor.
data DescribePlacementResponse = DescribePlacementResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An object describing the placement.
    placement :: PlacementDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribePlacementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describePlacementResponse_httpStatus' - The response's http status code.
--
-- 'placement', 'describePlacementResponse_placement' - An object describing the placement.
newDescribePlacementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'placement'
  PlacementDescription ->
  DescribePlacementResponse
newDescribePlacementResponse pHttpStatus_ pPlacement_ =
  DescribePlacementResponse'
    { httpStatus =
        pHttpStatus_,
      placement = pPlacement_
    }

-- | The response's http status code.
describePlacementResponse_httpStatus :: Lens.Lens' DescribePlacementResponse Prelude.Int
describePlacementResponse_httpStatus = Lens.lens (\DescribePlacementResponse' {httpStatus} -> httpStatus) (\s@DescribePlacementResponse' {} a -> s {httpStatus = a} :: DescribePlacementResponse)

-- | An object describing the placement.
describePlacementResponse_placement :: Lens.Lens' DescribePlacementResponse PlacementDescription
describePlacementResponse_placement = Lens.lens (\DescribePlacementResponse' {placement} -> placement) (\s@DescribePlacementResponse' {} a -> s {placement = a} :: DescribePlacementResponse)

instance Prelude.NFData DescribePlacementResponse
