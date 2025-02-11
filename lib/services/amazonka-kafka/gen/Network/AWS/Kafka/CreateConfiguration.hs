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
-- Module      : Network.AWS.Kafka.CreateConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new MSK configuration.
module Network.AWS.Kafka.CreateConfiguration
  ( -- * Creating a Request
    CreateConfiguration (..),
    newCreateConfiguration,

    -- * Request Lenses
    createConfiguration_kafkaVersions,
    createConfiguration_description,
    createConfiguration_serverProperties,
    createConfiguration_name,

    -- * Destructuring the Response
    CreateConfigurationResponse (..),
    newCreateConfigurationResponse,

    -- * Response Lenses
    createConfigurationResponse_creationTime,
    createConfigurationResponse_state,
    createConfigurationResponse_arn,
    createConfigurationResponse_latestRevision,
    createConfigurationResponse_name,
    createConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateConfiguration' smart constructor.
data CreateConfiguration = CreateConfiguration'
  { -- | The versions of Apache Kafka with which you can use this MSK
    -- configuration.
    kafkaVersions :: Prelude.Maybe [Prelude.Text],
    -- | The description of the configuration.
    description :: Prelude.Maybe Prelude.Text,
    -- | Contents of the server.properties file. When using the API, you must
    -- ensure that the contents of the file are base64 encoded. When using the
    -- AWS Management Console, the SDK, or the AWS CLI, the contents of
    -- server.properties can be in plaintext.
    serverProperties :: Core.Base64,
    -- | The name of the configuration.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kafkaVersions', 'createConfiguration_kafkaVersions' - The versions of Apache Kafka with which you can use this MSK
-- configuration.
--
-- 'description', 'createConfiguration_description' - The description of the configuration.
--
-- 'serverProperties', 'createConfiguration_serverProperties' - Contents of the server.properties file. When using the API, you must
-- ensure that the contents of the file are base64 encoded. When using the
-- AWS Management Console, the SDK, or the AWS CLI, the contents of
-- server.properties can be in plaintext.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'name', 'createConfiguration_name' - The name of the configuration.
newCreateConfiguration ::
  -- | 'serverProperties'
  Prelude.ByteString ->
  -- | 'name'
  Prelude.Text ->
  CreateConfiguration
newCreateConfiguration pServerProperties_ pName_ =
  CreateConfiguration'
    { kafkaVersions =
        Prelude.Nothing,
      description = Prelude.Nothing,
      serverProperties =
        Core._Base64 Lens.# pServerProperties_,
      name = pName_
    }

-- | The versions of Apache Kafka with which you can use this MSK
-- configuration.
createConfiguration_kafkaVersions :: Lens.Lens' CreateConfiguration (Prelude.Maybe [Prelude.Text])
createConfiguration_kafkaVersions = Lens.lens (\CreateConfiguration' {kafkaVersions} -> kafkaVersions) (\s@CreateConfiguration' {} a -> s {kafkaVersions = a} :: CreateConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The description of the configuration.
createConfiguration_description :: Lens.Lens' CreateConfiguration (Prelude.Maybe Prelude.Text)
createConfiguration_description = Lens.lens (\CreateConfiguration' {description} -> description) (\s@CreateConfiguration' {} a -> s {description = a} :: CreateConfiguration)

-- | Contents of the server.properties file. When using the API, you must
-- ensure that the contents of the file are base64 encoded. When using the
-- AWS Management Console, the SDK, or the AWS CLI, the contents of
-- server.properties can be in plaintext.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
createConfiguration_serverProperties :: Lens.Lens' CreateConfiguration Prelude.ByteString
createConfiguration_serverProperties = Lens.lens (\CreateConfiguration' {serverProperties} -> serverProperties) (\s@CreateConfiguration' {} a -> s {serverProperties = a} :: CreateConfiguration) Prelude.. Core._Base64

-- | The name of the configuration.
createConfiguration_name :: Lens.Lens' CreateConfiguration Prelude.Text
createConfiguration_name = Lens.lens (\CreateConfiguration' {name} -> name) (\s@CreateConfiguration' {} a -> s {name = a} :: CreateConfiguration)

instance Core.AWSRequest CreateConfiguration where
  type
    AWSResponse CreateConfiguration =
      CreateConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateConfigurationResponse'
            Prelude.<$> (x Core..?> "creationTime")
            Prelude.<*> (x Core..?> "state")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "latestRevision")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateConfiguration

instance Prelude.NFData CreateConfiguration

instance Core.ToHeaders CreateConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateConfiguration where
  toJSON CreateConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("kafkaVersions" Core..=) Prelude.<$> kafkaVersions,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just
              ("serverProperties" Core..= serverProperties),
            Prelude.Just ("name" Core..= name)
          ]
      )

