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
-- Module      : Network.AWS.ImageBuilder.CreateDistributionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new distribution configuration. Distribution configurations
-- define and configure the outputs of your pipeline.
module Network.AWS.ImageBuilder.CreateDistributionConfiguration
  ( -- * Creating a Request
    CreateDistributionConfiguration (..),
    newCreateDistributionConfiguration,

    -- * Request Lenses
    createDistributionConfiguration_description,
    createDistributionConfiguration_tags,
    createDistributionConfiguration_name,
    createDistributionConfiguration_distributions,
    createDistributionConfiguration_clientToken,

    -- * Destructuring the Response
    CreateDistributionConfigurationResponse (..),
    newCreateDistributionConfigurationResponse,

    -- * Response Lenses
    createDistributionConfigurationResponse_requestId,
    createDistributionConfigurationResponse_clientToken,
    createDistributionConfigurationResponse_distributionConfigurationArn,
    createDistributionConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.ImageBuilder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDistributionConfiguration' smart constructor.
data CreateDistributionConfiguration = CreateDistributionConfiguration'
  { -- | The description of the distribution configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The tags of the distribution configuration.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the distribution configuration.
    name :: Prelude.Text,
    -- | The distributions of the distribution configuration.
    distributions :: [Distribution],
    -- | The idempotency token of the distribution configuration.
    clientToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDistributionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createDistributionConfiguration_description' - The description of the distribution configuration.
--
-- 'tags', 'createDistributionConfiguration_tags' - The tags of the distribution configuration.
--
-- 'name', 'createDistributionConfiguration_name' - The name of the distribution configuration.
--
-- 'distributions', 'createDistributionConfiguration_distributions' - The distributions of the distribution configuration.
--
-- 'clientToken', 'createDistributionConfiguration_clientToken' - The idempotency token of the distribution configuration.
newCreateDistributionConfiguration ::
  -- | 'name'
  Prelude.Text ->
  -- | 'clientToken'
  Prelude.Text ->
  CreateDistributionConfiguration
newCreateDistributionConfiguration
  pName_
  pClientToken_ =
    CreateDistributionConfiguration'
      { description =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        name = pName_,
        distributions = Prelude.mempty,
        clientToken = pClientToken_
      }

-- | The description of the distribution configuration.
createDistributionConfiguration_description :: Lens.Lens' CreateDistributionConfiguration (Prelude.Maybe Prelude.Text)
createDistributionConfiguration_description = Lens.lens (\CreateDistributionConfiguration' {description} -> description) (\s@CreateDistributionConfiguration' {} a -> s {description = a} :: CreateDistributionConfiguration)

-- | The tags of the distribution configuration.
createDistributionConfiguration_tags :: Lens.Lens' CreateDistributionConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDistributionConfiguration_tags = Lens.lens (\CreateDistributionConfiguration' {tags} -> tags) (\s@CreateDistributionConfiguration' {} a -> s {tags = a} :: CreateDistributionConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The name of the distribution configuration.
createDistributionConfiguration_name :: Lens.Lens' CreateDistributionConfiguration Prelude.Text
createDistributionConfiguration_name = Lens.lens (\CreateDistributionConfiguration' {name} -> name) (\s@CreateDistributionConfiguration' {} a -> s {name = a} :: CreateDistributionConfiguration)

-- | The distributions of the distribution configuration.
createDistributionConfiguration_distributions :: Lens.Lens' CreateDistributionConfiguration [Distribution]
createDistributionConfiguration_distributions = Lens.lens (\CreateDistributionConfiguration' {distributions} -> distributions) (\s@CreateDistributionConfiguration' {} a -> s {distributions = a} :: CreateDistributionConfiguration) Prelude.. Lens.coerced

-- | The idempotency token of the distribution configuration.
createDistributionConfiguration_clientToken :: Lens.Lens' CreateDistributionConfiguration Prelude.Text
createDistributionConfiguration_clientToken = Lens.lens (\CreateDistributionConfiguration' {clientToken} -> clientToken) (\s@CreateDistributionConfiguration' {} a -> s {clientToken = a} :: CreateDistributionConfiguration)

instance
  Core.AWSRequest
    CreateDistributionConfiguration
  where
  type
    AWSResponse CreateDistributionConfiguration =
      CreateDistributionConfigurationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDistributionConfigurationResponse'
            Prelude.<$> (x Core..?> "requestId")
            Prelude.<*> (x Core..?> "clientToken")
            Prelude.<*> (x Core..?> "distributionConfigurationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateDistributionConfiguration

instance
  Prelude.NFData
    CreateDistributionConfiguration

instance
  Core.ToHeaders
    CreateDistributionConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDistributionConfiguration where
  toJSON CreateDistributionConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("description" Core..=) Prelude.<$> description,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("name" Core..= name),
            Prelude.Just ("distributions" Core..= distributions),
            Prelude.Just ("clientToken" Core..= clientToken)
          ]
      )

instance Core.ToPath CreateDistributionConfiguration where
  toPath =
    Prelude.const "/CreateDistributionConfiguration"

instance Core.ToQuery CreateDistributionConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDistributionConfigurationResponse' smart constructor.
data CreateDistributionConfigurationResponse = CreateDistributionConfigurationResponse'
  { -- | The request ID that uniquely identifies this request.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The idempotency token used to make this request idempotent.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the distribution configuration that
    -- was created by this request.
    distributionConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDistributionConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'createDistributionConfigurationResponse_requestId' - The request ID that uniquely identifies this request.
--
-- 'clientToken', 'createDistributionConfigurationResponse_clientToken' - The idempotency token used to make this request idempotent.
--
-- 'distributionConfigurationArn', 'createDistributionConfigurationResponse_distributionConfigurationArn' - The Amazon Resource Name (ARN) of the distribution configuration that
-- was created by this request.
--
-- 'httpStatus', 'createDistributionConfigurationResponse_httpStatus' - The response's http status code.
newCreateDistributionConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDistributionConfigurationResponse
newCreateDistributionConfigurationResponse
  pHttpStatus_ =
    CreateDistributionConfigurationResponse'
      { requestId =
          Prelude.Nothing,
        clientToken = Prelude.Nothing,
        distributionConfigurationArn =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The request ID that uniquely identifies this request.
createDistributionConfigurationResponse_requestId :: Lens.Lens' CreateDistributionConfigurationResponse (Prelude.Maybe Prelude.Text)
createDistributionConfigurationResponse_requestId = Lens.lens (\CreateDistributionConfigurationResponse' {requestId} -> requestId) (\s@CreateDistributionConfigurationResponse' {} a -> s {requestId = a} :: CreateDistributionConfigurationResponse)

-- | The idempotency token used to make this request idempotent.
createDistributionConfigurationResponse_clientToken :: Lens.Lens' CreateDistributionConfigurationResponse (Prelude.Maybe Prelude.Text)
createDistributionConfigurationResponse_clientToken = Lens.lens (\CreateDistributionConfigurationResponse' {clientToken} -> clientToken) (\s@CreateDistributionConfigurationResponse' {} a -> s {clientToken = a} :: CreateDistributionConfigurationResponse)

-- | The Amazon Resource Name (ARN) of the distribution configuration that
-- was created by this request.
createDistributionConfigurationResponse_distributionConfigurationArn :: Lens.Lens' CreateDistributionConfigurationResponse (Prelude.Maybe Prelude.Text)
createDistributionConfigurationResponse_distributionConfigurationArn = Lens.lens (\CreateDistributionConfigurationResponse' {distributionConfigurationArn} -> distributionConfigurationArn) (\s@CreateDistributionConfigurationResponse' {} a -> s {distributionConfigurationArn = a} :: CreateDistributionConfigurationResponse)

-- | The response's http status code.
createDistributionConfigurationResponse_httpStatus :: Lens.Lens' CreateDistributionConfigurationResponse Prelude.Int
createDistributionConfigurationResponse_httpStatus = Lens.lens (\CreateDistributionConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreateDistributionConfigurationResponse' {} a -> s {httpStatus = a} :: CreateDistributionConfigurationResponse)

instance
  Prelude.NFData
    CreateDistributionConfigurationResponse
