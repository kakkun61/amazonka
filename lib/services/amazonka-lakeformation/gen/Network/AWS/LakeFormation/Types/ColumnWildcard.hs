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
-- Module      : Network.AWS.LakeFormation.Types.ColumnWildcard
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LakeFormation.Types.ColumnWildcard where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A wildcard object, consisting of an optional list of excluded column
-- names or indexes.
--
-- /See:/ 'newColumnWildcard' smart constructor.
data ColumnWildcard = ColumnWildcard'
  { -- | Excludes column names. Any column with this name will be excluded.
    excludedColumnNames :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ColumnWildcard' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'excludedColumnNames', 'columnWildcard_excludedColumnNames' - Excludes column names. Any column with this name will be excluded.
newColumnWildcard ::
  ColumnWildcard
newColumnWildcard =
  ColumnWildcard'
    { excludedColumnNames =
        Prelude.Nothing
    }

-- | Excludes column names. Any column with this name will be excluded.
columnWildcard_excludedColumnNames :: Lens.Lens' ColumnWildcard (Prelude.Maybe [Prelude.Text])
columnWildcard_excludedColumnNames = Lens.lens (\ColumnWildcard' {excludedColumnNames} -> excludedColumnNames) (\s@ColumnWildcard' {} a -> s {excludedColumnNames = a} :: ColumnWildcard) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ColumnWildcard where
  parseJSON =
    Core.withObject
      "ColumnWildcard"
      ( \x ->
          ColumnWildcard'
            Prelude.<$> ( x Core..:? "ExcludedColumnNames"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable ColumnWildcard

instance Prelude.NFData ColumnWildcard

instance Core.ToJSON ColumnWildcard where
  toJSON ColumnWildcard' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ExcludedColumnNames" Core..=)
              Prelude.<$> excludedColumnNames
          ]
      )
