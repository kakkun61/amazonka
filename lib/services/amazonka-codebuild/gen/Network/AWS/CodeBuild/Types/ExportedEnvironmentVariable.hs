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
-- Module      : Network.AWS.CodeBuild.Types.ExportedEnvironmentVariable
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ExportedEnvironmentVariable where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an exported environment variable.
--
-- Exported environment variables are used in conjunction with CodePipeline
-- to export environment variables from the current build stage to
-- subsequent stages in the pipeline. For more information, see
-- <https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html Working with variables>
-- in the /CodePipeline User Guide/.
--
-- During a build, the value of a variable is available starting with the
-- @install@ phase. It can be updated between the start of the @install@
-- phase and the end of the @post_build@ phase. After the @post_build@
-- phase ends, the value of exported variables cannot change.
--
-- /See:/ 'newExportedEnvironmentVariable' smart constructor.
data ExportedEnvironmentVariable = ExportedEnvironmentVariable'
  { -- | The value assigned to the exported environment variable.
    value :: Prelude.Maybe Prelude.Text,
    -- | The name of the exported environment variable.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportedEnvironmentVariable' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'exportedEnvironmentVariable_value' - The value assigned to the exported environment variable.
--
-- 'name', 'exportedEnvironmentVariable_name' - The name of the exported environment variable.
newExportedEnvironmentVariable ::
  ExportedEnvironmentVariable
newExportedEnvironmentVariable =
  ExportedEnvironmentVariable'
    { value =
        Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The value assigned to the exported environment variable.
exportedEnvironmentVariable_value :: Lens.Lens' ExportedEnvironmentVariable (Prelude.Maybe Prelude.Text)
exportedEnvironmentVariable_value = Lens.lens (\ExportedEnvironmentVariable' {value} -> value) (\s@ExportedEnvironmentVariable' {} a -> s {value = a} :: ExportedEnvironmentVariable)

-- | The name of the exported environment variable.
exportedEnvironmentVariable_name :: Lens.Lens' ExportedEnvironmentVariable (Prelude.Maybe Prelude.Text)
exportedEnvironmentVariable_name = Lens.lens (\ExportedEnvironmentVariable' {name} -> name) (\s@ExportedEnvironmentVariable' {} a -> s {name = a} :: ExportedEnvironmentVariable)

instance Core.FromJSON ExportedEnvironmentVariable where
  parseJSON =
    Core.withObject
      "ExportedEnvironmentVariable"
      ( \x ->
          ExportedEnvironmentVariable'
            Prelude.<$> (x Core..:? "value") Prelude.<*> (x Core..:? "name")
      )

instance Prelude.Hashable ExportedEnvironmentVariable

instance Prelude.NFData ExportedEnvironmentVariable
