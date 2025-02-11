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
-- Module      : Network.AWS.SageMaker.Types.AutoMLContainerDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLContainerDefinition where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A list of container definitions that describe the different containers
-- that make up an AutoML candidate. For more information, see .
--
-- /See:/ 'newAutoMLContainerDefinition' smart constructor.
data AutoMLContainerDefinition = AutoMLContainerDefinition'
  { -- | The environment variables to set in the container. For more information,
    -- see .
    environment :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The Amazon Elastic Container Registry (Amazon ECR) path of the
    -- container. For more information, see .
    image :: Prelude.Text,
    -- | The location of the model artifacts. For more information, see .
    modelDataUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AutoMLContainerDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environment', 'autoMLContainerDefinition_environment' - The environment variables to set in the container. For more information,
-- see .
--
-- 'image', 'autoMLContainerDefinition_image' - The Amazon Elastic Container Registry (Amazon ECR) path of the
-- container. For more information, see .
--
-- 'modelDataUrl', 'autoMLContainerDefinition_modelDataUrl' - The location of the model artifacts. For more information, see .
newAutoMLContainerDefinition ::
  -- | 'image'
  Prelude.Text ->
  -- | 'modelDataUrl'
  Prelude.Text ->
  AutoMLContainerDefinition
newAutoMLContainerDefinition pImage_ pModelDataUrl_ =
  AutoMLContainerDefinition'
    { environment =
        Prelude.Nothing,
      image = pImage_,
      modelDataUrl = pModelDataUrl_
    }

-- | The environment variables to set in the container. For more information,
-- see .
autoMLContainerDefinition_environment :: Lens.Lens' AutoMLContainerDefinition (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
autoMLContainerDefinition_environment = Lens.lens (\AutoMLContainerDefinition' {environment} -> environment) (\s@AutoMLContainerDefinition' {} a -> s {environment = a} :: AutoMLContainerDefinition) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Elastic Container Registry (Amazon ECR) path of the
-- container. For more information, see .
autoMLContainerDefinition_image :: Lens.Lens' AutoMLContainerDefinition Prelude.Text
autoMLContainerDefinition_image = Lens.lens (\AutoMLContainerDefinition' {image} -> image) (\s@AutoMLContainerDefinition' {} a -> s {image = a} :: AutoMLContainerDefinition)

-- | The location of the model artifacts. For more information, see .
autoMLContainerDefinition_modelDataUrl :: Lens.Lens' AutoMLContainerDefinition Prelude.Text
autoMLContainerDefinition_modelDataUrl = Lens.lens (\AutoMLContainerDefinition' {modelDataUrl} -> modelDataUrl) (\s@AutoMLContainerDefinition' {} a -> s {modelDataUrl = a} :: AutoMLContainerDefinition)

instance Core.FromJSON AutoMLContainerDefinition where
  parseJSON =
    Core.withObject
      "AutoMLContainerDefinition"
      ( \x ->
          AutoMLContainerDefinition'
            Prelude.<$> (x Core..:? "Environment" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "Image")
            Prelude.<*> (x Core..: "ModelDataUrl")
      )

instance Prelude.Hashable AutoMLContainerDefinition

instance Prelude.NFData AutoMLContainerDefinition
