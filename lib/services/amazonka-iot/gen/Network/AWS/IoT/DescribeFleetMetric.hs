{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DescribeFleetMetric
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about the specified fleet metric.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions DescribeFleetMetric>
-- action.
module Network.AWS.IoT.DescribeFleetMetric
  ( -- * Creating a Request
    DescribeFleetMetric (..),
    newDescribeFleetMetric,

    -- * Request Lenses
    describeFleetMetric_metricName,

    -- * Destructuring the Response
    DescribeFleetMetricResponse (..),
    newDescribeFleetMetricResponse,

    -- * Response Lenses
    describeFleetMetricResponse_aggregationType,
    describeFleetMetricResponse_lastModifiedDate,
    describeFleetMetricResponse_period,
    describeFleetMetricResponse_queryVersion,
    describeFleetMetricResponse_metricName,
    describeFleetMetricResponse_aggregationField,
    describeFleetMetricResponse_queryString,
    describeFleetMetricResponse_version,
    describeFleetMetricResponse_creationDate,
    describeFleetMetricResponse_description,
    describeFleetMetricResponse_unit,
    describeFleetMetricResponse_indexName,
    describeFleetMetricResponse_metricArn,
    describeFleetMetricResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeFleetMetric' smart constructor.
data DescribeFleetMetric = DescribeFleetMetric'
  { -- | The name of the fleet metric to describe.
    metricName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetMetric' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'metricName', 'describeFleetMetric_metricName' - The name of the fleet metric to describe.
newDescribeFleetMetric ::
  -- | 'metricName'
  Prelude.Text ->
  DescribeFleetMetric
newDescribeFleetMetric pMetricName_ =
  DescribeFleetMetric' {metricName = pMetricName_}

-- | The name of the fleet metric to describe.
describeFleetMetric_metricName :: Lens.Lens' DescribeFleetMetric Prelude.Text
describeFleetMetric_metricName = Lens.lens (\DescribeFleetMetric' {metricName} -> metricName) (\s@DescribeFleetMetric' {} a -> s {metricName = a} :: DescribeFleetMetric)

instance Core.AWSRequest DescribeFleetMetric where
  type
    AWSResponse DescribeFleetMetric =
      DescribeFleetMetricResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeFleetMetricResponse'
            Prelude.<$> (x Core..?> "aggregationType")
            Prelude.<*> (x Core..?> "lastModifiedDate")
            Prelude.<*> (x Core..?> "period")
            Prelude.<*> (x Core..?> "queryVersion")
            Prelude.<*> (x Core..?> "metricName")
            Prelude.<*> (x Core..?> "aggregationField")
            Prelude.<*> (x Core..?> "queryString")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (x Core..?> "creationDate")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (x Core..?> "unit")
            Prelude.<*> (x Core..?> "indexName")
            Prelude.<*> (x Core..?> "metricArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeFleetMetric

instance Prelude.NFData DescribeFleetMetric

instance Core.ToHeaders DescribeFleetMetric where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeFleetMetric where
  toPath DescribeFleetMetric' {..} =
    Prelude.mconcat
      ["/fleet-metric/", Core.toBS metricName]

instance Core.ToQuery DescribeFleetMetric where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeFleetMetricResponse' smart constructor.
data DescribeFleetMetricResponse = DescribeFleetMetricResponse'
  { -- | The type of the aggregation query.
    aggregationType :: Prelude.Maybe AggregationType,
    -- | The date when the fleet metric is last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The time in seconds between fleet metric emissions. Range [60(1 min),
    -- 86400(1 day)] and must be multiple of 60.
    period :: Prelude.Maybe Prelude.Natural,
    -- | The query version.
    queryVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the fleet metric to describe.
    metricName :: Prelude.Maybe Prelude.Text,
    -- | The field to aggregate.
    aggregationField :: Prelude.Maybe Prelude.Text,
    -- | The search query string.
    queryString :: Prelude.Maybe Prelude.Text,
    -- | The version of the fleet metric.
    version :: Prelude.Maybe Prelude.Integer,
    -- | The date when the fleet metric is created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The fleet metric description.
    description :: Prelude.Maybe Prelude.Text,
    -- | Used to support unit transformation such as milliseconds to seconds. The
    -- unit must be supported by
    -- <https://docs.aws.amazon.com/https:/docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html CW metric>.
    unit :: Prelude.Maybe FleetMetricUnit,
    -- | The name of the index to search.
    indexName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the fleet metric to describe.
    metricArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeFleetMetricResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aggregationType', 'describeFleetMetricResponse_aggregationType' - The type of the aggregation query.
--
-- 'lastModifiedDate', 'describeFleetMetricResponse_lastModifiedDate' - The date when the fleet metric is last modified.
--
-- 'period', 'describeFleetMetricResponse_period' - The time in seconds between fleet metric emissions. Range [60(1 min),
-- 86400(1 day)] and must be multiple of 60.
--
-- 'queryVersion', 'describeFleetMetricResponse_queryVersion' - The query version.
--
-- 'metricName', 'describeFleetMetricResponse_metricName' - The name of the fleet metric to describe.
--
-- 'aggregationField', 'describeFleetMetricResponse_aggregationField' - The field to aggregate.
--
-- 'queryString', 'describeFleetMetricResponse_queryString' - The search query string.
--
-- 'version', 'describeFleetMetricResponse_version' - The version of the fleet metric.
--
-- 'creationDate', 'describeFleetMetricResponse_creationDate' - The date when the fleet metric is created.
--
-- 'description', 'describeFleetMetricResponse_description' - The fleet metric description.
--
-- 'unit', 'describeFleetMetricResponse_unit' - Used to support unit transformation such as milliseconds to seconds. The
-- unit must be supported by
-- <https://docs.aws.amazon.com/https:/docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html CW metric>.
--
-- 'indexName', 'describeFleetMetricResponse_indexName' - The name of the index to search.
--
-- 'metricArn', 'describeFleetMetricResponse_metricArn' - The ARN of the fleet metric to describe.
--
-- 'httpStatus', 'describeFleetMetricResponse_httpStatus' - The response's http status code.
newDescribeFleetMetricResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeFleetMetricResponse
newDescribeFleetMetricResponse pHttpStatus_ =
  DescribeFleetMetricResponse'
    { aggregationType =
        Prelude.Nothing,
      lastModifiedDate = Prelude.Nothing,
      period = Prelude.Nothing,
      queryVersion = Prelude.Nothing,
      metricName = Prelude.Nothing,
      aggregationField = Prelude.Nothing,
      queryString = Prelude.Nothing,
      version = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      description = Prelude.Nothing,
      unit = Prelude.Nothing,
      indexName = Prelude.Nothing,
      metricArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The type of the aggregation query.
describeFleetMetricResponse_aggregationType :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe AggregationType)
describeFleetMetricResponse_aggregationType = Lens.lens (\DescribeFleetMetricResponse' {aggregationType} -> aggregationType) (\s@DescribeFleetMetricResponse' {} a -> s {aggregationType = a} :: DescribeFleetMetricResponse)

-- | The date when the fleet metric is last modified.
describeFleetMetricResponse_lastModifiedDate :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.UTCTime)
describeFleetMetricResponse_lastModifiedDate = Lens.lens (\DescribeFleetMetricResponse' {lastModifiedDate} -> lastModifiedDate) (\s@DescribeFleetMetricResponse' {} a -> s {lastModifiedDate = a} :: DescribeFleetMetricResponse) Prelude.. Lens.mapping Core._Time

-- | The time in seconds between fleet metric emissions. Range [60(1 min),
-- 86400(1 day)] and must be multiple of 60.
describeFleetMetricResponse_period :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Natural)
describeFleetMetricResponse_period = Lens.lens (\DescribeFleetMetricResponse' {period} -> period) (\s@DescribeFleetMetricResponse' {} a -> s {period = a} :: DescribeFleetMetricResponse)

-- | The query version.
describeFleetMetricResponse_queryVersion :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Text)
describeFleetMetricResponse_queryVersion = Lens.lens (\DescribeFleetMetricResponse' {queryVersion} -> queryVersion) (\s@DescribeFleetMetricResponse' {} a -> s {queryVersion = a} :: DescribeFleetMetricResponse)

-- | The name of the fleet metric to describe.
describeFleetMetricResponse_metricName :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Text)
describeFleetMetricResponse_metricName = Lens.lens (\DescribeFleetMetricResponse' {metricName} -> metricName) (\s@DescribeFleetMetricResponse' {} a -> s {metricName = a} :: DescribeFleetMetricResponse)

-- | The field to aggregate.
describeFleetMetricResponse_aggregationField :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Text)
describeFleetMetricResponse_aggregationField = Lens.lens (\DescribeFleetMetricResponse' {aggregationField} -> aggregationField) (\s@DescribeFleetMetricResponse' {} a -> s {aggregationField = a} :: DescribeFleetMetricResponse)

