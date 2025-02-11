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
-- Module      : Network.AWS.Glue.Types.DatabaseInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DatabaseInput where

import qualified Network.AWS.Core as Core
import Network.AWS.Glue.Types.DatabaseIdentifier
import Network.AWS.Glue.Types.PrincipalPermissions
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The structure used to create or update a database.
--
-- /See:/ 'newDatabaseInput' smart constructor.
data DatabaseInput = DatabaseInput'
  { -- | The location of the database (for example, an HDFS path).
    locationUri :: Prelude.Maybe Prelude.Text,
    -- | A @DatabaseIdentifier@ structure that describes a target database for
    -- resource linking.
    targetDatabase :: Prelude.Maybe DatabaseIdentifier,
    -- | These key-value pairs define parameters and properties of the database.
    --
    -- These key-value pairs define parameters and properties of the database.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A description of the database.
    description :: Prelude.Maybe Prelude.Text,
    -- | Creates a set of default permissions on the table for principals.
    createTableDefaultPermissions :: Prelude.Maybe [PrincipalPermissions],
    -- | The name of the database. For Hive compatibility, this is folded to
    -- lowercase when it is stored.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DatabaseInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locationUri', 'databaseInput_locationUri' - The location of the database (for example, an HDFS path).
--
-- 'targetDatabase', 'databaseInput_targetDatabase' - A @DatabaseIdentifier@ structure that describes a target database for
-- resource linking.
--
-- 'parameters', 'databaseInput_parameters' - These key-value pairs define parameters and properties of the database.
--
-- These key-value pairs define parameters and properties of the database.
--
-- 'description', 'databaseInput_description' - A description of the database.
--
-- 'createTableDefaultPermissions', 'databaseInput_createTableDefaultPermissions' - Creates a set of default permissions on the table for principals.
--
-- 'name', 'databaseInput_name' - The name of the database. For Hive compatibility, this is folded to
-- lowercase when it is stored.
newDatabaseInput ::
  -- | 'name'
  Prelude.Text ->
  DatabaseInput
newDatabaseInput pName_ =
  DatabaseInput'
    { locationUri = Prelude.Nothing,
      targetDatabase = Prelude.Nothing,
      parameters = Prelude.Nothing,
      description = Prelude.Nothing,
      createTableDefaultPermissions = Prelude.Nothing,
      name = pName_
    }

-- | The location of the database (for example, an HDFS path).
databaseInput_locationUri :: Lens.Lens' DatabaseInput (Prelude.Maybe Prelude.Text)
databaseInput_locationUri = Lens.lens (\DatabaseInput' {locationUri} -> locationUri) (\s@DatabaseInput' {} a -> s {locationUri = a} :: DatabaseInput)

-- | A @DatabaseIdentifier@ structure that describes a target database for
-- resource linking.
databaseInput_targetDatabase :: Lens.Lens' DatabaseInput (Prelude.Maybe DatabaseIdentifier)
databaseInput_targetDatabase = Lens.lens (\DatabaseInput' {targetDatabase} -> targetDatabase) (\s@DatabaseInput' {} a -> s {targetDatabase = a} :: DatabaseInput)

-- | These key-value pairs define parameters and properties of the database.
--
-- These key-value pairs define parameters and properties of the database.
databaseInput_parameters :: Lens.Lens' DatabaseInput (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
databaseInput_parameters = Lens.lens (\DatabaseInput' {parameters} -> parameters) (\s@DatabaseInput' {} a -> s {parameters = a} :: DatabaseInput) Prelude.. Lens.mapping Lens.coerced

-- | A description of the database.
databaseInput_description :: Lens.Lens' DatabaseInput (Prelude.Maybe Prelude.Text)
databaseInput_description = Lens.lens (\DatabaseInput' {description} -> description) (\s@DatabaseInput' {} a -> s {description = a} :: DatabaseInput)

-- | Creates a set of default permissions on the table for principals.
databaseInput_createTableDefaultPermissions :: Lens.Lens' DatabaseInput (Prelude.Maybe [PrincipalPermissions])
databaseInput_createTableDefaultPermissions = Lens.lens (\DatabaseInput' {createTableDefaultPermissions} -> createTableDefaultPermissions) (\s@DatabaseInput' {} a -> s {createTableDefaultPermissions = a} :: DatabaseInput) Prelude.. Lens.mapping Lens.coerced

-- | The name of the database. For Hive compatibility, this is folded to
-- lowercase when it is stored.
databaseInput_name :: Lens.Lens' DatabaseInput Prelude.Text
databaseInput_name = Lens.lens (\DatabaseInput' {name} -> name) (\s@DatabaseInput' {} a -> s {name = a} :: DatabaseInput)

instance Prelude.Hashable DatabaseInput

instance Prelude.NFData DatabaseInput

instance Core.ToJSON DatabaseInput where
  toJSON DatabaseInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("LocationUri" Core..=) Prelude.<$> locationUri,
            ("TargetDatabase" Core..=)
              Prelude.<$> targetDatabase,
            ("Parameters" Core..=) Prelude.<$> parameters,
            ("Description" Core..=) Prelude.<$> description,
            ("CreateTableDefaultPermissions" Core..=)
              Prelude.<$> createTableDefaultPermissions,
            Prelude.Just ("Name" Core..= name)
          ]
      )
