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
-- Module      : Network.AWS.CloudWatch.GetMetricStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the metric stream that you specify.
module Network.AWS.CloudWatch.GetMetricStream
  ( -- * Creating a Request
    GetMetricStream (..),
    newGetMetricStream,

    -- * Request Lenses
    getMetricStream_name,

    -- * Destructuring the Response
    GetMetricStreamResponse (..),
    newGetMetricStreamResponse,

    -- * Response Lenses
    getMetricStreamResponse_includeFilters,
    getMetricStreamResponse_state,
    getMetricStreamResponse_excludeFilters,
    getMetricStreamResponse_arn,
    getMetricStreamResponse_firehoseArn,
    getMetricStreamResponse_outputFormat,
    getMetricStreamResponse_lastUpdateDate,
    getMetricStreamResponse_name,
    getMetricStreamResponse_creationDate,
    getMetricStreamResponse_roleArn,
    getMetricStreamResponse_httpStatus,
  )
where

import Network.AWS.CloudWatch.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetMetricStream' smart constructor.
data GetMetricStream = GetMetricStream'
  { -- | The name of the metric stream to retrieve information about.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMetricStream' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getMetricStream_name' - The name of the metric stream to retrieve information about.
newGetMetricStream ::
  -- | 'name'
  Prelude.Text ->
  GetMetricStream
newGetMetricStream pName_ =
  GetMetricStream' {name = pName_}

-- | The name of the metric stream to retrieve information about.
getMetricStream_name :: Lens.Lens' GetMetricStream Prelude.Text
getMetricStream_name = Lens.lens (\GetMetricStream' {name} -> name) (\s@GetMetricStream' {} a -> s {name = a} :: GetMetricStream)

instance Core.AWSRequest GetMetricStream where
  type
    AWSResponse GetMetricStream =
      GetMetricStreamResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetMetricStreamResult"
      ( \s h x ->
          GetMetricStreamResponse'
            Prelude.<$> ( x Core..@? "IncludeFilters" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "State")
            Prelude.<*> ( x Core..@? "ExcludeFilters" Core..!@ Prelude.mempty
                            Prelude.>>= Core.may (Core.parseXMLList "member")
                        )
            Prelude.<*> (x Core..@? "Arn")
            Prelude.<*> (x Core..@? "FirehoseArn")
            Prelude.<*> (x Core..@? "OutputFormat")
            Prelude.<*> (x Core..@? "LastUpdateDate")
            Prelude.<*> (x Core..@? "Name")
            Prelude.<*> (x Core..@? "CreationDate")
            Prelude.<*> (x Core..@? "RoleArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetMetricStream

instance Prelude.NFData GetMetricStream

instance Core.ToHeaders GetMetricStream where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath GetMetricStream where
  toPath = Prelude.const "/"

instance Core.ToQuery GetMetricStream where
  toQuery GetMetricStream' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("GetMetricStream" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-08-01" :: Prelude.ByteString),
        "Name" Core.=: name
      ]

-- | /See:/ 'newGetMetricStreamResponse' smart constructor.
data GetMetricStreamResponse = GetMetricStreamResponse'
  { -- | If this array of metric namespaces is present, then these namespaces are
    -- the only metric namespaces that are streamed by this metric stream.
    includeFilters :: Prelude.Maybe [MetricStreamFilter],
    -- | The state of the metric stream. The possible values are @running@ and
    -- @stopped@.
    state :: Prelude.Maybe Prelude.Text,
    -- | If this array of metric namespaces is present, then these namespaces are
    -- the only metric namespaces that are not streamed by this metric stream.
    -- In this case, all other metric namespaces in the account are streamed by
    -- this metric stream.
    excludeFilters :: Prelude.Maybe [MetricStreamFilter],
    -- | The ARN of the metric stream.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the Amazon Kinesis Firehose delivery stream that is used by
    -- this metric stream.
    firehoseArn :: Prelude.Maybe Prelude.Text,
    outputFormat :: Prelude.Maybe MetricStreamOutputFormat,
    -- | The date of the most recent update to the metric stream\'s
    -- configuration.
    lastUpdateDate :: Prelude.Maybe Core.ISO8601,
    -- | The name of the metric stream.
    name :: Prelude.Maybe Prelude.Text,
    -- | The date that the metric stream was created.
    creationDate :: Prelude.Maybe Core.ISO8601,
    -- | The ARN of the IAM role that is used by this metric stream.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetMetricStreamResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includeFilters', 'getMetricStreamResponse_includeFilters' - If this array of metric namespaces is present, then these namespaces are
-- the only metric namespaces that are streamed by this metric stream.
--
-- 'state', 'getMetricStreamResponse_state' - The state of the metric stream. The possible values are @running@ and
-- @stopped@.
--
-- 'excludeFilters', 'getMetricStreamResponse_excludeFilters' - If this array of metric namespaces is present, then these namespaces are
-- the only metric namespaces that are not streamed by this metric stream.
-- In this case, all other metric namespaces in the account are streamed by
-- this metric stream.
--
-- 'arn', 'getMetricStreamResponse_arn' - The ARN of the metric stream.
--
-- 'firehoseArn', 'getMetricStreamResponse_firehoseArn' - The ARN of the Amazon Kinesis Firehose delivery stream that is used by
-- this metric stream.
--
-- 'outputFormat', 'getMetricStreamResponse_outputFormat' -
--
-- 'lastUpdateDate', 'getMetricStreamResponse_lastUpdateDate' - The date of the most recent update to the metric stream\'s
-- configuration.
--
-- 'name', 'getMetricStreamResponse_name' - The name of the metric stream.
--
-- 'creationDate', 'getMetricStreamResponse_creationDate' - The date that the metric stream was created.
--
-- 'roleArn', 'getMetricStreamResponse_roleArn' - The ARN of the IAM role that is used by this metric stream.
--
-- 'httpStatus', 'getMetricStreamResponse_httpStatus' - The response's http status code.
newGetMetricStreamResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMetricStreamResponse
newGetMetricStreamResponse pHttpStatus_ =
  GetMetricStreamResponse'
    { includeFilters =
        Prelude.Nothing,
      state = Prelude.Nothing,
      excludeFilters = Prelude.Nothing,
      arn = Prelude.Nothing,
      firehoseArn = Prelude.Nothing,
      outputFormat = Prelude.Nothing,
      lastUpdateDate = Prelude.Nothing,
      name = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If this array of metric namespaces is present, then these namespaces are
-- the only metric namespaces that are streamed by this metric stream.
getMetricStreamResponse_includeFilters :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe [MetricStreamFilter])
getMetricStreamResponse_includeFilters = Lens.lens (\GetMetricStreamResponse' {includeFilters} -> includeFilters) (\s@GetMetricStreamResponse' {} a -> s {includeFilters = a} :: GetMetricStreamResponse) Prelude.. Lens.mapping Lens.coerced

-- | The state of the metric stream. The possible values are @running@ and
-- @stopped@.
getMetricStreamResponse_state :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe Prelude.Text)
getMetricStreamResponse_state = Lens.lens (\GetMetricStreamResponse' {state} -> state) (\s@GetMetricStreamResponse' {} a -> s {state = a} :: GetMetricStreamResponse)

-- | If this array of metric namespaces is present, then these namespaces are
-- the only metric namespaces that are not streamed by this metric stream.
-- In this case, all other metric namespaces in the account are streamed by
-- this metric stream.
getMetricStreamResponse_excludeFilters :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe [MetricStreamFilter])
getMetricStreamResponse_excludeFilters = Lens.lens (\GetMetricStreamResponse' {excludeFilters} -> excludeFilters) (\s@GetMetricStreamResponse' {} a -> s {excludeFilters = a} :: GetMetricStreamResponse) Prelude.. Lens.mapping Lens.coerced

-- | The ARN of the metric stream.
getMetricStreamResponse_arn :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe Prelude.Text)
getMetricStreamResponse_arn = Lens.lens (\GetMetricStreamResponse' {arn} -> arn) (\s@GetMetricStreamResponse' {} a -> s {arn = a} :: GetMetricStreamResponse)

