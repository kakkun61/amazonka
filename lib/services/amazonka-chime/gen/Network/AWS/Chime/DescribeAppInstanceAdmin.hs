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
-- Module      : Network.AWS.Chime.DescribeAppInstanceAdmin
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the full details of an @AppInstanceAdmin@.
module Network.AWS.Chime.DescribeAppInstanceAdmin
  ( -- * Creating a Request
    DescribeAppInstanceAdmin (..),
    newDescribeAppInstanceAdmin,

    -- * Request Lenses
    describeAppInstanceAdmin_appInstanceAdminArn,
    describeAppInstanceAdmin_appInstanceArn,

    -- * Destructuring the Response
    DescribeAppInstanceAdminResponse (..),
    newDescribeAppInstanceAdminResponse,

    -- * Response Lenses
    describeAppInstanceAdminResponse_appInstanceAdmin,
    describeAppInstanceAdminResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAppInstanceAdmin' smart constructor.
data DescribeAppInstanceAdmin = DescribeAppInstanceAdmin'
  { -- | The ARN of the @AppInstanceAdmin@.
    appInstanceAdminArn :: Prelude.Text,
    -- | The ARN of the @AppInstance@.
    appInstanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAppInstanceAdmin' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceAdminArn', 'describeAppInstanceAdmin_appInstanceAdminArn' - The ARN of the @AppInstanceAdmin@.
--
-- 'appInstanceArn', 'describeAppInstanceAdmin_appInstanceArn' - The ARN of the @AppInstance@.
newDescribeAppInstanceAdmin ::
  -- | 'appInstanceAdminArn'
  Prelude.Text ->
  -- | 'appInstanceArn'
  Prelude.Text ->
  DescribeAppInstanceAdmin
newDescribeAppInstanceAdmin
  pAppInstanceAdminArn_
  pAppInstanceArn_ =
    DescribeAppInstanceAdmin'
      { appInstanceAdminArn =
          pAppInstanceAdminArn_,
        appInstanceArn = pAppInstanceArn_
      }

-- | The ARN of the @AppInstanceAdmin@.
describeAppInstanceAdmin_appInstanceAdminArn :: Lens.Lens' DescribeAppInstanceAdmin Prelude.Text
describeAppInstanceAdmin_appInstanceAdminArn = Lens.lens (\DescribeAppInstanceAdmin' {appInstanceAdminArn} -> appInstanceAdminArn) (\s@DescribeAppInstanceAdmin' {} a -> s {appInstanceAdminArn = a} :: DescribeAppInstanceAdmin)

-- | The ARN of the @AppInstance@.
describeAppInstanceAdmin_appInstanceArn :: Lens.Lens' DescribeAppInstanceAdmin Prelude.Text
describeAppInstanceAdmin_appInstanceArn = Lens.lens (\DescribeAppInstanceAdmin' {appInstanceArn} -> appInstanceArn) (\s@DescribeAppInstanceAdmin' {} a -> s {appInstanceArn = a} :: DescribeAppInstanceAdmin)

instance Core.AWSRequest DescribeAppInstanceAdmin where
  type
    AWSResponse DescribeAppInstanceAdmin =
      DescribeAppInstanceAdminResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAppInstanceAdminResponse'
            Prelude.<$> (x Core..?> "AppInstanceAdmin")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeAppInstanceAdmin

instance Prelude.NFData DescribeAppInstanceAdmin

instance Core.ToHeaders DescribeAppInstanceAdmin where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeAppInstanceAdmin where
  toPath DescribeAppInstanceAdmin' {..} =
    Prelude.mconcat
      [ "/app-instances/",
        Core.toBS appInstanceArn,
        "/admins/",
        Core.toBS appInstanceAdminArn
      ]

instance Core.ToQuery DescribeAppInstanceAdmin where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAppInstanceAdminResponse' smart constructor.
data DescribeAppInstanceAdminResponse = DescribeAppInstanceAdminResponse'
  { -- | The ARN and name of the @AppInstanceUser@, the ARN of the @AppInstance@,
    -- and the created and last-updated timestamps. All timestamps use epoch
    -- milliseconds.
    appInstanceAdmin :: Prelude.Maybe AppInstanceAdmin,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAppInstanceAdminResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appInstanceAdmin', 'describeAppInstanceAdminResponse_appInstanceAdmin' - The ARN and name of the @AppInstanceUser@, the ARN of the @AppInstance@,
-- and the created and last-updated timestamps. All timestamps use epoch
-- milliseconds.
--
-- 'httpStatus', 'describeAppInstanceAdminResponse_httpStatus' - The response's http status code.
newDescribeAppInstanceAdminResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeAppInstanceAdminResponse
newDescribeAppInstanceAdminResponse pHttpStatus_ =
  DescribeAppInstanceAdminResponse'
    { appInstanceAdmin =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN and name of the @AppInstanceUser@, the ARN of the @AppInstance@,
-- and the created and last-updated timestamps. All timestamps use epoch
-- milliseconds.
describeAppInstanceAdminResponse_appInstanceAdmin :: Lens.Lens' DescribeAppInstanceAdminResponse (Prelude.Maybe AppInstanceAdmin)
describeAppInstanceAdminResponse_appInstanceAdmin = Lens.lens (\DescribeAppInstanceAdminResponse' {appInstanceAdmin} -> appInstanceAdmin) (\s@DescribeAppInstanceAdminResponse' {} a -> s {appInstanceAdmin = a} :: DescribeAppInstanceAdminResponse)

-- | The response's http status code.
describeAppInstanceAdminResponse_httpStatus :: Lens.Lens' DescribeAppInstanceAdminResponse Prelude.Int
describeAppInstanceAdminResponse_httpStatus = Lens.lens (\DescribeAppInstanceAdminResponse' {httpStatus} -> httpStatus) (\s@DescribeAppInstanceAdminResponse' {} a -> s {httpStatus = a} :: DescribeAppInstanceAdminResponse)

instance
  Prelude.NFData
    DescribeAppInstanceAdminResponse
