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
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53AutoNaming.Types.DnsConfig
import Network.AWS.Route53AutoNaming.Types.HealthCheckConfig
import Network.AWS.Route53AutoNaming.Types.HealthCheckCustomConfig
import Network.AWS.Route53AutoNaming.Types.ServiceType

-- | A complex type that contains information about a specified service.
--
-- /See:/ 'newServiceSummary' smart constructor.
data ServiceSummary = ServiceSummary'
  { -- | The number of instances that are currently associated with the service.
    -- Instances that were previously associated with the service but that are
    -- deleted aren\'t included in the count. The count might not reflect
    -- pending registrations and deregistrations.
    instanceCount :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) that Cloud Map assigns to the service
    -- when you create it.
    arn :: Prelude.Maybe Prelude.Text,
    -- | /Public DNS and HTTP namespaces only./ Settings for an optional health
    -- check. If you specify settings for a health check, Cloud Map associates
    -- the health check with the records that you specify in @DnsConfig@.
    healthCheckConfig :: Prelude.Maybe HealthCheckConfig,
    -- | The date and time that the service was created.
    createDate :: Prelude.Maybe Core.POSIX,
    -- | Information about an optional custom health check. A custom health
    -- check, which requires that you use a third-party health checker to
    -- evaluate the health of your resources, is useful in the following
    -- circumstances:
    --
    -- -   You can\'t use a health check that\'s defined by @HealthCheckConfig@
    --     because the resource isn\'t available over the internet. For
    --     example, you can use a custom health check when the instance is in
    --     an Amazon VPC. (To check the health of resources in a VPC, the
    --     health checker must also be in the VPC.)
    --
    -- -   You want to use a third-party health checker regardless of where
    --     your resources are located.
    --
    -- If you specify a health check configuration, you can specify either
    -- @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
    healthCheckCustomConfig :: Prelude.Maybe HealthCheckCustomConfig,
    -- | The name of the service.
    name :: Prelude.Maybe Prelude.Text,
    -- | The ID that Cloud Map assigned to the service when you created it.
    id :: Prelude.Maybe Prelude.Text,
    -- | Describes the systems that can be used to discover the service
    -- instances.
    --
    -- [DNS_HTTP]
    --     The service instances can be discovered using either DNS queries or
    --     the @DiscoverInstances@ API operation.
    --
    -- [HTTP]
    --     The service instances can only be discovered using the
    --     @DiscoverInstances@ API operation.
    --
    -- [DNS]
    --     Reserved.
    type' :: Prelude.Maybe ServiceType,
    -- | Information about the Route 53 DNS records that you want Cloud Map to
    -- create when you register an instance.
    dnsConfig :: Prelude.Maybe DnsConfig,
    -- | The description that you specify when you create the service.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceCount', 'serviceSummary_instanceCount' - The number of instances that are currently associated with the service.
-- Instances that were previously associated with the service but that are
-- deleted aren\'t included in the count. The count might not reflect
-- pending registrations and deregistrations.
--
-- 'arn', 'serviceSummary_arn' - The Amazon Resource Name (ARN) that Cloud Map assigns to the service
-- when you create it.
--
-- 'healthCheckConfig', 'serviceSummary_healthCheckConfig' - /Public DNS and HTTP namespaces only./ Settings for an optional health
-- check. If you specify settings for a health check, Cloud Map associates
-- the health check with the records that you specify in @DnsConfig@.
--
-- 'createDate', 'serviceSummary_createDate' - The date and time that the service was created.
--
-- 'healthCheckCustomConfig', 'serviceSummary_healthCheckCustomConfig' - Information about an optional custom health check. A custom health
-- check, which requires that you use a third-party health checker to
-- evaluate the health of your resources, is useful in the following
-- circumstances:
--
-- -   You can\'t use a health check that\'s defined by @HealthCheckConfig@
--     because the resource isn\'t available over the internet. For
--     example, you can use a custom health check when the instance is in
--     an Amazon VPC. (To check the health of resources in a VPC, the
--     health checker must also be in the VPC.)
--
-- -   You want to use a third-party health checker regardless of where
--     your resources are located.
--
-- If you specify a health check configuration, you can specify either
-- @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
--
-- 'name', 'serviceSummary_name' - The name of the service.
--
-- 'id', 'serviceSummary_id' - The ID that Cloud Map assigned to the service when you created it.
--
-- 'type'', 'serviceSummary_type' - Describes the systems that can be used to discover the service
-- instances.
--
-- [DNS_HTTP]
--     The service instances can be discovered using either DNS queries or
--     the @DiscoverInstances@ API operation.
--
-- [HTTP]
--     The service instances can only be discovered using the
--     @DiscoverInstances@ API operation.
--
-- [DNS]
--     Reserved.
--
-- 'dnsConfig', 'serviceSummary_dnsConfig' - Information about the Route 53 DNS records that you want Cloud Map to
-- create when you register an instance.
--
-- 'description', 'serviceSummary_description' - The description that you specify when you create the service.
newServiceSummary ::
  ServiceSummary
