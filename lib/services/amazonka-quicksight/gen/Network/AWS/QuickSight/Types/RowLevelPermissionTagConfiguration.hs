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
-- Module      : Network.AWS.QuickSight.Types.RowLevelPermissionTagConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.RowLevelPermissionTagConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.RowLevelPermissionTagRule
import Network.AWS.QuickSight.Types.Status

-- | The configuration of tags on a dataset to set row-level security.
--
-- /See:/ 'newRowLevelPermissionTagConfiguration' smart constructor.
data RowLevelPermissionTagConfiguration = RowLevelPermissionTagConfiguration'
  { -- | The status of row-level security tags. If enabled, the status is
    -- @ENABLED@. If disabled, the status is @DISABLED@.
    status :: Prelude.Maybe Status,
    -- | A set of rules associated with row-level security, such as the tag names
    -- and columns that they are assigned to.
    tagRules :: Prelude.NonEmpty RowLevelPermissionTagRule
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RowLevelPermissionTagConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'rowLevelPermissionTagConfiguration_status' - The status of row-level security tags. If enabled, the status is
-- @ENABLED@. If disabled, the status is @DISABLED@.
--
-- 'tagRules', 'rowLevelPermissionTagConfiguration_tagRules' - A set of rules associated with row-level security, such as the tag names
-- and columns that they are assigned to.
newRowLevelPermissionTagConfiguration ::
  -- | 'tagRules'
  Prelude.NonEmpty RowLevelPermissionTagRule ->
  RowLevelPermissionTagConfiguration
newRowLevelPermissionTagConfiguration pTagRules_ =
  RowLevelPermissionTagConfiguration'
    { status =
        Prelude.Nothing,
      tagRules =
        Lens.coerced Lens.# pTagRules_
    }

-- | The status of row-level security tags. If enabled, the status is
-- @ENABLED@. If disabled, the status is @DISABLED@.
rowLevelPermissionTagConfiguration_status :: Lens.Lens' RowLevelPermissionTagConfiguration (Prelude.Maybe Status)
rowLevelPermissionTagConfiguration_status = Lens.lens (\RowLevelPermissionTagConfiguration' {status} -> status) (\s@RowLevelPermissionTagConfiguration' {} a -> s {status = a} :: RowLevelPermissionTagConfiguration)

-- | A set of rules associated with row-level security, such as the tag names
-- and columns that they are assigned to.
rowLevelPermissionTagConfiguration_tagRules :: Lens.Lens' RowLevelPermissionTagConfiguration (Prelude.NonEmpty RowLevelPermissionTagRule)
rowLevelPermissionTagConfiguration_tagRules = Lens.lens (\RowLevelPermissionTagConfiguration' {tagRules} -> tagRules) (\s@RowLevelPermissionTagConfiguration' {} a -> s {tagRules = a} :: RowLevelPermissionTagConfiguration) Prelude.. Lens.coerced

instance
  Core.FromJSON
    RowLevelPermissionTagConfiguration
  where
  parseJSON =
    Core.withObject
      "RowLevelPermissionTagConfiguration"
      ( \x ->
          RowLevelPermissionTagConfiguration'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..: "TagRules")
      )

instance
  Prelude.Hashable
    RowLevelPermissionTagConfiguration

instance
  Prelude.NFData
    RowLevelPermissionTagConfiguration

instance
  Core.ToJSON
    RowLevelPermissionTagConfiguration
  where
  toJSON RowLevelPermissionTagConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Status" Core..=) Prelude.<$> status,
            Prelude.Just ("TagRules" Core..= tagRules)
          ]
      )
