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
-- Module      : Network.AWS.Panorama.Types.PackageImportJobInputConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Panorama.Types.PackageImportJobInputConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Panorama.Types.PackageVersionInputConfig
import qualified Network.AWS.Prelude as Prelude

-- | A configuration for a package import job.
--
-- /See:/ 'newPackageImportJobInputConfig' smart constructor.
data PackageImportJobInputConfig = PackageImportJobInputConfig'
  { -- | The package version\'s input configuration.
    packageVersionInputConfig :: Prelude.Maybe PackageVersionInputConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PackageImportJobInputConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packageVersionInputConfig', 'packageImportJobInputConfig_packageVersionInputConfig' - The package version\'s input configuration.
newPackageImportJobInputConfig ::
  PackageImportJobInputConfig
newPackageImportJobInputConfig =
  PackageImportJobInputConfig'
    { packageVersionInputConfig =
        Prelude.Nothing
    }

-- | The package version\'s input configuration.
packageImportJobInputConfig_packageVersionInputConfig :: Lens.Lens' PackageImportJobInputConfig (Prelude.Maybe PackageVersionInputConfig)
packageImportJobInputConfig_packageVersionInputConfig = Lens.lens (\PackageImportJobInputConfig' {packageVersionInputConfig} -> packageVersionInputConfig) (\s@PackageImportJobInputConfig' {} a -> s {packageVersionInputConfig = a} :: PackageImportJobInputConfig)

instance Core.FromJSON PackageImportJobInputConfig where
  parseJSON =
    Core.withObject
      "PackageImportJobInputConfig"
      ( \x ->
          PackageImportJobInputConfig'
            Prelude.<$> (x Core..:? "PackageVersionInputConfig")
      )

instance Prelude.Hashable PackageImportJobInputConfig

instance Prelude.NFData PackageImportJobInputConfig

instance Core.ToJSON PackageImportJobInputConfig where
  toJSON PackageImportJobInputConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PackageVersionInputConfig" Core..=)
              Prelude.<$> packageVersionInputConfig
          ]
      )
