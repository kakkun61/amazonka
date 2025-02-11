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
-- Module      : Network.AWS.LakeFormation.Types.DatabaseResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LakeFormation.Types.DatabaseResource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure for the database object.
--
-- /See:/ 'newDatabaseResource' smart constructor.
data DatabaseResource = DatabaseResource'
  { -- | The identifier for the Data Catalog. By default, it is the account ID of
    -- the caller.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The name of the database resource. Unique to the Data Catalog.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatabaseResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'databaseResource_catalogId' - The identifier for the Data Catalog. By default, it is the account ID of
-- the caller.
--
-- 'name', 'databaseResource_name' - The name of the database resource. Unique to the Data Catalog.
newDatabaseResource ::
  -- | 'name'
  Prelude.Text ->
  DatabaseResource
newDatabaseResource pName_ =
  DatabaseResource'
    { catalogId = Prelude.Nothing,
      name = pName_
    }

-- | The identifier for the Data Catalog. By default, it is the account ID of
-- the caller.
databaseResource_catalogId :: Lens.Lens' DatabaseResource (Prelude.Maybe Prelude.Text)
databaseResource_catalogId = Lens.lens (\DatabaseResource' {catalogId} -> catalogId) (\s@DatabaseResource' {} a -> s {catalogId = a} :: DatabaseResource)

-- | The name of the database resource. Unique to the Data Catalog.
databaseResource_name :: Lens.Lens' DatabaseResource Prelude.Text
databaseResource_name = Lens.lens (\DatabaseResource' {name} -> name) (\s@DatabaseResource' {} a -> s {name = a} :: DatabaseResource)

instance Core.FromJSON DatabaseResource where
  parseJSON =
    Core.withObject
      "DatabaseResource"
      ( \x ->
          DatabaseResource'
            Prelude.<$> (x Core..:? "CatalogId")
            Prelude.<*> (x Core..: "Name")
      )

instance Prelude.Hashable DatabaseResource

instance Prelude.NFData DatabaseResource

instance Core.ToJSON DatabaseResource where
  toJSON DatabaseResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CatalogId" Core..=) Prelude.<$> catalogId,
            Prelude.Just ("Name" Core..= name)
          ]
      )
