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
-- Module      : Network.AWS.ChimeSDKIdentity.DescribeAppInstanceUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the full details of an @AppInstanceUser@.
module Network.AWS.ChimeSDKIdentity.DescribeAppInstanceUser
  ( -- * Creating a Request
    DescribeAppInstanceUser (..),
    newDescribeAppInstanceUser,

    -- * Request Lenses
    describeAppInstanceUser_appInstanceUserArn,

    -- * Destructuring the Response
    DescribeAppInstanceUserResponse (..),
    newDescribeAppInstanceUserResponse,

    -- * Response Lenses
    describeAppInstanceUserResponse_appInstanceUser,
    describeAppInstanceUserResponse_httpStatus,
  )
where

import Network.AWS.ChimeSDKIdentity.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAppInstanceUser' smart constructor.
data DescribeAppInstanceUser = DescribeAppInstanceUser'
  { -- | The ARN of the @AppInstanceUser@.
    appInstanceUserArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAppInstanceUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceUserArn', 'describeAppInstanceUser_appInstanceUserArn' - The ARN of the @AppInstanceUser@.
newDescribeAppInstanceUser ::
  -- | 'appInstanceUserArn'
  Prelude.Text ->
  DescribeAppInstanceUser
newDescribeAppInstanceUser pAppInstanceUserArn_ =
  DescribeAppInstanceUser'
    { appInstanceUserArn =
        pAppInstanceUserArn_
    }

-- | The ARN of the @AppInstanceUser@.
describeAppInstanceUser_appInstanceUserArn :: Lens.Lens' DescribeAppInstanceUser Prelude.Text
describeAppInstanceUser_appInstanceUserArn = Lens.lens (\DescribeAppInstanceUser' {appInstanceUserArn} -> appInstanceUserArn) (\s@DescribeAppInstanceUser' {} a -> s {appInstanceUserArn = a} :: DescribeAppInstanceUser)

instance Core.AWSRequest DescribeAppInstanceUser where
  type
    AWSResponse DescribeAppInstanceUser =
      DescribeAppInstanceUserResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAppInstanceUserResponse'
            Prelude.<$> (x Core..?> "AppInstanceUser")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAppInstanceUser

instance Prelude.NFData DescribeAppInstanceUser

instance Core.ToHeaders DescribeAppInstanceUser where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeAppInstanceUser where
  toPath DescribeAppInstanceUser' {..} =
    Prelude.mconcat
      [ "/app-instance-users/",
        Core.toBS appInstanceUserArn
      ]

instance Core.ToQuery DescribeAppInstanceUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAppInstanceUserResponse' smart constructor.
data DescribeAppInstanceUserResponse = DescribeAppInstanceUserResponse'
  { -- | The name of the @AppInstanceUser@.
    appInstanceUser :: Prelude.Maybe AppInstanceUser,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAppInstanceUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceUser', 'describeAppInstanceUserResponse_appInstanceUser' - The name of the @AppInstanceUser@.
--
-- 'httpStatus', 'describeAppInstanceUserResponse_httpStatus' - The response's http status code.
newDescribeAppInstanceUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAppInstanceUserResponse
newDescribeAppInstanceUserResponse pHttpStatus_ =
  DescribeAppInstanceUserResponse'
    { appInstanceUser =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the @AppInstanceUser@.
describeAppInstanceUserResponse_appInstanceUser :: Lens.Lens' DescribeAppInstanceUserResponse (Prelude.Maybe AppInstanceUser)
describeAppInstanceUserResponse_appInstanceUser = Lens.lens (\DescribeAppInstanceUserResponse' {appInstanceUser} -> appInstanceUser) (\s@DescribeAppInstanceUserResponse' {} a -> s {appInstanceUser = a} :: DescribeAppInstanceUserResponse)

-- | The response's http status code.
describeAppInstanceUserResponse_httpStatus :: Lens.Lens' DescribeAppInstanceUserResponse Prelude.Int
describeAppInstanceUserResponse_httpStatus = Lens.lens (\DescribeAppInstanceUserResponse' {httpStatus} -> httpStatus) (\s@DescribeAppInstanceUserResponse' {} a -> s {httpStatus = a} :: DescribeAppInstanceUserResponse)

instance
  Prelude.NFData
    DescribeAppInstanceUserResponse
