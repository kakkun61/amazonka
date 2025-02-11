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
-- Module      : Network.AWS.Panorama.Types.PackageImportJobOutputConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.PackageImportJobOutputConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Panorama.Types.PackageVersionOutputConfig
import qualified Network.AWS.Prelude as Prelude

-- | An output configuration for a package import job.
--
-- /See:/ 'newPackageImportJobOutputConfig' smart constructor.
data PackageImportJobOutputConfig = PackageImportJobOutputConfig'
  { -- | The package version\'s output configuration.
    packageVersionOutputConfig :: Prelude.Maybe PackageVersionOutputConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PackageImportJobOutputConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packageVersionOutputConfig', 'packageImportJobOutputConfig_packageVersionOutputConfig' - The package version\'s output configuration.
newPackageImportJobOutputConfig ::
  PackageImportJobOutputConfig
newPackageImportJobOutputConfig =
  PackageImportJobOutputConfig'
    { packageVersionOutputConfig =
        Prelude.Nothing
    }

-- | The package version\'s output configuration.
packageImportJobOutputConfig_packageVersionOutputConfig :: Lens.Lens' PackageImportJobOutputConfig (Prelude.Maybe PackageVersionOutputConfig)
packageImportJobOutputConfig_packageVersionOutputConfig = Lens.lens (\PackageImportJobOutputConfig' {packageVersionOutputConfig} -> packageVersionOutputConfig) (\s@PackageImportJobOutputConfig' {} a -> s {packageVersionOutputConfig = a} :: PackageImportJobOutputConfig)

instance Core.FromJSON PackageImportJobOutputConfig where
  parseJSON =
    Core.withObject
      "PackageImportJobOutputConfig"
      ( \x ->
          PackageImportJobOutputConfig'
            Prelude.<$> (x Core..:? "PackageVersionOutputConfig")
      )

instance
  Prelude.Hashable
    PackageImportJobOutputConfig

instance Prelude.NFData PackageImportJobOutputConfig

instance Core.ToJSON PackageImportJobOutputConfig where
  toJSON PackageImportJobOutputConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PackageVersionOutputConfig" Core..=)
              Prelude.<$> packageVersionOutputConfig
          ]
      )
