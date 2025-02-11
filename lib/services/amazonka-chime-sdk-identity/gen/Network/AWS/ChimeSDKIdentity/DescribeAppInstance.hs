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
-- Module      : Network.AWS.ChimeSDKIdentity.DescribeAppInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the full details of an @AppInstance@.
module Network.AWS.ChimeSDKIdentity.DescribeAppInstance
  ( -- * Creating a Request
    DescribeAppInstance (..),
    newDescribeAppInstance,

    -- * Request Lenses
    describeAppInstance_appInstanceArn,

    -- * Destructuring the Response
    DescribeAppInstanceResponse (..),
    newDescribeAppInstanceResponse,

    -- * Response Lenses
    describeAppInstanceResponse_appInstance,
    describeAppInstanceResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKIdentity.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAppInstance' smart constructor.
data DescribeAppInstance = DescribeAppInstance'
  { -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAppInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceArn', 'describeAppInstance_appInstanceArn' - The ARN of the @AppInstance@.
newDescribeAppInstance ::
  -- | 'appInstanceArn'
  Prelude.Text ->
  DescribeAppInstance
newDescribeAppInstance pAppInstanceArn_ =
  DescribeAppInstance'
    { appInstanceArn =
        pAppInstanceArn_
    }

-- | The ARN of the @AppInstance@.
describeAppInstance_appInstanceArn :: Lens.Lens' DescribeAppInstance Prelude.Text
describeAppInstance_appInstanceArn = Lens.lens (\DescribeAppInstance' {appInstanceArn} -> appInstanceArn) (\s@DescribeAppInstance' {} a -> s {appInstanceArn = a} :: DescribeAppInstance)

instance Core.AWSRequest DescribeAppInstance where
  type
    AWSResponse DescribeAppInstance =
      DescribeAppInstanceResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAppInstanceResponse'
            Prelude.<$> (x Core..?> "AppInstance")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAppInstance

instance Prelude.NFData DescribeAppInstance

instance Core.ToHeaders DescribeAppInstance where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeAppInstance where
  toPath DescribeAppInstance' {..} =
    Prelude.mconcat
      ["/app-instances/", Core.toBS appInstanceArn]

instance Core.ToQuery DescribeAppInstance where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAppInstanceResponse' smart constructor.
data DescribeAppInstanceResponse = DescribeAppInstanceResponse'
  { -- | The ARN, metadata, created and last-updated timestamps, and the name of
    -- the @AppInstance@. All timestamps use epoch milliseconds.
    appInstance :: Prelude.Maybe AppInstance,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAppInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstance', 'describeAppInstanceResponse_appInstance' - The ARN, metadata, created and last-updated timestamps, and the name of
-- the @AppInstance@. All timestamps use epoch milliseconds.
--
-- 'httpStatus', 'describeAppInstanceResponse_httpStatus' - The response's http status code.
newDescribeAppInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAppInstanceResponse
newDescribeAppInstanceResponse pHttpStatus_ =
  DescribeAppInstanceResponse'
    { appInstance =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN, metadata, created and last-updated timestamps, and the name of
-- the @AppInstance@. All timestamps use epoch milliseconds.
describeAppInstanceResponse_appInstance :: Lens.Lens' DescribeAppInstanceResponse (Prelude.Maybe AppInstance)
describeAppInstanceResponse_appInstance = Lens.lens (\DescribeAppInstanceResponse' {appInstance} -> appInstance) (\s@DescribeAppInstanceResponse' {} a -> s {appInstance = a} :: DescribeAppInstanceResponse)

-- | The response's http status code.
describeAppInstanceResponse_httpStatus :: Lens.Lens' DescribeAppInstanceResponse Prelude.Int
describeAppInstanceResponse_httpStatus = Lens.lens (\DescribeAppInstanceResponse' {httpStatus} -> httpStatus) (\s@DescribeAppInstanceResponse' {} a -> s {httpStatus = a} :: DescribeAppInstanceResponse)

instance Prelude.NFData DescribeAppInstanceResponse
