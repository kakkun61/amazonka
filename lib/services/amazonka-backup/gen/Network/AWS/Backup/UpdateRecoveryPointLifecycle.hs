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
-- Module      : Network.AWS.Backup.UpdateRecoveryPointLifecycle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the transition lifecycle of a recovery point.
--
-- The lifecycle defines when a protected resource is transitioned to cold
-- storage and when it expires. Backup transitions and expires backups
-- automatically according to the lifecycle that you define.
--
-- Backups transitioned to cold storage must be stored in cold storage for
-- a minimum of 90 days. Therefore, the “expire after days” setting must be
-- 90 days greater than the “transition to cold after days” setting. The
-- “transition to cold after days” setting cannot be changed after a backup
-- has been transitioned to cold.
--
-- Only Amazon EFS file system backups can be transitioned to cold storage.
--
-- Does not support continuous backups.
module Network.AWS.Backup.UpdateRecoveryPointLifecycle
  ( -- * Creating a Request
    UpdateRecoveryPointLifecycle (..),
    newUpdateRecoveryPointLifecycle,

    -- * Request Lenses
    updateRecoveryPointLifecycle_lifecycle,
    updateRecoveryPointLifecycle_backupVaultName,
    updateRecoveryPointLifecycle_recoveryPointArn,

    -- * Destructuring the Response
    UpdateRecoveryPointLifecycleResponse (..),
    newUpdateRecoveryPointLifecycleResponse,

    -- * Response Lenses
    updateRecoveryPointLifecycleResponse_calculatedLifecycle,
    updateRecoveryPointLifecycleResponse_lifecycle,
    updateRecoveryPointLifecycleResponse_backupVaultArn,
    updateRecoveryPointLifecycleResponse_recoveryPointArn,
    updateRecoveryPointLifecycleResponse_httpStatus,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateRecoveryPointLifecycle' smart constructor.
data UpdateRecoveryPointLifecycle = UpdateRecoveryPointLifecycle'
  { -- | The lifecycle defines when a protected resource is transitioned to cold
    -- storage and when it expires. Backup transitions and expires backups
    -- automatically according to the lifecycle that you define.
    --
    -- Backups transitioned to cold storage must be stored in cold storage for
    -- a minimum of 90 days. Therefore, the “expire after days” setting must be
    -- 90 days greater than the “transition to cold after days” setting. The
    -- “transition to cold after days” setting cannot be changed after a backup
    -- has been transitioned to cold.
    lifecycle :: Prelude.Maybe Lifecycle,
    -- | The name of a logical container where backups are stored. Backup vaults
    -- are identified by names that are unique to the account used to create
    -- them and the Amazon Web Services Region where they are created. They
    -- consist of lowercase letters, numbers, and hyphens.
    backupVaultName :: Prelude.Text,
    -- | An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
    -- for example,
    -- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
    recoveryPointArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRecoveryPointLifecycle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lifecycle', 'updateRecoveryPointLifecycle_lifecycle' - The lifecycle defines when a protected resource is transitioned to cold
-- storage and when it expires. Backup transitions and expires backups
-- automatically according to the lifecycle that you define.
--
-- Backups transitioned to cold storage must be stored in cold storage for
-- a minimum of 90 days. Therefore, the “expire after days” setting must be
-- 90 days greater than the “transition to cold after days” setting. The
-- “transition to cold after days” setting cannot be changed after a backup
-- has been transitioned to cold.
--
-- 'backupVaultName', 'updateRecoveryPointLifecycle_backupVaultName' - The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
--
-- 'recoveryPointArn', 'updateRecoveryPointLifecycle_recoveryPointArn' - An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
newUpdateRecoveryPointLifecycle ::
  -- | 'backupVaultName'
  Prelude.Text ->
  -- | 'recoveryPointArn'
  Prelude.Text ->
  UpdateRecoveryPointLifecycle
newUpdateRecoveryPointLifecycle
  pBackupVaultName_
  pRecoveryPointArn_ =
    UpdateRecoveryPointLifecycle'
      { lifecycle =
          Prelude.Nothing,
        backupVaultName = pBackupVaultName_,
        recoveryPointArn = pRecoveryPointArn_
      }

-- | The lifecycle defines when a protected resource is transitioned to cold
-- storage and when it expires. Backup transitions and expires backups
-- automatically according to the lifecycle that you define.
--
-- Backups transitioned to cold storage must be stored in cold storage for
-- a minimum of 90 days. Therefore, the “expire after days” setting must be
-- 90 days greater than the “transition to cold after days” setting. The
-- “transition to cold after days” setting cannot be changed after a backup
-- has been transitioned to cold.
updateRecoveryPointLifecycle_lifecycle :: Lens.Lens' UpdateRecoveryPointLifecycle (Prelude.Maybe Lifecycle)
updateRecoveryPointLifecycle_lifecycle = Lens.lens (\UpdateRecoveryPointLifecycle' {lifecycle} -> lifecycle) (\s@UpdateRecoveryPointLifecycle' {} a -> s {lifecycle = a} :: UpdateRecoveryPointLifecycle)

-- | The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
updateRecoveryPointLifecycle_backupVaultName :: Lens.Lens' UpdateRecoveryPointLifecycle Prelude.Text
updateRecoveryPointLifecycle_backupVaultName = Lens.lens (\UpdateRecoveryPointLifecycle' {backupVaultName} -> backupVaultName) (\s@UpdateRecoveryPointLifecycle' {} a -> s {backupVaultName = a} :: UpdateRecoveryPointLifecycle)

-- | An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
updateRecoveryPointLifecycle_recoveryPointArn :: Lens.Lens' UpdateRecoveryPointLifecycle Prelude.Text
updateRecoveryPointLifecycle_recoveryPointArn = Lens.lens (\UpdateRecoveryPointLifecycle' {recoveryPointArn} -> recoveryPointArn) (\s@UpdateRecoveryPointLifecycle' {} a -> s {recoveryPointArn = a} :: UpdateRecoveryPointLifecycle)

instance Core.AWSRequest UpdateRecoveryPointLifecycle where
  type
    AWSResponse UpdateRecoveryPointLifecycle =
      UpdateRecoveryPointLifecycleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateRecoveryPointLifecycleResponse'
            Prelude.<$> (x Core..?> "CalculatedLifecycle")
            Prelude.<*> (x Core..?> "Lifecycle")
            Prelude.<*> (x Core..?> "BackupVaultArn")
            Prelude.<*> (x Core..?> "RecoveryPointArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateRecoveryPointLifecycle

instance Prelude.NFData UpdateRecoveryPointLifecycle

instance Core.ToHeaders UpdateRecoveryPointLifecycle where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateRecoveryPointLifecycle where
  toJSON UpdateRecoveryPointLifecycle' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Lifecycle" Core..=) Prelude.<$> lifecycle]
      )

instance Core.ToPath UpdateRecoveryPointLifecycle where
  toPath UpdateRecoveryPointLifecycle' {..} =
    Prelude.mconcat
      [ "/backup-vaults/",
        Core.toBS backupVaultName,
        "/recovery-points/",
        Core.toBS recoveryPointArn
      ]

instance Core.ToQuery UpdateRecoveryPointLifecycle where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateRecoveryPointLifecycleResponse' smart constructor.
data UpdateRecoveryPointLifecycleResponse = UpdateRecoveryPointLifecycleResponse'
  { -- | A @CalculatedLifecycle@ object containing @DeleteAt@ and
    -- @MoveToColdStorageAt@ timestamps.
    calculatedLifecycle :: Prelude.Maybe CalculatedLifecycle,
    -- | The lifecycle defines when a protected resource is transitioned to cold
    -- storage and when it expires. Backup transitions and expires backups
    -- automatically according to the lifecycle that you define.
    --
    -- Backups transitioned to cold storage must be stored in cold storage for
    -- a minimum of 90 days. Therefore, the “expire after days” setting must be
    -- 90 days greater than the “transition to cold after days” setting. The
    -- “transition to cold after days” setting cannot be changed after a backup
    -- has been transitioned to cold.
    --
    -- Only Amazon EFS file system backups can be transitioned to cold storage.
    lifecycle :: Prelude.Maybe Lifecycle,
    -- | An ARN that uniquely identifies a backup vault; for example,
    -- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
    backupVaultArn :: Prelude.Maybe Prelude.Text,
    -- | An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
    -- for example,
    -- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
    recoveryPointArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateRecoveryPointLifecycleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'calculatedLifecycle', 'updateRecoveryPointLifecycleResponse_calculatedLifecycle' - A @CalculatedLifecycle@ object containing @DeleteAt@ and
-- @MoveToColdStorageAt@ timestamps.
--
-- 'lifecycle', 'updateRecoveryPointLifecycleResponse_lifecycle' - The lifecycle defines when a protected resource is transitioned to cold
-- storage and when it expires. Backup transitions and expires backups
-- automatically according to the lifecycle that you define.
--
-- Backups transitioned to cold storage must be stored in cold storage for
-- a minimum of 90 days. Therefore, the “expire after days” setting must be
-- 90 days greater than the “transition to cold after days” setting. The
-- “transition to cold after days” setting cannot be changed after a backup
-- has been transitioned to cold.
--
-- Only Amazon EFS file system backups can be transitioned to cold storage.
--
-- 'backupVaultArn', 'updateRecoveryPointLifecycleResponse_backupVaultArn' - An ARN that uniquely identifies a backup vault; for example,
-- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
--
-- 'recoveryPointArn', 'updateRecoveryPointLifecycleResponse_recoveryPointArn' - An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
--
-- 'httpStatus', 'updateRecoveryPointLifecycleResponse_httpStatus' - The response's http status code.
newUpdateRecoveryPointLifecycleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateRecoveryPointLifecycleResponse
newUpdateRecoveryPointLifecycleResponse pHttpStatus_ =
  UpdateRecoveryPointLifecycleResponse'
    { calculatedLifecycle =
        Prelude.Nothing,
      lifecycle = Prelude.Nothing,
      backupVaultArn = Prelude.Nothing,
      recoveryPointArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A @CalculatedLifecycle@ object containing @DeleteAt@ and
-- @MoveToColdStorageAt@ timestamps.
updateRecoveryPointLifecycleResponse_calculatedLifecycle :: Lens.Lens' UpdateRecoveryPointLifecycleResponse (Prelude.Maybe CalculatedLifecycle)
updateRecoveryPointLifecycleResponse_calculatedLifecycle = Lens.lens (\UpdateRecoveryPointLifecycleResponse' {calculatedLifecycle} -> calculatedLifecycle) (\s@UpdateRecoveryPointLifecycleResponse' {} a -> s {calculatedLifecycle = a} :: UpdateRecoveryPointLifecycleResponse)

-- | The lifecycle defines when a protected resource is transitioned to cold
-- storage and when it expires. Backup transitions and expires backups
-- automatically according to the lifecycle that you define.
--
-- Backups transitioned to cold storage must be stored in cold storage for
-- a minimum of 90 days. Therefore, the “expire after days” setting must be
-- 90 days greater than the “transition to cold after days” setting. The
-- “transition to cold after days” setting cannot be changed after a backup
-- has been transitioned to cold.
--
-- Only Amazon EFS file system backups can be transitioned to cold storage.
updateRecoveryPointLifecycleResponse_lifecycle :: Lens.Lens' UpdateRecoveryPointLifecycleResponse (Prelude.Maybe Lifecycle)
updateRecoveryPointLifecycleResponse_lifecycle = Lens.lens (\UpdateRecoveryPointLifecycleResponse' {lifecycle} -> lifecycle) (\s@UpdateRecoveryPointLifecycleResponse' {} a -> s {lifecycle = a} :: UpdateRecoveryPointLifecycleResponse)

-- | An ARN that uniquely identifies a backup vault; for example,
-- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
updateRecoveryPointLifecycleResponse_backupVaultArn :: Lens.Lens' UpdateRecoveryPointLifecycleResponse (Prelude.Maybe Prelude.Text)
updateRecoveryPointLifecycleResponse_backupVaultArn = Lens.lens (\UpdateRecoveryPointLifecycleResponse' {backupVaultArn} -> backupVaultArn) (\s@UpdateRecoveryPointLifecycleResponse' {} a -> s {backupVaultArn = a} :: UpdateRecoveryPointLifecycleResponse)

-- | An Amazon Resource Name (ARN) that uniquely identifies a recovery point;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45@.
updateRecoveryPointLifecycleResponse_recoveryPointArn :: Lens.Lens' UpdateRecoveryPointLifecycleResponse (Prelude.Maybe Prelude.Text)
updateRecoveryPointLifecycleResponse_recoveryPointArn = Lens.lens (\UpdateRecoveryPointLifecycleResponse' {recoveryPointArn} -> recoveryPointArn) (\s@UpdateRecoveryPointLifecycleResponse' {} a -> s {recoveryPointArn = a} :: UpdateRecoveryPointLifecycleResponse)

-- | The response's http status code.
updateRecoveryPointLifecycleResponse_httpStatus :: Lens.Lens' UpdateRecoveryPointLifecycleResponse Prelude.Int
updateRecoveryPointLifecycleResponse_httpStatus = Lens.lens (\UpdateRecoveryPointLifecycleResponse' {httpStatus} -> httpStatus) (\s@UpdateRecoveryPointLifecycleResponse' {} a -> s {httpStatus = a} :: UpdateRecoveryPointLifecycleResponse)

instance
  Prelude.NFData
    UpdateRecoveryPointLifecycleResponse
