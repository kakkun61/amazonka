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
-- Module      : Network.AWS.EC2.DisassociateAddress
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disassociates an Elastic IP address from the instance or network
-- interface it\'s associated with.
--
-- An Elastic IP address is for use in either the EC2-Classic platform or
-- in a VPC. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html Elastic IP Addresses>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- This is an idempotent operation. If you perform the operation more than
-- once, Amazon EC2 doesn\'t return an error.
module Network.AWS.EC2.DisassociateAddress
  ( -- * Creating a Request
    DisassociateAddress (..),
    newDisassociateAddress,

    -- * Request Lenses
    disassociateAddress_associationId,
    disassociateAddress_publicIp,
    disassociateAddress_dryRun,

    -- * Destructuring the Response
    DisassociateAddressResponse (..),
    newDisassociateAddressResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateAddress' smart constructor.
data DisassociateAddress = DisassociateAddress'
  { -- | [EC2-VPC] The association ID. Required for EC2-VPC.
    associationId :: Prelude.Maybe Prelude.Text,
    -- | [EC2-Classic] The Elastic IP address. Required for EC2-Classic.
    publicIp :: Prelude.Maybe Prelude.Text,
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAddress' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'associationId', 'disassociateAddress_associationId' - [EC2-VPC] The association ID. Required for EC2-VPC.
--
-- 'publicIp', 'disassociateAddress_publicIp' - [EC2-Classic] The Elastic IP address. Required for EC2-Classic.
--
-- 'dryRun', 'disassociateAddress_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
newDisassociateAddress ::
  DisassociateAddress
newDisassociateAddress =
  DisassociateAddress'
    { associationId =
        Prelude.Nothing,
      publicIp = Prelude.Nothing,
      dryRun = Prelude.Nothing
    }

-- | [EC2-VPC] The association ID. Required for EC2-VPC.
disassociateAddress_associationId :: Lens.Lens' DisassociateAddress (Prelude.Maybe Prelude.Text)
disassociateAddress_associationId = Lens.lens (\DisassociateAddress' {associationId} -> associationId) (\s@DisassociateAddress' {} a -> s {associationId = a} :: DisassociateAddress)

-- | [EC2-Classic] The Elastic IP address. Required for EC2-Classic.
disassociateAddress_publicIp :: Lens.Lens' DisassociateAddress (Prelude.Maybe Prelude.Text)
disassociateAddress_publicIp = Lens.lens (\DisassociateAddress' {publicIp} -> publicIp) (\s@DisassociateAddress' {} a -> s {publicIp = a} :: DisassociateAddress)

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
disassociateAddress_dryRun :: Lens.Lens' DisassociateAddress (Prelude.Maybe Prelude.Bool)
disassociateAddress_dryRun = Lens.lens (\DisassociateAddress' {dryRun} -> dryRun) (\s@DisassociateAddress' {} a -> s {dryRun = a} :: DisassociateAddress)

instance Core.AWSRequest DisassociateAddress where
  type
    AWSResponse DisassociateAddress =
      DisassociateAddressResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull DisassociateAddressResponse'

instance Prelude.Hashable DisassociateAddress

instance Prelude.NFData DisassociateAddress

instance Core.ToHeaders DisassociateAddress where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DisassociateAddress where
  toPath = Prelude.const "/"

instance Core.ToQuery DisassociateAddress where
  toQuery DisassociateAddress' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("DisassociateAddress" :: Prelude.ByteString),
        "Version"
          Core.=: ("2016-11-15" :: Prelude.ByteString),
        "AssociationId" Core.=: associationId,
        "PublicIp" Core.=: publicIp,
        "DryRun" Core.=: dryRun
      ]

-- | /See:/ 'newDisassociateAddressResponse' smart constructor.
data DisassociateAddressResponse = DisassociateAddressResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateAddressResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisassociateAddressResponse ::
  DisassociateAddressResponse
newDisassociateAddressResponse =
  DisassociateAddressResponse'

instance Prelude.NFData DisassociateAddressResponse
