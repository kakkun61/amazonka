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
-- Module      : Network.AWS.AppRunner.Types.ImageRepository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppRunner.Types.ImageRepository where

import Network.AWS.AppRunner.Types.ImageConfiguration
import Network.AWS.AppRunner.Types.ImageRepositoryType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a source image repository.
--
-- /See:/ 'newImageRepository' smart constructor.
data ImageRepository = ImageRepository'
  { -- | Configuration for running the identified image.
    imageConfiguration :: Prelude.Maybe ImageConfiguration,
    -- | The identifier of an image.
    --
    -- For an image in Amazon Elastic Container Registry (Amazon ECR), this is
    -- an image name. For the image name format, see
    -- <https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html Pulling an image>
    -- in the /Amazon ECR User Guide/.
    imageIdentifier :: Prelude.Text,
    -- | The type of the image repository. This reflects the repository provider
    -- and whether the repository is private or public.
    imageRepositoryType :: ImageRepositoryType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImageRepository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'imageConfiguration', 'imageRepository_imageConfiguration' - Configuration for running the identified image.
--
-- 'imageIdentifier', 'imageRepository_imageIdentifier' - The identifier of an image.
--
-- For an image in Amazon Elastic Container Registry (Amazon ECR), this is
-- an image name. For the image name format, see
-- <https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html Pulling an image>
-- in the /Amazon ECR User Guide/.
--
-- 'imageRepositoryType', 'imageRepository_imageRepositoryType' - The type of the image repository. This reflects the repository provider
-- and whether the repository is private or public.
newImageRepository ::
  -- | 'imageIdentifier'
  Prelude.Text ->
  -- | 'imageRepositoryType'
  ImageRepositoryType ->
  ImageRepository
newImageRepository
  pImageIdentifier_
  pImageRepositoryType_ =
    ImageRepository'
      { imageConfiguration =
          Prelude.Nothing,
        imageIdentifier = pImageIdentifier_,
        imageRepositoryType = pImageRepositoryType_
      }

-- | Configuration for running the identified image.
imageRepository_imageConfiguration :: Lens.Lens' ImageRepository (Prelude.Maybe ImageConfiguration)
imageRepository_imageConfiguration = Lens.lens (\ImageRepository' {imageConfiguration} -> imageConfiguration) (\s@ImageRepository' {} a -> s {imageConfiguration = a} :: ImageRepository)

-- | The identifier of an image.
--
-- For an image in Amazon Elastic Container Registry (Amazon ECR), this is
-- an image name. For the image name format, see
-- <https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-pull-ecr-image.html Pulling an image>
-- in the /Amazon ECR User Guide/.
imageRepository_imageIdentifier :: Lens.Lens' ImageRepository Prelude.Text
imageRepository_imageIdentifier = Lens.lens (\ImageRepository' {imageIdentifier} -> imageIdentifier) (\s@ImageRepository' {} a -> s {imageIdentifier = a} :: ImageRepository)

-- | The type of the image repository. This reflects the repository provider
-- and whether the repository is private or public.
imageRepository_imageRepositoryType :: Lens.Lens' ImageRepository ImageRepositoryType
imageRepository_imageRepositoryType = Lens.lens (\ImageRepository' {imageRepositoryType} -> imageRepositoryType) (\s@ImageRepository' {} a -> s {imageRepositoryType = a} :: ImageRepository)

instance Core.FromJSON ImageRepository where
  parseJSON =
    Core.withObject
      "ImageRepository"
      ( \x ->
          ImageRepository'
            Prelude.<$> (x Core..:? "ImageConfiguration")
            Prelude.<*> (x Core..: "ImageIdentifier")
            Prelude.<*> (x Core..: "ImageRepositoryType")
      )

instance Prelude.Hashable ImageRepository

instance Prelude.NFData ImageRepository

instance Core.ToJSON ImageRepository where
  toJSON ImageRepository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ImageConfiguration" Core..=)
              Prelude.<$> imageConfiguration,
            Prelude.Just
              ("ImageIdentifier" Core..= imageIdentifier),
            Prelude.Just
              ("ImageRepositoryType" Core..= imageRepositoryType)
          ]
      )
