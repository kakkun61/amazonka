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
-- Module      : Network.AWS.LookoutMetrics.DescribeAlert
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes an alert.
--
-- Amazon Lookout for Metrics API actions are eventually consistent. If you
-- do a read operation on a resource immediately after creating or
-- modifying it, use retries to allow time for the write operation to
-- complete.
module Network.AWS.LookoutMetrics.DescribeAlert
  ( -- * Creating a Request
    DescribeAlert (..),
    newDescribeAlert,

    -- * Request Lenses
    describeAlert_alertArn,

    -- * Destructuring the Response
    DescribeAlertResponse (..),
    newDescribeAlertResponse,

    -- * Response Lenses
    describeAlertResponse_alert,
    describeAlertResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutMetrics.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAlert' smart constructor.
data DescribeAlert = DescribeAlert'
  { -- | The ARN of the alert to describe.
    alertArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAlert' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alertArn', 'describeAlert_alertArn' - The ARN of the alert to describe.
newDescribeAlert ::
  -- | 'alertArn'
  Prelude.Text ->
  DescribeAlert
newDescribeAlert pAlertArn_ =
  DescribeAlert' {alertArn = pAlertArn_}

-- | The ARN of the alert to describe.
describeAlert_alertArn :: Lens.Lens' DescribeAlert Prelude.Text
describeAlert_alertArn = Lens.lens (\DescribeAlert' {alertArn} -> alertArn) (\s@DescribeAlert' {} a -> s {alertArn = a} :: DescribeAlert)

instance Core.AWSRequest DescribeAlert where
  type
    AWSResponse DescribeAlert =
      DescribeAlertResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAlertResponse'
            Prelude.<$> (x Core..?> "Alert")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAlert

instance Prelude.NFData DescribeAlert

instance Core.ToHeaders DescribeAlert where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeAlert where
  toJSON DescribeAlert' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("AlertArn" Core..= alertArn)]
      )

instance Core.ToPath DescribeAlert where
  toPath = Prelude.const "/DescribeAlert"

instance Core.ToQuery DescribeAlert where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAlertResponse' smart constructor.
data DescribeAlertResponse = DescribeAlertResponse'
  { -- | Contains information about an alert.
    alert :: Prelude.Maybe Alert,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAlertResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alert', 'describeAlertResponse_alert' - Contains information about an alert.
--
-- 'httpStatus', 'describeAlertResponse_httpStatus' - The response's http status code.
newDescribeAlertResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAlertResponse
newDescribeAlertResponse pHttpStatus_ =
  DescribeAlertResponse'
    { alert = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains information about an alert.
describeAlertResponse_alert :: Lens.Lens' DescribeAlertResponse (Prelude.Maybe Alert)
describeAlertResponse_alert = Lens.lens (\DescribeAlertResponse' {alert} -> alert) (\s@DescribeAlertResponse' {} a -> s {alert = a} :: DescribeAlertResponse)

-- | The response's http status code.
describeAlertResponse_httpStatus :: Lens.Lens' DescribeAlertResponse Prelude.Int
describeAlertResponse_httpStatus = Lens.lens (\DescribeAlertResponse' {httpStatus} -> httpStatus) (\s@DescribeAlertResponse' {} a -> s {httpStatus = a} :: DescribeAlertResponse)

instance Prelude.NFData DescribeAlertResponse
