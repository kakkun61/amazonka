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
-- Module      : Network.AWS.Backup.Types.BackupPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Backup.Types.BackupPlan where

import Network.AWS.Backup.Types.AdvancedBackupSetting
import Network.AWS.Backup.Types.BackupRule
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains an optional backup plan display name and an array of
-- @BackupRule@ objects, each of which specifies a backup rule. Each rule
-- in a backup plan is a separate scheduled task and can back up a
-- different selection of Amazon Web Services resources.
--
-- /See:/ 'newBackupPlan' smart constructor.
data BackupPlan = BackupPlan'
  { -- | Contains a list of @BackupOptions@ for each resource type.
    advancedBackupSettings :: Prelude.Maybe [AdvancedBackupSetting],
    -- | The display name of a backup plan.
    backupPlanName :: Prelude.Text,
    -- | An array of @BackupRule@ objects, each of which specifies a scheduled
    -- task that is used to back up a selection of resources.
    rules :: [BackupRule]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BackupPlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'advancedBackupSettings', 'backupPlan_advancedBackupSettings' - Contains a list of @BackupOptions@ for each resource type.
--
-- 'backupPlanName', 'backupPlan_backupPlanName' - The display name of a backup plan.
--
-- 'rules', 'backupPlan_rules' - An array of @BackupRule@ objects, each of which specifies a scheduled
-- task that is used to back up a selection of resources.
newBackupPlan ::
  -- | 'backupPlanName'
  Prelude.Text ->
  BackupPlan
newBackupPlan pBackupPlanName_ =
  BackupPlan'
    { advancedBackupSettings =
        Prelude.Nothing,
      backupPlanName = pBackupPlanName_,
      rules = Prelude.mempty
    }

-- | Contains a list of @BackupOptions@ for each resource type.
backupPlan_advancedBackupSettings :: Lens.Lens' BackupPlan (Prelude.Maybe [AdvancedBackupSetting])
backupPlan_advancedBackupSettings = Lens.lens (\BackupPlan' {advancedBackupSettings} -> advancedBackupSettings) (\s@BackupPlan' {} a -> s {advancedBackupSettings = a} :: BackupPlan) Prelude.. Lens.mapping Lens.coerced

-- | The display name of a backup plan.
backupPlan_backupPlanName :: Lens.Lens' BackupPlan Prelude.Text
backupPlan_backupPlanName = Lens.lens (\BackupPlan' {backupPlanName} -> backupPlanName) (\s@BackupPlan' {} a -> s {backupPlanName = a} :: BackupPlan)

-- | An array of @BackupRule@ objects, each of which specifies a scheduled
-- task that is used to back up a selection of resources.
backupPlan_rules :: Lens.Lens' BackupPlan [BackupRule]
backupPlan_rules = Lens.lens (\BackupPlan' {rules} -> rules) (\s@BackupPlan' {} a -> s {rules = a} :: BackupPlan) Prelude.. Lens.coerced

instance Core.FromJSON BackupPlan where
  parseJSON =
    Core.withObject
      "BackupPlan"
      ( \x ->
          BackupPlan'
            Prelude.<$> ( x Core..:? "AdvancedBackupSettings"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "BackupPlanName")
            Prelude.<*> (x Core..:? "Rules" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable BackupPlan

instance Prelude.NFData BackupPlan