instance Core.ToPath CreateConfiguration where
  toPath = Prelude.const "/v1/configurations"

instance Core.ToQuery CreateConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateConfigurationResponse' smart constructor.
data CreateConfigurationResponse = CreateConfigurationResponse'
  { -- | The time when the configuration was created.
    creationTime :: Prelude.Maybe Core.POSIX,
    -- | The state of the configuration. The possible states are ACTIVE,
    -- DELETING, and DELETE_FAILED.
    state :: Prelude.Maybe ConfigurationState,
    -- | The Amazon Resource Name (ARN) of the configuration.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Latest revision of the configuration.
    latestRevision :: Prelude.Maybe ConfigurationRevision,
    -- | The name of the configuration.
    name :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTime', 'createConfigurationResponse_creationTime' - The time when the configuration was created.
--
-- 'state', 'createConfigurationResponse_state' - The state of the configuration. The possible states are ACTIVE,
-- DELETING, and DELETE_FAILED.
--
-- 'arn', 'createConfigurationResponse_arn' - The Amazon Resource Name (ARN) of the configuration.
--
-- 'latestRevision', 'createConfigurationResponse_latestRevision' - Latest revision of the configuration.
--
-- 'name', 'createConfigurationResponse_name' - The name of the configuration.
--
-- 'httpStatus', 'createConfigurationResponse_httpStatus' - The response's http status code.
newCreateConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateConfigurationResponse
newCreateConfigurationResponse pHttpStatus_ =
  CreateConfigurationResponse'
    { creationTime =
        Prelude.Nothing,
      state = Prelude.Nothing,
      arn = Prelude.Nothing,
      latestRevision = Prelude.Nothing,
      name = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time when the configuration was created.
createConfigurationResponse_creationTime :: Lens.Lens' CreateConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
createConfigurationResponse_creationTime = Lens.lens (\CreateConfigurationResponse' {creationTime} -> creationTime) (\s@CreateConfigurationResponse' {} a -> s {creationTime = a} :: CreateConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | The state of the configuration. The possible states are ACTIVE,
-- DELETING, and DELETE_FAILED.
createConfigurationResponse_state :: Lens.Lens' CreateConfigurationResponse (Prelude.Maybe ConfigurationState)
createConfigurationResponse_state = Lens.lens (\CreateConfigurationResponse' {state} -> state) (\s@CreateConfigurationResponse' {} a -> s {state = a} :: CreateConfigurationResponse)

-- | The Amazon Resource Name (ARN) of the configuration.
createConfigurationResponse_arn :: Lens.Lens' CreateConfigurationResponse (Prelude.Maybe Prelude.Text)
createConfigurationResponse_arn = Lens.lens (\CreateConfigurationResponse' {arn} -> arn) (\s@CreateConfigurationResponse' {} a -> s {arn = a} :: CreateConfigurationResponse)

-- | Latest revision of the configuration.
createConfigurationResponse_latestRevision :: Lens.Lens' CreateConfigurationResponse (Prelude.Maybe ConfigurationRevision)
createConfigurationResponse_latestRevision = Lens.lens (\CreateConfigurationResponse' {latestRevision} -> latestRevision) (\s@CreateConfigurationResponse' {} a -> s {latestRevision = a} :: CreateConfigurationResponse)

-- | The name of the configuration.
createConfigurationResponse_name :: Lens.Lens' CreateConfigurationResponse (Prelude.Maybe Prelude.Text)
createConfigurationResponse_name = Lens.lens (\CreateConfigurationResponse' {name} -> name) (\s@CreateConfigurationResponse' {} a -> s {name = a} :: CreateConfigurationResponse)

-- | The response's http status code.
createConfigurationResponse_httpStatus :: Lens.Lens' CreateConfigurationResponse Prelude.Int
createConfigurationResponse_httpStatus = Lens.lens (\CreateConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreateConfigurationResponse' {} a -> s {httpStatus = a} :: CreateConfigurationResponse)

instance Prelude.NFData CreateConfigurationResponse
