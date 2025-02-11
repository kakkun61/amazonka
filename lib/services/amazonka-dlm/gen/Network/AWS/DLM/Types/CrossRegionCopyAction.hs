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
-- Module      : Network.AWS.DLM.Types.CrossRegionCopyAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DLM.Types.CrossRegionCopyAction where

import qualified Network.AWS.Core as Core
import Network.AWS.DLM.Types.CrossRegionCopyRetainRule
import Network.AWS.DLM.Types.EncryptionConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies a rule for copying shared snapshots across Regions.
--
-- /See:/ 'newCrossRegionCopyAction' smart constructor.
data CrossRegionCopyAction = CrossRegionCopyAction'
  { retainRule :: Prelude.Maybe CrossRegionCopyRetainRule,
    -- | The target Region.
    target :: Prelude.Text,
    -- | The encryption settings for the copied snapshot.
    encryptionConfiguration :: EncryptionConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CrossRegionCopyAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'retainRule', 'crossRegionCopyAction_retainRule' - Undocumented member.
--
-- 'target', 'crossRegionCopyAction_target' - The target Region.
--
-- 'encryptionConfiguration', 'crossRegionCopyAction_encryptionConfiguration' - The encryption settings for the copied snapshot.
newCrossRegionCopyAction ::
  -- | 'target'
  Prelude.Text ->
  -- | 'encryptionConfiguration'
  EncryptionConfiguration ->
  CrossRegionCopyAction
newCrossRegionCopyAction
  pTarget_
  pEncryptionConfiguration_ =
    CrossRegionCopyAction'
      { retainRule =
          Prelude.Nothing,
        target = pTarget_,
        encryptionConfiguration = pEncryptionConfiguration_
      }

-- | Undocumented member.
crossRegionCopyAction_retainRule :: Lens.Lens' CrossRegionCopyAction (Prelude.Maybe CrossRegionCopyRetainRule)
crossRegionCopyAction_retainRule = Lens.lens (\CrossRegionCopyAction' {retainRule} -> retainRule) (\s@CrossRegionCopyAction' {} a -> s {retainRule = a} :: CrossRegionCopyAction)

-- | The target Region.
crossRegionCopyAction_target :: Lens.Lens' CrossRegionCopyAction Prelude.Text
crossRegionCopyAction_target = Lens.lens (\CrossRegionCopyAction' {target} -> target) (\s@CrossRegionCopyAction' {} a -> s {target = a} :: CrossRegionCopyAction)

-- | The encryption settings for the copied snapshot.
crossRegionCopyAction_encryptionConfiguration :: Lens.Lens' CrossRegionCopyAction EncryptionConfiguration
crossRegionCopyAction_encryptionConfiguration = Lens.lens (\CrossRegionCopyAction' {encryptionConfiguration} -> encryptionConfiguration) (\s@CrossRegionCopyAction' {} a -> s {encryptionConfiguration = a} :: CrossRegionCopyAction)

instance Core.FromJSON CrossRegionCopyAction where
  parseJSON =
    Core.withObject
      "CrossRegionCopyAction"
      ( \x ->
          CrossRegionCopyAction'
            Prelude.<$> (x Core..:? "RetainRule")
            Prelude.<*> (x Core..: "Target")
            Prelude.<*> (x Core..: "EncryptionConfiguration")
      )

instance Prelude.Hashable CrossRegionCopyAction

instance Prelude.NFData CrossRegionCopyAction

instance Core.ToJSON CrossRegionCopyAction where
  toJSON CrossRegionCopyAction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RetainRule" Core..=) Prelude.<$> retainRule,
            Prelude.Just ("Target" Core..= target),
            Prelude.Just
              ( "EncryptionConfiguration"
                  Core..= encryptionConfiguration
              )
          ]
      )
