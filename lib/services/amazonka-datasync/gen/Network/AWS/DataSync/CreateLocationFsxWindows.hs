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
-- Module      : Network.AWS.DataSync.CreateLocationFsxWindows
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an endpoint for an Amazon FSx for Windows File Server file
-- system.
module Network.AWS.DataSync.CreateLocationFsxWindows
  ( -- * Creating a Request
    CreateLocationFsxWindows (..),
    newCreateLocationFsxWindows,

    -- * Request Lenses
    createLocationFsxWindows_domain,
    createLocationFsxWindows_subdirectory,
    createLocationFsxWindows_tags,
    createLocationFsxWindows_fsxFilesystemArn,
    createLocationFsxWindows_securityGroupArns,
    createLocationFsxWindows_user,
    createLocationFsxWindows_password,

    -- * Destructuring the Response
    CreateLocationFsxWindowsResponse (..),
    newCreateLocationFsxWindowsResponse,

    -- * Response Lenses
    createLocationFsxWindowsResponse_locationArn,
    createLocationFsxWindowsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateLocationFsxWindows' smart constructor.
data CreateLocationFsxWindows = CreateLocationFsxWindows'
  { -- | The name of the Windows domain that the FSx for Windows File Server
    -- belongs to.
    domain :: Prelude.Maybe Prelude.Text,
    -- | A subdirectory in the location’s path. This subdirectory in the Amazon
    -- FSx for Windows File Server file system is used to read data from the
    -- Amazon FSx for Windows File Server source location or write data to the
    -- FSx for Windows File Server destination.
    subdirectory :: Prelude.Maybe Prelude.Text,
    -- | The key-value pair that represents a tag that you want to add to the
    -- resource. The value can be an empty string. This value helps you manage,
    -- filter, and search for your resources. We recommend that you create a
    -- name tag for your location.
    tags :: Prelude.Maybe [TagListEntry],
    -- | The Amazon Resource Name (ARN) for the FSx for Windows File Server file
    -- system.
    fsxFilesystemArn :: Prelude.Text,
    -- | The Amazon Resource Names (ARNs) of the security groups that are to use
    -- to configure the FSx for Windows File Server file system.
    securityGroupArns :: Prelude.NonEmpty Prelude.Text,
    -- | The user who has the permissions to access files and folders in the FSx
    -- for Windows File Server file system.
    --
    -- For information about choosing a user name that ensures sufficient
    -- permissions to files, folders, and metadata, see
    -- <create-fsx-location.html#FSxWuser user>.
    user :: Prelude.Text,
    -- | The password of the user who has the permissions to access files and
    -- folders in the FSx for Windows File Server file system.
    password :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLocationFsxWindows' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domain', 'createLocationFsxWindows_domain' - The name of the Windows domain that the FSx for Windows File Server
-- belongs to.
--
-- 'subdirectory', 'createLocationFsxWindows_subdirectory' - A subdirectory in the location’s path. This subdirectory in the Amazon
-- FSx for Windows File Server file system is used to read data from the
-- Amazon FSx for Windows File Server source location or write data to the
-- FSx for Windows File Server destination.
--
-- 'tags', 'createLocationFsxWindows_tags' - The key-value pair that represents a tag that you want to add to the
-- resource. The value can be an empty string. This value helps you manage,
-- filter, and search for your resources. We recommend that you create a
-- name tag for your location.
--
-- 'fsxFilesystemArn', 'createLocationFsxWindows_fsxFilesystemArn' - The Amazon Resource Name (ARN) for the FSx for Windows File Server file
-- system.
--
-- 'securityGroupArns', 'createLocationFsxWindows_securityGroupArns' - The Amazon Resource Names (ARNs) of the security groups that are to use
-- to configure the FSx for Windows File Server file system.
--
-- 'user', 'createLocationFsxWindows_user' - The user who has the permissions to access files and folders in the FSx
-- for Windows File Server file system.
--
-- For information about choosing a user name that ensures sufficient
-- permissions to files, folders, and metadata, see
-- <create-fsx-location.html#FSxWuser user>.
--
-- 'password', 'createLocationFsxWindows_password' - The password of the user who has the permissions to access files and
-- folders in the FSx for Windows File Server file system.
newCreateLocationFsxWindows ::
  -- | 'fsxFilesystemArn'
  Prelude.Text ->
  -- | 'securityGroupArns'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'user'
  Prelude.Text ->
  -- | 'password'
  Prelude.Text ->
  CreateLocationFsxWindows
newCreateLocationFsxWindows
  pFsxFilesystemArn_
  pSecurityGroupArns_
  pUser_
  pPassword_ =
    CreateLocationFsxWindows'
      { domain = Prelude.Nothing,
        subdirectory = Prelude.Nothing,
        tags = Prelude.Nothing,
        fsxFilesystemArn = pFsxFilesystemArn_,
        securityGroupArns =
          Lens.coerced Lens.# pSecurityGroupArns_,
        user = pUser_,
        password = Core._Sensitive Lens.# pPassword_
      }

-- | The name of the Windows domain that the FSx for Windows File Server
-- belongs to.
createLocationFsxWindows_domain :: Lens.Lens' CreateLocationFsxWindows (Prelude.Maybe Prelude.Text)
createLocationFsxWindows_domain = Lens.lens (\CreateLocationFsxWindows' {domain} -> domain) (\s@CreateLocationFsxWindows' {} a -> s {domain = a} :: CreateLocationFsxWindows)

-- | A subdirectory in the location’s path. This subdirectory in the Amazon
-- FSx for Windows File Server file system is used to read data from the
-- Amazon FSx for Windows File Server source location or write data to the
-- FSx for Windows File Server destination.
createLocationFsxWindows_subdirectory :: Lens.Lens' CreateLocationFsxWindows (Prelude.Maybe Prelude.Text)
createLocationFsxWindows_subdirectory = Lens.lens (\CreateLocationFsxWindows' {subdirectory} -> subdirectory) (\s@CreateLocationFsxWindows' {} a -> s {subdirectory = a} :: CreateLocationFsxWindows)

-- | The key-value pair that represents a tag that you want to add to the
-- resource. The value can be an empty string. This value helps you manage,
-- filter, and search for your resources. We recommend that you create a
-- name tag for your location.
createLocationFsxWindows_tags :: Lens.Lens' CreateLocationFsxWindows (Prelude.Maybe [TagListEntry])
createLocationFsxWindows_tags = Lens.lens (\CreateLocationFsxWindows' {tags} -> tags) (\s@CreateLocationFsxWindows' {} a -> s {tags = a} :: CreateLocationFsxWindows) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) for the FSx for Windows File Server file
-- system.
createLocationFsxWindows_fsxFilesystemArn :: Lens.Lens' CreateLocationFsxWindows Prelude.Text
createLocationFsxWindows_fsxFilesystemArn = Lens.lens (\CreateLocationFsxWindows' {fsxFilesystemArn} -> fsxFilesystemArn) (\s@CreateLocationFsxWindows' {} a -> s {fsxFilesystemArn = a} :: CreateLocationFsxWindows)

-- | The Amazon Resource Names (ARNs) of the security groups that are to use
-- to configure the FSx for Windows File Server file system.
createLocationFsxWindows_securityGroupArns :: Lens.Lens' CreateLocationFsxWindows (Prelude.NonEmpty Prelude.Text)
createLocationFsxWindows_securityGroupArns = Lens.lens (\CreateLocationFsxWindows' {securityGroupArns} -> securityGroupArns) (\s@CreateLocationFsxWindows' {} a -> s {securityGroupArns = a} :: CreateLocationFsxWindows) Prelude.. Lens.coerced

-- | The user who has the permissions to access files and folders in the FSx
-- for Windows File Server file system.
--
-- For information about choosing a user name that ensures sufficient
-- permissions to files, folders, and metadata, see
-- <create-fsx-location.html#FSxWuser user>.
createLocationFsxWindows_user :: Lens.Lens' CreateLocationFsxWindows Prelude.Text
createLocationFsxWindows_user = Lens.lens (\CreateLocationFsxWindows' {user} -> user) (\s@CreateLocationFsxWindows' {} a -> s {user = a} :: CreateLocationFsxWindows)

-- | The password of the user who has the permissions to access files and
-- folders in the FSx for Windows File Server file system.
createLocationFsxWindows_password :: Lens.Lens' CreateLocationFsxWindows Prelude.Text
createLocationFsxWindows_password = Lens.lens (\CreateLocationFsxWindows' {password} -> password) (\s@CreateLocationFsxWindows' {} a -> s {password = a} :: CreateLocationFsxWindows) Prelude.. Core._Sensitive

instance Core.AWSRequest CreateLocationFsxWindows where
  type
    AWSResponse CreateLocationFsxWindows =
      CreateLocationFsxWindowsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLocationFsxWindowsResponse'
            Prelude.<$> (x Core..?> "LocationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateLocationFsxWindows

instance Prelude.NFData CreateLocationFsxWindows

instance Core.ToHeaders CreateLocationFsxWindows where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.CreateLocationFsxWindows" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateLocationFsxWindows where
  toJSON CreateLocationFsxWindows' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Domain" Core..=) Prelude.<$> domain,
            ("Subdirectory" Core..=) Prelude.<$> subdirectory,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("FsxFilesystemArn" Core..= fsxFilesystemArn),
            Prelude.Just
              ("SecurityGroupArns" Core..= securityGroupArns),
            Prelude.Just ("User" Core..= user),
            Prelude.Just ("Password" Core..= password)
          ]
      )