newServiceSummary =
  ServiceSummary'
    { instanceCount = Prelude.Nothing,
      arn = Prelude.Nothing,
      healthCheckConfig = Prelude.Nothing,
      createDate = Prelude.Nothing,
      healthCheckCustomConfig = Prelude.Nothing,
      name = Prelude.Nothing,
      id = Prelude.Nothing,
      type' = Prelude.Nothing,
      dnsConfig = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The number of instances that are currently associated with the service.
-- Instances that were previously associated with the service but that are
-- deleted aren\'t included in the count. The count might not reflect
-- pending registrations and deregistrations.
serviceSummary_instanceCount :: Lens.Lens' ServiceSummary (Prelude.Maybe Prelude.Int)
serviceSummary_instanceCount = Lens.lens (\ServiceSummary' {instanceCount} -> instanceCount) (\s@ServiceSummary' {} a -> s {instanceCount = a} :: ServiceSummary)

-- | The Amazon Resource Name (ARN) that Cloud Map assigns to the service
-- when you create it.
serviceSummary_arn :: Lens.Lens' ServiceSummary (Prelude.Maybe Prelude.Text)
serviceSummary_arn = Lens.lens (\ServiceSummary' {arn} -> arn) (\s@ServiceSummary' {} a -> s {arn = a} :: ServiceSummary)

-- | /Public DNS and HTTP namespaces only./ Settings for an optional health
-- check. If you specify settings for a health check, Cloud Map associates
-- the health check with the records that you specify in @DnsConfig@.
serviceSummary_healthCheckConfig :: Lens.Lens' ServiceSummary (Prelude.Maybe HealthCheckConfig)
serviceSummary_healthCheckConfig = Lens.lens (\ServiceSummary' {healthCheckConfig} -> healthCheckConfig) (\s@ServiceSummary' {} a -> s {healthCheckConfig = a} :: ServiceSummary)

-- | The date and time that the service was created.
serviceSummary_createDate :: Lens.Lens' ServiceSummary (Prelude.Maybe Prelude.UTCTime)
serviceSummary_createDate = Lens.lens (\ServiceSummary' {createDate} -> createDate) (\s@ServiceSummary' {} a -> s {createDate = a} :: ServiceSummary) Prelude.. Lens.mapping Core._Time

-- | Information about an optional custom health check. A custom health
-- check, which requires that you use a third-party health checker to
-- evaluate the health of your resources, is useful in the following
-- circumstances:
--
-- -   You can\'t use a health check that\'s defined by @HealthCheckConfig@
--     because the resource isn\'t available over the internet. For
--     example, you can use a custom health check when the instance is in
--     an Amazon VPC. (To check the health of resources in a VPC, the
--     health checker must also be in the VPC.)
--
-- -   You want to use a third-party health checker regardless of where
--     your resources are located.
--
-- If you specify a health check configuration, you can specify either
-- @HealthCheckCustomConfig@ or @HealthCheckConfig@ but not both.
serviceSummary_healthCheckCustomConfig :: Lens.Lens' ServiceSummary (Prelude.Maybe HealthCheckCustomConfig)
serviceSummary_healthCheckCustomConfig = Lens.lens (\ServiceSummary' {healthCheckCustomConfig} -> healthCheckCustomConfig) (\s@ServiceSummary' {} a -> s {healthCheckCustomConfig = a} :: ServiceSummary)

-- | The name of the service.
serviceSummary_name :: Lens.Lens' ServiceSummary (Prelude.Maybe Prelude.Text)
serviceSummary_name = Lens.lens (\ServiceSummary' {name} -> name) (\s@ServiceSummary' {} a -> s {name = a} :: ServiceSummary)

-- | The ID that Cloud Map assigned to the service when you created it.
serviceSummary_id :: Lens.Lens' ServiceSummary (Prelude.Maybe Prelude.Text)
serviceSummary_id = Lens.lens (\ServiceSummary' {id} -> id) (\s@ServiceSummary' {} a -> s {id = a} :: ServiceSummary)

-- | Describes the systems that can be used to discover the service
-- instances.
--
-- [DNS_HTTP]
--     The service instances can be discovered using either DNS queries or
--     the @DiscoverInstances@ API operation.
--
-- [HTTP]
--     The service instances can only be discovered using the
--     @DiscoverInstances@ API operation.
--
-- [DNS]
--     Reserved.
serviceSummary_type :: Lens.Lens' ServiceSummary (Prelude.Maybe ServiceType)
serviceSummary_type = Lens.lens (\ServiceSummary' {type'} -> type') (\s@ServiceSummary' {} a -> s {type' = a} :: ServiceSummary)

-- | Information about the Route 53 DNS records that you want Cloud Map to
-- create when you register an instance.
serviceSummary_dnsConfig :: Lens.Lens' ServiceSummary (Prelude.Maybe DnsConfig)
serviceSummary_dnsConfig = Lens.lens (\ServiceSummary' {dnsConfig} -> dnsConfig) (\s@ServiceSummary' {} a -> s {dnsConfig = a} :: ServiceSummary)

-- | The description that you specify when you create the service.
serviceSummary_description :: Lens.Lens' ServiceSummary (Prelude.Maybe Prelude.Text)
serviceSummary_description = Lens.lens (\ServiceSummary' {description} -> description) (\s@ServiceSummary' {} a -> s {description = a} :: ServiceSummary)

instance Core.FromJSON ServiceSummary where
  parseJSON =
    Core.withObject
      "ServiceSummary"
      ( \x ->
          ServiceSummary'
            Prelude.<$> (x Core..:? "InstanceCount")
            Prelude.<*> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "HealthCheckConfig")
            Prelude.<*> (x Core..:? "CreateDate")
            Prelude.<*> (x Core..:? "HealthCheckCustomConfig")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "Id")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "DnsConfig")
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable ServiceSummary

instance Prelude.NFData ServiceSummary
