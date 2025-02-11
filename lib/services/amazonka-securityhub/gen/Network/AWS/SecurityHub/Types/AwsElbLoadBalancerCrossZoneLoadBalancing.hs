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
-- Module      : Network.AWS.SecurityHub.Types.AwsElbLoadBalancerCrossZoneLoadBalancing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElbLoadBalancerCrossZoneLoadBalancing where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains cross-zone load balancing settings for the load balancer.
--
-- /See:/ 'newAwsElbLoadBalancerCrossZoneLoadBalancing' smart constructor.
data AwsElbLoadBalancerCrossZoneLoadBalancing = AwsElbLoadBalancerCrossZoneLoadBalancing'
  { -- | Indicates whether cross-zone load balancing is enabled for the load
    -- balancer.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElbLoadBalancerCrossZoneLoadBalancing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'awsElbLoadBalancerCrossZoneLoadBalancing_enabled' - Indicates whether cross-zone load balancing is enabled for the load
-- balancer.
newAwsElbLoadBalancerCrossZoneLoadBalancing ::
  AwsElbLoadBalancerCrossZoneLoadBalancing
newAwsElbLoadBalancerCrossZoneLoadBalancing =
  AwsElbLoadBalancerCrossZoneLoadBalancing'
    { enabled =
        Prelude.Nothing
    }

-- | Indicates whether cross-zone load balancing is enabled for the load
-- balancer.
awsElbLoadBalancerCrossZoneLoadBalancing_enabled :: Lens.Lens' AwsElbLoadBalancerCrossZoneLoadBalancing (Prelude.Maybe Prelude.Bool)
awsElbLoadBalancerCrossZoneLoadBalancing_enabled = Lens.lens (\AwsElbLoadBalancerCrossZoneLoadBalancing' {enabled} -> enabled) (\s@AwsElbLoadBalancerCrossZoneLoadBalancing' {} a -> s {enabled = a} :: AwsElbLoadBalancerCrossZoneLoadBalancing)

instance
  Core.FromJSON
    AwsElbLoadBalancerCrossZoneLoadBalancing
  where
  parseJSON =
    Core.withObject
      "AwsElbLoadBalancerCrossZoneLoadBalancing"
      ( \x ->
          AwsElbLoadBalancerCrossZoneLoadBalancing'
            Prelude.<$> (x Core..:? "Enabled")
      )

instance
  Prelude.Hashable
    AwsElbLoadBalancerCrossZoneLoadBalancing

instance
  Prelude.NFData
    AwsElbLoadBalancerCrossZoneLoadBalancing

instance
  Core.ToJSON
    AwsElbLoadBalancerCrossZoneLoadBalancing
  where
  toJSON AwsElbLoadBalancerCrossZoneLoadBalancing' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Enabled" Core..=) Prelude.<$> enabled]
      )
