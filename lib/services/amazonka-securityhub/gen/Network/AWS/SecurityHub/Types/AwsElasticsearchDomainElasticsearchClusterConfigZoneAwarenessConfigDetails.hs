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
-- Module      : Network.AWS.SecurityHub.Types.AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Configuration options for zone awareness.
--
-- /See:/ 'newAwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails' smart constructor.
data AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails = AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails'
  { -- | he number of Availability Zones that the domain uses. Valid values are 2
    -- and 3. The default is 2.
    availabilityZoneCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'availabilityZoneCount', 'awsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails_availabilityZoneCount' - he number of Availability Zones that the domain uses. Valid values are 2
-- and 3. The default is 2.
newAwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails ::
  AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
newAwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails =
  AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails'
    { availabilityZoneCount =
        Prelude.Nothing
    }

-- | he number of Availability Zones that the domain uses. Valid values are 2
-- and 3. The default is 2.
awsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails_availabilityZoneCount :: Lens.Lens' AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails (Prelude.Maybe Prelude.Int)
awsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails_availabilityZoneCount = Lens.lens (\AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails' {availabilityZoneCount} -> availabilityZoneCount) (\s@AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails' {} a -> s {availabilityZoneCount = a} :: AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails)

instance
  Core.FromJSON
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
  where
  parseJSON =
    Core.withObject
      "AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails"
      ( \x ->
          AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails'
            Prelude.<$> (x Core..:? "AvailabilityZoneCount")
      )

instance
  Prelude.Hashable
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails

instance
  Prelude.NFData
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails

instance
  Core.ToJSON
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails
  where
  toJSON
    AwsElasticsearchDomainElasticsearchClusterConfigZoneAwarenessConfigDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("AvailabilityZoneCount" Core..=)
                Prelude.<$> availabilityZoneCount
            ]
        )
