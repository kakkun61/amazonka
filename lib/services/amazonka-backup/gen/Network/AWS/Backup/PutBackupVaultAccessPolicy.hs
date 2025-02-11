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
-- Module      : Network.AWS.Backup.PutBackupVaultAccessPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets a resource-based policy that is used to manage access permissions
-- on the target backup vault. Requires a backup vault name and an access
-- policy document in JSON format.
module Network.AWS.Backup.PutBackupVaultAccessPolicy
  ( -- * Creating a Request
    PutBackupVaultAccessPolicy (..),
    newPutBackupVaultAccessPolicy,

    -- * Request Lenses
    putBackupVaultAccessPolicy_policy,
    putBackupVaultAccessPolicy_backupVaultName,

    -- * Destructuring the Response
    PutBackupVaultAccessPolicyResponse (..),
    newPutBackupVaultAccessPolicyResponse,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutBackupVaultAccessPolicy' smart constructor.
data PutBackupVaultAccessPolicy = PutBackupVaultAccessPolicy'
  { -- | The backup vault access policy document in JSON format.
    policy :: Prelude.Maybe Prelude.Text,
    -- | The name of a logical container where backups are stored. Backup vaults
    -- are identified by names that are unique to the account used to create
    -- them and the Amazon Web Services Region where they are created. They
    -- consist of lowercase letters, numbers, and hyphens.
    backupVaultName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutBackupVaultAccessPolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policy', 'putBackupVaultAccessPolicy_policy' - The backup vault access policy document in JSON format.
--
-- 'backupVaultName', 'putBackupVaultAccessPolicy_backupVaultName' - The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
newPutBackupVaultAccessPolicy ::
  -- | 'backupVaultName'
  Prelude.Text ->
  PutBackupVaultAccessPolicy
newPutBackupVaultAccessPolicy pBackupVaultName_ =
  PutBackupVaultAccessPolicy'
    { policy =
        Prelude.Nothing,
      backupVaultName = pBackupVaultName_
    }

-- | The backup vault access policy document in JSON format.
putBackupVaultAccessPolicy_policy :: Lens.Lens' PutBackupVaultAccessPolicy (Prelude.Maybe Prelude.Text)
putBackupVaultAccessPolicy_policy = Lens.lens (\PutBackupVaultAccessPolicy' {policy} -> policy) (\s@PutBackupVaultAccessPolicy' {} a -> s {policy = a} :: PutBackupVaultAccessPolicy)

-- | The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
putBackupVaultAccessPolicy_backupVaultName :: Lens.Lens' PutBackupVaultAccessPolicy Prelude.Text
putBackupVaultAccessPolicy_backupVaultName = Lens.lens (\PutBackupVaultAccessPolicy' {backupVaultName} -> backupVaultName) (\s@PutBackupVaultAccessPolicy' {} a -> s {backupVaultName = a} :: PutBackupVaultAccessPolicy)

instance Core.AWSRequest PutBackupVaultAccessPolicy where
  type
    AWSResponse PutBackupVaultAccessPolicy =
      PutBackupVaultAccessPolicyResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull
      PutBackupVaultAccessPolicyResponse'

instance Prelude.Hashable PutBackupVaultAccessPolicy

instance Prelude.NFData PutBackupVaultAccessPolicy

instance Core.ToHeaders PutBackupVaultAccessPolicy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutBackupVaultAccessPolicy where
  toJSON PutBackupVaultAccessPolicy' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Policy" Core..=) Prelude.<$> policy]
      )

instance Core.ToPath PutBackupVaultAccessPolicy where
  toPath PutBackupVaultAccessPolicy' {..} =
    Prelude.mconcat
      [ "/backup-vaults/",
        Core.toBS backupVaultName,
        "/access-policy"
      ]

instance Core.ToQuery PutBackupVaultAccessPolicy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutBackupVaultAccessPolicyResponse' smart constructor.
data PutBackupVaultAccessPolicyResponse = PutBackupVaultAccessPolicyResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutBackupVaultAccessPolicyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutBackupVaultAccessPolicyResponse ::
  PutBackupVaultAccessPolicyResponse
newPutBackupVaultAccessPolicyResponse =
  PutBackupVaultAccessPolicyResponse'

instance
  Prelude.NFData
    PutBackupVaultAccessPolicyResponse
