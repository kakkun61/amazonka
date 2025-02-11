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
-- Module      : Network.AWS.AppMesh.Types.ServiceDiscovery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.ServiceDiscovery where

import Network.AWS.AppMesh.Types.AwsCloudMapServiceDiscovery
import Network.AWS.AppMesh.Types.DnsServiceDiscovery
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the service discovery information for a
-- virtual node.
--
-- /See:/ 'newServiceDiscovery' smart constructor.
data ServiceDiscovery = ServiceDiscovery'
  { -- | Specifies any Cloud Map information for the virtual node.
    awsCloudMap :: Prelude.Maybe AwsCloudMapServiceDiscovery,
    -- | Specifies the DNS information for the virtual node.
    dns :: Prelude.Maybe DnsServiceDiscovery
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceDiscovery' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsCloudMap', 'serviceDiscovery_awsCloudMap' - Specifies any Cloud Map information for the virtual node.
--
-- 'dns', 'serviceDiscovery_dns' - Specifies the DNS information for the virtual node.
newServiceDiscovery ::
  ServiceDiscovery
newServiceDiscovery =
  ServiceDiscovery'
    { awsCloudMap = Prelude.Nothing,
      dns = Prelude.Nothing
    }

-- | Specifies any Cloud Map information for the virtual node.
serviceDiscovery_awsCloudMap :: Lens.Lens' ServiceDiscovery (Prelude.Maybe AwsCloudMapServiceDiscovery)
serviceDiscovery_awsCloudMap = Lens.lens (\ServiceDiscovery' {awsCloudMap} -> awsCloudMap) (\s@ServiceDiscovery' {} a -> s {awsCloudMap = a} :: ServiceDiscovery)

-- | Specifies the DNS information for the virtual node.
serviceDiscovery_dns :: Lens.Lens' ServiceDiscovery (Prelude.Maybe DnsServiceDiscovery)
serviceDiscovery_dns = Lens.lens (\ServiceDiscovery' {dns} -> dns) (\s@ServiceDiscovery' {} a -> s {dns = a} :: ServiceDiscovery)

instance Core.FromJSON ServiceDiscovery where
  parseJSON =
    Core.withObject
      "ServiceDiscovery"
      ( \x ->
          ServiceDiscovery'
            Prelude.<$> (x Core..:? "awsCloudMap")
            Prelude.<*> (x Core..:? "dns")
      )

instance Prelude.Hashable ServiceDiscovery

instance Prelude.NFData ServiceDiscovery

instance Core.ToJSON ServiceDiscovery where
  toJSON ServiceDiscovery' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("awsCloudMap" Core..=) Prelude.<$> awsCloudMap,
            ("dns" Core..=) Prelude.<$> dns
          ]
      )
