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
-- Module      : Network.AWS.Schemas.Types.SchemaVersionSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Schemas.Types.SchemaVersionSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Schemas.Types.Type

-- | /See:/ 'newSchemaVersionSummary' smart constructor.
data SchemaVersionSummary = SchemaVersionSummary'
  { -- | The version number of the schema.
    schemaVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the schema.
    schemaName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the schema version.
    schemaArn :: Prelude.Maybe Prelude.Text,
    -- | The type of schema.
    type' :: Prelude.Maybe Type
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SchemaVersionSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'schemaVersion', 'schemaVersionSummary_schemaVersion' - The version number of the schema.
--
-- 'schemaName', 'schemaVersionSummary_schemaName' - The name of the schema.
--
-- 'schemaArn', 'schemaVersionSummary_schemaArn' - The ARN of the schema version.
--
-- 'type'', 'schemaVersionSummary_type' - The type of schema.
newSchemaVersionSummary ::
  SchemaVersionSummary
newSchemaVersionSummary =
  SchemaVersionSummary'
    { schemaVersion =
        Prelude.Nothing,
      schemaName = Prelude.Nothing,
      schemaArn = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The version number of the schema.
schemaVersionSummary_schemaVersion :: Lens.Lens' SchemaVersionSummary (Prelude.Maybe Prelude.Text)
schemaVersionSummary_schemaVersion = Lens.lens (\SchemaVersionSummary' {schemaVersion} -> schemaVersion) (\s@SchemaVersionSummary' {} a -> s {schemaVersion = a} :: SchemaVersionSummary)

-- | The name of the schema.
schemaVersionSummary_schemaName :: Lens.Lens' SchemaVersionSummary (Prelude.Maybe Prelude.Text)
schemaVersionSummary_schemaName = Lens.lens (\SchemaVersionSummary' {schemaName} -> schemaName) (\s@SchemaVersionSummary' {} a -> s {schemaName = a} :: SchemaVersionSummary)

-- | The ARN of the schema version.
schemaVersionSummary_schemaArn :: Lens.Lens' SchemaVersionSummary (Prelude.Maybe Prelude.Text)
schemaVersionSummary_schemaArn = Lens.lens (\SchemaVersionSummary' {schemaArn} -> schemaArn) (\s@SchemaVersionSummary' {} a -> s {schemaArn = a} :: SchemaVersionSummary)

-- | The type of schema.
schemaVersionSummary_type :: Lens.Lens' SchemaVersionSummary (Prelude.Maybe Type)
schemaVersionSummary_type = Lens.lens (\SchemaVersionSummary' {type'} -> type') (\s@SchemaVersionSummary' {} a -> s {type' = a} :: SchemaVersionSummary)

instance Core.FromJSON SchemaVersionSummary where
  parseJSON =
    Core.withObject
      "SchemaVersionSummary"
      ( \x ->
          SchemaVersionSummary'
            Prelude.<$> (x Core..:? "SchemaVersion")
            Prelude.<*> (x Core..:? "SchemaName")
            Prelude.<*> (x Core..:? "SchemaArn")
            Prelude.<*> (x Core..:? "Type")
      )

instance Prelude.Hashable SchemaVersionSummary

instance Prelude.NFData SchemaVersionSummary
