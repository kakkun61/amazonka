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
-- Module      : Network.AWS.SecurityHub.Types.AwsElbLoadBalancerInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElbLoadBalancerInstance where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about an EC2 instance for a load balancer.
--
-- /See:/ 'newAwsElbLoadBalancerInstance' smart constructor.
data AwsElbLoadBalancerInstance = AwsElbLoadBalancerInstance'
  { -- | The instance identifier.
    instanceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElbLoadBalancerInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'awsElbLoadBalancerInstance_instanceId' - The instance identifier.
newAwsElbLoadBalancerInstance ::
  AwsElbLoadBalancerInstance
newAwsElbLoadBalancerInstance =
  AwsElbLoadBalancerInstance'
    { instanceId =
        Prelude.Nothing
    }

-- | The instance identifier.
awsElbLoadBalancerInstance_instanceId :: Lens.Lens' AwsElbLoadBalancerInstance (Prelude.Maybe Prelude.Text)
awsElbLoadBalancerInstance_instanceId = Lens.lens (\AwsElbLoadBalancerInstance' {instanceId} -> instanceId) (\s@AwsElbLoadBalancerInstance' {} a -> s {instanceId = a} :: AwsElbLoadBalancerInstance)

instance Core.FromJSON AwsElbLoadBalancerInstance where
  parseJSON =
    Core.withObject
      "AwsElbLoadBalancerInstance"
      ( \x ->
          AwsElbLoadBalancerInstance'
            Prelude.<$> (x Core..:? "InstanceId")
      )

instance Prelude.Hashable AwsElbLoadBalancerInstance

instance Prelude.NFData AwsElbLoadBalancerInstance

instance Core.ToJSON AwsElbLoadBalancerInstance where
  toJSON AwsElbLoadBalancerInstance' {..} =
    Core.object
      ( Prelude.catMaybes
          [("InstanceId" Core..=) Prelude.<$> instanceId]
      )
