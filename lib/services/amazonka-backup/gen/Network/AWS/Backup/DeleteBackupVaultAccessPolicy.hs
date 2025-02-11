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
-- Module      : Network.AWS.Backup.DeleteBackupVaultAccessPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the policy document that manages permissions on a backup vault.
module Network.AWS.Backup.DeleteBackupVaultAccessPolicy
  ( -- * Creating a Request
    DeleteBackupVaultAccessPolicy (..),
    newDeleteBackupVaultAccessPolicy,

    -- * Request Lenses
    deleteBackupVaultAccessPolicy_backupVaultName,

    -- * Destructuring the Response
    DeleteBackupVaultAccessPolicyResponse (..),
    newDeleteBackupVaultAccessPolicyResponse,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteBackupVaultAccessPolicy' smart constructor.
data DeleteBackupVaultAccessPolicy = DeleteBackupVaultAccessPolicy'
  { -- | The name of a logical container where backups are stored. Backup vaults
    -- are identified by names that are unique to the account used to create
    -- them and the Amazon Web Services Region where they are created. They
    -- consist of lowercase letters, numbers, and hyphens.
    backupVaultName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackupVaultAccessPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupVaultName', 'deleteBackupVaultAccessPolicy_backupVaultName' - The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
newDeleteBackupVaultAccessPolicy ::
  -- | 'backupVaultName'
  Prelude.Text ->
  DeleteBackupVaultAccessPolicy
newDeleteBackupVaultAccessPolicy pBackupVaultName_ =
  DeleteBackupVaultAccessPolicy'
    { backupVaultName =
        pBackupVaultName_
    }

-- | The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
deleteBackupVaultAccessPolicy_backupVaultName :: Lens.Lens' DeleteBackupVaultAccessPolicy Prelude.Text
deleteBackupVaultAccessPolicy_backupVaultName = Lens.lens (\DeleteBackupVaultAccessPolicy' {backupVaultName} -> backupVaultName) (\s@DeleteBackupVaultAccessPolicy' {} a -> s {backupVaultName = a} :: DeleteBackupVaultAccessPolicy)

instance
  Core.AWSRequest
    DeleteBackupVaultAccessPolicy
  where
  type
    AWSResponse DeleteBackupVaultAccessPolicy =
      DeleteBackupVaultAccessPolicyResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteBackupVaultAccessPolicyResponse'

instance
  Prelude.Hashable
    DeleteBackupVaultAccessPolicy

instance Prelude.NFData DeleteBackupVaultAccessPolicy

instance Core.ToHeaders DeleteBackupVaultAccessPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteBackupVaultAccessPolicy where
  toPath DeleteBackupVaultAccessPolicy' {..} =
    Prelude.mconcat
      [ "/backup-vaults/",
        Core.toBS backupVaultName,
        "/access-policy"
      ]

instance Core.ToQuery DeleteBackupVaultAccessPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteBackupVaultAccessPolicyResponse' smart constructor.
data DeleteBackupVaultAccessPolicyResponse = DeleteBackupVaultAccessPolicyResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteBackupVaultAccessPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteBackupVaultAccessPolicyResponse ::
  DeleteBackupVaultAccessPolicyResponse
newDeleteBackupVaultAccessPolicyResponse =
  DeleteBackupVaultAccessPolicyResponse'

instance
  Prelude.NFData
    DeleteBackupVaultAccessPolicyResponse
