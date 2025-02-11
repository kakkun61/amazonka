{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ImageBuilder.CreateImageRecipe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new image recipe. Image recipes define how images are
-- configured, tested, and assessed.
module Network.AWS.ImageBuilder.CreateImageRecipe
  ( -- * Creating a Request
    CreateImageRecipe (..),
    newCreateImageRecipe,

    -- * Request Lenses
    createImageRecipe_additionalInstanceConfiguration,
    createImageRecipe_workingDirectory,
    createImageRecipe_blockDeviceMappings,
    createImageRecipe_description,
    createImageRecipe_tags,
    createImageRecipe_name,
    createImageRecipe_semanticVersion,
    createImageRecipe_components,
    createImageRecipe_parentImage,
    createImageRecipe_clientToken,

    -- * Destructuring the Response
    CreateImageRecipeResponse (..),
    newCreateImageRecipeResponse,

    -- * Response Lenses
    createImageRecipeResponse_requestId,
    createImageRecipeResponse_clientToken,
    createImageRecipeResponse_imageRecipeArn,
    createImageRecipeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateImageRecipe' smart constructor.
data CreateImageRecipe = CreateImageRecipe'
  { -- | Specify additional settings and launch scripts for your build instances.
    additionalInstanceConfiguration :: Prelude.Maybe AdditionalInstanceConfiguration,
    -- | The working directory used during build and test workflows.
    workingDirectory :: Prelude.Maybe Prelude.Text,
    -- | The block device mappings of the image recipe.
    blockDeviceMappings :: Prelude.Maybe [InstanceBlockDeviceMapping],
    -- | The description of the image recipe.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags of the image recipe.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the image recipe.
    name :: Prelude.Text,
    -- | The semantic version of the image recipe. This version follows the
    -- semantic version syntax.
    --
    -- The semantic version has four nodes:
    -- \<major>.\<minor>.\<patch>\/\<build>. You can assign values for the
    -- first three, and can filter on all of them.
    --
    -- __Assignment:__ For the first three nodes you can assign any positive
    -- integer value, including zero, with an upper limit of 2^30-1, or
    -- 1073741823 for each node. Image Builder automatically assigns the build
    -- number to the fourth node.
    --
    -- __Patterns:__ You can use any numeric pattern that adheres to the
    -- assignment requirements for the nodes that you can assign. For example,
    -- you might choose a software version pattern, such as 1.0.0, or a date,
    -- such as 2021.01.01.
    semanticVersion :: Prelude.Text,
    -- | The components of the image recipe.
    components :: Prelude.NonEmpty ComponentConfiguration,
    -- | The base image of the image recipe. The value of the string can be the
    -- ARN of the base image or an AMI ID. The format for the ARN follows this
    -- example:
    -- @arn:aws:imagebuilder:us-west-2:aws:image\/windows-server-2016-english-full-base-x86\/x.x.x@.
    -- You can provide the specific version that you want to use, or you can
    -- use a wildcard in all of the fields. If you enter an AMI ID for the
    -- string value, you must have access to the AMI, and the AMI must be in
    -- the same Region in which you are using Image Builder.
    parentImage :: Prelude.Text,
    -- | The idempotency token used to make this request idempotent.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateImageRecipe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalInstanceConfiguration', 'createImageRecipe_additionalInstanceConfiguration' - Specify additional settings and launch scripts for your build instances.
--
-- 'workingDirectory', 'createImageRecipe_workingDirectory' - The working directory used during build and test workflows.
--
-- 'blockDeviceMappings', 'createImageRecipe_blockDeviceMappings' - The block device mappings of the image recipe.
--
-- 'description', 'createImageRecipe_description' - The description of the image recipe.
--
-- 'tags', 'createImageRecipe_tags' - The tags of the image recipe.
--
-- 'name', 'createImageRecipe_name' - The name of the image recipe.
--
-- 'semanticVersion', 'createImageRecipe_semanticVersion' - The semantic version of the image recipe. This version follows the
-- semantic version syntax.
--
-- The semantic version has four nodes:
-- \<major>.\<minor>.\<patch>\/\<build>. You can assign values for the
-- first three, and can filter on all of them.
--
-- __Assignment:__ For the first three nodes you can assign any positive
-- integer value, including zero, with an upper limit of 2^30-1, or
-- 1073741823 for each node. Image Builder automatically assigns the build
-- number to the fourth node.
--
-- __Patterns:__ You can use any numeric pattern that adheres to the
-- assignment requirements for the nodes that you can assign. For example,
-- you might choose a software version pattern, such as 1.0.0, or a date,
-- such as 2021.01.01.
--
-- 'components', 'createImageRecipe_components' - The components of the image recipe.
--
-- 'parentImage', 'createImageRecipe_parentImage' - The base image of the image recipe. The value of the string can be the
-- ARN of the base image or an AMI ID. The format for the ARN follows this
-- example:
-- @arn:aws:imagebuilder:us-west-2:aws:image\/windows-server-2016-english-full-base-x86\/x.x.x@.
-- You can provide the specific version that you want to use, or you can
-- use a wildcard in all of the fields. If you enter an AMI ID for the
-- string value, you must have access to the AMI, and the AMI must be in
-- the same Region in which you are using Image Builder.
--
-- 'clientToken', 'createImageRecipe_clientToken' - The idempotency token used to make this request idempotent.
newCreateImageRecipe ::
  -- | 'name'
  Prelude.Text ->
  -- | 'semanticVersion'
  Prelude.Text ->
  -- | 'components'
  Prelude.NonEmpty ComponentConfiguration ->
  -- | 'parentImage'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateImageRecipe
newCreateImageRecipe
  pName_
  pSemanticVersion_
  pComponents_
  pParentImage_
  pClientToken_ =
    CreateImageRecipe'
      { additionalInstanceConfiguration =
          Prelude.Nothing,
        workingDirectory = Prelude.Nothing,
        blockDeviceMappings = Prelude.Nothing,
        description = Prelude.Nothing,
        tags = Prelude.Nothing,
        name = pName_,
        semanticVersion = pSemanticVersion_,
        components = Lens.coerced Lens.# pComponents_,
        parentImage = pParentImage_,
        clientToken = pClientToken_
      }

-- | Specify additional settings and launch scripts for your build instances.
createImageRecipe_additionalInstanceConfiguration :: Lens.Lens' CreateImageRecipe (Prelude.Maybe AdditionalInstanceConfiguration)
createImageRecipe_additionalInstanceConfiguration = Lens.lens (\CreateImageRecipe' {additionalInstanceConfiguration} -> additionalInstanceConfiguration) (\s@CreateImageRecipe' {} a -> s {additionalInstanceConfiguration = a} :: CreateImageRecipe)

-- | The working directory used during build and test workflows.
createImageRecipe_workingDirectory :: Lens.Lens' CreateImageRecipe (Prelude.Maybe Prelude.Text)
createImageRecipe_workingDirectory = Lens.lens (\CreateImageRecipe' {workingDirectory} -> workingDirectory) (\s@CreateImageRecipe' {} a -> s {workingDirectory = a} :: CreateImageRecipe)

-- | The block device mappings of the image recipe.
createImageRecipe_blockDeviceMappings :: Lens.Lens' CreateImageRecipe (Prelude.Maybe [InstanceBlockDeviceMapping])
createImageRecipe_blockDeviceMappings = Lens.lens (\CreateImageRecipe' {blockDeviceMappings} -> blockDeviceMappings) (\s@CreateImageRecipe' {} a -> s {blockDeviceMappings = a} :: CreateImageRecipe) Prelude.. Lens.mapping Lens.coerced

-- | The description of the image recipe.
createImageRecipe_description :: Lens.Lens' CreateImageRecipe (Prelude.Maybe Prelude.Text)
createImageRecipe_description = Lens.lens (\CreateImageRecipe' {description} -> description) (\s@CreateImageRecipe' {} a -> s {description = a} :: CreateImageRecipe)

-- | The tags of the image recipe.
createImageRecipe_tags :: Lens.Lens' CreateImageRecipe (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createImageRecipe_tags = Lens.lens (\CreateImageRecipe' {tags} -> tags) (\s@CreateImageRecipe' {} a -> s {tags = a} :: CreateImageRecipe) Prelude.. Lens.mapping Lens.coerced

-- | The name of the image recipe.
createImageRecipe_name :: Lens.Lens' CreateImageRecipe Prelude.Text
createImageRecipe_name = Lens.lens (\CreateImageRecipe' {name} -> name) (\s@CreateImageRecipe' {} a -> s {name = a} :: CreateImageRecipe)

-- | The semantic version of the image recipe. This version follows the
-- semantic version syntax.
--
-- The semantic version has four nodes:
-- \<major>.\<minor>.\<patch>\/\<build>. You can assign values for the
-- first three, and can filter on all of them.
--
-- __Assignment:__ For the first three nodes you can assign any positive
-- integer value, including zero, with an upper limit of 2^30-1, or
-- 1073741823 for each node. Image Builder automatically assigns the build
-- number to the fourth node.
--
-- __Patterns:__ You can use any numeric pattern that adheres to the
-- assignment requirements for the nodes that you can assign. For example,
-- you might choose a software version pattern, such as 1.0.0, or a date,
-- such as 2021.01.01.
createImageRecipe_semanticVersion :: Lens.Lens' CreateImageRecipe Prelude.Text
createImageRecipe_semanticVersion = Lens.lens (\CreateImageRecipe' {semanticVersion} -> semanticVersion) (\s@CreateImageRecipe' {} a -> s {semanticVersion = a} :: CreateImageRecipe)

-- | The components of the image recipe.
createImageRecipe_components :: Lens.Lens' CreateImageRecipe (Prelude.NonEmpty ComponentConfiguration)
createImageRecipe_components = Lens.lens (\CreateImageRecipe' {components} -> components) (\s@CreateImageRecipe' {} a -> s {components = a} :: CreateImageRecipe) Prelude.. Lens.coerced

-- | The base image of the image recipe. The value of the string can be the
-- ARN of the base image or an AMI ID. The format for the ARN follows this
-- example:
-- @arn:aws:imagebuilder:us-west-2:aws:image\/windows-server-2016-english-full-base-x86\/x.x.x@.
-- You can provide the specific version that you want to use, or you can
-- use a wildcard in all of the fields. If you enter an AMI ID for the
-- string value, you must have access to the AMI, and the AMI must be in
-- the same Region in which you are using Image Builder.
createImageRecipe_parentImage :: Lens.Lens' CreateImageRecipe Prelude.Text
createImageRecipe_parentImage = Lens.lens (\CreateImageRecipe' {parentImage} -> parentImage) (\s@CreateImageRecipe' {} a -> s {parentImage = a} :: CreateImageRecipe)

-- | The idempotency token used to make this request idempotent.
createImageRecipe_clientToken :: Lens.Lens' CreateImageRecipe Prelude.Text
createImageRecipe_clientToken = Lens.lens (\CreateImageRecipe' {clientToken} -> clientToken) (\s@CreateImageRecipe' {} a -> s {clientToken = a} :: CreateImageRecipe)

instance Core.AWSRequest CreateImageRecipe where
  type
    AWSResponse CreateImageRecipe =
      CreateImageRecipeResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateImageRecipeResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "clientToken")
            Prelude.<*> (x Core..?> "imageRecipeArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateImageRecipe

instance Prelude.NFData CreateImageRecipe

instance Core.ToHeaders CreateImageRecipe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateImageRecipe where
  toJSON CreateImageRecipe' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("additionalInstanceConfiguration" Core..=)
              Prelude.<$> additionalInstanceConfiguration,
            ("workingDirectory" Core..=)
              Prelude.<$> workingDirectory,
            ("blockDeviceMappings" Core..=)
              Prelude.<$> blockDeviceMappings,
            ("description" Core..=) Prelude.<$> description,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("name" Core..= name),
            Prelude.Just
              ("semanticVersion" Core..= semanticVersion),
            Prelude.Just ("components" Core..= components),
            Prelude.Just ("parentImage" Core..= parentImage),
            Prelude.Just ("clientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CreateImageRecipe where
  toPath = Prelude.const "/CreateImageRecipe"

instance Core.ToQuery CreateImageRecipe where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateImageRecipeResponse' smart constructor.
data CreateImageRecipeResponse = CreateImageRecipeResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The idempotency token used to make this request idempotent.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the image recipe that was created by
    -- this request.
    imageRecipeArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateImageRecipeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'createImageRecipeResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'clientToken', 'createImageRecipeResponse_clientToken' - The idempotency token used to make this request idempotent.
--
-- 'imageRecipeArn', 'createImageRecipeResponse_imageRecipeArn' - The Amazon Resource Name (ARN) of the image recipe that was created by
-- this request.
--
-- 'httpStatus', 'createImageRecipeResponse_httpStatus' - The response's http status code.
newCreateImageRecipeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateImageRecipeResponse
newCreateImageRecipeResponse pHttpStatus_ =
  CreateImageRecipeResponse'
    { requestId =
        Prelude.Nothing,
      clientToken = Prelude.Nothing,
      imageRecipeArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The request ID that uniquely identifies this request.
createImageRecipeResponse_requestId :: Lens.Lens' CreateImageRecipeResponse (Prelude.Maybe Prelude.Text)
createImageRecipeResponse_requestId = Lens.lens (\CreateImageRecipeResponse' {requestId} -> requestId) (\s@CreateImageRecipeResponse' {} a -> s {requestId = a} :: CreateImageRecipeResponse)

-- | The idempotency token used to make this request idempotent.
createImageRecipeResponse_clientToken :: Lens.Lens' CreateImageRecipeResponse (Prelude.Maybe Prelude.Text)
createImageRecipeResponse_clientToken = Lens.lens (\CreateImageRecipeResponse' {clientToken} -> clientToken) (\s@CreateImageRecipeResponse' {} a -> s {clientToken = a} :: CreateImageRecipeResponse)

-- | The Amazon Resource Name (ARN) of the image recipe that was created by
-- this request.
createImageRecipeResponse_imageRecipeArn :: Lens.Lens' CreateImageRecipeResponse (Prelude.Maybe Prelude.Text)
createImageRecipeResponse_imageRecipeArn = Lens.lens (\CreateImageRecipeResponse' {imageRecipeArn} -> imageRecipeArn) (\s@CreateImageRecipeResponse' {} a -> s {imageRecipeArn = a} :: CreateImageRecipeResponse)

-- | The response's http status code.
createImageRecipeResponse_httpStatus :: Lens.Lens' CreateImageRecipeResponse Prelude.Int
createImageRecipeResponse_httpStatus = Lens.lens (\CreateImageRecipeResponse' {httpStatus} -> httpStatus) (\s@CreateImageRecipeResponse' {} a -> s {httpStatus = a} :: CreateImageRecipeResponse)

instance Prelude.NFData CreateImageRecipeResponse
