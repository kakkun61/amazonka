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
-- Module      : Network.AWS.IoT1ClickProjects.DisassociateDeviceFromPlacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a physical device from a placement.
module Network.AWS.IoT1ClickProjects.DisassociateDeviceFromPlacement
  ( -- * Creating a Request
    DisassociateDeviceFromPlacement (..),
    newDisassociateDeviceFromPlacement,

    -- * Request Lenses
    disassociateDeviceFromPlacement_projectName,
    disassociateDeviceFromPlacement_placementName,
    disassociateDeviceFromPlacement_deviceTemplateName,

    -- * Destructuring the Response
    DisassociateDeviceFromPlacementResponse (..),
    newDisassociateDeviceFromPlacementResponse,

    -- * Response Lenses
    disassociateDeviceFromPlacementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT1ClickProjects.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateDeviceFromPlacement' smart constructor.
data DisassociateDeviceFromPlacement = DisassociateDeviceFromPlacement'
  { -- | The name of the project that contains the placement.
    projectName :: Prelude.Text,
    -- | The name of the placement that the device should be removed from.
    placementName :: Prelude.Text,
    -- | The device ID that should be removed from the placement.
    deviceTemplateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateDeviceFromPlacement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'projectName', 'disassociateDeviceFromPlacement_projectName' - The name of the project that contains the placement.
--
-- 'placementName', 'disassociateDeviceFromPlacement_placementName' - The name of the placement that the device should be removed from.
--
-- 'deviceTemplateName', 'disassociateDeviceFromPlacement_deviceTemplateName' - The device ID that should be removed from the placement.
newDisassociateDeviceFromPlacement ::
  -- | 'projectName'
  Prelude.Text ->
  -- | 'placementName'
  Prelude.Text ->
  -- | 'deviceTemplateName'
  Prelude.Text ->
  DisassociateDeviceFromPlacement
newDisassociateDeviceFromPlacement
  pProjectName_
  pPlacementName_
  pDeviceTemplateName_ =
    DisassociateDeviceFromPlacement'
      { projectName =
          pProjectName_,
        placementName = pPlacementName_,
        deviceTemplateName = pDeviceTemplateName_
      }

-- | The name of the project that contains the placement.
disassociateDeviceFromPlacement_projectName :: Lens.Lens' DisassociateDeviceFromPlacement Prelude.Text
disassociateDeviceFromPlacement_projectName = Lens.lens (\DisassociateDeviceFromPlacement' {projectName} -> projectName) (\s@DisassociateDeviceFromPlacement' {} a -> s {projectName = a} :: DisassociateDeviceFromPlacement)

-- | The name of the placement that the device should be removed from.
disassociateDeviceFromPlacement_placementName :: Lens.Lens' DisassociateDeviceFromPlacement Prelude.Text
disassociateDeviceFromPlacement_placementName = Lens.lens (\DisassociateDeviceFromPlacement' {placementName} -> placementName) (\s@DisassociateDeviceFromPlacement' {} a -> s {placementName = a} :: DisassociateDeviceFromPlacement)

-- | The device ID that should be removed from the placement.
disassociateDeviceFromPlacement_deviceTemplateName :: Lens.Lens' DisassociateDeviceFromPlacement Prelude.Text
disassociateDeviceFromPlacement_deviceTemplateName = Lens.lens (\DisassociateDeviceFromPlacement' {deviceTemplateName} -> deviceTemplateName) (\s@DisassociateDeviceFromPlacement' {} a -> s {deviceTemplateName = a} :: DisassociateDeviceFromPlacement)

instance
  Core.AWSRequest
    DisassociateDeviceFromPlacement
  where
  type
    AWSResponse DisassociateDeviceFromPlacement =
      DisassociateDeviceFromPlacementResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateDeviceFromPlacementResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DisassociateDeviceFromPlacement

instance
  Prelude.NFData
    DisassociateDeviceFromPlacement

instance
  Core.ToHeaders
    DisassociateDeviceFromPlacement
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DisassociateDeviceFromPlacement where
  toPath DisassociateDeviceFromPlacement' {..} =
    Prelude.mconcat
      [ "/projects/",
        Core.toBS projectName,
        "/placements/",
        Core.toBS placementName,
        "/devices/",
        Core.toBS deviceTemplateName
      ]

instance Core.ToQuery DisassociateDeviceFromPlacement where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateDeviceFromPlacementResponse' smart constructor.
data DisassociateDeviceFromPlacementResponse = DisassociateDeviceFromPlacementResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateDeviceFromPlacementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateDeviceFromPlacementResponse_httpStatus' - The response's http status code.
newDisassociateDeviceFromPlacementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateDeviceFromPlacementResponse
newDisassociateDeviceFromPlacementResponse
  pHttpStatus_ =
    DisassociateDeviceFromPlacementResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
disassociateDeviceFromPlacementResponse_httpStatus :: Lens.Lens' DisassociateDeviceFromPlacementResponse Prelude.Int
disassociateDeviceFromPlacementResponse_httpStatus = Lens.lens (\DisassociateDeviceFromPlacementResponse' {httpStatus} -> httpStatus) (\s@DisassociateDeviceFromPlacementResponse' {} a -> s {httpStatus = a} :: DisassociateDeviceFromPlacementResponse)

instance
  Prelude.NFData
    DisassociateDeviceFromPlacementResponse
