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
-- Module      : Network.AWS.SageMaker.CreateStudioLifecycleConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Studio Lifecycle Configuration.
module Network.AWS.SageMaker.CreateStudioLifecycleConfig
  ( -- * Creating a Request
    CreateStudioLifecycleConfig (..),
    newCreateStudioLifecycleConfig,

    -- * Request Lenses
    createStudioLifecycleConfig_tags,
    createStudioLifecycleConfig_studioLifecycleConfigName,
    createStudioLifecycleConfig_studioLifecycleConfigContent,
    createStudioLifecycleConfig_studioLifecycleConfigAppType,

    -- * Destructuring the Response
    CreateStudioLifecycleConfigResponse (..),
    newCreateStudioLifecycleConfigResponse,

    -- * Response Lenses
    createStudioLifecycleConfigResponse_studioLifecycleConfigArn,
    createStudioLifecycleConfigResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newCreateStudioLifecycleConfig' smart constructor.
data CreateStudioLifecycleConfig = CreateStudioLifecycleConfig'
  { -- | Tags to be associated with the Lifecycle Configuration. Each tag
    -- consists of a key and an optional value. Tag keys must be unique per
    -- resource. Tags are searchable using the Search API.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the Studio Lifecycle Configuration to create.
    studioLifecycleConfigName :: Prelude.Text,
    -- | The content of your Studio Lifecycle Configuration script. This content
    -- must be base64 encoded.
    studioLifecycleConfigContent :: Prelude.Text,
    -- | The App type that the Lifecycle Configuration is attached to.
    studioLifecycleConfigAppType :: StudioLifecycleConfigAppType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateStudioLifecycleConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createStudioLifecycleConfig_tags' - Tags to be associated with the Lifecycle Configuration. Each tag
-- consists of a key and an optional value. Tag keys must be unique per
-- resource. Tags are searchable using the Search API.
--
-- 'studioLifecycleConfigName', 'createStudioLifecycleConfig_studioLifecycleConfigName' - The name of the Studio Lifecycle Configuration to create.
--
-- 'studioLifecycleConfigContent', 'createStudioLifecycleConfig_studioLifecycleConfigContent' - The content of your Studio Lifecycle Configuration script. This content
-- must be base64 encoded.
--
-- 'studioLifecycleConfigAppType', 'createStudioLifecycleConfig_studioLifecycleConfigAppType' - The App type that the Lifecycle Configuration is attached to.
newCreateStudioLifecycleConfig ::
  -- | 'studioLifecycleConfigName'
  Prelude.Text ->
  -- | 'studioLifecycleConfigContent'
  Prelude.Text ->
  -- | 'studioLifecycleConfigAppType'
  StudioLifecycleConfigAppType ->
  CreateStudioLifecycleConfig
newCreateStudioLifecycleConfig
  pStudioLifecycleConfigName_
  pStudioLifecycleConfigContent_
  pStudioLifecycleConfigAppType_ =
    CreateStudioLifecycleConfig'
      { tags =
          Prelude.Nothing,
        studioLifecycleConfigName =
          pStudioLifecycleConfigName_,
        studioLifecycleConfigContent =
          pStudioLifecycleConfigContent_,
        studioLifecycleConfigAppType =
          pStudioLifecycleConfigAppType_
      }

-- | Tags to be associated with the Lifecycle Configuration. Each tag
-- consists of a key and an optional value. Tag keys must be unique per
-- resource. Tags are searchable using the Search API.
createStudioLifecycleConfig_tags :: Lens.Lens' CreateStudioLifecycleConfig (Prelude.Maybe [Tag])
createStudioLifecycleConfig_tags = Lens.lens (\CreateStudioLifecycleConfig' {tags} -> tags) (\s@CreateStudioLifecycleConfig' {} a -> s {tags = a} :: CreateStudioLifecycleConfig) Prelude.. Lens.mapping Lens.coerced

-- | The name of the Studio Lifecycle Configuration to create.
createStudioLifecycleConfig_studioLifecycleConfigName :: Lens.Lens' CreateStudioLifecycleConfig Prelude.Text
createStudioLifecycleConfig_studioLifecycleConfigName = Lens.lens (\CreateStudioLifecycleConfig' {studioLifecycleConfigName} -> studioLifecycleConfigName) (\s@CreateStudioLifecycleConfig' {} a -> s {studioLifecycleConfigName = a} :: CreateStudioLifecycleConfig)

-- | The content of your Studio Lifecycle Configuration script. This content
-- must be base64 encoded.
createStudioLifecycleConfig_studioLifecycleConfigContent :: Lens.Lens' CreateStudioLifecycleConfig Prelude.Text
createStudioLifecycleConfig_studioLifecycleConfigContent = Lens.lens (\CreateStudioLifecycleConfig' {studioLifecycleConfigContent} -> studioLifecycleConfigContent) (\s@CreateStudioLifecycleConfig' {} a -> s {studioLifecycleConfigContent = a} :: CreateStudioLifecycleConfig)

-- | The App type that the Lifecycle Configuration is attached to.
createStudioLifecycleConfig_studioLifecycleConfigAppType :: Lens.Lens' CreateStudioLifecycleConfig StudioLifecycleConfigAppType
createStudioLifecycleConfig_studioLifecycleConfigAppType = Lens.lens (\CreateStudioLifecycleConfig' {studioLifecycleConfigAppType} -> studioLifecycleConfigAppType) (\s@CreateStudioLifecycleConfig' {} a -> s {studioLifecycleConfigAppType = a} :: CreateStudioLifecycleConfig)

instance Core.AWSRequest CreateStudioLifecycleConfig where
  type
    AWSResponse CreateStudioLifecycleConfig =
      CreateStudioLifecycleConfigResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateStudioLifecycleConfigResponse'
            Prelude.<$> (x Core..?> "StudioLifecycleConfigArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateStudioLifecycleConfig

instance Prelude.NFData CreateStudioLifecycleConfig

instance Core.ToHeaders CreateStudioLifecycleConfig where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.CreateStudioLifecycleConfig" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateStudioLifecycleConfig where
  toJSON CreateStudioLifecycleConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ( "StudioLifecycleConfigName"
                  Core..= studioLifecycleConfigName
              ),
            Prelude.Just
              ( "StudioLifecycleConfigContent"
                  Core..= studioLifecycleConfigContent
              ),
            Prelude.Just
              ( "StudioLifecycleConfigAppType"
                  Core..= studioLifecycleConfigAppType
              )
          ]
      )

instance Core.ToPath CreateStudioLifecycleConfig where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateStudioLifecycleConfig where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateStudioLifecycleConfigResponse' smart constructor.
data CreateStudioLifecycleConfigResponse = CreateStudioLifecycleConfigResponse'
  { -- | The ARN of your created Lifecycle Configuration.
    studioLifecycleConfigArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateStudioLifecycleConfigResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'studioLifecycleConfigArn', 'createStudioLifecycleConfigResponse_studioLifecycleConfigArn' - The ARN of your created Lifecycle Configuration.
--
-- 'httpStatus', 'createStudioLifecycleConfigResponse_httpStatus' - The response's http status code.
newCreateStudioLifecycleConfigResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateStudioLifecycleConfigResponse
newCreateStudioLifecycleConfigResponse pHttpStatus_ =
  CreateStudioLifecycleConfigResponse'
    { studioLifecycleConfigArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of your created Lifecycle Configuration.
createStudioLifecycleConfigResponse_studioLifecycleConfigArn :: Lens.Lens' CreateStudioLifecycleConfigResponse (Prelude.Maybe Prelude.Text)
createStudioLifecycleConfigResponse_studioLifecycleConfigArn = Lens.lens (\CreateStudioLifecycleConfigResponse' {studioLifecycleConfigArn} -> studioLifecycleConfigArn) (\s@CreateStudioLifecycleConfigResponse' {} a -> s {studioLifecycleConfigArn = a} :: CreateStudioLifecycleConfigResponse)

-- | The response's http status code.
createStudioLifecycleConfigResponse_httpStatus :: Lens.Lens' CreateStudioLifecycleConfigResponse Prelude.Int
createStudioLifecycleConfigResponse_httpStatus = Lens.lens (\CreateStudioLifecycleConfigResponse' {httpStatus} -> httpStatus) (\s@CreateStudioLifecycleConfigResponse' {} a -> s {httpStatus = a} :: CreateStudioLifecycleConfigResponse)

instance
  Prelude.NFData
    CreateStudioLifecycleConfigResponse
