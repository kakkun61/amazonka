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
-- Module      : Network.AWS.IoT.DescribeDomainConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets summary information about a domain configuration.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions DescribeDomainConfiguration>
-- action.
module Network.AWS.IoT.DescribeDomainConfiguration
  ( -- * Creating a Request
    DescribeDomainConfiguration (..),
    newDescribeDomainConfiguration,

    -- * Request Lenses
    describeDomainConfiguration_domainConfigurationName,

    -- * Destructuring the Response
    DescribeDomainConfigurationResponse (..),
    newDescribeDomainConfigurationResponse,

    -- * Response Lenses
    describeDomainConfigurationResponse_domainConfigurationName,
    describeDomainConfigurationResponse_serverCertificates,
    describeDomainConfigurationResponse_authorizerConfig,
    describeDomainConfigurationResponse_lastStatusChangeDate,
    describeDomainConfigurationResponse_domainConfigurationStatus,
    describeDomainConfigurationResponse_domainName,
    describeDomainConfigurationResponse_domainConfigurationArn,
    describeDomainConfigurationResponse_serviceType,
    describeDomainConfigurationResponse_domainType,
    describeDomainConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDomainConfiguration' smart constructor.
data DescribeDomainConfiguration = DescribeDomainConfiguration'
  { -- | The name of the domain configuration.
    domainConfigurationName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomainConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainConfigurationName', 'describeDomainConfiguration_domainConfigurationName' - The name of the domain configuration.
newDescribeDomainConfiguration ::
  -- | 'domainConfigurationName'
  Prelude.Text ->
  DescribeDomainConfiguration
newDescribeDomainConfiguration
  pDomainConfigurationName_ =
    DescribeDomainConfiguration'
      { domainConfigurationName =
          pDomainConfigurationName_
      }

-- | The name of the domain configuration.
describeDomainConfiguration_domainConfigurationName :: Lens.Lens' DescribeDomainConfiguration Prelude.Text
describeDomainConfiguration_domainConfigurationName = Lens.lens (\DescribeDomainConfiguration' {domainConfigurationName} -> domainConfigurationName) (\s@DescribeDomainConfiguration' {} a -> s {domainConfigurationName = a} :: DescribeDomainConfiguration)

instance Core.AWSRequest DescribeDomainConfiguration where
  type
    AWSResponse DescribeDomainConfiguration =
      DescribeDomainConfigurationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDomainConfigurationResponse'
            Prelude.<$> (x Core..?> "domainConfigurationName")
            Prelude.<*> ( x Core..?> "serverCertificates"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "authorizerConfig")
            Prelude.<*> (x Core..?> "lastStatusChangeDate")
            Prelude.<*> (x Core..?> "domainConfigurationStatus")
            Prelude.<*> (x Core..?> "domainName")
            Prelude.<*> (x Core..?> "domainConfigurationArn")
            Prelude.<*> (x Core..?> "serviceType")
            Prelude.<*> (x Core..?> "domainType")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDomainConfiguration

instance Prelude.NFData DescribeDomainConfiguration

instance Core.ToHeaders DescribeDomainConfiguration where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDomainConfiguration where
  toPath DescribeDomainConfiguration' {..} =
    Prelude.mconcat
      [ "/domainConfigurations/",
        Core.toBS domainConfigurationName
      ]

instance Core.ToQuery DescribeDomainConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDomainConfigurationResponse' smart constructor.
data DescribeDomainConfigurationResponse = DescribeDomainConfigurationResponse'
  { -- | The name of the domain configuration.
    domainConfigurationName :: Prelude.Maybe Prelude.Text,
    -- | A list containing summary information about the server certificate
    -- included in the domain configuration.
    serverCertificates :: Prelude.Maybe [ServerCertificateSummary],
    -- | An object that specifies the authorization service for a domain.
    authorizerConfig :: Prelude.Maybe AuthorizerConfig,
    -- | The date and time the domain configuration\'s status was last changed.
    lastStatusChangeDate :: Prelude.Maybe Core.POSIX,
    -- | A Boolean value that specifies the current state of the domain
    -- configuration.
    domainConfigurationStatus :: Prelude.Maybe DomainConfigurationStatus,
    -- | The name of the domain.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the domain configuration.
    domainConfigurationArn :: Prelude.Maybe Prelude.Text,
    -- | The type of service delivered by the endpoint.
    serviceType :: Prelude.Maybe ServiceType,
    -- | The type of the domain.
    domainType :: Prelude.Maybe DomainType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDomainConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainConfigurationName', 'describeDomainConfigurationResponse_domainConfigurationName' - The name of the domain configuration.
--
-- 'serverCertificates', 'describeDomainConfigurationResponse_serverCertificates' - A list containing summary information about the server certificate
-- included in the domain configuration.
--
-- 'authorizerConfig', 'describeDomainConfigurationResponse_authorizerConfig' - An object that specifies the authorization service for a domain.
--
-- 'lastStatusChangeDate', 'describeDomainConfigurationResponse_lastStatusChangeDate' - The date and time the domain configuration\'s status was last changed.
--
-- 'domainConfigurationStatus', 'describeDomainConfigurationResponse_domainConfigurationStatus' - A Boolean value that specifies the current state of the domain
-- configuration.
--
-- 'domainName', 'describeDomainConfigurationResponse_domainName' - The name of the domain.
--
-- 'domainConfigurationArn', 'describeDomainConfigurationResponse_domainConfigurationArn' - The ARN of the domain configuration.
--
-- 'serviceType', 'describeDomainConfigurationResponse_serviceType' - The type of service delivered by the endpoint.
--
-- 'domainType', 'describeDomainConfigurationResponse_domainType' - The type of the domain.
--
-- 'httpStatus', 'describeDomainConfigurationResponse_httpStatus' - The response's http status code.
newDescribeDomainConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDomainConfigurationResponse
newDescribeDomainConfigurationResponse pHttpStatus_ =
  DescribeDomainConfigurationResponse'
    { domainConfigurationName =
        Prelude.Nothing,
      serverCertificates = Prelude.Nothing,
      authorizerConfig = Prelude.Nothing,
      lastStatusChangeDate = Prelude.Nothing,
      domainConfigurationStatus =
        Prelude.Nothing,
      domainName = Prelude.Nothing,
      domainConfigurationArn =
        Prelude.Nothing,
      serviceType = Prelude.Nothing,
      domainType = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the domain configuration.
describeDomainConfigurationResponse_domainConfigurationName :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe Prelude.Text)
describeDomainConfigurationResponse_domainConfigurationName = Lens.lens (\DescribeDomainConfigurationResponse' {domainConfigurationName} -> domainConfigurationName) (\s@DescribeDomainConfigurationResponse' {} a -> s {domainConfigurationName = a} :: DescribeDomainConfigurationResponse)

-- | A list containing summary information about the server certificate
-- included in the domain configuration.
describeDomainConfigurationResponse_serverCertificates :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe [ServerCertificateSummary])
describeDomainConfigurationResponse_serverCertificates = Lens.lens (\DescribeDomainConfigurationResponse' {serverCertificates} -> serverCertificates) (\s@DescribeDomainConfigurationResponse' {} a -> s {serverCertificates = a} :: DescribeDomainConfigurationResponse) Prelude.. Lens.mapping Lens.coerced

-- | An object that specifies the authorization service for a domain.
describeDomainConfigurationResponse_authorizerConfig :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe AuthorizerConfig)
describeDomainConfigurationResponse_authorizerConfig = Lens.lens (\DescribeDomainConfigurationResponse' {authorizerConfig} -> authorizerConfig) (\s@DescribeDomainConfigurationResponse' {} a -> s {authorizerConfig = a} :: DescribeDomainConfigurationResponse)

-- | The date and time the domain configuration\'s status was last changed.
describeDomainConfigurationResponse_lastStatusChangeDate :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe Prelude.UTCTime)
describeDomainConfigurationResponse_lastStatusChangeDate = Lens.lens (\DescribeDomainConfigurationResponse' {lastStatusChangeDate} -> lastStatusChangeDate) (\s@DescribeDomainConfigurationResponse' {} a -> s {lastStatusChangeDate = a} :: DescribeDomainConfigurationResponse) Prelude.. Lens.mapping Core._Time

