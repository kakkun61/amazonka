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
-- Module      : Network.AWS.NetworkManager.AssociateLink
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a link to a device. A device can be associated to multiple
-- links and a link can be associated to multiple devices. The device and
-- link must be in the same global network and the same site.
module Network.AWS.NetworkManager.AssociateLink
  ( -- * Creating a Request
    AssociateLink (..),
    newAssociateLink,

    -- * Request Lenses
    associateLink_globalNetworkId,
    associateLink_deviceId,
    associateLink_linkId,

    -- * Destructuring the Response
    AssociateLinkResponse (..),
    newAssociateLinkResponse,

    -- * Response Lenses
    associateLinkResponse_linkAssociation,
    associateLinkResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateLink' smart constructor.
data AssociateLink = AssociateLink'
  { -- | The ID of the global network.
    globalNetworkId :: Prelude.Text,
    -- | The ID of the device.
    deviceId :: Prelude.Text,
    -- | The ID of the link.
    linkId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateLink' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'globalNetworkId', 'associateLink_globalNetworkId' - The ID of the global network.
--
-- 'deviceId', 'associateLink_deviceId' - The ID of the device.
--
-- 'linkId', 'associateLink_linkId' - The ID of the link.
newAssociateLink ::
  -- | 'globalNetworkId'
  Prelude.Text ->
  -- | 'deviceId'
  Prelude.Text ->
  -- | 'linkId'
  Prelude.Text ->
  AssociateLink
newAssociateLink
  pGlobalNetworkId_
  pDeviceId_
  pLinkId_ =
    AssociateLink'
      { globalNetworkId = pGlobalNetworkId_,
        deviceId = pDeviceId_,
        linkId = pLinkId_
      }

-- | The ID of the global network.
associateLink_globalNetworkId :: Lens.Lens' AssociateLink Prelude.Text
associateLink_globalNetworkId = Lens.lens (\AssociateLink' {globalNetworkId} -> globalNetworkId) (\s@AssociateLink' {} a -> s {globalNetworkId = a} :: AssociateLink)

-- | The ID of the device.
associateLink_deviceId :: Lens.Lens' AssociateLink Prelude.Text
associateLink_deviceId = Lens.lens (\AssociateLink' {deviceId} -> deviceId) (\s@AssociateLink' {} a -> s {deviceId = a} :: AssociateLink)

-- | The ID of the link.
associateLink_linkId :: Lens.Lens' AssociateLink Prelude.Text
associateLink_linkId = Lens.lens (\AssociateLink' {linkId} -> linkId) (\s@AssociateLink' {} a -> s {linkId = a} :: AssociateLink)

instance Core.AWSRequest AssociateLink where
  type
    AWSResponse AssociateLink =
      AssociateLinkResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AssociateLinkResponse'
            Prelude.<$> (x Core..?> "LinkAssociation")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AssociateLink

instance Prelude.NFData AssociateLink

instance Core.ToHeaders AssociateLink where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateLink where
  toJSON AssociateLink' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("DeviceId" Core..= deviceId),
            Prelude.Just ("LinkId" Core..= linkId)
          ]
      )

instance Core.ToPath AssociateLink where
  toPath AssociateLink' {..} =
    Prelude.mconcat
      [ "/global-networks/",
        Core.toBS globalNetworkId,
        "/link-associations"
      ]

instance Core.ToQuery AssociateLink where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateLinkResponse' smart constructor.
data AssociateLinkResponse = AssociateLinkResponse'
  { -- | The link association.
    linkAssociation :: Prelude.Maybe LinkAssociation,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateLinkResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'linkAssociation', 'associateLinkResponse_linkAssociation' - The link association.
--
-- 'httpStatus', 'associateLinkResponse_httpStatus' - The response's http status code.
newAssociateLinkResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateLinkResponse
newAssociateLinkResponse pHttpStatus_ =
  AssociateLinkResponse'
    { linkAssociation =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The link association.
associateLinkResponse_linkAssociation :: Lens.Lens' AssociateLinkResponse (Prelude.Maybe LinkAssociation)
associateLinkResponse_linkAssociation = Lens.lens (\AssociateLinkResponse' {linkAssociation} -> linkAssociation) (\s@AssociateLinkResponse' {} a -> s {linkAssociation = a} :: AssociateLinkResponse)

-- | The response's http status code.
associateLinkResponse_httpStatus :: Lens.Lens' AssociateLinkResponse Prelude.Int
associateLinkResponse_httpStatus = Lens.lens (\AssociateLinkResponse' {httpStatus} -> httpStatus) (\s@AssociateLinkResponse' {} a -> s {httpStatus = a} :: AssociateLinkResponse)

instance Prelude.NFData AssociateLinkResponse
