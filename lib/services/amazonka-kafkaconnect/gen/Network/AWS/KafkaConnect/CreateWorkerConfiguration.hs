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
-- Module      : Network.AWS.KafkaConnect.CreateWorkerConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a worker configuration using the specified properties.
module Network.AWS.KafkaConnect.CreateWorkerConfiguration
  ( -- * Creating a Request
    CreateWorkerConfiguration (..),
    newCreateWorkerConfiguration,

    -- * Request Lenses
    createWorkerConfiguration_description,
    createWorkerConfiguration_name,
    createWorkerConfiguration_propertiesFileContent,

    -- * Destructuring the Response
    CreateWorkerConfigurationResponse (..),
    newCreateWorkerConfigurationResponse,

    -- * Response Lenses
    createWorkerConfigurationResponse_creationTime,
    createWorkerConfigurationResponse_latestRevision,
    createWorkerConfigurationResponse_name,
    createWorkerConfigurationResponse_workerConfigurationArn,
    createWorkerConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateWorkerConfiguration' smart constructor.
data CreateWorkerConfiguration = CreateWorkerConfiguration'
  { -- | A summary description of the worker configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | The name of the worker configuration.
    name :: Prelude.Text,
    -- | Base64 encoded contents of connect-distributed.properties file.
    propertiesFileContent :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkerConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'description', 'createWorkerConfiguration_description' - A summary description of the worker configuration.
--
-- 'name', 'createWorkerConfiguration_name' - The name of the worker configuration.
--
-- 'propertiesFileContent', 'createWorkerConfiguration_propertiesFileContent' - Base64 encoded contents of connect-distributed.properties file.
newCreateWorkerConfiguration ::
  -- | 'name'
  Prelude.Text ->
  -- | 'propertiesFileContent'
  Prelude.Text ->
  CreateWorkerConfiguration
newCreateWorkerConfiguration
  pName_
  pPropertiesFileContent_ =
    CreateWorkerConfiguration'
      { description =
          Prelude.Nothing,
        name = pName_,
        propertiesFileContent = pPropertiesFileContent_
      }

-- | A summary description of the worker configuration.
createWorkerConfiguration_description :: Lens.Lens' CreateWorkerConfiguration (Prelude.Maybe Prelude.Text)
createWorkerConfiguration_description = Lens.lens (\CreateWorkerConfiguration' {description} -> description) (\s@CreateWorkerConfiguration' {} a -> s {description = a} :: CreateWorkerConfiguration)

-- | The name of the worker configuration.
createWorkerConfiguration_name :: Lens.Lens' CreateWorkerConfiguration Prelude.Text
createWorkerConfiguration_name = Lens.lens (\CreateWorkerConfiguration' {name} -> name) (\s@CreateWorkerConfiguration' {} a -> s {name = a} :: CreateWorkerConfiguration)

-- | Base64 encoded contents of connect-distributed.properties file.
createWorkerConfiguration_propertiesFileContent :: Lens.Lens' CreateWorkerConfiguration Prelude.Text
createWorkerConfiguration_propertiesFileContent = Lens.lens (\CreateWorkerConfiguration' {propertiesFileContent} -> propertiesFileContent) (\s@CreateWorkerConfiguration' {} a -> s {propertiesFileContent = a} :: CreateWorkerConfiguration)

instance Core.AWSRequest CreateWorkerConfiguration where
  type
    AWSResponse CreateWorkerConfiguration =
      CreateWorkerConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateWorkerConfigurationResponse'
            Prelude.<$> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "latestRevision")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "workerConfigurationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateWorkerConfiguration

instance Prelude.NFData CreateWorkerConfiguration

instance Core.ToHeaders CreateWorkerConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateWorkerConfiguration where
  toJSON CreateWorkerConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("name" Core..= name),
            Prelude.Just
              ( "propertiesFileContent"
                  Core..= propertiesFileContent
              )
          ]
      )

