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
-- Module      : Network.AWS.Backup.Types.CopyAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Backup.Types.CopyAction where

import Network.AWS.Backup.Types.Lifecycle
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The details of the copy operation.
--
-- /See:/ 'newCopyAction' smart constructor.
data CopyAction = CopyAction'
  { lifecycle :: Prelude.Maybe Lifecycle,
    -- | An Amazon Resource Name (ARN) that uniquely identifies the destination
    -- backup vault for the copied backup. For example,
    -- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
    destinationBackupVaultArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CopyAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lifecycle', 'copyAction_lifecycle' - Undocumented member.
--
-- 'destinationBackupVaultArn', 'copyAction_destinationBackupVaultArn' - An Amazon Resource Name (ARN) that uniquely identifies the destination
-- backup vault for the copied backup. For example,
-- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
newCopyAction ::
  -- | 'destinationBackupVaultArn'
  Prelude.Text ->
  CopyAction
newCopyAction pDestinationBackupVaultArn_ =
  CopyAction'
    { lifecycle = Prelude.Nothing,
      destinationBackupVaultArn =
        pDestinationBackupVaultArn_
    }

-- | Undocumented member.
copyAction_lifecycle :: Lens.Lens' CopyAction (Prelude.Maybe Lifecycle)
copyAction_lifecycle = Lens.lens (\CopyAction' {lifecycle} -> lifecycle) (\s@CopyAction' {} a -> s {lifecycle = a} :: CopyAction)

-- | An Amazon Resource Name (ARN) that uniquely identifies the destination
-- backup vault for the copied backup. For example,
-- @arn:aws:backup:us-east-1:123456789012:vault:aBackupVault@.
copyAction_destinationBackupVaultArn :: Lens.Lens' CopyAction Prelude.Text
copyAction_destinationBackupVaultArn = Lens.lens (\CopyAction' {destinationBackupVaultArn} -> destinationBackupVaultArn) (\s@CopyAction' {} a -> s {destinationBackupVaultArn = a} :: CopyAction)

instance Core.FromJSON CopyAction where
  parseJSON =
    Core.withObject
      "CopyAction"
      ( \x ->
          CopyAction'
            Prelude.<$> (x Core..:? "Lifecycle")
            Prelude.<*> (x Core..: "DestinationBackupVaultArn")
      )

instance Prelude.Hashable CopyAction

instance Prelude.NFData CopyAction

instance Core.ToJSON CopyAction where
  toJSON CopyAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Lifecycle" Core..=) Prelude.<$> lifecycle,
            Prelude.Just
              ( "DestinationBackupVaultArn"
                  Core..= destinationBackupVaultArn
              )
          ]
      )
