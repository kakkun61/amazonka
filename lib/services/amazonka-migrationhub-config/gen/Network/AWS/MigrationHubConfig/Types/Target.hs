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
-- Module      : Network.AWS.MigrationHubConfig.Types.Target
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHubConfig.Types.Target where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MigrationHubConfig.Types.TargetType
import qualified Network.AWS.Prelude as Prelude

-- | The target parameter specifies the identifier to which the home region
-- is applied, which is always an @ACCOUNT@. It applies the home region to
-- the current @ACCOUNT@.
--
-- /See:/ 'newTarget' smart constructor.
data Target = Target'
  { -- | The @TargetID@ is a 12-character identifier of the @ACCOUNT@ for which
    -- the control was created. (This must be the current account.)
    id :: Prelude.Maybe Prelude.Text,
    -- | The target type is always an @ACCOUNT@.
    type' :: TargetType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Target' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'target_id' - The @TargetID@ is a 12-character identifier of the @ACCOUNT@ for which
-- the control was created. (This must be the current account.)
--
-- 'type'', 'target_type' - The target type is always an @ACCOUNT@.
newTarget ::
  -- | 'type''
  TargetType ->
  Target
newTarget pType_ =
  Target' {id = Prelude.Nothing, type' = pType_}

-- | The @TargetID@ is a 12-character identifier of the @ACCOUNT@ for which
-- the control was created. (This must be the current account.)
target_id :: Lens.Lens' Target (Prelude.Maybe Prelude.Text)
target_id = Lens.lens (\Target' {id} -> id) (\s@Target' {} a -> s {id = a} :: Target)

-- | The target type is always an @ACCOUNT@.
target_type :: Lens.Lens' Target TargetType
target_type = Lens.lens (\Target' {type'} -> type') (\s@Target' {} a -> s {type' = a} :: Target)

instance Core.FromJSON Target where
  parseJSON =
    Core.withObject
      "Target"
      ( \x ->
          Target'
            Prelude.<$> (x Core..:? "Id") Prelude.<*> (x Core..: "Type")
      )

instance Prelude.Hashable Target

instance Prelude.NFData Target

instance Core.ToJSON Target where
  toJSON Target' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Id" Core..=) Prelude.<$> id,
            Prelude.Just ("Type" Core..= type')
          ]
      )
