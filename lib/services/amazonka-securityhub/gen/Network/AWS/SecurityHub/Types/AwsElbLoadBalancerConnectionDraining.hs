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
-- Module      : Network.AWS.SecurityHub.Types.AwsElbLoadBalancerConnectionDraining
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElbLoadBalancerConnectionDraining where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the connection draining configuration for the
-- load balancer.
--
-- /See:/ 'newAwsElbLoadBalancerConnectionDraining' smart constructor.
data AwsElbLoadBalancerConnectionDraining = AwsElbLoadBalancerConnectionDraining'
  { -- | Indicates whether connection draining is enabled for the load balancer.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The maximum time, in seconds, to keep the existing connections open
    -- before deregistering the instances.
    timeout :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElbLoadBalancerConnectionDraining' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'awsElbLoadBalancerConnectionDraining_enabled' - Indicates whether connection draining is enabled for the load balancer.
--
-- 'timeout', 'awsElbLoadBalancerConnectionDraining_timeout' - The maximum time, in seconds, to keep the existing connections open
-- before deregistering the instances.
newAwsElbLoadBalancerConnectionDraining ::
  AwsElbLoadBalancerConnectionDraining
newAwsElbLoadBalancerConnectionDraining =
  AwsElbLoadBalancerConnectionDraining'
    { enabled =
        Prelude.Nothing,
      timeout = Prelude.Nothing
    }

-- | Indicates whether connection draining is enabled for the load balancer.
awsElbLoadBalancerConnectionDraining_enabled :: Lens.Lens' AwsElbLoadBalancerConnectionDraining (Prelude.Maybe Prelude.Bool)
awsElbLoadBalancerConnectionDraining_enabled = Lens.lens (\AwsElbLoadBalancerConnectionDraining' {enabled} -> enabled) (\s@AwsElbLoadBalancerConnectionDraining' {} a -> s {enabled = a} :: AwsElbLoadBalancerConnectionDraining)

-- | The maximum time, in seconds, to keep the existing connections open
-- before deregistering the instances.
awsElbLoadBalancerConnectionDraining_timeout :: Lens.Lens' AwsElbLoadBalancerConnectionDraining (Prelude.Maybe Prelude.Int)
awsElbLoadBalancerConnectionDraining_timeout = Lens.lens (\AwsElbLoadBalancerConnectionDraining' {timeout} -> timeout) (\s@AwsElbLoadBalancerConnectionDraining' {} a -> s {timeout = a} :: AwsElbLoadBalancerConnectionDraining)

instance
  Core.FromJSON
    AwsElbLoadBalancerConnectionDraining
  where
  parseJSON =
    Core.withObject
      "AwsElbLoadBalancerConnectionDraining"
      ( \x ->
          AwsElbLoadBalancerConnectionDraining'
            Prelude.<$> (x Core..:? "Enabled")
            Prelude.<*> (x Core..:? "Timeout")
      )

instance
  Prelude.Hashable
    AwsElbLoadBalancerConnectionDraining

instance
  Prelude.NFData
    AwsElbLoadBalancerConnectionDraining

instance
  Core.ToJSON
    AwsElbLoadBalancerConnectionDraining
  where
  toJSON AwsElbLoadBalancerConnectionDraining' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Enabled" Core..=) Prelude.<$> enabled,
            ("Timeout" Core..=) Prelude.<$> timeout
          ]
      )
