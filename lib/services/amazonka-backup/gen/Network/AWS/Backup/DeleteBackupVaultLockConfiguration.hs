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
-- Module      : Network.AWS.Backup.DeleteBackupVaultLockConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes Backup Vault Lock from a backup vault specified by a backup
-- vault name.
--
-- If the Vault Lock configuration is immutable, then you cannot delete
-- Vault Lock using API operations, and you will receive an
-- @InvalidRequestException@ if you attempt to do so. For more information,
-- see
-- <https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html Vault Lock>
-- in the /Backup Developer Guide/.
module Network.AWS.Backup.DeleteBackupVaultLockConfiguration
  ( -- * Creating a Request
    DeleteBackupVaultLockConfiguration (..),
    newDeleteBackupVaultLockConfiguration,

    -- * Request Lenses
    deleteBackupVaultLockConfiguration_backupVaultName,

    -- * Destructuring the Response
    DeleteBackupVaultLockConfigurationResponse (..),
    newDeleteBackupVaultLockConfigurationResponse,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteBackupVaultLockConfiguration' smart constructor.
data DeleteBackupVaultLockConfiguration = DeleteBackupVaultLockConfiguration'
  { -- | The name of the backup vault from which to delete Backup Vault Lock.
    backupVaultName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackupVaultLockConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupVaultName', 'deleteBackupVaultLockConfiguration_backupVaultName' - The name of the backup vault from which to delete Backup Vault Lock.
newDeleteBackupVaultLockConfiguration ::
  -- | 'backupVaultName'
  Prelude.Text ->
  DeleteBackupVaultLockConfiguration
newDeleteBackupVaultLockConfiguration
  pBackupVaultName_ =
    DeleteBackupVaultLockConfiguration'
      { backupVaultName =
          pBackupVaultName_
      }

-- | The name of the backup vault from which to delete Backup Vault Lock.
deleteBackupVaultLockConfiguration_backupVaultName :: Lens.Lens' DeleteBackupVaultLockConfiguration Prelude.Text
deleteBackupVaultLockConfiguration_backupVaultName = Lens.lens (\DeleteBackupVaultLockConfiguration' {backupVaultName} -> backupVaultName) (\s@DeleteBackupVaultLockConfiguration' {} a -> s {backupVaultName = a} :: DeleteBackupVaultLockConfiguration)

instance
  Core.AWSRequest
    DeleteBackupVaultLockConfiguration
  where
  type
    AWSResponse DeleteBackupVaultLockConfiguration =
      DeleteBackupVaultLockConfigurationResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteBackupVaultLockConfigurationResponse'

instance
  Prelude.Hashable
    DeleteBackupVaultLockConfiguration

instance
  Prelude.NFData
    DeleteBackupVaultLockConfiguration

instance
  Core.ToHeaders
    DeleteBackupVaultLockConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToPath
    DeleteBackupVaultLockConfiguration
  where
  toPath DeleteBackupVaultLockConfiguration' {..} =
    Prelude.mconcat
      [ "/backup-vaults/",
        Core.toBS backupVaultName,
        "/vault-lock"
      ]

instance
  Core.ToQuery
    DeleteBackupVaultLockConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteBackupVaultLockConfigurationResponse' smart constructor.
data DeleteBackupVaultLockConfigurationResponse = DeleteBackupVaultLockConfigurationResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackupVaultLockConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteBackupVaultLockConfigurationResponse ::
  DeleteBackupVaultLockConfigurationResponse
newDeleteBackupVaultLockConfigurationResponse =
  DeleteBackupVaultLockConfigurationResponse'

instance
  Prelude.NFData
    DeleteBackupVaultLockConfigurationResponse