-- | The ARN of the Amazon Kinesis Firehose delivery stream that is used by
-- this metric stream.
getMetricStreamResponse_firehoseArn :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe Prelude.Text)
getMetricStreamResponse_firehoseArn = Lens.lens (\GetMetricStreamResponse' {firehoseArn} -> firehoseArn) (\s@GetMetricStreamResponse' {} a -> s {firehoseArn = a} :: GetMetricStreamResponse)

-- |
getMetricStreamResponse_outputFormat :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe MetricStreamOutputFormat)
getMetricStreamResponse_outputFormat = Lens.lens (\GetMetricStreamResponse' {outputFormat} -> outputFormat) (\s@GetMetricStreamResponse' {} a -> s {outputFormat = a} :: GetMetricStreamResponse)

-- | The date of the most recent update to the metric stream\'s
-- configuration.
getMetricStreamResponse_lastUpdateDate :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe Prelude.UTCTime)
getMetricStreamResponse_lastUpdateDate = Lens.lens (\GetMetricStreamResponse' {lastUpdateDate} -> lastUpdateDate) (\s@GetMetricStreamResponse' {} a -> s {lastUpdateDate = a} :: GetMetricStreamResponse) Prelude.. Lens.mapping Core._Time

-- | The name of the metric stream.
getMetricStreamResponse_name :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe Prelude.Text)
getMetricStreamResponse_name = Lens.lens (\GetMetricStreamResponse' {name} -> name) (\s@GetMetricStreamResponse' {} a -> s {name = a} :: GetMetricStreamResponse)

-- | The date that the metric stream was created.
getMetricStreamResponse_creationDate :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe Prelude.UTCTime)
getMetricStreamResponse_creationDate = Lens.lens (\GetMetricStreamResponse' {creationDate} -> creationDate) (\s@GetMetricStreamResponse' {} a -> s {creationDate = a} :: GetMetricStreamResponse) Prelude.. Lens.mapping Core._Time

-- | The ARN of the IAM role that is used by this metric stream.
getMetricStreamResponse_roleArn :: Lens.Lens' GetMetricStreamResponse (Prelude.Maybe Prelude.Text)
getMetricStreamResponse_roleArn = Lens.lens (\GetMetricStreamResponse' {roleArn} -> roleArn) (\s@GetMetricStreamResponse' {} a -> s {roleArn = a} :: GetMetricStreamResponse)

-- | The response's http status code.
getMetricStreamResponse_httpStatus :: Lens.Lens' GetMetricStreamResponse Prelude.Int
getMetricStreamResponse_httpStatus = Lens.lens (\GetMetricStreamResponse' {httpStatus} -> httpStatus) (\s@GetMetricStreamResponse' {} a -> s {httpStatus = a} :: GetMetricStreamResponse)

instance Prelude.NFData GetMetricStreamResponse