instance Core.ToPath CreateLocationFsxWindows where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateLocationFsxWindows where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLocationFsxWindowsResponse' smart constructor.
data CreateLocationFsxWindowsResponse = CreateLocationFsxWindowsResponse'
  { -- | The Amazon Resource Name (ARN) of the FSx for Windows File Server file
    -- system location that is created.
    locationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLocationFsxWindowsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locationArn', 'createLocationFsxWindowsResponse_locationArn' - The Amazon Resource Name (ARN) of the FSx for Windows File Server file
-- system location that is created.
--
-- 'httpStatus', 'createLocationFsxWindowsResponse_httpStatus' - The response's http status code.
newCreateLocationFsxWindowsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLocationFsxWindowsResponse
newCreateLocationFsxWindowsResponse pHttpStatus_ =
  CreateLocationFsxWindowsResponse'
    { locationArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the FSx for Windows File Server file
-- system location that is created.
createLocationFsxWindowsResponse_locationArn :: Lens.Lens' CreateLocationFsxWindowsResponse (Prelude.Maybe Prelude.Text)
createLocationFsxWindowsResponse_locationArn = Lens.lens (\CreateLocationFsxWindowsResponse' {locationArn} -> locationArn) (\s@CreateLocationFsxWindowsResponse' {} a -> s {locationArn = a} :: CreateLocationFsxWindowsResponse)

-- | The response's http status code.
createLocationFsxWindowsResponse_httpStatus :: Lens.Lens' CreateLocationFsxWindowsResponse Prelude.Int
createLocationFsxWindowsResponse_httpStatus = Lens.lens (\CreateLocationFsxWindowsResponse' {httpStatus} -> httpStatus) (\s@CreateLocationFsxWindowsResponse' {} a -> s {httpStatus = a} :: CreateLocationFsxWindowsResponse)

instance
  Prelude.NFData
    CreateLocationFsxWindowsResponse