-- | The search query string.
describeFleetMetricResponse_queryString :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Text)
describeFleetMetricResponse_queryString = Lens.lens (\DescribeFleetMetricResponse' {queryString} -> queryString) (\s@DescribeFleetMetricResponse' {} a -> s {queryString = a} :: DescribeFleetMetricResponse)

-- | The version of the fleet metric.
describeFleetMetricResponse_version :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Integer)
describeFleetMetricResponse_version = Lens.lens (\DescribeFleetMetricResponse' {version} -> version) (\s@DescribeFleetMetricResponse' {} a -> s {version = a} :: DescribeFleetMetricResponse)

-- | The date when the fleet metric is created.
describeFleetMetricResponse_creationDate :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.UTCTime)
describeFleetMetricResponse_creationDate = Lens.lens (\DescribeFleetMetricResponse' {creationDate} -> creationDate) (\s@DescribeFleetMetricResponse' {} a -> s {creationDate = a} :: DescribeFleetMetricResponse) Prelude.. Lens.mapping Core._Time

-- | The fleet metric description.
describeFleetMetricResponse_description :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Text)
describeFleetMetricResponse_description = Lens.lens (\DescribeFleetMetricResponse' {description} -> description) (\s@DescribeFleetMetricResponse' {} a -> s {description = a} :: DescribeFleetMetricResponse)

