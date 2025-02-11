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
-- Module      : Network.AWS.SecurityHub.Types.AwsEc2VpcDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEc2VpcDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.CidrBlockAssociation
import Network.AWS.SecurityHub.Types.Ipv6CidrBlockAssociation

-- | Details about an EC2 VPC.
--
-- /See:/ 'newAwsEc2VpcDetails' smart constructor.
data AwsEc2VpcDetails = AwsEc2VpcDetails'
  { -- | The current state of the VPC.
    state :: Prelude.Maybe Prelude.Text,
    -- | Information about the IPv6 CIDR blocks associated with the VPC.
    ipv6CidrBlockAssociationSet :: Prelude.Maybe [Ipv6CidrBlockAssociation],
    -- | Information about the IPv4 CIDR blocks associated with the VPC.
    cidrBlockAssociationSet :: Prelude.Maybe [CidrBlockAssociation],
    -- | The identifier of the set of Dynamic Host Configuration Protocol (DHCP)
    -- options that are associated with the VPC. If the default options are
    -- associated with the VPC, then this is default.
    dhcpOptionsId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEc2VpcDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'awsEc2VpcDetails_state' - The current state of the VPC.
--
-- 'ipv6CidrBlockAssociationSet', 'awsEc2VpcDetails_ipv6CidrBlockAssociationSet' - Information about the IPv6 CIDR blocks associated with the VPC.
--
-- 'cidrBlockAssociationSet', 'awsEc2VpcDetails_cidrBlockAssociationSet' - Information about the IPv4 CIDR blocks associated with the VPC.
--
-- 'dhcpOptionsId', 'awsEc2VpcDetails_dhcpOptionsId' - The identifier of the set of Dynamic Host Configuration Protocol (DHCP)
-- options that are associated with the VPC. If the default options are
-- associated with the VPC, then this is default.
newAwsEc2VpcDetails ::
  AwsEc2VpcDetails
newAwsEc2VpcDetails =
  AwsEc2VpcDetails'
    { state = Prelude.Nothing,
      ipv6CidrBlockAssociationSet = Prelude.Nothing,
      cidrBlockAssociationSet = Prelude.Nothing,
      dhcpOptionsId = Prelude.Nothing
    }

-- | The current state of the VPC.
awsEc2VpcDetails_state :: Lens.Lens' AwsEc2VpcDetails (Prelude.Maybe Prelude.Text)
awsEc2VpcDetails_state = Lens.lens (\AwsEc2VpcDetails' {state} -> state) (\s@AwsEc2VpcDetails' {} a -> s {state = a} :: AwsEc2VpcDetails)

-- | Information about the IPv6 CIDR blocks associated with the VPC.
awsEc2VpcDetails_ipv6CidrBlockAssociationSet :: Lens.Lens' AwsEc2VpcDetails (Prelude.Maybe [Ipv6CidrBlockAssociation])
awsEc2VpcDetails_ipv6CidrBlockAssociationSet = Lens.lens (\AwsEc2VpcDetails' {ipv6CidrBlockAssociationSet} -> ipv6CidrBlockAssociationSet) (\s@AwsEc2VpcDetails' {} a -> s {ipv6CidrBlockAssociationSet = a} :: AwsEc2VpcDetails) Prelude.. Lens.mapping Lens.coerced

-- | Information about the IPv4 CIDR blocks associated with the VPC.
awsEc2VpcDetails_cidrBlockAssociationSet :: Lens.Lens' AwsEc2VpcDetails (Prelude.Maybe [CidrBlockAssociation])
awsEc2VpcDetails_cidrBlockAssociationSet = Lens.lens (\AwsEc2VpcDetails' {cidrBlockAssociationSet} -> cidrBlockAssociationSet) (\s@AwsEc2VpcDetails' {} a -> s {cidrBlockAssociationSet = a} :: AwsEc2VpcDetails) Prelude.. Lens.mapping Lens.coerced

-- | The identifier of the set of Dynamic Host Configuration Protocol (DHCP)
-- options that are associated with the VPC. If the default options are
-- associated with the VPC, then this is default.
awsEc2VpcDetails_dhcpOptionsId :: Lens.Lens' AwsEc2VpcDetails (Prelude.Maybe Prelude.Text)
awsEc2VpcDetails_dhcpOptionsId = Lens.lens (\AwsEc2VpcDetails' {dhcpOptionsId} -> dhcpOptionsId) (\s@AwsEc2VpcDetails' {} a -> s {dhcpOptionsId = a} :: AwsEc2VpcDetails)

instance Core.FromJSON AwsEc2VpcDetails where
  parseJSON =
    Core.withObject
      "AwsEc2VpcDetails"
      ( \x ->
          AwsEc2VpcDetails'
            Prelude.<$> (x Core..:? "State")
            Prelude.<*> ( x Core..:? "Ipv6CidrBlockAssociationSet"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "CidrBlockAssociationSet"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "DhcpOptionsId")
      )

instance Prelude.Hashable AwsEc2VpcDetails

instance Prelude.NFData AwsEc2VpcDetails

instance Core.ToJSON AwsEc2VpcDetails where
  toJSON AwsEc2VpcDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("State" Core..=) Prelude.<$> state,
            ("Ipv6CidrBlockAssociationSet" Core..=)
              Prelude.<$> ipv6CidrBlockAssociationSet,
            ("CidrBlockAssociationSet" Core..=)
              Prelude.<$> cidrBlockAssociationSet,
            ("DhcpOptionsId" Core..=) Prelude.<$> dhcpOptionsId
          ]
      )
