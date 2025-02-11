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
-- Module      : Network.AWS.EC2.Types.AnalysisLoadBalancerListener
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AnalysisLoadBalancerListener where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a load balancer listener.
--
-- /See:/ 'newAnalysisLoadBalancerListener' smart constructor.
data AnalysisLoadBalancerListener = AnalysisLoadBalancerListener'
  { -- | [Classic Load Balancers] The back-end port for the listener.
    instancePort :: Prelude.Maybe Prelude.Natural,
    -- | The port on which the load balancer is listening.
    loadBalancerPort :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnalysisLoadBalancerListener' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instancePort', 'analysisLoadBalancerListener_instancePort' - [Classic Load Balancers] The back-end port for the listener.
--
-- 'loadBalancerPort', 'analysisLoadBalancerListener_loadBalancerPort' - The port on which the load balancer is listening.
newAnalysisLoadBalancerListener ::
  AnalysisLoadBalancerListener
newAnalysisLoadBalancerListener =
  AnalysisLoadBalancerListener'
    { instancePort =
        Prelude.Nothing,
      loadBalancerPort = Prelude.Nothing
    }

-- | [Classic Load Balancers] The back-end port for the listener.
analysisLoadBalancerListener_instancePort :: Lens.Lens' AnalysisLoadBalancerListener (Prelude.Maybe Prelude.Natural)
analysisLoadBalancerListener_instancePort = Lens.lens (\AnalysisLoadBalancerListener' {instancePort} -> instancePort) (\s@AnalysisLoadBalancerListener' {} a -> s {instancePort = a} :: AnalysisLoadBalancerListener)

-- | The port on which the load balancer is listening.
analysisLoadBalancerListener_loadBalancerPort :: Lens.Lens' AnalysisLoadBalancerListener (Prelude.Maybe Prelude.Natural)
analysisLoadBalancerListener_loadBalancerPort = Lens.lens (\AnalysisLoadBalancerListener' {loadBalancerPort} -> loadBalancerPort) (\s@AnalysisLoadBalancerListener' {} a -> s {loadBalancerPort = a} :: AnalysisLoadBalancerListener)

instance Core.FromXML AnalysisLoadBalancerListener where
  parseXML x =
    AnalysisLoadBalancerListener'
      Prelude.<$> (x Core..@? "instancePort")
      Prelude.<*> (x Core..@? "loadBalancerPort")

instance
  Prelude.Hashable
    AnalysisLoadBalancerListener

instance Prelude.NFData AnalysisLoadBalancerListener
