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
-- Module      : Network.AWS.Neptune.CopyDBClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Copies a snapshot of a DB cluster.
--
-- To copy a DB cluster snapshot from a shared manual DB cluster snapshot,
-- @SourceDBClusterSnapshotIdentifier@ must be the Amazon Resource Name
-- (ARN) of the shared DB cluster snapshot.
module Network.AWS.Neptune.CopyDBClusterSnapshot
  ( -- * Creating a Request
    CopyDBClusterSnapshot (..),
    newCopyDBClusterSnapshot,

    -- * Request Lenses
    copyDBClusterSnapshot_preSignedUrl,
    copyDBClusterSnapshot_copyTags,
    copyDBClusterSnapshot_kmsKeyId,
    copyDBClusterSnapshot_tags,
    copyDBClusterSnapshot_sourceDBClusterSnapshotIdentifier,
    copyDBClusterSnapshot_targetDBClusterSnapshotIdentifier,

    -- * Destructuring the Response
    CopyDBClusterSnapshotResponse (..),
    newCopyDBClusterSnapshotResponse,

    -- * Response Lenses
    copyDBClusterSnapshotResponse_dbClusterSnapshot,
    copyDBClusterSnapshotResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Neptune.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCopyDBClusterSnapshot' smart constructor.
data CopyDBClusterSnapshot = CopyDBClusterSnapshot'
  { -- | Not currently supported.
    preSignedUrl :: Prelude.Maybe Prelude.Text,
    -- | True to copy all tags from the source DB cluster snapshot to the target
    -- DB cluster snapshot, and otherwise false. The default is false.
    copyTags :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot. The
    -- KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the
    -- KMS key alias for the KMS encryption key.
    --
    -- If you copy an encrypted DB cluster snapshot from your Amazon account,
    -- you can specify a value for @KmsKeyId@ to encrypt the copy with a new
    -- KMS encryption key. If you don\'t specify a value for @KmsKeyId@, then
    -- the copy of the DB cluster snapshot is encrypted with the same KMS key
    -- as the source DB cluster snapshot.
    --
    -- If you copy an encrypted DB cluster snapshot that is shared from another
    -- Amazon account, then you must specify a value for @KmsKeyId@.
    --
    -- KMS encryption keys are specific to the Amazon Region that they are
    -- created in, and you can\'t use encryption keys from one Amazon Region in
    -- another Amazon Region.
    --
    -- You cannot encrypt an unencrypted DB cluster snapshot when you copy it.
    -- If you try to copy an unencrypted DB cluster snapshot and specify a
    -- value for the KmsKeyId parameter, an error is returned.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The tags to assign to the new DB cluster snapshot copy.
    tags :: Prelude.Maybe [Tag],
    -- | The identifier of the DB cluster snapshot to copy. This parameter is not
    -- case-sensitive.
    --
    -- Constraints:
    --
    -- -   Must specify a valid system snapshot in the \"available\" state.
    --
    -- -   Specify a valid DB snapshot identifier.
    --
    -- Example: @my-cluster-snapshot1@
    sourceDBClusterSnapshotIdentifier :: Prelude.Text,
    -- | The identifier of the new DB cluster snapshot to create from the source
    -- DB cluster snapshot. This parameter is not case-sensitive.
    --
    -- Constraints:
    --
    -- -   Must contain from 1 to 63 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter.
    --
    -- -   Cannot end with a hyphen or contain two consecutive hyphens.
    --
    -- Example: @my-cluster-snapshot2@
    targetDBClusterSnapshotIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CopyDBClusterSnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'preSignedUrl', 'copyDBClusterSnapshot_preSignedUrl' - Not currently supported.
--
-- 'copyTags', 'copyDBClusterSnapshot_copyTags' - True to copy all tags from the source DB cluster snapshot to the target
-- DB cluster snapshot, and otherwise false. The default is false.
--
-- 'kmsKeyId', 'copyDBClusterSnapshot_kmsKeyId' - The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot. The
-- KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the
-- KMS key alias for the KMS encryption key.
--
-- If you copy an encrypted DB cluster snapshot from your Amazon account,
-- you can specify a value for @KmsKeyId@ to encrypt the copy with a new
-- KMS encryption key. If you don\'t specify a value for @KmsKeyId@, then
-- the copy of the DB cluster snapshot is encrypted with the same KMS key
-- as the source DB cluster snapshot.
--
-- If you copy an encrypted DB cluster snapshot that is shared from another
-- Amazon account, then you must specify a value for @KmsKeyId@.
--
-- KMS encryption keys are specific to the Amazon Region that they are
-- created in, and you can\'t use encryption keys from one Amazon Region in
-- another Amazon Region.
--
-- You cannot encrypt an unencrypted DB cluster snapshot when you copy it.
-- If you try to copy an unencrypted DB cluster snapshot and specify a
-- value for the KmsKeyId parameter, an error is returned.
--
-- 'tags', 'copyDBClusterSnapshot_tags' - The tags to assign to the new DB cluster snapshot copy.
--
-- 'sourceDBClusterSnapshotIdentifier', 'copyDBClusterSnapshot_sourceDBClusterSnapshotIdentifier' - The identifier of the DB cluster snapshot to copy. This parameter is not
-- case-sensitive.
--
-- Constraints:
--
-- -   Must specify a valid system snapshot in the \"available\" state.
--
-- -   Specify a valid DB snapshot identifier.
--
-- Example: @my-cluster-snapshot1@
--
-- 'targetDBClusterSnapshotIdentifier', 'copyDBClusterSnapshot_targetDBClusterSnapshotIdentifier' - The identifier of the new DB cluster snapshot to create from the source
-- DB cluster snapshot. This parameter is not case-sensitive.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   First character must be a letter.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
--
-- Example: @my-cluster-snapshot2@
newCopyDBClusterSnapshot ::
  -- | 'sourceDBClusterSnapshotIdentifier'
  Prelude.Text ->
  -- | 'targetDBClusterSnapshotIdentifier'
  Prelude.Text ->
  CopyDBClusterSnapshot
newCopyDBClusterSnapshot
  pSourceDBClusterSnapshotIdentifier_
  pTargetDBClusterSnapshotIdentifier_ =
    CopyDBClusterSnapshot'
      { preSignedUrl =
          Prelude.Nothing,
        copyTags = Prelude.Nothing,
        kmsKeyId = Prelude.Nothing,
        tags = Prelude.Nothing,
        sourceDBClusterSnapshotIdentifier =
          pSourceDBClusterSnapshotIdentifier_,
        targetDBClusterSnapshotIdentifier =
          pTargetDBClusterSnapshotIdentifier_
      }

-- | Not currently supported.
copyDBClusterSnapshot_preSignedUrl :: Lens.Lens' CopyDBClusterSnapshot (Prelude.Maybe Prelude.Text)
copyDBClusterSnapshot_preSignedUrl = Lens.lens (\CopyDBClusterSnapshot' {preSignedUrl} -> preSignedUrl) (\s@CopyDBClusterSnapshot' {} a -> s {preSignedUrl = a} :: CopyDBClusterSnapshot)

-- | True to copy all tags from the source DB cluster snapshot to the target
-- DB cluster snapshot, and otherwise false. The default is false.
copyDBClusterSnapshot_copyTags :: Lens.Lens' CopyDBClusterSnapshot (Prelude.Maybe Prelude.Bool)
copyDBClusterSnapshot_copyTags = Lens.lens (\CopyDBClusterSnapshot' {copyTags} -> copyTags) (\s@CopyDBClusterSnapshot' {} a -> s {copyTags = a} :: CopyDBClusterSnapshot)

-- | The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot. The
-- KMS key ID is the Amazon Resource Name (ARN), KMS key identifier, or the
-- KMS key alias for the KMS encryption key.
--
-- If you copy an encrypted DB cluster snapshot from your Amazon account,
-- you can specify a value for @KmsKeyId@ to encrypt the copy with a new
-- KMS encryption key. If you don\'t specify a value for @KmsKeyId@, then
-- the copy of the DB cluster snapshot is encrypted with the same KMS key
-- as the source DB cluster snapshot.
--
-- If you copy an encrypted DB cluster snapshot that is shared from another
-- Amazon account, then you must specify a value for @KmsKeyId@.
--
-- KMS encryption keys are specific to the Amazon Region that they are
-- created in, and you can\'t use encryption keys from one Amazon Region in
-- another Amazon Region.
--
-- You cannot encrypt an unencrypted DB cluster snapshot when you copy it.
-- If you try to copy an unencrypted DB cluster snapshot and specify a
-- value for the KmsKeyId parameter, an error is returned.
copyDBClusterSnapshot_kmsKeyId :: Lens.Lens' CopyDBClusterSnapshot (Prelude.Maybe Prelude.Text)
copyDBClusterSnapshot_kmsKeyId = Lens.lens (\CopyDBClusterSnapshot' {kmsKeyId} -> kmsKeyId) (\s@CopyDBClusterSnapshot' {} a -> s {kmsKeyId = a} :: CopyDBClusterSnapshot)

-- | The tags to assign to the new DB cluster snapshot copy.
copyDBClusterSnapshot_tags :: Lens.Lens' CopyDBClusterSnapshot (Prelude.Maybe [Tag])
copyDBClusterSnapshot_tags = Lens.lens (\CopyDBClusterSnapshot' {tags} -> tags) (\s@CopyDBClusterSnapshot' {} a -> s {tags = a} :: CopyDBClusterSnapshot) Prelude.. Lens.mapping Lens.coerced

-- | The identifier of the DB cluster snapshot to copy. This parameter is not
-- case-sensitive.
--
-- Constraints:
--
-- -   Must specify a valid system snapshot in the \"available\" state.
--
-- -   Specify a valid DB snapshot identifier.
--
-- Example: @my-cluster-snapshot1@
copyDBClusterSnapshot_sourceDBClusterSnapshotIdentifier :: Lens.Lens' CopyDBClusterSnapshot Prelude.Text
copyDBClusterSnapshot_sourceDBClusterSnapshotIdentifier = Lens.lens (\CopyDBClusterSnapshot' {sourceDBClusterSnapshotIdentifier} -> sourceDBClusterSnapshotIdentifier) (\s@CopyDBClusterSnapshot' {} a -> s {sourceDBClusterSnapshotIdentifier = a} :: CopyDBClusterSnapshot)

-- | The identifier of the new DB cluster snapshot to create from the source
-- DB cluster snapshot. This parameter is not case-sensitive.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   First character must be a letter.
--
-- -   Cannot end with a hyphen or contain two consecutive hyphens.
--
-- Example: @my-cluster-snapshot2@
copyDBClusterSnapshot_targetDBClusterSnapshotIdentifier :: Lens.Lens' CopyDBClusterSnapshot Prelude.Text
copyDBClusterSnapshot_targetDBClusterSnapshotIdentifier = Lens.lens (\CopyDBClusterSnapshot' {targetDBClusterSnapshotIdentifier} -> targetDBClusterSnapshotIdentifier) (\s@CopyDBClusterSnapshot' {} a -> s {targetDBClusterSnapshotIdentifier = a} :: CopyDBClusterSnapshot)

instance Core.AWSRequest CopyDBClusterSnapshot where
  type
    AWSResponse CopyDBClusterSnapshot =
      CopyDBClusterSnapshotResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CopyDBClusterSnapshotResult"
      ( \s h x ->
          CopyDBClusterSnapshotResponse'
            Prelude.<$> (x Core..@? "DBClusterSnapshot")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CopyDBClusterSnapshot

instance Prelude.NFData CopyDBClusterSnapshot

instance Core.ToHeaders CopyDBClusterSnapshot where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CopyDBClusterSnapshot where
  toPath = Prelude.const "/"

instance Core.ToQuery CopyDBClusterSnapshot where
  toQuery CopyDBClusterSnapshot' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ("CopyDBClusterSnapshot" :: Prelude.ByteString),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "PreSignedUrl" Core.=: preSignedUrl,
        "CopyTags" Core.=: copyTags,
        "KmsKeyId" Core.=: kmsKeyId,
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "SourceDBClusterSnapshotIdentifier"
          Core.=: sourceDBClusterSnapshotIdentifier,
        "TargetDBClusterSnapshotIdentifier"
          Core.=: targetDBClusterSnapshotIdentifier
      ]

-- | /See:/ 'newCopyDBClusterSnapshotResponse' smart constructor.
data CopyDBClusterSnapshotResponse = CopyDBClusterSnapshotResponse'
  { dbClusterSnapshot :: Prelude.Maybe DBClusterSnapshot,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CopyDBClusterSnapshotResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterSnapshot', 'copyDBClusterSnapshotResponse_dbClusterSnapshot' - Undocumented member.
--
-- 'httpStatus', 'copyDBClusterSnapshotResponse_httpStatus' - The response's http status code.
newCopyDBClusterSnapshotResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CopyDBClusterSnapshotResponse
newCopyDBClusterSnapshotResponse pHttpStatus_ =
  CopyDBClusterSnapshotResponse'
    { dbClusterSnapshot =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
copyDBClusterSnapshotResponse_dbClusterSnapshot :: Lens.Lens' CopyDBClusterSnapshotResponse (Prelude.Maybe DBClusterSnapshot)
copyDBClusterSnapshotResponse_dbClusterSnapshot = Lens.lens (\CopyDBClusterSnapshotResponse' {dbClusterSnapshot} -> dbClusterSnapshot) (\s@CopyDBClusterSnapshotResponse' {} a -> s {dbClusterSnapshot = a} :: CopyDBClusterSnapshotResponse)

-- | The response's http status code.
copyDBClusterSnapshotResponse_httpStatus :: Lens.Lens' CopyDBClusterSnapshotResponse Prelude.Int
copyDBClusterSnapshotResponse_httpStatus = Lens.lens (\CopyDBClusterSnapshotResponse' {httpStatus} -> httpStatus) (\s@CopyDBClusterSnapshotResponse' {} a -> s {httpStatus = a} :: CopyDBClusterSnapshotResponse)

instance Prelude.NFData CopyDBClusterSnapshotResponse
