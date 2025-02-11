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
-- Module      : Network.AWS.Backup.CreateBackupSelection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a JSON document that specifies a set of resources to assign to a
-- backup plan. Resources can be included by specifying patterns for a
-- @ListOfTags@ and selected @Resources@.
--
-- For example, consider the following patterns:
--
-- -   @Resources: \"arn:aws:ec2:region:account-id:volume\/volume-id\"@
--
-- -   @ConditionKey:\"department\"@
--
--     @ConditionValue:\"finance\"@
--
--     @ConditionType:\"StringEquals\"@
--
-- -   @ConditionKey:\"importance\"@
--
--     @ConditionValue:\"critical\"@
--
--     @ConditionType:\"StringEquals\"@
--
-- Using these patterns would back up all Amazon Elastic Block Store
-- (Amazon EBS) volumes that are tagged as @\"department=finance\"@,
-- @\"importance=critical\"@, in addition to an EBS volume with the
-- specified volume ID.
--
-- Resources and conditions are additive in that all resources that match
-- the pattern are selected. This shouldn\'t be confused with a logical
-- AND, where all conditions must match. The matching patterns are
-- logically put together using the OR operator. In other words, all
-- patterns that match are selected for backup.
module Network.AWS.Backup.CreateBackupSelection
  ( -- * Creating a Request
    CreateBackupSelection (..),
    newCreateBackupSelection,

    -- * Request Lenses
    createBackupSelection_creatorRequestId,
    createBackupSelection_backupPlanId,
    createBackupSelection_backupSelection,

    -- * Destructuring the Response
    CreateBackupSelectionResponse (..),
    newCreateBackupSelectionResponse,

    -- * Response Lenses
    createBackupSelectionResponse_selectionId,
    createBackupSelectionResponse_backupPlanId,
    createBackupSelectionResponse_creationDate,
    createBackupSelectionResponse_httpStatus,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateBackupSelection' smart constructor.
data CreateBackupSelection = CreateBackupSelection'
  { -- | A unique string that identifies the request and allows failed requests
    -- to be retried without the risk of running the operation twice.
    creatorRequestId :: Prelude.Maybe Prelude.Text,
    -- | Uniquely identifies the backup plan to be associated with the selection
    -- of resources.
    backupPlanId :: Prelude.Text,
    -- | Specifies the body of a request to assign a set of resources to a backup
    -- plan.
    backupSelection :: BackupSelection
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBackupSelection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creatorRequestId', 'createBackupSelection_creatorRequestId' - A unique string that identifies the request and allows failed requests
-- to be retried without the risk of running the operation twice.
--
-- 'backupPlanId', 'createBackupSelection_backupPlanId' - Uniquely identifies the backup plan to be associated with the selection
-- of resources.
--
-- 'backupSelection', 'createBackupSelection_backupSelection' - Specifies the body of a request to assign a set of resources to a backup
-- plan.
newCreateBackupSelection ::
  -- | 'backupPlanId'
  Prelude.Text ->
  -- | 'backupSelection'
  BackupSelection ->
  CreateBackupSelection
newCreateBackupSelection
  pBackupPlanId_
  pBackupSelection_ =
    CreateBackupSelection'
      { creatorRequestId =
          Prelude.Nothing,
        backupPlanId = pBackupPlanId_,
        backupSelection = pBackupSelection_
      }

-- | A unique string that identifies the request and allows failed requests
-- to be retried without the risk of running the operation twice.
createBackupSelection_creatorRequestId :: Lens.Lens' CreateBackupSelection (Prelude.Maybe Prelude.Text)
createBackupSelection_creatorRequestId = Lens.lens (\CreateBackupSelection' {creatorRequestId} -> creatorRequestId) (\s@CreateBackupSelection' {} a -> s {creatorRequestId = a} :: CreateBackupSelection)

-- | Uniquely identifies the backup plan to be associated with the selection
-- of resources.
createBackupSelection_backupPlanId :: Lens.Lens' CreateBackupSelection Prelude.Text
createBackupSelection_backupPlanId = Lens.lens (\CreateBackupSelection' {backupPlanId} -> backupPlanId) (\s@CreateBackupSelection' {} a -> s {backupPlanId = a} :: CreateBackupSelection)

-- | Specifies the body of a request to assign a set of resources to a backup
-- plan.
createBackupSelection_backupSelection :: Lens.Lens' CreateBackupSelection BackupSelection
createBackupSelection_backupSelection = Lens.lens (\CreateBackupSelection' {backupSelection} -> backupSelection) (\s@CreateBackupSelection' {} a -> s {backupSelection = a} :: CreateBackupSelection)

instance Core.AWSRequest CreateBackupSelection where
  type
    AWSResponse CreateBackupSelection =
      CreateBackupSelectionResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateBackupSelectionResponse'
            Prelude.<$> (x Core..?> "SelectionId")
            Prelude.<*> (x Core..?> "BackupPlanId")
            Prelude.<*> (x Core..?> "CreationDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateBackupSelection

instance Prelude.NFData CreateBackupSelection

instance Core.ToHeaders CreateBackupSelection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateBackupSelection where
  toJSON CreateBackupSelection' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CreatorRequestId" Core..=)
              Prelude.<$> creatorRequestId,
            Prelude.Just
              ("BackupSelection" Core..= backupSelection)
          ]
      )

instance Core.ToPath CreateBackupSelection where
  toPath CreateBackupSelection' {..} =
    Prelude.mconcat
      [ "/backup/plans/",
        Core.toBS backupPlanId,
        "/selections/"
      ]

instance Core.ToQuery CreateBackupSelection where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateBackupSelectionResponse' smart constructor.
data CreateBackupSelectionResponse = CreateBackupSelectionResponse'
  { -- | Uniquely identifies the body of a request to assign a set of resources
    -- to a backup plan.
    selectionId :: Prelude.Maybe Prelude.Text,
    -- | Uniquely identifies a backup plan.
    backupPlanId :: Prelude.Maybe Prelude.Text,
    -- | The date and time a backup selection is created, in Unix format and
    -- Coordinated Universal Time (UTC). The value of @CreationDate@ is
    -- accurate to milliseconds. For example, the value 1516925490.087
    -- represents Friday, January 26, 2018 12:11:30.087 AM.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateBackupSelectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'selectionId', 'createBackupSelectionResponse_selectionId' - Uniquely identifies the body of a request to assign a set of resources
-- to a backup plan.
--
-- 'backupPlanId', 'createBackupSelectionResponse_backupPlanId' - Uniquely identifies a backup plan.
--
-- 'creationDate', 'createBackupSelectionResponse_creationDate' - The date and time a backup selection is created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreationDate@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
--
-- 'httpStatus', 'createBackupSelectionResponse_httpStatus' - The response's http status code.
newCreateBackupSelectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateBackupSelectionResponse
newCreateBackupSelectionResponse pHttpStatus_ =
  CreateBackupSelectionResponse'
    { selectionId =
        Prelude.Nothing,
      backupPlanId = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Uniquely identifies the body of a request to assign a set of resources
-- to a backup plan.
createBackupSelectionResponse_selectionId :: Lens.Lens' CreateBackupSelectionResponse (Prelude.Maybe Prelude.Text)
createBackupSelectionResponse_selectionId = Lens.lens (\CreateBackupSelectionResponse' {selectionId} -> selectionId) (\s@CreateBackupSelectionResponse' {} a -> s {selectionId = a} :: CreateBackupSelectionResponse)

-- | Uniquely identifies a backup plan.
createBackupSelectionResponse_backupPlanId :: Lens.Lens' CreateBackupSelectionResponse (Prelude.Maybe Prelude.Text)
createBackupSelectionResponse_backupPlanId = Lens.lens (\CreateBackupSelectionResponse' {backupPlanId} -> backupPlanId) (\s@CreateBackupSelectionResponse' {} a -> s {backupPlanId = a} :: CreateBackupSelectionResponse)

-- | The date and time a backup selection is created, in Unix format and
-- Coordinated Universal Time (UTC). The value of @CreationDate@ is
-- accurate to milliseconds. For example, the value 1516925490.087
-- represents Friday, January 26, 2018 12:11:30.087 AM.
createBackupSelectionResponse_creationDate :: Lens.Lens' CreateBackupSelectionResponse (Prelude.Maybe Prelude.UTCTime)
createBackupSelectionResponse_creationDate = Lens.lens (\CreateBackupSelectionResponse' {creationDate} -> creationDate) (\s@CreateBackupSelectionResponse' {} a -> s {creationDate = a} :: CreateBackupSelectionResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
createBackupSelectionResponse_httpStatus :: Lens.Lens' CreateBackupSelectionResponse Prelude.Int
createBackupSelectionResponse_httpStatus = Lens.lens (\CreateBackupSelectionResponse' {httpStatus} -> httpStatus) (\s@CreateBackupSelectionResponse' {} a -> s {httpStatus = a} :: CreateBackupSelectionResponse)

instance Prelude.NFData CreateBackupSelectionResponse
