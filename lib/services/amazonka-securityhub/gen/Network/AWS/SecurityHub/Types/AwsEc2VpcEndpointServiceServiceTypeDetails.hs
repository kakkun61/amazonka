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
-- Module      : Network.AWS.SecurityHub.Types.AwsEc2VpcEndpointServiceServiceTypeDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEc2VpcEndpointServiceServiceTypeDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The service type information for a VPC endpoint service.
--
-- /See:/ 'newAwsEc2VpcEndpointServiceServiceTypeDetails' smart constructor.
data AwsEc2VpcEndpointServiceServiceTypeDetails = AwsEc2VpcEndpointServiceServiceTypeDetails'
  { -- | The type of service.
    serviceType :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEc2VpcEndpointServiceServiceTypeDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceType', 'awsEc2VpcEndpointServiceServiceTypeDetails_serviceType' - The type of service.
newAwsEc2VpcEndpointServiceServiceTypeDetails ::
  AwsEc2VpcEndpointServiceServiceTypeDetails
newAwsEc2VpcEndpointServiceServiceTypeDetails =
  AwsEc2VpcEndpointServiceServiceTypeDetails'
    { serviceType =
        Prelude.Nothing
    }

-- | The type of service.
awsEc2VpcEndpointServiceServiceTypeDetails_serviceType :: Lens.Lens' AwsEc2VpcEndpointServiceServiceTypeDetails (Prelude.Maybe Prelude.Text)
awsEc2VpcEndpointServiceServiceTypeDetails_serviceType = Lens.lens (\AwsEc2VpcEndpointServiceServiceTypeDetails' {serviceType} -> serviceType) (\s@AwsEc2VpcEndpointServiceServiceTypeDetails' {} a -> s {serviceType = a} :: AwsEc2VpcEndpointServiceServiceTypeDetails)

instance
  Core.FromJSON
    AwsEc2VpcEndpointServiceServiceTypeDetails
  where
  parseJSON =
    Core.withObject
      "AwsEc2VpcEndpointServiceServiceTypeDetails"
      ( \x ->
          AwsEc2VpcEndpointServiceServiceTypeDetails'
            Prelude.<$> (x Core..:? "ServiceType")
      )

instance
  Prelude.Hashable
    AwsEc2VpcEndpointServiceServiceTypeDetails

instance
  Prelude.NFData
    AwsEc2VpcEndpointServiceServiceTypeDetails

instance
  Core.ToJSON
    AwsEc2VpcEndpointServiceServiceTypeDetails
  where
  toJSON
    AwsEc2VpcEndpointServiceServiceTypeDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [("ServiceType" Core..=) Prelude.<$> serviceType]
        )
