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
-- Module      : Network.AWS.SecurityHub.Types.AwsElbLoadBalancerConnectionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElbLoadBalancerConnectionSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains connection settings for the load balancer.
--
-- /See:/ 'newAwsElbLoadBalancerConnectionSettings' smart constructor.
data AwsElbLoadBalancerConnectionSettings = AwsElbLoadBalancerConnectionSettings'
  { -- | The time, in seconds, that the connection can be idle (no data is sent
    -- over the connection) before it is closed by the load balancer.
    idleTimeout :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElbLoadBalancerConnectionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'idleTimeout', 'awsElbLoadBalancerConnectionSettings_idleTimeout' - The time, in seconds, that the connection can be idle (no data is sent
-- over the connection) before it is closed by the load balancer.
newAwsElbLoadBalancerConnectionSettings ::
  AwsElbLoadBalancerConnectionSettings
newAwsElbLoadBalancerConnectionSettings =
  AwsElbLoadBalancerConnectionSettings'
    { idleTimeout =
        Prelude.Nothing
    }

-- | The time, in seconds, that the connection can be idle (no data is sent
-- over the connection) before it is closed by the load balancer.
awsElbLoadBalancerConnectionSettings_idleTimeout :: Lens.Lens' AwsElbLoadBalancerConnectionSettings (Prelude.Maybe Prelude.Int)
awsElbLoadBalancerConnectionSettings_idleTimeout = Lens.lens (\AwsElbLoadBalancerConnectionSettings' {idleTimeout} -> idleTimeout) (\s@AwsElbLoadBalancerConnectionSettings' {} a -> s {idleTimeout = a} :: AwsElbLoadBalancerConnectionSettings)

instance
  Core.FromJSON
    AwsElbLoadBalancerConnectionSettings
  where
  parseJSON =
    Core.withObject
      "AwsElbLoadBalancerConnectionSettings"
      ( \x ->
          AwsElbLoadBalancerConnectionSettings'
            Prelude.<$> (x Core..:? "IdleTimeout")
      )

instance
  Prelude.Hashable
    AwsElbLoadBalancerConnectionSettings

instance
  Prelude.NFData
    AwsElbLoadBalancerConnectionSettings

instance
  Core.ToJSON
    AwsElbLoadBalancerConnectionSettings
  where
  toJSON AwsElbLoadBalancerConnectionSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [("IdleTimeout" Core..=) Prelude.<$> idleTimeout]
      )