-- | A Boolean value that specifies the current state of the domain
-- configuration.
describeDomainConfigurationResponse_domainConfigurationStatus :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe DomainConfigurationStatus)
describeDomainConfigurationResponse_domainConfigurationStatus = Lens.lens (\DescribeDomainConfigurationResponse' {domainConfigurationStatus} -> domainConfigurationStatus) (\s@DescribeDomainConfigurationResponse' {} a -> s {domainConfigurationStatus = a} :: DescribeDomainConfigurationResponse)

-- | The name of the domain.
describeDomainConfigurationResponse_domainName :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe Prelude.Text)
describeDomainConfigurationResponse_domainName = Lens.lens (\DescribeDomainConfigurationResponse' {domainName} -> domainName) (\s@DescribeDomainConfigurationResponse' {} a -> s {domainName = a} :: DescribeDomainConfigurationResponse)

-- | The ARN of the domain configuration.
describeDomainConfigurationResponse_domainConfigurationArn :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe Prelude.Text)
describeDomainConfigurationResponse_domainConfigurationArn = Lens.lens (\DescribeDomainConfigurationResponse' {domainConfigurationArn} -> domainConfigurationArn) (\s@DescribeDomainConfigurationResponse' {} a -> s {domainConfigurationArn = a} :: DescribeDomainConfigurationResponse)

-- | The type of service delivered by the endpoint.
describeDomainConfigurationResponse_serviceType :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe ServiceType)
describeDomainConfigurationResponse_serviceType = Lens.lens (\DescribeDomainConfigurationResponse' {serviceType} -> serviceType) (\s@DescribeDomainConfigurationResponse' {} a -> s {serviceType = a} :: DescribeDomainConfigurationResponse)

-- | The type of the domain.
describeDomainConfigurationResponse_domainType :: Lens.Lens' DescribeDomainConfigurationResponse (Prelude.Maybe DomainType)
describeDomainConfigurationResponse_domainType = Lens.lens (\DescribeDomainConfigurationResponse' {domainType} -> domainType) (\s@DescribeDomainConfigurationResponse' {} a -> s {domainType = a} :: DescribeDomainConfigurationResponse)

-- | The response's http status code.
describeDomainConfigurationResponse_httpStatus :: Lens.Lens' DescribeDomainConfigurationResponse Prelude.Int
describeDomainConfigurationResponse_httpStatus = Lens.lens (\DescribeDomainConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeDomainConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeDomainConfigurationResponse)

instance
  Prelude.NFData
    DescribeDomainConfigurationResponse
