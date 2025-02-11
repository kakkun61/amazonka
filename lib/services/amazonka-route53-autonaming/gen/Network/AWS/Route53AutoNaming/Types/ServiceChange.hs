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
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceChange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53AutoNaming.Types.DnsConfigChange
import Network.AWS.Route53AutoNaming.Types.HealthCheckConfig

-- | A complex type that contains changes to an existing service.
--
-- /See:/ 'newServiceChange' smart constructor.
data ServiceChange = ServiceChange'
  { -- | /Public DNS and HTTP namespaces only./ Settings for an optional health
    -- check. If you specify settings for a health check, Cloud Map associates
    -- the health check with the records that you specify in @DnsConfig@.
    healthCheckConfig :: Prelude.Maybe HealthCheckConfig,
    -- | Information about the Route 53 DNS records that you want Cloud Map to
    -- create when you register an instance.
    dnsConfig :: Prelude.Maybe DnsConfigChange,
    -- | A description for the service.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceChange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'healthCheckConfig', 'serviceChange_healthCheckConfig' - /Public DNS and HTTP namespaces only./ Settings for an optional health
-- check. If you specify settings for a health check, Cloud Map associates
-- the health check with the records that you specify in @DnsConfig@.
--
-- 'dnsConfig', 'serviceChange_dnsConfig' - Information about the Route 53 DNS records that you want Cloud Map to
-- create when you register an instance.
--
-- 'description', 'serviceChange_description' - A description for the service.
newServiceChange ::
  ServiceChange
newServiceChange =
  ServiceChange'
    { healthCheckConfig = Prelude.Nothing,
      dnsConfig = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | /Public DNS and HTTP namespaces only./ Settings for an optional health
-- check. If you specify settings for a health check, Cloud Map associates
-- the health check with the records that you specify in @DnsConfig@.
serviceChange_healthCheckConfig :: Lens.Lens' ServiceChange (Prelude.Maybe HealthCheckConfig)
serviceChange_healthCheckConfig = Lens.lens (\ServiceChange' {healthCheckConfig} -> healthCheckConfig) (\s@ServiceChange' {} a -> s {healthCheckConfig = a} :: ServiceChange)

-- | Information about the Route 53 DNS records that you want Cloud Map to
-- create when you register an instance.
serviceChange_dnsConfig :: Lens.Lens' ServiceChange (Prelude.Maybe DnsConfigChange)
serviceChange_dnsConfig = Lens.lens (\ServiceChange' {dnsConfig} -> dnsConfig) (\s@ServiceChange' {} a -> s {dnsConfig = a} :: ServiceChange)

-- | A description for the service.
serviceChange_description :: Lens.Lens' ServiceChange (Prelude.Maybe Prelude.Text)
serviceChange_description = Lens.lens (\ServiceChange' {description} -> description) (\s@ServiceChange' {} a -> s {description = a} :: ServiceChange)

instance Prelude.Hashable ServiceChange

instance Prelude.NFData ServiceChange

instance Core.ToJSON ServiceChange where
  toJSON ServiceChange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("HealthCheckConfig" Core..=)
              Prelude.<$> healthCheckConfig,
            ("DnsConfig" Core..=) Prelude.<$> dnsConfig,
            ("Description" Core..=) Prelude.<$> description
          ]
      )
