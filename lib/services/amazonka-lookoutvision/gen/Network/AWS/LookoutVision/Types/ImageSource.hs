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
-- Module      : Network.AWS.LookoutVision.Types.ImageSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutVision.Types.ImageSource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The source for an image.
--
-- /See:/ 'newImageSource' smart constructor.
data ImageSource = ImageSource'
  { -- | The type of the image.
    type' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'imageSource_type' - The type of the image.
newImageSource ::
  ImageSource
newImageSource =
  ImageSource' {type' = Prelude.Nothing}

-- | The type of the image.
imageSource_type :: Lens.Lens' ImageSource (Prelude.Maybe Prelude.Text)
imageSource_type = Lens.lens (\ImageSource' {type'} -> type') (\s@ImageSource' {} a -> s {type' = a} :: ImageSource)

instance Core.FromJSON ImageSource where
  parseJSON =
    Core.withObject
      "ImageSource"
      (\x -> ImageSource' Prelude.<$> (x Core..:? "Type"))

instance Prelude.Hashable ImageSource

instance Prelude.NFData ImageSource
