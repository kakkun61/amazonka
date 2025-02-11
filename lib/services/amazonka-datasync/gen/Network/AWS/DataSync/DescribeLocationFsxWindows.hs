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
-- Module      : Network.AWS.DataSync.DescribeLocationFsxWindows
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns metadata, such as the path information about an Amazon FSx for
-- Windows File Server location.
module Network.AWS.DataSync.DescribeLocationFsxWindows
  ( -- * Creating a Request
    DescribeLocationFsxWindows (..),
    newDescribeLocationFsxWindows,

    -- * Request Lenses
    describeLocationFsxWindows_locationArn,

    -- * Destructuring the Response
    DescribeLocationFsxWindowsResponse (..),
    newDescribeLocationFsxWindowsResponse,

    -- * Response Lenses
    describeLocationFsxWindowsResponse_creationTime,
    describeLocationFsxWindowsResponse_securityGroupArns,
    describeLocationFsxWindowsResponse_domain,
    describeLocationFsxWindowsResponse_locationUri,
    describeLocationFsxWindowsResponse_user,
    describeLocationFsxWindowsResponse_locationArn,
    describeLocationFsxWindowsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLocationFsxWindows' smart constructor.
data DescribeLocationFsxWindows = DescribeLocationFsxWindows'
  { -- | The Amazon Resource Name (ARN) of the FSx for Windows File Server
    -- location to describe.
    locationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLocationFsxWindows' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locationArn', 'describeLocationFsxWindows_locationArn' - The Amazon Resource Name (ARN) of the FSx for Windows File Server
-- location to describe.
newDescribeLocationFsxWindows ::
  -- | 'locationArn'
  Prelude.Text ->
  DescribeLocationFsxWindows
newDescribeLocationFsxWindows pLocationArn_ =
  DescribeLocationFsxWindows'
    { locationArn =
        pLocationArn_
    }

-- | The Amazon Resource Name (ARN) of the FSx for Windows File Server
-- location to describe.
describeLocationFsxWindows_locationArn :: Lens.Lens' DescribeLocationFsxWindows Prelude.Text
describeLocationFsxWindows_locationArn = Lens.lens (\DescribeLocationFsxWindows' {locationArn} -> locationArn) (\s@DescribeLocationFsxWindows' {} a -> s {locationArn = a} :: DescribeLocationFsxWindows)

instance Core.AWSRequest DescribeLocationFsxWindows where
  type
    AWSResponse DescribeLocationFsxWindows =
      DescribeLocationFsxWindowsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeLocationFsxWindowsResponse'
            Prelude.<$> (x Core..?> "CreationTime")
            Prelude.<*> (x Core..?> "SecurityGroupArns")
            Prelude.<*> (x Core..?> "Domain")
            Prelude.<*> (x Core..?> "LocationUri")
            Prelude.<*> (x Core..?> "User")
            Prelude.<*> (x Core..?> "LocationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeLocationFsxWindows

instance Prelude.NFData DescribeLocationFsxWindows

instance Core.ToHeaders DescribeLocationFsxWindows where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.DescribeLocationFsxWindows" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeLocationFsxWindows where
  toJSON DescribeLocationFsxWindows' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("LocationArn" Core..= locationArn)]
      )

instance Core.ToPath DescribeLocationFsxWindows where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeLocationFsxWindows where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeLocationFsxWindowsResponse' smart constructor.
data DescribeLocationFsxWindowsResponse = DescribeLocationFsxWindowsResponse'
  { -- | The time that the FSx for Windows File Server location was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Names (ARNs) of the security groups that are
    -- configured for the FSx for Windows File Server file system.
    securityGroupArns :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The name of the Windows domain that the FSx for Windows File Server
    -- belongs to.
    domain :: Prelude.Maybe Prelude.Text,
    -- | The URL of the FSx for Windows File Server location that was described.
    locationUri :: Prelude.Maybe Prelude.Text,
    -- | The user who has the permissions to access files and folders in the FSx
    -- for Windows File Server file system.
    user :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the FSx for Windows File Server
    -- location that was described.
    locationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLocationFsxWindowsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'describeLocationFsxWindowsResponse_creationTime' - The time that the FSx for Windows File Server location was created.
--
-- 'securityGroupArns', 'describeLocationFsxWindowsResponse_securityGroupArns' - The Amazon Resource Names (ARNs) of the security groups that are
-- configured for the FSx for Windows File Server file system.
--
-- 'domain', 'describeLocationFsxWindowsResponse_domain' - The name of the Windows domain that the FSx for Windows File Server
-- belongs to.
--
-- 'locationUri', 'describeLocationFsxWindowsResponse_locationUri' - The URL of the FSx for Windows File Server location that was described.
--
-- 'user', 'describeLocationFsxWindowsResponse_user' - The user who has the permissions to access files and folders in the FSx
-- for Windows File Server file system.
--
-- 'locationArn', 'describeLocationFsxWindowsResponse_locationArn' - The Amazon Resource Name (ARN) of the FSx for Windows File Server
-- location that was described.
--
-- 'httpStatus', 'describeLocationFsxWindowsResponse_httpStatus' - The response's http status code.
newDescribeLocationFsxWindowsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLocationFsxWindowsResponse
newDescribeLocationFsxWindowsResponse pHttpStatus_ =
  DescribeLocationFsxWindowsResponse'
    { creationTime =
        Prelude.Nothing,
      securityGroupArns = Prelude.Nothing,
      domain = Prelude.Nothing,
      locationUri = Prelude.Nothing,
      user = Prelude.Nothing,
      locationArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time that the FSx for Windows File Server location was created.
describeLocationFsxWindowsResponse_creationTime :: Lens.Lens' DescribeLocationFsxWindowsResponse (Prelude.Maybe Prelude.UTCTime)
describeLocationFsxWindowsResponse_creationTime = Lens.lens (\DescribeLocationFsxWindowsResponse' {creationTime} -> creationTime) (\s@DescribeLocationFsxWindowsResponse' {} a -> s {creationTime = a} :: DescribeLocationFsxWindowsResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Names (ARNs) of the security groups that are
-- configured for the FSx for Windows File Server file system.
describeLocationFsxWindowsResponse_securityGroupArns :: Lens.Lens' DescribeLocationFsxWindowsResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
describeLocationFsxWindowsResponse_securityGroupArns = Lens.lens (\DescribeLocationFsxWindowsResponse' {securityGroupArns} -> securityGroupArns) (\s@DescribeLocationFsxWindowsResponse' {} a -> s {securityGroupArns = a} :: DescribeLocationFsxWindowsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the Windows domain that the FSx for Windows File Server
-- belongs to.
describeLocationFsxWindowsResponse_domain :: Lens.Lens' DescribeLocationFsxWindowsResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxWindowsResponse_domain = Lens.lens (\DescribeLocationFsxWindowsResponse' {domain} -> domain) (\s@DescribeLocationFsxWindowsResponse' {} a -> s {domain = a} :: DescribeLocationFsxWindowsResponse)

-- | The URL of the FSx for Windows File Server location that was described.
describeLocationFsxWindowsResponse_locationUri :: Lens.Lens' DescribeLocationFsxWindowsResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxWindowsResponse_locationUri = Lens.lens (\DescribeLocationFsxWindowsResponse' {locationUri} -> locationUri) (\s@DescribeLocationFsxWindowsResponse' {} a -> s {locationUri = a} :: DescribeLocationFsxWindowsResponse)

-- | The user who has the permissions to access files and folders in the FSx
-- for Windows File Server file system.
describeLocationFsxWindowsResponse_user :: Lens.Lens' DescribeLocationFsxWindowsResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxWindowsResponse_user = Lens.lens (\DescribeLocationFsxWindowsResponse' {user} -> user) (\s@DescribeLocationFsxWindowsResponse' {} a -> s {user = a} :: DescribeLocationFsxWindowsResponse)

-- | The Amazon Resource Name (ARN) of the FSx for Windows File Server
-- location that was described.
describeLocationFsxWindowsResponse_locationArn :: Lens.Lens' DescribeLocationFsxWindowsResponse (Prelude.Maybe Prelude.Text)
describeLocationFsxWindowsResponse_locationArn = Lens.lens (\DescribeLocationFsxWindowsResponse' {locationArn} -> locationArn) (\s@DescribeLocationFsxWindowsResponse' {} a -> s {locationArn = a} :: DescribeLocationFsxWindowsResponse)

-- | The response's http status code.
describeLocationFsxWindowsResponse_httpStatus :: Lens.Lens' DescribeLocationFsxWindowsResponse Prelude.Int
describeLocationFsxWindowsResponse_httpStatus = Lens.lens (\DescribeLocationFsxWindowsResponse' {httpStatus} -> httpStatus) (\s@DescribeLocationFsxWindowsResponse' {} a -> s {httpStatus = a} :: DescribeLocationFsxWindowsResponse)

instance
  Prelude.NFData
    DescribeLocationFsxWindowsResponse
