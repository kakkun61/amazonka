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
-- Module      : Network.AWS.CloudWatch.StartMetricStreams
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts the streaming of metrics for one or more of your metric streams.
module Network.AWS.CloudWatch.StartMetricStreams
  ( -- * Creating a Request
    StartMetricStreams (..),
    newStartMetricStreams,

    -- * Request Lenses
    startMetricStreams_names,

    -- * Destructuring the Response
    StartMetricStreamsResponse (..),
    newStartMetricStreamsResponse,

    -- * Response Lenses
    startMetricStreamsResponse_httpStatus,
  )
where

import Network.AWS.CloudWatch.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartMetricStreams' smart constructor.
data StartMetricStreams = StartMetricStreams'
  { -- | The array of the names of metric streams to start streaming.
    --
    -- This is an \"all or nothing\" operation. If you do not have permission
    -- to access all of the metric streams that you list here, then none of the
    -- streams that you list in the operation will start streaming.
    names :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartMetricStreams' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'names', 'startMetricStreams_names' - The array of the names of metric streams to start streaming.
--
-- This is an \"all or nothing\" operation. If you do not have permission
-- to access all of the metric streams that you list here, then none of the
-- streams that you list in the operation will start streaming.
newStartMetricStreams ::
  StartMetricStreams
newStartMetricStreams =
  StartMetricStreams' {names = Prelude.mempty}

-- | The array of the names of metric streams to start streaming.
--
-- This is an \"all or nothing\" operation. If you do not have permission
-- to access all of the metric streams that you list here, then none of the
-- streams that you list in the operation will start streaming.
startMetricStreams_names :: Lens.Lens' StartMetricStreams [Prelude.Text]
startMetricStreams_names = Lens.lens (\StartMetricStreams' {names} -> names) (\s@StartMetricStreams' {} a -> s {names = a} :: StartMetricStreams) Prelude.. Lens.coerced

instance Core.AWSRequest StartMetricStreams where
  type
    AWSResponse StartMetricStreams =
      StartMetricStreamsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "StartMetricStreamsResult"
      ( \s h x ->
          StartMetricStreamsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartMetricStreams

instance Prelude.NFData StartMetricStreams

instance Core.ToHeaders StartMetricStreams where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath StartMetricStreams where
  toPath = Prelude.const "/"

instance Core.ToQuery StartMetricStreams where
  toQuery StartMetricStreams' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("StartMetricStreams" :: Prelude.ByteString),
        "Version"
          Core.=: ("2010-08-01" :: Prelude.ByteString),
        "Names" Core.=: Core.toQueryList "member" names
      ]

-- | /See:/ 'newStartMetricStreamsResponse' smart constructor.
data StartMetricStreamsResponse = StartMetricStreamsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartMetricStreamsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'startMetricStreamsResponse_httpStatus' - The response's http status code.
newStartMetricStreamsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartMetricStreamsResponse
newStartMetricStreamsResponse pHttpStatus_ =
  StartMetricStreamsResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
startMetricStreamsResponse_httpStatus :: Lens.Lens' StartMetricStreamsResponse Prelude.Int
startMetricStreamsResponse_httpStatus = Lens.lens (\StartMetricStreamsResponse' {httpStatus} -> httpStatus) (\s@StartMetricStreamsResponse' {} a -> s {httpStatus = a} :: StartMetricStreamsResponse)

instance Prelude.NFData StartMetricStreamsResponse
