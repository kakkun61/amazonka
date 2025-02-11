{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.NetworkFirewall.Types.Attachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkFirewall.Types.Attachment where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkFirewall.Types.AttachmentStatus
import qualified Network.AWS.Prelude as Prelude

-- | The configuration and status for a single subnet that you\'ve specified
-- for use by the AWS Network Firewall firewall. This is part of the
-- FirewallStatus.
--
-- /See:/ 'newAttachment' smart constructor.
data Attachment = Attachment'
  { -- | The current status of the firewall endpoint in the subnet. This value
    -- reflects both the instantiation of the endpoint in the VPC subnet and
    -- the sync states that are reported in the @Config@ settings. When this
    -- value is @READY@, the endpoint is available and configured properly to
    -- handle network traffic. When the endpoint isn\'t available for traffic,
    -- this value will reflect its state, for example @CREATING@, @DELETING@,
    -- or @FAILED@.
    status :: Prelude.Maybe AttachmentStatus,
    -- | The unique identifier of the subnet that you\'ve specified to be used
    -- for a firewall endpoint.
    subnetId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the firewall endpoint that Network Firewall has
    -- instantiated in the subnet. You use this to identify the firewall
    -- endpoint in the VPC route tables, when you redirect the VPC traffic
    -- through the endpoint.
    endpointId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Attachment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'attachment_status' - The current status of the firewall endpoint in the subnet. This value
-- reflects both the instantiation of the endpoint in the VPC subnet and
-- the sync states that are reported in the @Config@ settings. When this
-- value is @READY@, the endpoint is available and configured properly to
-- handle network traffic. When the endpoint isn\'t available for traffic,
-- this value will reflect its state, for example @CREATING@, @DELETING@,
-- or @FAILED@.
--
-- 'subnetId', 'attachment_subnetId' - The unique identifier of the subnet that you\'ve specified to be used
-- for a firewall endpoint.
--
-- 'endpointId', 'attachment_endpointId' - The identifier of the firewall endpoint that Network Firewall has
-- instantiated in the subnet. You use this to identify the firewall
-- endpoint in the VPC route tables, when you redirect the VPC traffic
-- through the endpoint.
newAttachment ::
  Attachment
newAttachment =
  Attachment'
    { status = Prelude.Nothing,
      subnetId = Prelude.Nothing,
      endpointId = Prelude.Nothing
    }

-- | The current status of the firewall endpoint in the subnet. This value
-- reflects both the instantiation of the endpoint in the VPC subnet and
-- the sync states that are reported in the @Config@ settings. When this
-- value is @READY@, the endpoint is available and configured properly to
-- handle network traffic. When the endpoint isn\'t available for traffic,
-- this value will reflect its state, for example @CREATING@, @DELETING@,
-- or @FAILED@.
attachment_status :: Lens.Lens' Attachment (Prelude.Maybe AttachmentStatus)
attachment_status = Lens.lens (\Attachment' {status} -> status) (\s@Attachment' {} a -> s {status = a} :: Attachment)

-- | The unique identifier of the subnet that you\'ve specified to be used
-- for a firewall endpoint.
attachment_subnetId :: Lens.Lens' Attachment (Prelude.Maybe Prelude.Text)
attachment_subnetId = Lens.lens (\Attachment' {subnetId} -> subnetId) (\s@Attachment' {} a -> s {subnetId = a} :: Attachment)

-- | The identifier of the firewall endpoint that Network Firewall has
-- instantiated in the subnet. You use this to identify the firewall
-- endpoint in the VPC route tables, when you redirect the VPC traffic
-- through the endpoint.
attachment_endpointId :: Lens.Lens' Attachment (Prelude.Maybe Prelude.Text)
attachment_endpointId = Lens.lens (\Attachment' {endpointId} -> endpointId) (\s@Attachment' {} a -> s {endpointId = a} :: Attachment)

instance Core.FromJSON Attachment where
  parseJSON =
    Core.withObject
      "Attachment"
      ( \x ->
          Attachment'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "SubnetId")
            Prelude.<*> (x Core..:? "EndpointId")
      )

instance Prelude.Hashable Attachment

instance Prelude.NFData Attachment
