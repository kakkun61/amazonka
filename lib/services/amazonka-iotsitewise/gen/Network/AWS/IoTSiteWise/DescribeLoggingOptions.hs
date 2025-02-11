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
-- Module      : Network.AWS.IoTSiteWise.DescribeLoggingOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the current IoT SiteWise logging options.
module Network.AWS.IoTSiteWise.DescribeLoggingOptions
  ( -- * Creating a Request
    DescribeLoggingOptions (..),
    newDescribeLoggingOptions,

    -- * Destructuring the Response
    DescribeLoggingOptionsResponse (..),
    newDescribeLoggingOptionsResponse,

    -- * Response Lenses
    describeLoggingOptionsResponse_httpStatus,
    describeLoggingOptionsResponse_loggingOptions,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTSiteWise.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLoggingOptions' smart constructor.
data DescribeLoggingOptions = DescribeLoggingOptions'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoggingOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDescribeLoggingOptions ::
  DescribeLoggingOptions
newDescribeLoggingOptions = DescribeLoggingOptions'

instance Core.AWSRequest DescribeLoggingOptions where
  type
    AWSResponse DescribeLoggingOptions =
      DescribeLoggingOptionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeLoggingOptionsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "loggingOptions")
      )

instance Prelude.Hashable DescribeLoggingOptions

instance Prelude.NFData DescribeLoggingOptions

instance Core.ToHeaders DescribeLoggingOptions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeLoggingOptions where
  toPath = Prelude.const "/logging"

instance Core.ToQuery DescribeLoggingOptions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeLoggingOptionsResponse' smart constructor.
data DescribeLoggingOptionsResponse = DescribeLoggingOptionsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The current logging options.
    loggingOptions :: LoggingOptions
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoggingOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeLoggingOptionsResponse_httpStatus' - The response's http status code.
--
-- 'loggingOptions', 'describeLoggingOptionsResponse_loggingOptions' - The current logging options.
newDescribeLoggingOptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'loggingOptions'
  LoggingOptions ->
  DescribeLoggingOptionsResponse
newDescribeLoggingOptionsResponse
  pHttpStatus_
  pLoggingOptions_ =
    DescribeLoggingOptionsResponse'
      { httpStatus =
          pHttpStatus_,
        loggingOptions = pLoggingOptions_
      }

-- | The response's http status code.
describeLoggingOptionsResponse_httpStatus :: Lens.Lens' DescribeLoggingOptionsResponse Prelude.Int
describeLoggingOptionsResponse_httpStatus = Lens.lens (\DescribeLoggingOptionsResponse' {httpStatus} -> httpStatus) (\s@DescribeLoggingOptionsResponse' {} a -> s {httpStatus = a} :: DescribeLoggingOptionsResponse)

-- | The current logging options.
describeLoggingOptionsResponse_loggingOptions :: Lens.Lens' DescribeLoggingOptionsResponse LoggingOptions
describeLoggingOptionsResponse_loggingOptions = Lens.lens (\DescribeLoggingOptionsResponse' {loggingOptions} -> loggingOptions) (\s@DescribeLoggingOptionsResponse' {} a -> s {loggingOptions = a} :: DescribeLoggingOptionsResponse)

instance
  Prelude.NFData
    DescribeLoggingOptionsResponse
