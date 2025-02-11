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
-- Module      : Network.AWS.ApiGatewayV2.GetDomainName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a domain name.
module Network.AWS.ApiGatewayV2.GetDomainName
  ( -- * Creating a Request
    GetDomainName (..),
    newGetDomainName,

    -- * Request Lenses
    getDomainName_domainName,

    -- * Destructuring the Response
    GetDomainNameResponse (..),
    newGetDomainNameResponse,

    -- * Response Lenses
    getDomainNameResponse_domainNameConfigurations,
    getDomainNameResponse_domainName,
    getDomainNameResponse_mutualTlsAuthentication,
    getDomainNameResponse_apiMappingSelectionExpression,
    getDomainNameResponse_tags,
    getDomainNameResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDomainName' smart constructor.
data GetDomainName = GetDomainName'
  { -- | The domain name.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDomainName' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'getDomainName_domainName' - The domain name.
newGetDomainName ::
  -- | 'domainName'
  Prelude.Text ->
  GetDomainName
newGetDomainName pDomainName_ =
  GetDomainName' {domainName = pDomainName_}

-- | The domain name.
getDomainName_domainName :: Lens.Lens' GetDomainName Prelude.Text
getDomainName_domainName = Lens.lens (\GetDomainName' {domainName} -> domainName) (\s@GetDomainName' {} a -> s {domainName = a} :: GetDomainName)

instance Core.AWSRequest GetDomainName where
  type
    AWSResponse GetDomainName =
      GetDomainNameResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDomainNameResponse'
            Prelude.<$> ( x Core..?> "domainNameConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "domainName")
            Prelude.<*> (x Core..?> "mutualTlsAuthentication")
            Prelude.<*> (x Core..?> "apiMappingSelectionExpression")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDomainName

instance Prelude.NFData GetDomainName

instance Core.ToHeaders GetDomainName where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetDomainName where
  toPath GetDomainName' {..} =
    Prelude.mconcat
      ["/v2/domainnames/", Core.toBS domainName]

instance Core.ToQuery GetDomainName where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDomainNameResponse' smart constructor.
data GetDomainNameResponse = GetDomainNameResponse'
  { -- | The domain name configurations.
    domainNameConfigurations :: Prelude.Maybe [DomainNameConfiguration],
    -- | The name of the DomainName resource.
    domainName :: Prelude.Maybe Prelude.Text,
    -- | The mutual TLS authentication configuration for a custom domain name.
    mutualTlsAuthentication :: Prelude.Maybe MutualTlsAuthentication,
    -- | The API mapping selection expression.
    apiMappingSelectionExpression :: Prelude.Maybe Prelude.Text,
    -- | The collection of tags associated with a domain name.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetDomainNameResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainNameConfigurations', 'getDomainNameResponse_domainNameConfigurations' - The domain name configurations.
--
-- 'domainName', 'getDomainNameResponse_domainName' - The name of the DomainName resource.
--
-- 'mutualTlsAuthentication', 'getDomainNameResponse_mutualTlsAuthentication' - The mutual TLS authentication configuration for a custom domain name.
--
-- 'apiMappingSelectionExpression', 'getDomainNameResponse_apiMappingSelectionExpression' - The API mapping selection expression.
--
-- 'tags', 'getDomainNameResponse_tags' - The collection of tags associated with a domain name.
--
-- 'httpStatus', 'getDomainNameResponse_httpStatus' - The response's http status code.
newGetDomainNameResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDomainNameResponse
newGetDomainNameResponse pHttpStatus_ =
  GetDomainNameResponse'
    { domainNameConfigurations =
        Prelude.Nothing,
      domainName = Prelude.Nothing,
      mutualTlsAuthentication = Prelude.Nothing,
      apiMappingSelectionExpression = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The domain name configurations.
getDomainNameResponse_domainNameConfigurations :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe [DomainNameConfiguration])
getDomainNameResponse_domainNameConfigurations = Lens.lens (\GetDomainNameResponse' {domainNameConfigurations} -> domainNameConfigurations) (\s@GetDomainNameResponse' {} a -> s {domainNameConfigurations = a} :: GetDomainNameResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the DomainName resource.
getDomainNameResponse_domainName :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe Prelude.Text)
getDomainNameResponse_domainName = Lens.lens (\GetDomainNameResponse' {domainName} -> domainName) (\s@GetDomainNameResponse' {} a -> s {domainName = a} :: GetDomainNameResponse)

-- | The mutual TLS authentication configuration for a custom domain name.
getDomainNameResponse_mutualTlsAuthentication :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe MutualTlsAuthentication)
getDomainNameResponse_mutualTlsAuthentication = Lens.lens (\GetDomainNameResponse' {mutualTlsAuthentication} -> mutualTlsAuthentication) (\s@GetDomainNameResponse' {} a -> s {mutualTlsAuthentication = a} :: GetDomainNameResponse)

-- | The API mapping selection expression.
getDomainNameResponse_apiMappingSelectionExpression :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe Prelude.Text)
getDomainNameResponse_apiMappingSelectionExpression = Lens.lens (\GetDomainNameResponse' {apiMappingSelectionExpression} -> apiMappingSelectionExpression) (\s@GetDomainNameResponse' {} a -> s {apiMappingSelectionExpression = a} :: GetDomainNameResponse)

-- | The collection of tags associated with a domain name.
getDomainNameResponse_tags :: Lens.Lens' GetDomainNameResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getDomainNameResponse_tags = Lens.lens (\GetDomainNameResponse' {tags} -> tags) (\s@GetDomainNameResponse' {} a -> s {tags = a} :: GetDomainNameResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getDomainNameResponse_httpStatus :: Lens.Lens' GetDomainNameResponse Prelude.Int
getDomainNameResponse_httpStatus = Lens.lens (\GetDomainNameResponse' {httpStatus} -> httpStatus) (\s@GetDomainNameResponse' {} a -> s {httpStatus = a} :: GetDomainNameResponse)

instance Prelude.NFData GetDomainNameResponse