instance Core.ToPath CreateWorkerConfiguration where
  toPath = Prelude.const "/v1/worker-configurations"

instance Core.ToQuery CreateWorkerConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateWorkerConfigurationResponse' smart constructor.
data CreateWorkerConfigurationResponse = CreateWorkerConfigurationResponse'
  { -- | The time that the worker configuration was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The latest revision of the worker configuration.
    latestRevision :: Prelude.Maybe WorkerConfigurationRevisionSummary,
    -- | The name of the worker configuration.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) that Amazon assigned to the worker
    -- configuration.
    workerConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateWorkerConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'createWorkerConfigurationResponse_creationTime' - The time that the worker configuration was created.
--
-- 'latestRevision', 'createWorkerConfigurationResponse_latestRevision' - The latest revision of the worker configuration.
--
-- 'name', 'createWorkerConfigurationResponse_name' - The name of the worker configuration.
--
-- 'workerConfigurationArn', 'createWorkerConfigurationResponse_workerConfigurationArn' - The Amazon Resource Name (ARN) that Amazon assigned to the worker
-- configuration.
--
-- 'httpStatus', 'createWorkerConfigurationResponse_httpStatus' - The response's http status code.
newCreateWorkerConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateWorkerConfigurationResponse
newCreateWorkerConfigurationResponse pHttpStatus_ =
  CreateWorkerConfigurationResponse'
    { creationTime =
        Prelude.Nothing,
      latestRevision = Prelude.Nothing,
      name = Prelude.Nothing,
      workerConfigurationArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time that the worker configuration was created.
createWorkerConfigurationResponse_creationTime :: Lens.Lens' CreateWorkerConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
createWorkerConfigurationResponse_creationTime = Lens.lens (\CreateWorkerConfigurationResponse' {creationTime} -> creationTime) (\s@CreateWorkerConfigurationResponse' {} a -> s {creationTime = a} :: CreateWorkerConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | The latest revision of the worker configuration.
createWorkerConfigurationResponse_latestRevision :: Lens.Lens' CreateWorkerConfigurationResponse (Prelude.Maybe WorkerConfigurationRevisionSummary)
createWorkerConfigurationResponse_latestRevision = Lens.lens (\CreateWorkerConfigurationResponse' {latestRevision} -> latestRevision) (\s@CreateWorkerConfigurationResponse' {} a -> s {latestRevision = a} :: CreateWorkerConfigurationResponse)

-- | The name of the worker configuration.
createWorkerConfigurationResponse_name :: Lens.Lens' CreateWorkerConfigurationResponse (Prelude.Maybe Prelude.Text)
createWorkerConfigurationResponse_name = Lens.lens (\CreateWorkerConfigurationResponse' {name} -> name) (\s@CreateWorkerConfigurationResponse' {} a -> s {name = a} :: CreateWorkerConfigurationResponse)

-- | The Amazon Resource Name (ARN) that Amazon assigned to the worker
-- configuration.
createWorkerConfigurationResponse_workerConfigurationArn :: Lens.Lens' CreateWorkerConfigurationResponse (Prelude.Maybe Prelude.Text)
createWorkerConfigurationResponse_workerConfigurationArn = Lens.lens (\CreateWorkerConfigurationResponse' {workerConfigurationArn} -> workerConfigurationArn) (\s@CreateWorkerConfigurationResponse' {} a -> s {workerConfigurationArn = a} :: CreateWorkerConfigurationResponse)

-- | The response's http status code.
createWorkerConfigurationResponse_httpStatus :: Lens.Lens' CreateWorkerConfigurationResponse Prelude.Int
createWorkerConfigurationResponse_httpStatus = Lens.lens (\CreateWorkerConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreateWorkerConfigurationResponse' {} a -> s {httpStatus = a} :: CreateWorkerConfigurationResponse)

instance
  Prelude.NFData
    CreateWorkerConfigurationResponse
