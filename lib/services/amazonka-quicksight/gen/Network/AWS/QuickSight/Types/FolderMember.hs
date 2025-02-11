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
-- Module      : Network.AWS.QuickSight.Types.FolderMember
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.FolderMember where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.MemberType

-- | An asset in a folder, such as a dashboard, analysis, or dataset.
--
-- /See:/ 'newFolderMember' smart constructor.
data FolderMember = FolderMember'
  { -- | The ID of the asset.
    memberId :: Prelude.Maybe Prelude.Text,
    -- | The type of the asset.
    memberType :: Prelude.Maybe MemberType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FolderMember' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberId', 'folderMember_memberId' - The ID of the asset.
--
-- 'memberType', 'folderMember_memberType' - The type of the asset.
newFolderMember ::
  FolderMember
newFolderMember =
  FolderMember'
    { memberId = Prelude.Nothing,
      memberType = Prelude.Nothing
    }

-- | The ID of the asset.
folderMember_memberId :: Lens.Lens' FolderMember (Prelude.Maybe Prelude.Text)
folderMember_memberId = Lens.lens (\FolderMember' {memberId} -> memberId) (\s@FolderMember' {} a -> s {memberId = a} :: FolderMember)

-- | The type of the asset.
folderMember_memberType :: Lens.Lens' FolderMember (Prelude.Maybe MemberType)
folderMember_memberType = Lens.lens (\FolderMember' {memberType} -> memberType) (\s@FolderMember' {} a -> s {memberType = a} :: FolderMember)

instance Core.FromJSON FolderMember where
  parseJSON =
    Core.withObject
      "FolderMember"
      ( \x ->
          FolderMember'
            Prelude.<$> (x Core..:? "MemberId")
            Prelude.<*> (x Core..:? "MemberType")
      )

instance Prelude.Hashable FolderMember

instance Prelude.NFData FolderMember
