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
-- Module      : Network.AWS.IoT.CreateDomainConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a domain configuration.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions CreateDomainConfiguration>
-- action.
module Network.AWS.IoT.CreateDomainConfiguration
  ( -- * Creating a Request
    CreateDomainConfiguration (..),
    newCreateDomainConfiguration,

    -- * Request Lenses
    createDomainConfiguration_authorizerConfig,
    createDomainConfiguration_serverCertificateArns,
    createDomainConfiguration_domainName,
    createDomainConfiguration_serviceType,
    createDomainConfiguration_validationCertificateArn,
    createDomainConfiguration_tags,
    createDomainConfiguration_domainConfigurationName,

    -- * Destructuring the Response
    CreateDomainConfigurationResponse (..),
    newCreateDomainConfigurationResponse,

    -- * Response Lenses
    createDomainConfigurationResponse_domainConfigurationName,
    createDomainConfigurationResponse_domainConfigurationArn,
    createDomainConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateDomainConfiguration' smart constructor.
data CreateDomainConfiguration = CreateDomainConfiguration'
  { -- | An object that specifies the authorization service for a domain.
    authorizerConfig :: Prelude.Maybe AuthorizerConfig,
    -- | The ARNs of the certificates that IoT passes to the device during the
    -- TLS handshake. Currently you can specify only one certificate ARN. This
    -- value is not required for Amazon Web Services-managed domains.
    serverCertificateArns :: Prelude.Maybe [Prelude.Text],
    -- | The name of the domain.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | The type of service delivered by the endpoint.
    --
    -- Amazon Web Services IoT Core currently supports only the @DATA@ service
    -- type.
    serviceType :: Prelude.Maybe ServiceType,
    -- | The certificate used to validate the server certificate and prove domain
    -- name ownership. This certificate must be signed by a public certificate
    -- authority. This value is not required for Amazon Web Services-managed
    -- domains.
    validationCertificateArn :: Prelude.Maybe Prelude.Text,
    -- | Metadata which can be used to manage the domain configuration.
    --
    -- For URI Request parameters use format: ...key1=value1&key2=value2...
    --
    -- For the CLI command-line parameter use format: &&tags
    -- \"key1=value1&key2=value2...\"
    --
    -- For the cli-input-json file use format: \"tags\":
    -- \"key1=value1&key2=value2...\"
    tags :: Prelude.Maybe [Tag],
    -- | The name of the domain configuration. This value must be unique to a
    -- region.
    domainConfigurationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDomainConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'authorizerConfig', 'createDomainConfiguration_authorizerConfig' - An object that specifies the authorization service for a domain.
--
-- 'serverCertificateArns', 'createDomainConfiguration_serverCertificateArns' - The ARNs of the certificates that IoT passes to the device during the
-- TLS handshake. Currently you can specify only one certificate ARN. This
-- value is not required for Amazon Web Services-managed domains.
--
-- 'domainName', 'createDomainConfiguration_domainName' - The name of the domain.
--
-- 'serviceType', 'createDomainConfiguration_serviceType' - The type of service delivered by the endpoint.
--
-- Amazon Web Services IoT Core currently supports only the @DATA@ service
-- type.
--
-- 'validationCertificateArn', 'createDomainConfiguration_validationCertificateArn' - The certificate used to validate the server certificate and prove domain
-- name ownership. This certificate must be signed by a public certificate
-- authority. This value is not required for Amazon Web Services-managed
-- domains.
--
-- 'tags', 'createDomainConfiguration_tags' - Metadata which can be used to manage the domain configuration.
--
-- For URI Request parameters use format: ...key1=value1&key2=value2...
--
-- For the CLI command-line parameter use format: &&tags
-- \"key1=value1&key2=value2...\"
--
-- For the cli-input-json file use format: \"tags\":
-- \"key1=value1&key2=value2...\"
--
-- 'domainConfigurationName', 'createDomainConfiguration_domainConfigurationName' - The name of the domain configuration. This value must be unique to a
-- region.
newCreateDomainConfiguration ::
  -- | 'domainConfigurationName'
  Prelude.Text ->
  CreateDomainConfiguration
newCreateDomainConfiguration
  pDomainConfigurationName_ =
    CreateDomainConfiguration'
      { authorizerConfig =
          Prelude.Nothing,
        serverCertificateArns = Prelude.Nothing,
        domainName = Prelude.Nothing,
        serviceType = Prelude.Nothing,
        validationCertificateArn = Prelude.Nothing,
        tags = Prelude.Nothing,
        domainConfigurationName =
          pDomainConfigurationName_
      }

-- | An object that specifies the authorization service for a domain.
createDomainConfiguration_authorizerConfig :: Lens.Lens' CreateDomainConfiguration (Prelude.Maybe AuthorizerConfig)
createDomainConfiguration_authorizerConfig = Lens.lens (\CreateDomainConfiguration' {authorizerConfig} -> authorizerConfig) (\s@CreateDomainConfiguration' {} a -> s {authorizerConfig = a} :: CreateDomainConfiguration)

-- | The ARNs of the certificates that IoT passes to the device during the
-- TLS handshake. Currently you can specify only one certificate ARN. This
-- value is not required for Amazon Web Services-managed domains.
createDomainConfiguration_serverCertificateArns :: Lens.Lens' CreateDomainConfiguration (Prelude.Maybe [Prelude.Text])
createDomainConfiguration_serverCertificateArns = Lens.lens (\CreateDomainConfiguration' {serverCertificateArns} -> serverCertificateArns) (\s@CreateDomainConfiguration' {} a -> s {serverCertificateArns = a} :: CreateDomainConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The name of the domain.
createDomainConfiguration_domainName :: Lens.Lens' CreateDomainConfiguration (Prelude.Maybe Prelude.Text)
createDomainConfiguration_domainName = Lens.lens (\CreateDomainConfiguration' {domainName} -> domainName) (\s@CreateDomainConfiguration' {} a -> s {domainName = a} :: CreateDomainConfiguration)

-- | The type of service delivered by the endpoint.
--
-- Amazon Web Services IoT Core currently supports only the @DATA@ service
-- type.
createDomainConfiguration_serviceType :: Lens.Lens' CreateDomainConfiguration (Prelude.Maybe ServiceType)
createDomainConfiguration_serviceType = Lens.lens (\CreateDomainConfiguration' {serviceType} -> serviceType) (\s@CreateDomainConfiguration' {} a -> s {serviceType = a} :: CreateDomainConfiguration)

-- | The certificate used to validate the server certificate and prove domain
-- name ownership. This certificate must be signed by a public certificate
-- authority. This value is not required for Amazon Web Services-managed
-- domains.
createDomainConfiguration_validationCertificateArn :: Lens.Lens' CreateDomainConfiguration (Prelude.Maybe Prelude.Text)
createDomainConfiguration_validationCertificateArn = Lens.lens (\CreateDomainConfiguration' {validationCertificateArn} -> validationCertificateArn) (\s@CreateDomainConfiguration' {} a -> s {validationCertificateArn = a} :: CreateDomainConfiguration)

-- | Metadata which can be used to manage the domain configuration.
--
-- For URI Request parameters use format: ...key1=value1&key2=value2...
--
-- For the CLI command-line parameter use format: &&tags
-- \"key1=value1&key2=value2...\"
--
-- For the cli-input-json file use format: \"tags\":
-- \"key1=value1&key2=value2...\"
createDomainConfiguration_tags :: Lens.Lens' CreateDomainConfiguration (Prelude.Maybe [Tag])
createDomainConfiguration_tags = Lens.lens (\CreateDomainConfiguration' {tags} -> tags) (\s@CreateDomainConfiguration' {} a -> s {tags = a} :: CreateDomainConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The name of the domain configuration. This value must be unique to a
-- region.
createDomainConfiguration_domainConfigurationName :: Lens.Lens' CreateDomainConfiguration Prelude.Text
createDomainConfiguration_domainConfigurationName = Lens.lens (\CreateDomainConfiguration' {domainConfigurationName} -> domainConfigurationName) (\s@CreateDomainConfiguration' {} a -> s {domainConfigurationName = a} :: CreateDomainConfiguration)

instance Core.AWSRequest CreateDomainConfiguration where
  type
    AWSResponse CreateDomainConfiguration =
      CreateDomainConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDomainConfigurationResponse'
            Prelude.<$> (x Core..?> "domainConfigurationName")
            Prelude.<*> (x Core..?> "domainConfigurationArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDomainConfiguration

instance Prelude.NFData CreateDomainConfiguration

instance Core.ToHeaders CreateDomainConfiguration where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateDomainConfiguration where
  toJSON CreateDomainConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("authorizerConfig" Core..=)
              Prelude.<$> authorizerConfig,
            ("serverCertificateArns" Core..=)
              Prelude.<$> serverCertificateArns,
            ("domainName" Core..=) Prelude.<$> domainName,
            ("serviceType" Core..=) Prelude.<$> serviceType,
            ("validationCertificateArn" Core..=)
              Prelude.<$> validationCertificateArn,
            ("tags" Core..=) Prelude.<$> tags
          ]
      )

instance Core.ToPath CreateDomainConfiguration where
  toPath CreateDomainConfiguration' {..} =
    Prelude.mconcat
      [ "/domainConfigurations/",
        Core.toBS domainConfigurationName
      ]

instance Core.ToQuery CreateDomainConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDomainConfigurationResponse' smart constructor.
data CreateDomainConfigurationResponse = CreateDomainConfigurationResponse'
  { -- | The name of the domain configuration.
    domainConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the domain configuration.
    domainConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDomainConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainConfigurationName', 'createDomainConfigurationResponse_domainConfigurationName' - The name of the domain configuration.
--
-- 'domainConfigurationArn', 'createDomainConfigurationResponse_domainConfigurationArn' - The ARN of the domain configuration.
--
-- 'httpStatus', 'createDomainConfigurationResponse_httpStatus' - The response's http status code.
newCreateDomainConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDomainConfigurationResponse
newCreateDomainConfigurationResponse pHttpStatus_ =
  CreateDomainConfigurationResponse'
    { domainConfigurationName =
        Prelude.Nothing,
      domainConfigurationArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the domain configuration.
createDomainConfigurationResponse_domainConfigurationName :: Lens.Lens' CreateDomainConfigurationResponse (Prelude.Maybe Prelude.Text)
createDomainConfigurationResponse_domainConfigurationName = Lens.lens (\CreateDomainConfigurationResponse' {domainConfigurationName} -> domainConfigurationName) (\s@CreateDomainConfigurationResponse' {} a -> s {domainConfigurationName = a} :: CreateDomainConfigurationResponse)

-- | The ARN of the domain configuration.
createDomainConfigurationResponse_domainConfigurationArn :: Lens.Lens' CreateDomainConfigurationResponse (Prelude.Maybe Prelude.Text)
createDomainConfigurationResponse_domainConfigurationArn = Lens.lens (\CreateDomainConfigurationResponse' {domainConfigurationArn} -> domainConfigurationArn) (\s@CreateDomainConfigurationResponse' {} a -> s {domainConfigurationArn = a} :: CreateDomainConfigurationResponse)

-- | The response's http status code.
createDomainConfigurationResponse_httpStatus :: Lens.Lens' CreateDomainConfigurationResponse Prelude.Int
createDomainConfigurationResponse_httpStatus = Lens.lens (\CreateDomainConfigurationResponse' {httpStatus} -> httpStatus) (\s@CreateDomainConfigurationResponse' {} a -> s {httpStatus = a} :: CreateDomainConfigurationResponse)

instance
  Prelude.NFData
    CreateDomainConfigurationResponse
