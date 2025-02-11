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
-- Module      : Network.AWS.ImageBuilder.Types.ImagePackage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ImageBuilder.Types.ImagePackage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a package installed on an Image Builder image.
--
-- /See:/ 'newImagePackage' smart constructor.
data ImagePackage = ImagePackage'
  { -- | The name of the package as reported to the operating system package
    -- manager.
    packageName :: Prelude.Maybe Prelude.Text,
    -- | The version of the package as reported to the operating system package
    -- manager.
    packageVersion :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImagePackage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'packageName', 'imagePackage_packageName' - The name of the package as reported to the operating system package
-- manager.
--
-- 'packageVersion', 'imagePackage_packageVersion' - The version of the package as reported to the operating system package
-- manager.
newImagePackage ::
  ImagePackage
newImagePackage =
  ImagePackage'
    { packageName = Prelude.Nothing,
      packageVersion = Prelude.Nothing
    }

-- | The name of the package as reported to the operating system package
-- manager.
imagePackage_packageName :: Lens.Lens' ImagePackage (Prelude.Maybe Prelude.Text)
imagePackage_packageName = Lens.lens (\ImagePackage' {packageName} -> packageName) (\s@ImagePackage' {} a -> s {packageName = a} :: ImagePackage)

-- | The version of the package as reported to the operating system package
-- manager.
imagePackage_packageVersion :: Lens.Lens' ImagePackage (Prelude.Maybe Prelude.Text)
imagePackage_packageVersion = Lens.lens (\ImagePackage' {packageVersion} -> packageVersion) (\s@ImagePackage' {} a -> s {packageVersion = a} :: ImagePackage)

instance Core.FromJSON ImagePackage where
  parseJSON =
    Core.withObject
      "ImagePackage"
      ( \x ->
          ImagePackage'
            Prelude.<$> (x Core..:? "packageName")
            Prelude.<*> (x Core..:? "packageVersion")
      )

instance Prelude.Hashable ImagePackage

instance Prelude.NFData ImagePackage
