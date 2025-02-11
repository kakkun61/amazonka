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
-- Module      : Network.AWS.ComputeOptimizer.Types.InstanceRecommendation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ComputeOptimizer.Types.InstanceRecommendation where

import Network.AWS.ComputeOptimizer.Types.Finding
import Network.AWS.ComputeOptimizer.Types.InstanceRecommendationFindingReasonCode
import Network.AWS.ComputeOptimizer.Types.InstanceRecommendationOption
import Network.AWS.ComputeOptimizer.Types.RecommendationSource
import Network.AWS.ComputeOptimizer.Types.UtilizationMetric
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes an Amazon EC2 instance recommendation.
--
-- /See:/ 'newInstanceRecommendation' smart constructor.
data InstanceRecommendation = InstanceRecommendation'
  { -- | The Amazon Resource Name (ARN) of the current instance.
    instanceArn :: Prelude.Maybe Prelude.Text,
    -- | The finding classification of the instance.
    --
    -- Findings for instances include:
    --
    -- -   __@Underprovisioned@__ —An instance is considered under-provisioned
    --     when at least one specification of your instance, such as CPU,
    --     memory, or network, does not meet the performance requirements of
    --     your workload. Under-provisioned instances may lead to poor
    --     application performance.
    --
    -- -   __@Overprovisioned@__ —An instance is considered over-provisioned
    --     when at least one specification of your instance, such as CPU,
    --     memory, or network, can be sized down while still meeting the
    --     performance requirements of your workload, and no specification is
    --     under-provisioned. Over-provisioned instances may lead to
    --     unnecessary infrastructure cost.
    --
    -- -   __@Optimized@__ —An instance is considered optimized when all
    --     specifications of your instance, such as CPU, memory, and network,
    --     meet the performance requirements of your workload and is not over
    --     provisioned. For optimized resources, Compute Optimizer might
    --     recommend a new generation instance type.
    finding :: Prelude.Maybe Finding,
    -- | The instance type of the current instance.
    currentInstanceType :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of when the instance recommendation was last refreshed.
    lastRefreshTimestamp :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Web Services account ID of the instance.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The reason for the finding classification of the instance.
    --
    -- Finding reason codes for instances include:
    --
    -- -   __@CPUOverprovisioned@__ — The instance’s CPU configuration can be
    --     sized down while still meeting the performance requirements of your
    --     workload. This is identified by analyzing the @CPUUtilization@
    --     metric of the current instance during the look-back period.
    --
    -- -   __@CPUUnderprovisioned@__ — The instance’s CPU configuration
    --     doesn\'t meet the performance requirements of your workload and
    --     there is an alternative instance type that provides better CPU
    --     performance. This is identified by analyzing the @CPUUtilization@
    --     metric of the current instance during the look-back period.
    --
    -- -   __@MemoryOverprovisioned@__ — The instance’s memory configuration
    --     can be sized down while still meeting the performance requirements
    --     of your workload. This is identified by analyzing the memory
    --     utilization metric of the current instance during the look-back
    --     period.
    --
    -- -   __@MemoryUnderprovisioned@__ — The instance’s memory configuration
    --     doesn\'t meet the performance requirements of your workload and
    --     there is an alternative instance type that provides better memory
    --     performance. This is identified by analyzing the memory utilization
    --     metric of the current instance during the look-back period.
    --
    --     Memory utilization is analyzed only for resources that have the
    --     unified CloudWatch agent installed on them. For more information,
    --     see
    --     <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent Enabling memory utilization with the Amazon CloudWatch Agent>
    --     in the /Compute Optimizer User Guide/. On Linux instances, Compute
    --     Optimizer analyses the @mem_used_percent@ metric in the @CWAgent@
    --     namespace, or the legacy @MemoryUtilization@ metric in the
    --     @System\/Linux@ namespace. On Windows instances, Compute Optimizer
    --     analyses the @Memory % Committed Bytes In Use@ metric in the
    --     @CWAgent@ namespace.
    --
    -- -   __@EBSThroughputOverprovisioned@__ — The instance’s EBS throughput
    --     configuration can be sized down while still meeting the performance
    --     requirements of your workload. This is identified by analyzing the
    --     @VolumeReadOps@ and @VolumeWriteOps@ metrics of EBS volumes attached
    --     to the current instance during the look-back period.
    --
    -- -   __@EBSThroughputUnderprovisioned@__ — The instance’s EBS throughput
    --     configuration doesn\'t meet the performance requirements of your
    --     workload and there is an alternative instance type that provides
    --     better EBS throughput performance. This is identified by analyzing
    --     the @VolumeReadOps@ and @VolumeWriteOps@ metrics of EBS volumes
    --     attached to the current instance during the look-back period.
    --
    -- -   __@EBSIOPSOverprovisioned@__ — The instance’s EBS IOPS configuration
    --     can be sized down while still meeting the performance requirements
    --     of your workload. This is identified by analyzing the
    --     @VolumeReadBytes@ and @VolumeWriteBytes@ metric of EBS volumes
    --     attached to the current instance during the look-back period.
    --
    -- -   __@EBSIOPSUnderprovisioned@__ — The instance’s EBS IOPS
    --     configuration doesn\'t meet the performance requirements of your
    --     workload and there is an alternative instance type that provides
    --     better EBS IOPS performance. This is identified by analyzing the
    --     @VolumeReadBytes@ and @VolumeWriteBytes@ metric of EBS volumes
    --     attached to the current instance during the look-back period.
    --
    -- -   __@NetworkBandwidthOverprovisioned@__ — The instance’s network
    --     bandwidth configuration can be sized down while still meeting the
    --     performance requirements of your workload. This is identified by
    --     analyzing the @NetworkIn@ and @NetworkOut@ metrics of the current
    --     instance during the look-back period.
    --
    -- -   __@NetworkBandwidthUnderprovisioned@__ — The instance’s network
    --     bandwidth configuration doesn\'t meet the performance requirements
    --     of your workload and there is an alternative instance type that
    --     provides better network bandwidth performance. This is identified by
    --     analyzing the @NetworkIn@ and @NetworkOut@ metrics of the current
    --     instance during the look-back period. This finding reason happens
    --     when the @NetworkIn@ or @NetworkOut@ performance of an instance is
    --     impacted.
    --
    -- -   __@NetworkPPSOverprovisioned@__ — The instance’s network PPS
    --     (packets per second) configuration can be sized down while still
    --     meeting the performance requirements of your workload. This is
    --     identified by analyzing the @NetworkPacketsIn@ and
    --     @NetworkPacketsIn@ metrics of the current instance during the
    --     look-back period.
    --
    -- -   __@NetworkPPSUnderprovisioned@__ — The instance’s network PPS
    --     (packets per second) configuration doesn\'t meet the performance
    --     requirements of your workload and there is an alternative instance
    --     type that provides better network PPS performance. This is
    --     identified by analyzing the @NetworkPacketsIn@ and
    --     @NetworkPacketsIn@ metrics of the current instance during the
    --     look-back period.
    --
    -- -   __@DiskIOPSOverprovisioned@__ — The instance’s disk IOPS
    --     configuration can be sized down while still meeting the performance
    --     requirements of your workload. This is identified by analyzing the
    --     @DiskReadOps@ and @DiskWriteOps@ metrics of the current instance
    --     during the look-back period.
    --
    -- -   __@DiskIOPSUnderprovisioned@__ — The instance’s disk IOPS
    --     configuration doesn\'t meet the performance requirements of your
    --     workload and there is an alternative instance type that provides
    --     better disk IOPS performance. This is identified by analyzing the
    --     @DiskReadOps@ and @DiskWriteOps@ metrics of the current instance
    --     during the look-back period.
    --
    -- -   __@DiskThroughputOverprovisioned@__ — The instance’s disk throughput
    --     configuration can be sized down while still meeting the performance
    --     requirements of your workload. This is identified by analyzing the
    --     @DiskReadBytes@ and @DiskWriteBytes@ metrics of the current instance
    --     during the look-back period.
    --
    -- -   __@DiskThroughputUnderprovisioned@__ — The instance’s disk
    --     throughput configuration doesn\'t meet the performance requirements
    --     of your workload and there is an alternative instance type that
    --     provides better disk throughput performance. This is identified by
    --     analyzing the @DiskReadBytes@ and @DiskWriteBytes@ metrics of the
    --     current instance during the look-back period.
    --
    -- For more information about instance metrics, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html List the available CloudWatch metrics for your instances>
    -- in the /Amazon Elastic Compute Cloud User Guide/. For more information
    -- about EBS volume metrics, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html Amazon CloudWatch metrics for Amazon EBS>
    -- in the /Amazon Elastic Compute Cloud User Guide/.
    findingReasonCodes :: Prelude.Maybe [InstanceRecommendationFindingReasonCode],
    -- | An array of objects that describe the source resource of the
    -- recommendation.
    recommendationSources :: Prelude.Maybe [RecommendationSource],
    -- | An array of objects that describe the utilization metrics of the
    -- instance.
    utilizationMetrics :: Prelude.Maybe [UtilizationMetric],
    -- | The name of the current instance.
    instanceName :: Prelude.Maybe Prelude.Text,
    -- | An array of objects that describe the recommendation options for the
    -- instance.
    recommendationOptions :: Prelude.Maybe [InstanceRecommendationOption],
    -- | The number of days for which utilization metrics were analyzed for the
    -- instance.
    lookBackPeriodInDays :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceRecommendation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'instanceRecommendation_instanceArn' - The Amazon Resource Name (ARN) of the current instance.
--
-- 'finding', 'instanceRecommendation_finding' - The finding classification of the instance.
--
-- Findings for instances include:
--
-- -   __@Underprovisioned@__ —An instance is considered under-provisioned
--     when at least one specification of your instance, such as CPU,
--     memory, or network, does not meet the performance requirements of
--     your workload. Under-provisioned instances may lead to poor
--     application performance.
--
-- -   __@Overprovisioned@__ —An instance is considered over-provisioned
--     when at least one specification of your instance, such as CPU,
--     memory, or network, can be sized down while still meeting the
--     performance requirements of your workload, and no specification is
--     under-provisioned. Over-provisioned instances may lead to
--     unnecessary infrastructure cost.
--
-- -   __@Optimized@__ —An instance is considered optimized when all
--     specifications of your instance, such as CPU, memory, and network,
--     meet the performance requirements of your workload and is not over
--     provisioned. For optimized resources, Compute Optimizer might
--     recommend a new generation instance type.
--
-- 'currentInstanceType', 'instanceRecommendation_currentInstanceType' - The instance type of the current instance.
--
-- 'lastRefreshTimestamp', 'instanceRecommendation_lastRefreshTimestamp' - The timestamp of when the instance recommendation was last refreshed.
--
-- 'accountId', 'instanceRecommendation_accountId' - The Amazon Web Services account ID of the instance.
--
-- 'findingReasonCodes', 'instanceRecommendation_findingReasonCodes' - The reason for the finding classification of the instance.
--
-- Finding reason codes for instances include:
--
-- -   __@CPUOverprovisioned@__ — The instance’s CPU configuration can be
--     sized down while still meeting the performance requirements of your
--     workload. This is identified by analyzing the @CPUUtilization@
--     metric of the current instance during the look-back period.
--
-- -   __@CPUUnderprovisioned@__ — The instance’s CPU configuration
--     doesn\'t meet the performance requirements of your workload and
--     there is an alternative instance type that provides better CPU
--     performance. This is identified by analyzing the @CPUUtilization@
--     metric of the current instance during the look-back period.
--
-- -   __@MemoryOverprovisioned@__ — The instance’s memory configuration
--     can be sized down while still meeting the performance requirements
--     of your workload. This is identified by analyzing the memory
--     utilization metric of the current instance during the look-back
--     period.
--
-- -   __@MemoryUnderprovisioned@__ — The instance’s memory configuration
--     doesn\'t meet the performance requirements of your workload and
--     there is an alternative instance type that provides better memory
--     performance. This is identified by analyzing the memory utilization
--     metric of the current instance during the look-back period.
--
--     Memory utilization is analyzed only for resources that have the
--     unified CloudWatch agent installed on them. For more information,
--     see
--     <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent Enabling memory utilization with the Amazon CloudWatch Agent>
--     in the /Compute Optimizer User Guide/. On Linux instances, Compute
--     Optimizer analyses the @mem_used_percent@ metric in the @CWAgent@
--     namespace, or the legacy @MemoryUtilization@ metric in the
--     @System\/Linux@ namespace. On Windows instances, Compute Optimizer
--     analyses the @Memory % Committed Bytes In Use@ metric in the
--     @CWAgent@ namespace.
--
-- -   __@EBSThroughputOverprovisioned@__ — The instance’s EBS throughput
--     configuration can be sized down while still meeting the performance
--     requirements of your workload. This is identified by analyzing the
--     @VolumeReadOps@ and @VolumeWriteOps@ metrics of EBS volumes attached
--     to the current instance during the look-back period.
--
-- -   __@EBSThroughputUnderprovisioned@__ — The instance’s EBS throughput
--     configuration doesn\'t meet the performance requirements of your
--     workload and there is an alternative instance type that provides
--     better EBS throughput performance. This is identified by analyzing
--     the @VolumeReadOps@ and @VolumeWriteOps@ metrics of EBS volumes
--     attached to the current instance during the look-back period.
--
-- -   __@EBSIOPSOverprovisioned@__ — The instance’s EBS IOPS configuration
--     can be sized down while still meeting the performance requirements
--     of your workload. This is identified by analyzing the
--     @VolumeReadBytes@ and @VolumeWriteBytes@ metric of EBS volumes
--     attached to the current instance during the look-back period.
--
-- -   __@EBSIOPSUnderprovisioned@__ — The instance’s EBS IOPS
--     configuration doesn\'t meet the performance requirements of your
--     workload and there is an alternative instance type that provides
--     better EBS IOPS performance. This is identified by analyzing the
--     @VolumeReadBytes@ and @VolumeWriteBytes@ metric of EBS volumes
--     attached to the current instance during the look-back period.
--
-- -   __@NetworkBandwidthOverprovisioned@__ — The instance’s network
--     bandwidth configuration can be sized down while still meeting the
--     performance requirements of your workload. This is identified by
--     analyzing the @NetworkIn@ and @NetworkOut@ metrics of the current
--     instance during the look-back period.
--
-- -   __@NetworkBandwidthUnderprovisioned@__ — The instance’s network
--     bandwidth configuration doesn\'t meet the performance requirements
--     of your workload and there is an alternative instance type that
--     provides better network bandwidth performance. This is identified by
--     analyzing the @NetworkIn@ and @NetworkOut@ metrics of the current
--     instance during the look-back period. This finding reason happens
--     when the @NetworkIn@ or @NetworkOut@ performance of an instance is
--     impacted.
--
-- -   __@NetworkPPSOverprovisioned@__ — The instance’s network PPS
--     (packets per second) configuration can be sized down while still
--     meeting the performance requirements of your workload. This is
--     identified by analyzing the @NetworkPacketsIn@ and
--     @NetworkPacketsIn@ metrics of the current instance during the
--     look-back period.
--
-- -   __@NetworkPPSUnderprovisioned@__ — The instance’s network PPS
--     (packets per second) configuration doesn\'t meet the performance
--     requirements of your workload and there is an alternative instance
--     type that provides better network PPS performance. This is
--     identified by analyzing the @NetworkPacketsIn@ and
--     @NetworkPacketsIn@ metrics of the current instance during the
--     look-back period.
--
-- -   __@DiskIOPSOverprovisioned@__ — The instance’s disk IOPS
--     configuration can be sized down while still meeting the performance
--     requirements of your workload. This is identified by analyzing the
--     @DiskReadOps@ and @DiskWriteOps@ metrics of the current instance
--     during the look-back period.
--
-- -   __@DiskIOPSUnderprovisioned@__ — The instance’s disk IOPS
--     configuration doesn\'t meet the performance requirements of your
--     workload and there is an alternative instance type that provides
--     better disk IOPS performance. This is identified by analyzing the
--     @DiskReadOps@ and @DiskWriteOps@ metrics of the current instance
--     during the look-back period.
--
-- -   __@DiskThroughputOverprovisioned@__ — The instance’s disk throughput
--     configuration can be sized down while still meeting the performance
--     requirements of your workload. This is identified by analyzing the
--     @DiskReadBytes@ and @DiskWriteBytes@ metrics of the current instance
--     during the look-back period.
--
-- -   __@DiskThroughputUnderprovisioned@__ — The instance’s disk
--     throughput configuration doesn\'t meet the performance requirements
--     of your workload and there is an alternative instance type that
--     provides better disk throughput performance. This is identified by
--     analyzing the @DiskReadBytes@ and @DiskWriteBytes@ metrics of the
--     current instance during the look-back period.
--
-- For more information about instance metrics, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html List the available CloudWatch metrics for your instances>
-- in the /Amazon Elastic Compute Cloud User Guide/. For more information
-- about EBS volume metrics, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html Amazon CloudWatch metrics for Amazon EBS>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- 'recommendationSources', 'instanceRecommendation_recommendationSources' - An array of objects that describe the source resource of the
-- recommendation.
--
-- 'utilizationMetrics', 'instanceRecommendation_utilizationMetrics' - An array of objects that describe the utilization metrics of the
-- instance.
--
-- 'instanceName', 'instanceRecommendation_instanceName' - The name of the current instance.
--
-- 'recommendationOptions', 'instanceRecommendation_recommendationOptions' - An array of objects that describe the recommendation options for the
-- instance.
--
-- 'lookBackPeriodInDays', 'instanceRecommendation_lookBackPeriodInDays' - The number of days for which utilization metrics were analyzed for the
-- instance.
newInstanceRecommendation ::
  InstanceRecommendation
newInstanceRecommendation =
  InstanceRecommendation'
    { instanceArn =
        Prelude.Nothing,
      finding = Prelude.Nothing,
      currentInstanceType = Prelude.Nothing,
      lastRefreshTimestamp = Prelude.Nothing,
      accountId = Prelude.Nothing,
      findingReasonCodes = Prelude.Nothing,
      recommendationSources = Prelude.Nothing,
      utilizationMetrics = Prelude.Nothing,
      instanceName = Prelude.Nothing,
      recommendationOptions = Prelude.Nothing,
      lookBackPeriodInDays = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the current instance.
instanceRecommendation_instanceArn :: Lens.Lens' InstanceRecommendation (Prelude.Maybe Prelude.Text)
instanceRecommendation_instanceArn = Lens.lens (\InstanceRecommendation' {instanceArn} -> instanceArn) (\s@InstanceRecommendation' {} a -> s {instanceArn = a} :: InstanceRecommendation)

-- | The finding classification of the instance.
--
-- Findings for instances include:
--
-- -   __@Underprovisioned@__ —An instance is considered under-provisioned
--     when at least one specification of your instance, such as CPU,
--     memory, or network, does not meet the performance requirements of
--     your workload. Under-provisioned instances may lead to poor
--     application performance.
--
-- -   __@Overprovisioned@__ —An instance is considered over-provisioned
--     when at least one specification of your instance, such as CPU,
--     memory, or network, can be sized down while still meeting the
--     performance requirements of your workload, and no specification is
--     under-provisioned. Over-provisioned instances may lead to
--     unnecessary infrastructure cost.
--
-- -   __@Optimized@__ —An instance is considered optimized when all
--     specifications of your instance, such as CPU, memory, and network,
--     meet the performance requirements of your workload and is not over
--     provisioned. For optimized resources, Compute Optimizer might
--     recommend a new generation instance type.
instanceRecommendation_finding :: Lens.Lens' InstanceRecommendation (Prelude.Maybe Finding)
instanceRecommendation_finding = Lens.lens (\InstanceRecommendation' {finding} -> finding) (\s@InstanceRecommendation' {} a -> s {finding = a} :: InstanceRecommendation)

-- | The instance type of the current instance.
instanceRecommendation_currentInstanceType :: Lens.Lens' InstanceRecommendation (Prelude.Maybe Prelude.Text)
instanceRecommendation_currentInstanceType = Lens.lens (\InstanceRecommendation' {currentInstanceType} -> currentInstanceType) (\s@InstanceRecommendation' {} a -> s {currentInstanceType = a} :: InstanceRecommendation)

-- | The timestamp of when the instance recommendation was last refreshed.
instanceRecommendation_lastRefreshTimestamp :: Lens.Lens' InstanceRecommendation (Prelude.Maybe Prelude.UTCTime)
instanceRecommendation_lastRefreshTimestamp = Lens.lens (\InstanceRecommendation' {lastRefreshTimestamp} -> lastRefreshTimestamp) (\s@InstanceRecommendation' {} a -> s {lastRefreshTimestamp = a} :: InstanceRecommendation) Prelude.. Lens.mapping Core._Time

-- | The Amazon Web Services account ID of the instance.
instanceRecommendation_accountId :: Lens.Lens' InstanceRecommendation (Prelude.Maybe Prelude.Text)
instanceRecommendation_accountId = Lens.lens (\InstanceRecommendation' {accountId} -> accountId) (\s@InstanceRecommendation' {} a -> s {accountId = a} :: InstanceRecommendation)

-- | The reason for the finding classification of the instance.
--
-- Finding reason codes for instances include:
--
-- -   __@CPUOverprovisioned@__ — The instance’s CPU configuration can be
--     sized down while still meeting the performance requirements of your
--     workload. This is identified by analyzing the @CPUUtilization@
--     metric of the current instance during the look-back period.
--
-- -   __@CPUUnderprovisioned@__ — The instance’s CPU configuration
--     doesn\'t meet the performance requirements of your workload and
--     there is an alternative instance type that provides better CPU
--     performance. This is identified by analyzing the @CPUUtilization@
--     metric of the current instance during the look-back period.
--
-- -   __@MemoryOverprovisioned@__ — The instance’s memory configuration
--     can be sized down while still meeting the performance requirements
--     of your workload. This is identified by analyzing the memory
--     utilization metric of the current instance during the look-back
--     period.
--
-- -   __@MemoryUnderprovisioned@__ — The instance’s memory configuration
--     doesn\'t meet the performance requirements of your workload and
--     there is an alternative instance type that provides better memory
--     performance. This is identified by analyzing the memory utilization
--     metric of the current instance during the look-back period.
--
--     Memory utilization is analyzed only for resources that have the
--     unified CloudWatch agent installed on them. For more information,
--     see
--     <https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent Enabling memory utilization with the Amazon CloudWatch Agent>
--     in the /Compute Optimizer User Guide/. On Linux instances, Compute
--     Optimizer analyses the @mem_used_percent@ metric in the @CWAgent@
--     namespace, or the legacy @MemoryUtilization@ metric in the
--     @System\/Linux@ namespace. On Windows instances, Compute Optimizer
--     analyses the @Memory % Committed Bytes In Use@ metric in the
--     @CWAgent@ namespace.
--
-- -   __@EBSThroughputOverprovisioned@__ — The instance’s EBS throughput
--     configuration can be sized down while still meeting the performance
--     requirements of your workload. This is identified by analyzing the
--     @VolumeReadOps@ and @VolumeWriteOps@ metrics of EBS volumes attached
--     to the current instance during the look-back period.
--
-- -   __@EBSThroughputUnderprovisioned@__ — The instance’s EBS throughput
--     configuration doesn\'t meet the performance requirements of your
--     workload and there is an alternative instance type that provides
--     better EBS throughput performance. This is identified by analyzing
--     the @VolumeReadOps@ and @VolumeWriteOps@ metrics of EBS volumes
--     attached to the current instance during the look-back period.
--
-- -   __@EBSIOPSOverprovisioned@__ — The instance’s EBS IOPS configuration
--     can be sized down while still meeting the performance requirements
--     of your workload. This is identified by analyzing the
--     @VolumeReadBytes@ and @VolumeWriteBytes@ metric of EBS volumes
--     attached to the current instance during the look-back period.
--
-- -   __@EBSIOPSUnderprovisioned@__ — The instance’s EBS IOPS
--     configuration doesn\'t meet the performance requirements of your
--     workload and there is an alternative instance type that provides
--     better EBS IOPS performance. This is identified by analyzing the
--     @VolumeReadBytes@ and @VolumeWriteBytes@ metric of EBS volumes
--     attached to the current instance during the look-back period.
--
-- -   __@NetworkBandwidthOverprovisioned@__ — The instance’s network
--     bandwidth configuration can be sized down while still meeting the
--     performance requirements of your workload. This is identified by
--     analyzing the @NetworkIn@ and @NetworkOut@ metrics of the current
--     instance during the look-back period.
--
-- -   __@NetworkBandwidthUnderprovisioned@__ — The instance’s network
--     bandwidth configuration doesn\'t meet the performance requirements
--     of your workload and there is an alternative instance type that
--     provides better network bandwidth performance. This is identified by
--     analyzing the @NetworkIn@ and @NetworkOut@ metrics of the current
--     instance during the look-back period. This finding reason happens
--     when the @NetworkIn@ or @NetworkOut@ performance of an instance is
--     impacted.
--
-- -   __@NetworkPPSOverprovisioned@__ — The instance’s network PPS
--     (packets per second) configuration can be sized down while still
--     meeting the performance requirements of your workload. This is
--     identified by analyzing the @NetworkPacketsIn@ and
--     @NetworkPacketsIn@ metrics of the current instance during the
--     look-back period.
--
-- -   __@NetworkPPSUnderprovisioned@__ — The instance’s network PPS
--     (packets per second) configuration doesn\'t meet the performance
--     requirements of your workload and there is an alternative instance
--     type that provides better network PPS performance. This is
--     identified by analyzing the @NetworkPacketsIn@ and
--     @NetworkPacketsIn@ metrics of the current instance during the
--     look-back period.
--
-- -   __@DiskIOPSOverprovisioned@__ — The instance’s disk IOPS
--     configuration can be sized down while still meeting the performance
--     requirements of your workload. This is identified by analyzing the
--     @DiskReadOps@ and @DiskWriteOps@ metrics of the current instance
--     during the look-back period.
--
-- -   __@DiskIOPSUnderprovisioned@__ — The instance’s disk IOPS
--     configuration doesn\'t meet the performance requirements of your
--     workload and there is an alternative instance type that provides
--     better disk IOPS performance. This is identified by analyzing the
--     @DiskReadOps@ and @DiskWriteOps@ metrics of the current instance
--     during the look-back period.
--
-- -   __@DiskThroughputOverprovisioned@__ — The instance’s disk throughput
--     configuration can be sized down while still meeting the performance
--     requirements of your workload. This is identified by analyzing the
--     @DiskReadBytes@ and @DiskWriteBytes@ metrics of the current instance
--     during the look-back period.
--
-- -   __@DiskThroughputUnderprovisioned@__ — The instance’s disk
--     throughput configuration doesn\'t meet the performance requirements
--     of your workload and there is an alternative instance type that
--     provides better disk throughput performance. This is identified by
--     analyzing the @DiskReadBytes@ and @DiskWriteBytes@ metrics of the
--     current instance during the look-back period.
--
-- For more information about instance metrics, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html List the available CloudWatch metrics for your instances>
-- in the /Amazon Elastic Compute Cloud User Guide/. For more information
-- about EBS volume metrics, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html Amazon CloudWatch metrics for Amazon EBS>
-- in the /Amazon Elastic Compute Cloud User Guide/.
instanceRecommendation_findingReasonCodes :: Lens.Lens' InstanceRecommendation (Prelude.Maybe [InstanceRecommendationFindingReasonCode])
instanceRecommendation_findingReasonCodes = Lens.lens (\InstanceRecommendation' {findingReasonCodes} -> findingReasonCodes) (\s@InstanceRecommendation' {} a -> s {findingReasonCodes = a} :: InstanceRecommendation) Prelude.. Lens.mapping Lens.coerced

-- | An array of objects that describe the source resource of the
-- recommendation.
instanceRecommendation_recommendationSources :: Lens.Lens' InstanceRecommendation (Prelude.Maybe [RecommendationSource])
instanceRecommendation_recommendationSources = Lens.lens (\InstanceRecommendation' {recommendationSources} -> recommendationSources) (\s@InstanceRecommendation' {} a -> s {recommendationSources = a} :: InstanceRecommendation) Prelude.. Lens.mapping Lens.coerced

-- | An array of objects that describe the utilization metrics of the
-- instance.
instanceRecommendation_utilizationMetrics :: Lens.Lens' InstanceRecommendation (Prelude.Maybe [UtilizationMetric])
instanceRecommendation_utilizationMetrics = Lens.lens (\InstanceRecommendation' {utilizationMetrics} -> utilizationMetrics) (\s@InstanceRecommendation' {} a -> s {utilizationMetrics = a} :: InstanceRecommendation) Prelude.. Lens.mapping Lens.coerced

-- | The name of the current instance.
instanceRecommendation_instanceName :: Lens.Lens' InstanceRecommendation (Prelude.Maybe Prelude.Text)
instanceRecommendation_instanceName = Lens.lens (\InstanceRecommendation' {instanceName} -> instanceName) (\s@InstanceRecommendation' {} a -> s {instanceName = a} :: InstanceRecommendation)

-- | An array of objects that describe the recommendation options for the
-- instance.
instanceRecommendation_recommendationOptions :: Lens.Lens' InstanceRecommendation (Prelude.Maybe [InstanceRecommendationOption])
instanceRecommendation_recommendationOptions = Lens.lens (\InstanceRecommendation' {recommendationOptions} -> recommendationOptions) (\s@InstanceRecommendation' {} a -> s {recommendationOptions = a} :: InstanceRecommendation) Prelude.. Lens.mapping Lens.coerced

-- | The number of days for which utilization metrics were analyzed for the
-- instance.
instanceRecommendation_lookBackPeriodInDays :: Lens.Lens' InstanceRecommendation (Prelude.Maybe Prelude.Double)
instanceRecommendation_lookBackPeriodInDays = Lens.lens (\InstanceRecommendation' {lookBackPeriodInDays} -> lookBackPeriodInDays) (\s@InstanceRecommendation' {} a -> s {lookBackPeriodInDays = a} :: InstanceRecommendation)

instance Core.FromJSON InstanceRecommendation where
  parseJSON =
    Core.withObject
      "InstanceRecommendation"
      ( \x ->
          InstanceRecommendation'
            Prelude.<$> (x Core..:? "instanceArn")
            Prelude.<*> (x Core..:? "finding")
            Prelude.<*> (x Core..:? "currentInstanceType")
            Prelude.<*> (x Core..:? "lastRefreshTimestamp")
            Prelude.<*> (x Core..:? "accountId")
            Prelude.<*> ( x Core..:? "findingReasonCodes"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "recommendationSources"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "utilizationMetrics"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "instanceName")
            Prelude.<*> ( x Core..:? "recommendationOptions"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "lookBackPeriodInDays")
      )

instance Prelude.Hashable InstanceRecommendation

instance Prelude.NFData InstanceRecommendation
