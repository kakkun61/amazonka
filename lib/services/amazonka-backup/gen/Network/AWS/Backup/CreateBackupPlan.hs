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
-- Module      : Network.AWS.Backup.CreateBackupPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a backup plan using a backup plan name and backup rules. A
-- backup plan is a document that contains information that Backup uses to
-- schedule tasks that create recovery points for resources.
--
-- If you call @CreateBackupPlan@ with a plan that already exists, you
-- receive an @AlreadyExistsException@ exception.
module Network.AWS.Backup.CreateBackupPlan
  ( -- * Creating a Request
    CreateBackupPlan (..),
    newCreateBackupPlan,

    -- * Request Lenses
    createBackupPlan_backupPlanTags,
    createBackupPlan_creatorRequestId,
    createBackupPlan_backupPlan,

    -- * Destructuring the Response
    CreateBackupPlanResponse (..),
    newCreateBackupPlanResponse,

    -- * Response Lenses
    createBackupPlanResponse_versionId,
    createBackupPlanResponse_advancedBackupSettings,
    createBackupPlanResponse_backupPlanId,
    createBackupPlanResponse_backupPlanArn,
    createBackupPlanResponse_creationDate,
    createBackupPlanResponse_httpStatus,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateBackupPlan' smart constructor.
data CreateBackupPlan = CreateBackupPlan'
  { -- | To help organize your resources, you can assign your own metadata to the
    -- resources that you create. Each tag is a key-value pair. The specified
    -- tags are assigned to all backups created with this plan.
    backupPlanTags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Identifies the request and allows failed requests to be retried without
    -- the risk of running the operation twice. If the request includes a
    -- @CreatorRequestId@ that matches an existing backup plan, that plan is
    -- returned. This parameter is optional.
    creatorRequestId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the body of a backup plan. Includes a @BackupPlanName@ and one
    -- or more sets of @Rules@.
    backupPlan :: BackupPlanInput
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBackupPlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupPlanTags', 'createBackupPlan_backupPlanTags' - To help organize your resources, you can assign your own metadata to the
-- resources that you create. Each tag is a key-value pair. The specified
-- tags are assigned to all backups created with this plan.
--
-- 'creatorRequestId', 'createBackupPlan_creatorRequestId' - Identifies the request and allows failed requests to be retried without
-- the risk of running the operation twice. If the request includes a
-- @CreatorRequestId@ that matches an existing backup plan, that plan is
-- returned. This parameter is optional.
--
-- 'backupPlan', 'createBackupPlan_backupPlan' - Specifies the body of a backup plan. Includes a @BackupPlanName@ and one
-- or more sets of @Rules@.
newCreateBackupPlan ::
  -- | 'backupPlan'
  BackupPlanInput ->
  CreateBackupPlan
newCreateBackupPlan pBackupPlan_ =
  CreateBackupPlan'
    { backupPlanTags = Prelude.Nothing,
      creatorRequestId = Prelude.Nothing,
      backupPlan = pBackupPlan_
    }

-- | To help organize your resources, you can assign your own metadata to the
-- resources that you create. Each tag is a key-value pair. The specified
-- tags are assigned to all backups created with this plan.
createBackupPlan_backupPlanTags :: Lens.Lens' CreateBackupPlan (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createBackupPlan_backupPlanTags = Lens.lens (\CreateBackupPlan' {backupPlanTags} -> backupPlanTags) (\s@CreateBackupPlan' {} a -> s {backupPlanTags = a} :: CreateBackupPlan) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | Identifies the request and allows failed requests to be retried without
-- the risk of running the operation twice. If the request includes a
-- @CreatorRequestId@ that matches an existing backup plan, that plan is
-- returned. This parameter is optional.
createBackupPlan_creatorRequestId :: Lens.Lens' CreateBackupPlan (Prelude.Maybe Prelude.Text)
createBackupPlan_creatorRequestId = Lens.lens (\CreateBackupPlan' {creatorRequestId} -> creatorRequestId) (\s@CreateBackupPlan' {} a -> s {creatorRequestId = a} :: CreateBackupPlan)

-- | Specifies the body of a backup plan. Includes a @BackupPlanName@ and one
-- or more sets of @Rules@.
createBackupPlan_backupPlan :: Lens.Lens' CreateBackupPlan BackupPlanInput
createBackupPlan_backupPlan = Lens.lens (\CreateBackupPlan' {backupPlan} -> backupPlan) (\s@CreateBackupPlan' {} a -> s {backupPlan = a} :: CreateBackupPlan)

instance Core.AWSRequest CreateBackupPlan where
  type
    AWSResponse CreateBackupPlan =
      CreateBackupPlanResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBackupPlanResponse'
            Prelude.<$> (x Core..?> "VersionId")
            Prelude.<*> ( x Core..?> "AdvancedBackupSettings"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "BackupPlanId")
            Prelude.<*> (x Core..?> "BackupPlanArn")
            Prelude.<*> (x Core..?> "CreationDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateBackupPlan

instance Prelude.NFData CreateBackupPlan

instance Core.ToHeaders CreateBackupPlan where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBackupPlan where
  toJSON CreateBackupPlan' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("BackupPlanTags" Core..=)
              Prelude.<$> backupPlanTags,
            ("CreatorRequestId" Core..=)
              Prelude.<$> creatorRequestId,
            Prelude.Just ("BackupPlan" Core..= backupPlan)
          ]
      )

instance Core.ToPath CreateBackupPlan where
  toPath = Prelude.const "/backup/plans/"

instance Core.ToQuery CreateBackupPlan where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBackupPlanResponse' smart constructor.
data CreateBackupPlanResponse = CreateBackupPlanResponse'
  { -- | Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
    -- most 1,024 bytes long. They cannot be edited.
    versionId :: Prelude.Maybe Prelude.Text,
    -- | A list of @BackupOptions@ settings for a resource type. This option is
    -- only available for Windows Volume Shadow Copy Service (VSS) backup jobs.
    advancedBackupSettings :: Prelude.Maybe [AdvancedBackupSetting],
    -- | Uniquely identifies a backup plan.
    backupPlanId :: Prelude.Maybe Prelude.Text,
    -- | An Amazon Resource Name (ARN) that uniquely identifies a backup plan;
    -- for example,
    -- @arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50@.
    backupPlanArn :: Prelude.Maybe Prelude.Text,
    -- | The date and time that a backup plan is created, in Unix format and
    -- Coordinated Universal Time (UTC). The value of @CreationDate@ is
    -- accurate to milliseconds. For example, the value 1516925490.087
    -- represents Friday, January 26, 2018 12:11:30.087 AM.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBackupPlanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'versionId', 'createBackupPlanResponse_versionId' - Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
-- most 1,024 bytes long. They cannot be edited.
--
-- 'advancedBackupSettings', 'createBackupPlanResponse_advancedBackupSettings' - A list of @BackupOptions@ settings for a resource type. This option is
-- only available for Windows Volume Shadow Copy Service (VSS) backup jobs.
--
-- 'backupPlanId', 'createBackupPlanResponse_backupPlanId' - Uniquely identifies a backup plan.
--
-- 'backupPlanArn', 'createBackupPlanResponse_backupPlanArn' - An Amazon Resource Name (ARN) that uniquely identifies a backup plan;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50@.
--
-- 'creationDate', 'createBackupPlanResponse_creationDate' - The date and time that a backup plan is created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreationDate@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
--
-- 'httpStatus', 'createBackupPlanResponse_httpStatus' - The response's http status code.
newCreateBackupPlanResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateBackupPlanResponse
newCreateBackupPlanResponse pHttpStatus_ =
  CreateBackupPlanResponse'
    { versionId =
        Prelude.Nothing,
      advancedBackupSettings = Prelude.Nothing,
      backupPlanId = Prelude.Nothing,
      backupPlanArn = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
-- most 1,024 bytes long. They cannot be edited.
createBackupPlanResponse_versionId :: Lens.Lens' CreateBackupPlanResponse (Prelude.Maybe Prelude.Text)
createBackupPlanResponse_versionId = Lens.lens (\CreateBackupPlanResponse' {versionId} -> versionId) (\s@CreateBackupPlanResponse' {} a -> s {versionId = a} :: CreateBackupPlanResponse)

-- | A list of @BackupOptions@ settings for a resource type. This option is
-- only available for Windows Volume Shadow Copy Service (VSS) backup jobs.
createBackupPlanResponse_advancedBackupSettings :: Lens.Lens' CreateBackupPlanResponse (Prelude.Maybe [AdvancedBackupSetting])
createBackupPlanResponse_advancedBackupSettings = Lens.lens (\CreateBackupPlanResponse' {advancedBackupSettings} -> advancedBackupSettings) (\s@CreateBackupPlanResponse' {} a -> s {advancedBackupSettings = a} :: CreateBackupPlanResponse) Prelude.. Lens.mapping Lens.coerced

-- | Uniquely identifies a backup plan.
createBackupPlanResponse_backupPlanId :: Lens.Lens' CreateBackupPlanResponse (Prelude.Maybe Prelude.Text)
createBackupPlanResponse_backupPlanId = Lens.lens (\CreateBackupPlanResponse' {backupPlanId} -> backupPlanId) (\s@CreateBackupPlanResponse' {} a -> s {backupPlanId = a} :: CreateBackupPlanResponse)

-- | An Amazon Resource Name (ARN) that uniquely identifies a backup plan;
-- for example,
-- @arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50@.
createBackupPlanResponse_backupPlanArn :: Lens.Lens' CreateBackupPlanResponse (Prelude.Maybe Prelude.Text)
createBackupPlanResponse_backupPlanArn = Lens.lens (\CreateBackupPlanResponse' {backupPlanArn} -> backupPlanArn) (\s@CreateBackupPlanResponse' {} a -> s {backupPlanArn = a} :: CreateBackupPlanResponse)

-- | The date and time that a backup plan is created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreationDate@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
createBackupPlanResponse_creationDate :: Lens.Lens' CreateBackupPlanResponse (Prelude.Maybe Prelude.UTCTime)
createBackupPlanResponse_creationDate = Lens.lens (\CreateBackupPlanResponse' {creationDate} -> creationDate) (\s@CreateBackupPlanResponse' {} a -> s {creationDate = a} :: CreateBackupPlanResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
createBackupPlanResponse_httpStatus :: Lens.Lens' CreateBackupPlanResponse Prelude.Int
createBackupPlanResponse_httpStatus = Lens.lens (\CreateBackupPlanResponse' {httpStatus} -> httpStatus) (\s@CreateBackupPlanResponse' {} a -> s {httpStatus = a} :: CreateBackupPlanResponse)

instance Prelude.NFData CreateBackupPlanResponse