-- | Used to support unit transformation such as milliseconds to seconds. The
-- unit must be supported by
-- <https://docs.aws.amazon.com/https:/docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_MetricDatum.html CW metric>.
describeFleetMetricResponse_unit :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe FleetMetricUnit)
describeFleetMetricResponse_unit = Lens.lens (\DescribeFleetMetricResponse' {unit} -> unit) (\s@DescribeFleetMetricResponse' {} a -> s {unit = a} :: DescribeFleetMetricResponse)

-- | The name of the index to search.
describeFleetMetricResponse_indexName :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Text)
describeFleetMetricResponse_indexName = Lens.lens (\DescribeFleetMetricResponse' {indexName} -> indexName) (\s@DescribeFleetMetricResponse' {} a -> s {indexName = a} :: DescribeFleetMetricResponse)

-- | The ARN of the fleet metric to describe.
describeFleetMetricResponse_metricArn :: Lens.Lens' DescribeFleetMetricResponse (Prelude.Maybe Prelude.Text)
describeFleetMetricResponse_metricArn = Lens.lens (\DescribeFleetMetricResponse' {metricArn} -> metricArn) (\s@DescribeFleetMetricResponse' {} a -> s {metricArn = a} :: DescribeFleetMetricResponse)

-- | The response's http status code.
describeFleetMetricResponse_httpStatus :: Lens.Lens' DescribeFleetMetricResponse Prelude.Int
describeFleetMetricResponse_httpStatus = Lens.lens (\DescribeFleetMetricResponse' {httpStatus} -> httpStatus) (\s@DescribeFleetMetricResponse' {} a -> s {httpStatus = a} :: DescribeFleetMetricResponse)

instance Prelude.NFData DescribeFleetMetricResponse
