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
-- Module      : Network.AWS.QuickSight.DescribeThemePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the read and write permissions for a theme.
module Network.AWS.QuickSight.DescribeThemePermissions
  ( -- * Creating a Request
    DescribeThemePermissions (..),
    newDescribeThemePermissions,

    -- * Request Lenses
    describeThemePermissions_awsAccountId,
    describeThemePermissions_themeId,

    -- * Destructuring the Response
    DescribeThemePermissionsResponse (..),
    newDescribeThemePermissionsResponse,

    -- * Response Lenses
    describeThemePermissionsResponse_requestId,
    describeThemePermissionsResponse_themeArn,
    describeThemePermissionsResponse_themeId,
    describeThemePermissionsResponse_permissions,
    describeThemePermissionsResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeThemePermissions' smart constructor.
data DescribeThemePermissions = DescribeThemePermissions'
  { -- | The ID of the Amazon Web Services account that contains the theme that
    -- you\'re describing.
    awsAccountId :: Prelude.Text,
    -- | The ID for the theme that you want to describe permissions for.
    themeId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThemePermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'describeThemePermissions_awsAccountId' - The ID of the Amazon Web Services account that contains the theme that
-- you\'re describing.
--
-- 'themeId', 'describeThemePermissions_themeId' - The ID for the theme that you want to describe permissions for.
newDescribeThemePermissions ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'themeId'
  Prelude.Text ->
  DescribeThemePermissions
newDescribeThemePermissions pAwsAccountId_ pThemeId_ =
  DescribeThemePermissions'
    { awsAccountId =
        pAwsAccountId_,
      themeId = pThemeId_
    }

-- | The ID of the Amazon Web Services account that contains the theme that
-- you\'re describing.
describeThemePermissions_awsAccountId :: Lens.Lens' DescribeThemePermissions Prelude.Text
describeThemePermissions_awsAccountId = Lens.lens (\DescribeThemePermissions' {awsAccountId} -> awsAccountId) (\s@DescribeThemePermissions' {} a -> s {awsAccountId = a} :: DescribeThemePermissions)

-- | The ID for the theme that you want to describe permissions for.
describeThemePermissions_themeId :: Lens.Lens' DescribeThemePermissions Prelude.Text
describeThemePermissions_themeId = Lens.lens (\DescribeThemePermissions' {themeId} -> themeId) (\s@DescribeThemePermissions' {} a -> s {themeId = a} :: DescribeThemePermissions)

instance Core.AWSRequest DescribeThemePermissions where
  type
    AWSResponse DescribeThemePermissions =
      DescribeThemePermissionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeThemePermissionsResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "ThemeArn")
            Prelude.<*> (x Core..?> "ThemeId")
            Prelude.<*> (x Core..?> "Permissions")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeThemePermissions

instance Prelude.NFData DescribeThemePermissions

instance Core.ToHeaders DescribeThemePermissions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeThemePermissions where
  toPath DescribeThemePermissions' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/themes/",
        Core.toBS themeId,
        "/permissions"
      ]

instance Core.ToQuery DescribeThemePermissions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeThemePermissionsResponse' smart constructor.
data DescribeThemePermissionsResponse = DescribeThemePermissionsResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the theme.
    themeArn :: Prelude.Maybe Prelude.Text,
    -- | The ID for the theme.
    themeId :: Prelude.Maybe Prelude.Text,
    -- | A list of resource permissions set on the theme.
    permissions :: Prelude.Maybe (Prelude.NonEmpty ResourcePermission),
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThemePermissionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'describeThemePermissionsResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'themeArn', 'describeThemePermissionsResponse_themeArn' - The Amazon Resource Name (ARN) of the theme.
--
-- 'themeId', 'describeThemePermissionsResponse_themeId' - The ID for the theme.
--
-- 'permissions', 'describeThemePermissionsResponse_permissions' - A list of resource permissions set on the theme.
--
-- 'status', 'describeThemePermissionsResponse_status' - The HTTP status of the request.
newDescribeThemePermissionsResponse ::
  -- | 'status'
  Prelude.Int ->
  DescribeThemePermissionsResponse
newDescribeThemePermissionsResponse pStatus_ =
  DescribeThemePermissionsResponse'
    { requestId =
        Prelude.Nothing,
      themeArn = Prelude.Nothing,
      themeId = Prelude.Nothing,
      permissions = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
describeThemePermissionsResponse_requestId :: Lens.Lens' DescribeThemePermissionsResponse (Prelude.Maybe Prelude.Text)
describeThemePermissionsResponse_requestId = Lens.lens (\DescribeThemePermissionsResponse' {requestId} -> requestId) (\s@DescribeThemePermissionsResponse' {} a -> s {requestId = a} :: DescribeThemePermissionsResponse)

-- | The Amazon Resource Name (ARN) of the theme.
describeThemePermissionsResponse_themeArn :: Lens.Lens' DescribeThemePermissionsResponse (Prelude.Maybe Prelude.Text)
describeThemePermissionsResponse_themeArn = Lens.lens (\DescribeThemePermissionsResponse' {themeArn} -> themeArn) (\s@DescribeThemePermissionsResponse' {} a -> s {themeArn = a} :: DescribeThemePermissionsResponse)

-- | The ID for the theme.
describeThemePermissionsResponse_themeId :: Lens.Lens' DescribeThemePermissionsResponse (Prelude.Maybe Prelude.Text)
describeThemePermissionsResponse_themeId = Lens.lens (\DescribeThemePermissionsResponse' {themeId} -> themeId) (\s@DescribeThemePermissionsResponse' {} a -> s {themeId = a} :: DescribeThemePermissionsResponse)

-- | A list of resource permissions set on the theme.
describeThemePermissionsResponse_permissions :: Lens.Lens' DescribeThemePermissionsResponse (Prelude.Maybe (Prelude.NonEmpty ResourcePermission))
describeThemePermissionsResponse_permissions = Lens.lens (\DescribeThemePermissionsResponse' {permissions} -> permissions) (\s@DescribeThemePermissionsResponse' {} a -> s {permissions = a} :: DescribeThemePermissionsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The HTTP status of the request.
describeThemePermissionsResponse_status :: Lens.Lens' DescribeThemePermissionsResponse Prelude.Int
describeThemePermissionsResponse_status = Lens.lens (\DescribeThemePermissionsResponse' {status} -> status) (\s@DescribeThemePermissionsResponse' {} a -> s {status = a} :: DescribeThemePermissionsResponse)

instance
  Prelude.NFData
    DescribeThemePermissionsResponse
