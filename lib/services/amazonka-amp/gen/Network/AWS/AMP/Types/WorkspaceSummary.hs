{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AMP.Types.WorkspaceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AMP.Types.WorkspaceSummary where

import Network.AWS.AMP.Types.WorkspaceStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a summary of the properties of a workspace.
--
-- /See:/ 'newWorkspaceSummary' smart constructor.
data WorkspaceSummary = WorkspaceSummary'
  { -- | Alias of this workspace.
    alias :: Prelude.Maybe Prelude.Text,
    -- | The tags of this workspace.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The AmazonResourceName of this workspace.
    arn :: Prelude.Text,
    -- | The time when the workspace was created.
    createdAt :: Core.POSIX,
    -- | The status of this workspace.
    status :: WorkspaceStatus,
    -- | Unique string identifying this workspace.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WorkspaceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'alias', 'workspaceSummary_alias' - Alias of this workspace.
--
-- 'tags', 'workspaceSummary_tags' - The tags of this workspace.
--
-- 'arn', 'workspaceSummary_arn' - The AmazonResourceName of this workspace.
--
-- 'createdAt', 'workspaceSummary_createdAt' - The time when the workspace was created.
--
-- 'status', 'workspaceSummary_status' - The status of this workspace.
--
-- 'workspaceId', 'workspaceSummary_workspaceId' - Unique string identifying this workspace.
newWorkspaceSummary ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'status'
  WorkspaceStatus ->
  -- | 'workspaceId'
  Prelude.Text ->
  WorkspaceSummary
newWorkspaceSummary
  pArn_
  pCreatedAt_
  pStatus_
  pWorkspaceId_ =
    WorkspaceSummary'
      { alias = Prelude.Nothing,
        tags = Prelude.Nothing,
        arn = pArn_,
        createdAt = Core._Time Lens.# pCreatedAt_,
        status = pStatus_,
        workspaceId = pWorkspaceId_
      }

-- | Alias of this workspace.
workspaceSummary_alias :: Lens.Lens' WorkspaceSummary (Prelude.Maybe Prelude.Text)
workspaceSummary_alias = Lens.lens (\WorkspaceSummary' {alias} -> alias) (\s@WorkspaceSummary' {} a -> s {alias = a} :: WorkspaceSummary)

-- | The tags of this workspace.
workspaceSummary_tags :: Lens.Lens' WorkspaceSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
workspaceSummary_tags = Lens.lens (\WorkspaceSummary' {tags} -> tags) (\s@WorkspaceSummary' {} a -> s {tags = a} :: WorkspaceSummary) Prelude.. Lens.mapping Lens.coerced

-- | The AmazonResourceName of this workspace.
workspaceSummary_arn :: Lens.Lens' WorkspaceSummary Prelude.Text
workspaceSummary_arn = Lens.lens (\WorkspaceSummary' {arn} -> arn) (\s@WorkspaceSummary' {} a -> s {arn = a} :: WorkspaceSummary)

-- | The time when the workspace was created.
workspaceSummary_createdAt :: Lens.Lens' WorkspaceSummary Prelude.UTCTime
workspaceSummary_createdAt = Lens.lens (\WorkspaceSummary' {createdAt} -> createdAt) (\s@WorkspaceSummary' {} a -> s {createdAt = a} :: WorkspaceSummary) Prelude.. Core._Time

-- | The status of this workspace.
workspaceSummary_status :: Lens.Lens' WorkspaceSummary WorkspaceStatus
workspaceSummary_status = Lens.lens (\WorkspaceSummary' {status} -> status) (\s@WorkspaceSummary' {} a -> s {status = a} :: WorkspaceSummary)

-- | Unique string identifying this workspace.
workspaceSummary_workspaceId :: Lens.Lens' WorkspaceSummary Prelude.Text
workspaceSummary_workspaceId = Lens.lens (\WorkspaceSummary' {workspaceId} -> workspaceId) (\s@WorkspaceSummary' {} a -> s {workspaceId = a} :: WorkspaceSummary)

instance Core.FromJSON WorkspaceSummary where
  parseJSON =
    Core.withObject
      "WorkspaceSummary"
      ( \x ->
          WorkspaceSummary'
            Prelude.<$> (x Core..:? "alias")
            Prelude.<*> (x Core..:? "tags" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "arn")
            Prelude.<*> (x Core..: "createdAt")
            Prelude.<*> (x Core..: "status")
            Prelude.<*> (x Core..: "workspaceId")
      )

instance Prelude.Hashable WorkspaceSummary

instance Prelude.NFData WorkspaceSummary
