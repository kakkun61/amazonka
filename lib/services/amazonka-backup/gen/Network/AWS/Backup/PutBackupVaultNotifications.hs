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
-- Module      : Network.AWS.Backup.PutBackupVaultNotifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Turns on notifications on a backup vault for the specified topic and
-- events.
module Network.AWS.Backup.PutBackupVaultNotifications
  ( -- * Creating a Request
    PutBackupVaultNotifications (..),
    newPutBackupVaultNotifications,

    -- * Request Lenses
    putBackupVaultNotifications_backupVaultName,
    putBackupVaultNotifications_sNSTopicArn,
    putBackupVaultNotifications_backupVaultEvents,

    -- * Destructuring the Response
    PutBackupVaultNotificationsResponse (..),
    newPutBackupVaultNotificationsResponse,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutBackupVaultNotifications' smart constructor.
data PutBackupVaultNotifications = PutBackupVaultNotifications'
  { -- | The name of a logical container where backups are stored. Backup vaults
    -- are identified by names that are unique to the account used to create
    -- them and the Amazon Web Services Region where they are created. They
    -- consist of lowercase letters, numbers, and hyphens.
    backupVaultName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) that specifies the topic for a backup
    -- vault’s events; for example,
    -- @arn:aws:sns:us-west-2:111122223333:MyVaultTopic@.
    sNSTopicArn :: Prelude.Text,
    -- | An array of events that indicate the status of jobs to back up resources
    -- to the backup vault.
    --
    -- The following events are supported:
    --
    -- @BACKUP_JOB_STARTED@, @BACKUP_JOB_COMPLETED@,
    --
    -- @COPY_JOB_STARTED@, @COPY_JOB_SUCCESSFUL@, @COPY_JOB_FAILED@,
    --
    -- @RESTORE_JOB_STARTED@, @RESTORE_JOB_COMPLETED@, and
    -- @RECOVERY_POINT_MODIFIED@.
    --
    -- To find failed backup jobs, use @BACKUP_JOB_COMPLETED@ and filter using
    -- event metadata.
    --
    -- Other events in the following list are deprecated.
    backupVaultEvents :: [BackupVaultEvent]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutBackupVaultNotifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupVaultName', 'putBackupVaultNotifications_backupVaultName' - The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
--
-- 'sNSTopicArn', 'putBackupVaultNotifications_sNSTopicArn' - The Amazon Resource Name (ARN) that specifies the topic for a backup
-- vault’s events; for example,
-- @arn:aws:sns:us-west-2:111122223333:MyVaultTopic@.
--
-- 'backupVaultEvents', 'putBackupVaultNotifications_backupVaultEvents' - An array of events that indicate the status of jobs to back up resources
-- to the backup vault.
--
-- The following events are supported:
--
-- @BACKUP_JOB_STARTED@, @BACKUP_JOB_COMPLETED@,
--
-- @COPY_JOB_STARTED@, @COPY_JOB_SUCCESSFUL@, @COPY_JOB_FAILED@,
--
-- @RESTORE_JOB_STARTED@, @RESTORE_JOB_COMPLETED@, and
-- @RECOVERY_POINT_MODIFIED@.
--
-- To find failed backup jobs, use @BACKUP_JOB_COMPLETED@ and filter using
-- event metadata.
--
-- Other events in the following list are deprecated.
newPutBackupVaultNotifications ::
  -- | 'backupVaultName'
  Prelude.Text ->
  -- | 'sNSTopicArn'
  Prelude.Text ->
  PutBackupVaultNotifications
newPutBackupVaultNotifications
  pBackupVaultName_
  pSNSTopicArn_ =
    PutBackupVaultNotifications'
      { backupVaultName =
          pBackupVaultName_,
        sNSTopicArn = pSNSTopicArn_,
        backupVaultEvents = Prelude.mempty
      }

-- | The name of a logical container where backups are stored. Backup vaults
-- are identified by names that are unique to the account used to create
-- them and the Amazon Web Services Region where they are created. They
-- consist of lowercase letters, numbers, and hyphens.
putBackupVaultNotifications_backupVaultName :: Lens.Lens' PutBackupVaultNotifications Prelude.Text
putBackupVaultNotifications_backupVaultName = Lens.lens (\PutBackupVaultNotifications' {backupVaultName} -> backupVaultName) (\s@PutBackupVaultNotifications' {} a -> s {backupVaultName = a} :: PutBackupVaultNotifications)

-- | The Amazon Resource Name (ARN) that specifies the topic for a backup
-- vault’s events; for example,
-- @arn:aws:sns:us-west-2:111122223333:MyVaultTopic@.
putBackupVaultNotifications_sNSTopicArn :: Lens.Lens' PutBackupVaultNotifications Prelude.Text
putBackupVaultNotifications_sNSTopicArn = Lens.lens (\PutBackupVaultNotifications' {sNSTopicArn} -> sNSTopicArn) (\s@PutBackupVaultNotifications' {} a -> s {sNSTopicArn = a} :: PutBackupVaultNotifications)

-- | An array of events that indicate the status of jobs to back up resources
-- to the backup vault.
--
-- The following events are supported:
--
-- @BACKUP_JOB_STARTED@, @BACKUP_JOB_COMPLETED@,
--
-- @COPY_JOB_STARTED@, @COPY_JOB_SUCCESSFUL@, @COPY_JOB_FAILED@,
--
-- @RESTORE_JOB_STARTED@, @RESTORE_JOB_COMPLETED@, and
-- @RECOVERY_POINT_MODIFIED@.
--
-- To find failed backup jobs, use @BACKUP_JOB_COMPLETED@ and filter using
-- event metadata.
--
-- Other events in the following list are deprecated.
putBackupVaultNotifications_backupVaultEvents :: Lens.Lens' PutBackupVaultNotifications [BackupVaultEvent]
putBackupVaultNotifications_backupVaultEvents = Lens.lens (\PutBackupVaultNotifications' {backupVaultEvents} -> backupVaultEvents) (\s@PutBackupVaultNotifications' {} a -> s {backupVaultEvents = a} :: PutBackupVaultNotifications) Prelude.. Lens.coerced

instance Core.AWSRequest PutBackupVaultNotifications where
  type
    AWSResponse PutBackupVaultNotifications =
      PutBackupVaultNotificationsResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull
      PutBackupVaultNotificationsResponse'

instance Prelude.Hashable PutBackupVaultNotifications

instance Prelude.NFData PutBackupVaultNotifications

instance Core.ToHeaders PutBackupVaultNotifications where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutBackupVaultNotifications where
  toJSON PutBackupVaultNotifications' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("SNSTopicArn" Core..= sNSTopicArn),
            Prelude.Just
              ("BackupVaultEvents" Core..= backupVaultEvents)
          ]
      )

instance Core.ToPath PutBackupVaultNotifications where
  toPath PutBackupVaultNotifications' {..} =
    Prelude.mconcat
      [ "/backup-vaults/",
        Core.toBS backupVaultName,
        "/notification-configuration"
      ]

instance Core.ToQuery PutBackupVaultNotifications where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutBackupVaultNotificationsResponse' smart constructor.
data PutBackupVaultNotificationsResponse = PutBackupVaultNotificationsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutBackupVaultNotificationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newPutBackupVaultNotificationsResponse ::
  PutBackupVaultNotificationsResponse
newPutBackupVaultNotificationsResponse =
  PutBackupVaultNotificationsResponse'

instance
  Prelude.NFData
    PutBackupVaultNotificationsResponse
