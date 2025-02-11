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
-- Module      : Network.AWS.ApiGatewayV2.CreateDomainName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a domain name.
module Network.AWS.ApiGatewayV2.CreateDomainName
  ( -- * Creating a Request
    CreateDomainName (..),
    newCreateDomainName,

    -- * Request Lenses
    createDomainName_domainNameConfigurations,
    createDomainName_mutualTlsAuthentication,
    createDomainName_tags,
    createDomainName_domainName,

    -- * Destructuring the Response
    CreateDomainNameResponse (..),
    newCreateDomainNameResponse,

    -- * Response Lenses
    createDomainNameResponse_domainNameConfigurations,
    createDomainNameResponse_domainName,
    createDomainNameResponse_mutualTlsAuthentication,
    createDomainNameResponse_apiMappingSelectionExpression,
    createDomainNameResponse_tags,
    createDomainNameResponse_httpStatus,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Creates a new DomainName resource to represent a domain name.
--
-- /See:/ 'newCreateDomainName' smart constructor.
data CreateDomainName = CreateDomainName'
  { -- | The domain name configurations.
    domainNameConfigurations :: Prelude.Maybe [DomainNameConfiguration],
    -- | The mutual TLS authentication configuration for a custom domain name.
    mutualTlsAuthentication :: Prelude.Maybe MutualTlsAuthenticationInput,
    -- | The collection of tags associated with a domain name.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The domain name.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDomainName' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainNameConfigurations', 'createDomainName_domainNameConfigurations' - The domain name configurations.
--
-- 'mutualTlsAuthentication', 'createDomainName_mutualTlsAuthentication' - The mutual TLS authentication configuration for a custom domain name.
--
-- 'tags', 'createDomainName_tags' - The collection of tags associated with a domain name.
--
-- 'domainName', 'createDomainName_domainName' - The domain name.
newCreateDomainName ::
  -- | 'domainName'
  Prelude.Text ->
  CreateDomainName
newCreateDomainName pDomainName_ =
  CreateDomainName'
    { domainNameConfigurations =
        Prelude.Nothing,
      mutualTlsAuthentication = Prelude.Nothing,
      tags = Prelude.Nothing,
      domainName = pDomainName_
    }

-- | The domain name configurations.
createDomainName_domainNameConfigurations :: Lens.Lens' CreateDomainName (Prelude.Maybe [DomainNameConfiguration])
createDomainName_domainNameConfigurations = Lens.lens (\CreateDomainName' {domainNameConfigurations} -> domainNameConfigurations) (\s@CreateDomainName' {} a -> s {domainNameConfigurations = a} :: CreateDomainName) Prelude.. Lens.mapping Lens.coerced

-- | The mutual TLS authentication configuration for a custom domain name.
createDomainName_mutualTlsAuthentication :: Lens.Lens' CreateDomainName (Prelude.Maybe MutualTlsAuthenticationInput)
createDomainName_mutualTlsAuthentication = Lens.lens (\CreateDomainName' {mutualTlsAuthentication} -> mutualTlsAuthentication) (\s@CreateDomainName' {} a -> s {mutualTlsAuthentication = a} :: CreateDomainName)

-- | The collection of tags associated with a domain name.
createDomainName_tags :: Lens.Lens' CreateDomainName (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDomainName_tags = Lens.lens (\CreateDomainName' {tags} -> tags) (\s@CreateDomainName' {} a -> s {tags = a} :: CreateDomainName) Prelude.. Lens.mapping Lens.coerced

-- | The domain name.
createDomainName_domainName :: Lens.Lens' CreateDomainName Prelude.Text
createDomainName_domainName = Lens.lens (\CreateDomainName' {domainName} -> domainName) (\s@CreateDomainName' {} a -> s {domainName = a} :: CreateDomainName)

instance Core.AWSRequest CreateDomainName where
  type
    AWSResponse CreateDomainName =
      CreateDomainNameResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateDomainNameResponse'
            Prelude.<$> ( x Core..?> "domainNameConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "domainName")
            Prelude.<*> (x Core..?> "mutualTlsAuthentication")
            Prelude.<*> (x Core..?> "apiMappingSelectionExpression")
            Prelude.<*> (x Core..?> "tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDomainName

instance Prelude.NFData CreateDomainName

instance Core.ToHeaders CreateDomainName where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDomainName where
  toJSON CreateDomainName' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("domainNameConfigurations" Core..=)
              Prelude.<$> domainNameConfigurations,
            ("mutualTlsAuthentication" Core..=)
              Prelude.<$> mutualTlsAuthentication,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("domainName" Core..= domainName)
          ]
      )

instance Core.ToPath CreateDomainName where
  toPath = Prelude.const "/v2/domainnames"

instance Core.ToQuery CreateDomainName where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDomainNameResponse' smart constructor.
data CreateDomainNameResponse = CreateDomainNameResponse'
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
-- Create a value of 'CreateDomainNameResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainNameConfigurations', 'createDomainNameResponse_domainNameConfigurations' - The domain name configurations.
--
-- 'domainName', 'createDomainNameResponse_domainName' - The name of the DomainName resource.
--
-- 'mutualTlsAuthentication', 'createDomainNameResponse_mutualTlsAuthentication' - The mutual TLS authentication configuration for a custom domain name.
--
-- 'apiMappingSelectionExpression', 'createDomainNameResponse_apiMappingSelectionExpression' - The API mapping selection expression.
--
-- 'tags', 'createDomainNameResponse_tags' - The collection of tags associated with a domain name.
--
-- 'httpStatus', 'createDomainNameResponse_httpStatus' - The response's http status code.
newCreateDomainNameResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDomainNameResponse
newCreateDomainNameResponse pHttpStatus_ =
  CreateDomainNameResponse'
    { domainNameConfigurations =
        Prelude.Nothing,
      domainName = Prelude.Nothing,
      mutualTlsAuthentication = Prelude.Nothing,
      apiMappingSelectionExpression = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The domain name configurations.
createDomainNameResponse_domainNameConfigurations :: Lens.Lens' CreateDomainNameResponse (Prelude.Maybe [DomainNameConfiguration])
createDomainNameResponse_domainNameConfigurations = Lens.lens (\CreateDomainNameResponse' {domainNameConfigurations} -> domainNameConfigurations) (\s@CreateDomainNameResponse' {} a -> s {domainNameConfigurations = a} :: CreateDomainNameResponse) Prelude.. Lens.mapping Lens.coerced

-- | The name of the DomainName resource.
createDomainNameResponse_domainName :: Lens.Lens' CreateDomainNameResponse (Prelude.Maybe Prelude.Text)
createDomainNameResponse_domainName = Lens.lens (\CreateDomainNameResponse' {domainName} -> domainName) (\s@CreateDomainNameResponse' {} a -> s {domainName = a} :: CreateDomainNameResponse)

-- | The mutual TLS authentication configuration for a custom domain name.
createDomainNameResponse_mutualTlsAuthentication :: Lens.Lens' CreateDomainNameResponse (Prelude.Maybe MutualTlsAuthentication)
createDomainNameResponse_mutualTlsAuthentication = Lens.lens (\CreateDomainNameResponse' {mutualTlsAuthentication} -> mutualTlsAuthentication) (\s@CreateDomainNameResponse' {} a -> s {mutualTlsAuthentication = a} :: CreateDomainNameResponse)

-- | The API mapping selection expression.
createDomainNameResponse_apiMappingSelectionExpression :: Lens.Lens' CreateDomainNameResponse (Prelude.Maybe Prelude.Text)
createDomainNameResponse_apiMappingSelectionExpression = Lens.lens (\CreateDomainNameResponse' {apiMappingSelectionExpression} -> apiMappingSelectionExpression) (\s@CreateDomainNameResponse' {} a -> s {apiMappingSelectionExpression = a} :: CreateDomainNameResponse)

-- | The collection of tags associated with a domain name.
createDomainNameResponse_tags :: Lens.Lens' CreateDomainNameResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createDomainNameResponse_tags = Lens.lens (\CreateDomainNameResponse' {tags} -> tags) (\s@CreateDomainNameResponse' {} a -> s {tags = a} :: CreateDomainNameResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
createDomainNameResponse_httpStatus :: Lens.Lens' CreateDomainNameResponse Prelude.Int
createDomainNameResponse_httpStatus = Lens.lens (\CreateDomainNameResponse' {httpStatus} -> httpStatus) (\s@CreateDomainNameResponse' {} a -> s {httpStatus = a} :: CreateDomainNameResponse)

instance Prelude.NFData CreateDomainNameResponse
