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
-- Module      : Network.AWS.NetworkManager.DisassociateLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an existing device from a link. You must first
-- disassociate any customer gateways that are associated with the link.
module Network.AWS.NetworkManager.DisassociateLink
  ( -- * Creating a Request
    DisassociateLink (..),
    newDisassociateLink,

    -- * Request Lenses
    disassociateLink_globalNetworkId,
    disassociateLink_deviceId,
    disassociateLink_linkId,

    -- * Destructuring the Response
    DisassociateLinkResponse (..),
    newDisassociateLinkResponse,

    -- * Response Lenses
    disassociateLinkResponse_linkAssociation,
    disassociateLinkResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateLink' smart constructor.
data DisassociateLink = DisassociateLink'
  { -- | The ID of the global network.
    globalNetworkId :: Prelude.Text,
    -- | The ID of the device.
    deviceId :: Prelude.Text,
    -- | The ID of the link.
    linkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateLink' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalNetworkId', 'disassociateLink_globalNetworkId' - The ID of the global network.
--
-- 'deviceId', 'disassociateLink_deviceId' - The ID of the device.
--
-- 'linkId', 'disassociateLink_linkId' - The ID of the link.
newDisassociateLink ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  -- | 'deviceId'
  Prelude.Text ->
  -- | 'linkId'
  Prelude.Text ->
  DisassociateLink
newDisassociateLink
  pGlobalNetworkId_
  pDeviceId_
  pLinkId_ =
    DisassociateLink'
      { globalNetworkId =
          pGlobalNetworkId_,
        deviceId = pDeviceId_,
        linkId = pLinkId_
      }

-- | The ID of the global network.
disassociateLink_globalNetworkId :: Lens.Lens' DisassociateLink Prelude.Text
disassociateLink_globalNetworkId = Lens.lens (\DisassociateLink' {globalNetworkId} -> globalNetworkId) (\s@DisassociateLink' {} a -> s {globalNetworkId = a} :: DisassociateLink)

-- | The ID of the device.
disassociateLink_deviceId :: Lens.Lens' DisassociateLink Prelude.Text
disassociateLink_deviceId = Lens.lens (\DisassociateLink' {deviceId} -> deviceId) (\s@DisassociateLink' {} a -> s {deviceId = a} :: DisassociateLink)

-- | The ID of the link.
disassociateLink_linkId :: Lens.Lens' DisassociateLink Prelude.Text
disassociateLink_linkId = Lens.lens (\DisassociateLink' {linkId} -> linkId) (\s@DisassociateLink' {} a -> s {linkId = a} :: DisassociateLink)

instance Core.AWSRequest DisassociateLink where
  type
    AWSResponse DisassociateLink =
      DisassociateLinkResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DisassociateLinkResponse'
            Prelude.<$> (x Core..?> "LinkAssociation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DisassociateLink

instance Prelude.NFData DisassociateLink

instance Core.ToHeaders DisassociateLink where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DisassociateLink where
  toPath DisassociateLink' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/link-associations"
      ]

instance Core.ToQuery DisassociateLink where
  toQuery DisassociateLink' {..} =
    Prelude.mconcat
      [ "deviceId" Core.=: deviceId,
        "linkId" Core.=: linkId
      ]

-- | /See:/ 'newDisassociateLinkResponse' smart constructor.
data DisassociateLinkResponse = DisassociateLinkResponse'
  { -- | Information about the link association.
    linkAssociation :: Prelude.Maybe LinkAssociation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateLinkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'linkAssociation', 'disassociateLinkResponse_linkAssociation' - Information about the link association.
--
-- 'httpStatus', 'disassociateLinkResponse_httpStatus' - The response's http status code.
newDisassociateLinkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateLinkResponse
newDisassociateLinkResponse pHttpStatus_ =
  DisassociateLinkResponse'
    { linkAssociation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the link association.
disassociateLinkResponse_linkAssociation :: Lens.Lens' DisassociateLinkResponse (Prelude.Maybe LinkAssociation)
disassociateLinkResponse_linkAssociation = Lens.lens (\DisassociateLinkResponse' {linkAssociation} -> linkAssociation) (\s@DisassociateLinkResponse' {} a -> s {linkAssociation = a} :: DisassociateLinkResponse)

-- | The response's http status code.
disassociateLinkResponse_httpStatus :: Lens.Lens' DisassociateLinkResponse Prelude.Int
disassociateLinkResponse_httpStatus = Lens.lens (\DisassociateLinkResponse' {httpStatus} -> httpStatus) (\s@DisassociateLinkResponse' {} a -> s {httpStatus = a} :: DisassociateLinkResponse)

instance Prelude.NFData DisassociateLinkResponse
