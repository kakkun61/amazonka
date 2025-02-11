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
-- Module      : Network.AWS.CloudWatch.StopMetricStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops the streaming of metrics for one or more of your metric streams.
module Network.AWS.CloudWatch.StopMetricStreams
  ( -- * Creating a Request
    StopMetricStreams (..),
    newStopMetricStreams,

    -- * Request Lenses
    stopMetricStreams_names,

    -- * Destructuring the Response
    StopMetricStreamsResponse (..),
    newStopMetricStreamsResponse,

    -- * Response Lenses
    stopMetricStreamsResponse_httpStatus,
  )
where

import Network.AWS.CloudWatch.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStopMetricStreams' smart constructor.
data StopMetricStreams = StopMetricStreams'
  { -- | The array of the names of metric streams to stop streaming.
    --
    -- This is an \"all or nothing\" operation. If you do not have permission
    -- to access all of the metric streams that you list here, then none of the
    -- streams that you list in the operation will stop streaming.
    names :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopMetricStreams' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'names', 'stopMetricStreams_names' - The array of the names of metric streams to stop streaming.
--
-- This is an \"all or nothing\" operation. If you do not have permission
-- to access all of the metric streams that you list here, then none of the
-- streams that you list in the operation will stop streaming.
newStopMetricStreams ::
  StopMetricStreams
newStopMetricStreams =
  StopMetricStreams' {names = Prelude.mempty}

-- | The array of the names of metric streams to stop streaming.
--
-- This is an \"all or nothing\" operation. If you do not have permission
-- to access all of the metric streams that you list here, then none of the
-- streams that you list in the operation will stop streaming.
stopMetricStreams_names :: Lens.Lens' StopMetricStreams [Prelude.Text]
stopMetricStreams_names = Lens.lens (\StopMetricStreams' {names} -> names) (\s@StopMetricStreams' {} a -> s {names = a} :: StopMetricStreams) Prelude.. Lens.coerced

instance Core.AWSRequest StopMetricStreams where
  type
    AWSResponse StopMetricStreams =
      StopMetricStreamsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "StopMetricStreamsResult"
      ( \s h x ->
          StopMetricStreamsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StopMetricStreams

instance Prelude.NFData StopMetricStreams

instance Core.ToHeaders StopMetricStreams where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath StopMetricStreams where
  toPath = Prelude.const "/"

instance Core.ToQuery StopMetricStreams where
  toQuery StopMetricStreams' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("StopMetricStreams" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-08-01" :: Prelude.ByteString),
        "Names" Core.=: Core.toQueryList "member" names
      ]

-- | /See:/ 'newStopMetricStreamsResponse' smart constructor.
data StopMetricStreamsResponse = StopMetricStreamsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StopMetricStreamsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'stopMetricStreamsResponse_httpStatus' - The response's http status code.
newStopMetricStreamsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StopMetricStreamsResponse
newStopMetricStreamsResponse pHttpStatus_ =
  StopMetricStreamsResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
stopMetricStreamsResponse_httpStatus :: Lens.Lens' StopMetricStreamsResponse Prelude.Int
stopMetricStreamsResponse_httpStatus = Lens.lens (\StopMetricStreamsResponse' {httpStatus} -> httpStatus) (\s@StopMetricStreamsResponse' {} a -> s {httpStatus = a} :: StopMetricStreamsResponse)

instance Prelude.NFData StopMetricStreamsResponse
