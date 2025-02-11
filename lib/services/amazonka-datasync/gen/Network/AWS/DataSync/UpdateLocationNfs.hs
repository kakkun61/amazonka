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
-- Module      : Network.AWS.DataSync.UpdateLocationNfs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates some of the parameters of a previously created location for
-- Network File System (NFS) access. For information about creating an NFS
-- location, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html Creating a location for NFS>.
module Network.AWS.DataSync.UpdateLocationNfs
  ( -- * Creating a Request
    UpdateLocationNfs (..),
    newUpdateLocationNfs,

    -- * Request Lenses
    updateLocationNfs_onPremConfig,
    updateLocationNfs_subdirectory,
    updateLocationNfs_mountOptions,
    updateLocationNfs_locationArn,

    -- * Destructuring the Response
    UpdateLocationNfsResponse (..),
    newUpdateLocationNfsResponse,

    -- * Response Lenses
    updateLocationNfsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateLocationNfs' smart constructor.
data UpdateLocationNfs = UpdateLocationNfs'
  { onPremConfig :: Prelude.Maybe OnPremConfig,
    -- | The subdirectory in the NFS file system that is used to read data from
    -- the NFS source location or write data to the NFS destination. The NFS
    -- path should be a path that\'s exported by the NFS server, or a
    -- subdirectory of that path. The path should be such that it can be
    -- mounted by other NFS clients in your network.
    --
    -- To see all the paths exported by your NFS server, run
    -- \"@showmount -e nfs-server-name@\" from an NFS client that has access to
    -- your server. You can specify any directory that appears in the results,
    -- and any subdirectory of that directory. Ensure that the NFS export is
    -- accessible without Kerberos authentication.
    --
    -- To transfer all the data in the folder that you specified, DataSync must
    -- have permissions to read all the data. To ensure this, either configure
    -- the NFS export with @no_root_squash@, or ensure that the files you want
    -- DataSync to access have permissions that allow read access for all
    -- users. Doing either option enables the agent to read the files. For the
    -- agent to access directories, you must additionally enable all execute
    -- access.
    --
    -- If you are copying data to or from your Snowcone device, see
    -- <https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone NFS Server on Snowcone>
    -- for more information.
    --
    -- For information about NFS export configuration, see 18.7. The
    -- \/etc\/exports Configuration File in the Red Hat Enterprise Linux
    -- documentation.
    subdirectory :: Prelude.Maybe Prelude.Text,
    mountOptions :: Prelude.Maybe NfsMountOptions,
    -- | The Amazon Resource Name (ARN) of the NFS location to update.
    locationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLocationNfs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'onPremConfig', 'updateLocationNfs_onPremConfig' - Undocumented member.
--
-- 'subdirectory', 'updateLocationNfs_subdirectory' - The subdirectory in the NFS file system that is used to read data from
-- the NFS source location or write data to the NFS destination. The NFS
-- path should be a path that\'s exported by the NFS server, or a
-- subdirectory of that path. The path should be such that it can be
-- mounted by other NFS clients in your network.
--
-- To see all the paths exported by your NFS server, run
-- \"@showmount -e nfs-server-name@\" from an NFS client that has access to
-- your server. You can specify any directory that appears in the results,
-- and any subdirectory of that directory. Ensure that the NFS export is
-- accessible without Kerberos authentication.
--
-- To transfer all the data in the folder that you specified, DataSync must
-- have permissions to read all the data. To ensure this, either configure
-- the NFS export with @no_root_squash@, or ensure that the files you want
-- DataSync to access have permissions that allow read access for all
-- users. Doing either option enables the agent to read the files. For the
-- agent to access directories, you must additionally enable all execute
-- access.
--
-- If you are copying data to or from your Snowcone device, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone NFS Server on Snowcone>
-- for more information.
--
-- For information about NFS export configuration, see 18.7. The
-- \/etc\/exports Configuration File in the Red Hat Enterprise Linux
-- documentation.
--
-- 'mountOptions', 'updateLocationNfs_mountOptions' - Undocumented member.
--
-- 'locationArn', 'updateLocationNfs_locationArn' - The Amazon Resource Name (ARN) of the NFS location to update.
newUpdateLocationNfs ::
  -- | 'locationArn'
  Prelude.Text ->
  UpdateLocationNfs
newUpdateLocationNfs pLocationArn_ =
  UpdateLocationNfs'
    { onPremConfig = Prelude.Nothing,
      subdirectory = Prelude.Nothing,
      mountOptions = Prelude.Nothing,
      locationArn = pLocationArn_
    }

-- | Undocumented member.
updateLocationNfs_onPremConfig :: Lens.Lens' UpdateLocationNfs (Prelude.Maybe OnPremConfig)
updateLocationNfs_onPremConfig = Lens.lens (\UpdateLocationNfs' {onPremConfig} -> onPremConfig) (\s@UpdateLocationNfs' {} a -> s {onPremConfig = a} :: UpdateLocationNfs)

-- | The subdirectory in the NFS file system that is used to read data from
-- the NFS source location or write data to the NFS destination. The NFS
-- path should be a path that\'s exported by the NFS server, or a
-- subdirectory of that path. The path should be such that it can be
-- mounted by other NFS clients in your network.
--
-- To see all the paths exported by your NFS server, run
-- \"@showmount -e nfs-server-name@\" from an NFS client that has access to
-- your server. You can specify any directory that appears in the results,
-- and any subdirectory of that directory. Ensure that the NFS export is
-- accessible without Kerberos authentication.
--
-- To transfer all the data in the folder that you specified, DataSync must
-- have permissions to read all the data. To ensure this, either configure
-- the NFS export with @no_root_squash@, or ensure that the files you want
-- DataSync to access have permissions that allow read access for all
-- users. Doing either option enables the agent to read the files. For the
-- agent to access directories, you must additionally enable all execute
-- access.
--
-- If you are copying data to or from your Snowcone device, see
-- <https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone NFS Server on Snowcone>
-- for more information.
--
-- For information about NFS export configuration, see 18.7. The
-- \/etc\/exports Configuration File in the Red Hat Enterprise Linux
-- documentation.
updateLocationNfs_subdirectory :: Lens.Lens' UpdateLocationNfs (Prelude.Maybe Prelude.Text)
updateLocationNfs_subdirectory = Lens.lens (\UpdateLocationNfs' {subdirectory} -> subdirectory) (\s@UpdateLocationNfs' {} a -> s {subdirectory = a} :: UpdateLocationNfs)

-- | Undocumented member.
updateLocationNfs_mountOptions :: Lens.Lens' UpdateLocationNfs (Prelude.Maybe NfsMountOptions)
updateLocationNfs_mountOptions = Lens.lens (\UpdateLocationNfs' {mountOptions} -> mountOptions) (\s@UpdateLocationNfs' {} a -> s {mountOptions = a} :: UpdateLocationNfs)

-- | The Amazon Resource Name (ARN) of the NFS location to update.
updateLocationNfs_locationArn :: Lens.Lens' UpdateLocationNfs Prelude.Text
updateLocationNfs_locationArn = Lens.lens (\UpdateLocationNfs' {locationArn} -> locationArn) (\s@UpdateLocationNfs' {} a -> s {locationArn = a} :: UpdateLocationNfs)

instance Core.AWSRequest UpdateLocationNfs where
  type
    AWSResponse UpdateLocationNfs =
      UpdateLocationNfsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateLocationNfsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateLocationNfs

instance Prelude.NFData UpdateLocationNfs

instance Core.ToHeaders UpdateLocationNfs where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "FmrsService.UpdateLocationNfs" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateLocationNfs where
  toJSON UpdateLocationNfs' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("OnPremConfig" Core..=) Prelude.<$> onPremConfig,
            ("Subdirectory" Core..=) Prelude.<$> subdirectory,
            ("MountOptions" Core..=) Prelude.<$> mountOptions,
            Prelude.Just ("LocationArn" Core..= locationArn)
          ]
      )

instance Core.ToPath UpdateLocationNfs where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateLocationNfs where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateLocationNfsResponse' smart constructor.
data UpdateLocationNfsResponse = UpdateLocationNfsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateLocationNfsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateLocationNfsResponse_httpStatus' - The response's http status code.
newUpdateLocationNfsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateLocationNfsResponse
newUpdateLocationNfsResponse pHttpStatus_ =
  UpdateLocationNfsResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateLocationNfsResponse_httpStatus :: Lens.Lens' UpdateLocationNfsResponse Prelude.Int
updateLocationNfsResponse_httpStatus = Lens.lens (\UpdateLocationNfsResponse' {httpStatus} -> httpStatus) (\s@UpdateLocationNfsResponse' {} a -> s {httpStatus = a} :: UpdateLocationNfsResponse)

instance Prelude.NFData UpdateLocationNfsResponse
