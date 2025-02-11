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
-- Module      : Network.AWS.SSOOIDC.CreateToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and returns an access token for the authorized client. The
-- access token issued will be used to fetch short-term credentials for the
-- assigned roles in the AWS account.
module Network.AWS.SSOOIDC.CreateToken
  ( -- * Creating a Request
    CreateToken (..),
    newCreateToken,

    -- * Request Lenses
    createToken_redirectUri,
    createToken_refreshToken,
    createToken_scope,
    createToken_code,
    createToken_clientId,
    createToken_clientSecret,
    createToken_grantType,
    createToken_deviceCode,

    -- * Destructuring the Response
    CreateTokenResponse (..),
    newCreateTokenResponse,

    -- * Response Lenses
    createTokenResponse_accessToken,
    createTokenResponse_refreshToken,
    createTokenResponse_expiresIn,
    createTokenResponse_tokenType,
    createTokenResponse_idToken,
    createTokenResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSOOIDC.Types

-- | /See:/ 'newCreateToken' smart constructor.
data CreateToken = CreateToken'
  { -- | The location of the application that will receive the authorization
    -- code. Users authorize the service to send the request to this location.
    redirectUri :: Prelude.Maybe Prelude.Text,
    -- | The token used to obtain an access token in the event that the access
    -- token is invalid or expired. This token is not issued by the service.
    refreshToken :: Prelude.Maybe Prelude.Text,
    -- | The list of scopes that is defined by the client. Upon authorization,
    -- this list is used to restrict permissions when granting an access token.
    scope :: Prelude.Maybe [Prelude.Text],
    -- | The authorization code received from the authorization service. This
    -- parameter is required to perform an authorization grant request to get
    -- access to a token.
    code :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier string for each client. This value should come
    -- from the persisted result of the RegisterClient API.
    clientId :: Prelude.Text,
    -- | A secret string generated for the client. This value should come from
    -- the persisted result of the RegisterClient API.
    clientSecret :: Prelude.Text,
    -- | Supports grant types for authorization code, refresh token, and device
    -- code request.
    grantType :: Prelude.Text,
    -- | Used only when calling this API for the device code grant type. This
    -- short-term code is used to identify this authentication attempt. This
    -- should come from an in-memory reference to the result of the
    -- StartDeviceAuthorization API.
    deviceCode :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'redirectUri', 'createToken_redirectUri' - The location of the application that will receive the authorization
-- code. Users authorize the service to send the request to this location.
--
-- 'refreshToken', 'createToken_refreshToken' - The token used to obtain an access token in the event that the access
-- token is invalid or expired. This token is not issued by the service.
--
-- 'scope', 'createToken_scope' - The list of scopes that is defined by the client. Upon authorization,
-- this list is used to restrict permissions when granting an access token.
--
-- 'code', 'createToken_code' - The authorization code received from the authorization service. This
-- parameter is required to perform an authorization grant request to get
-- access to a token.
--
-- 'clientId', 'createToken_clientId' - The unique identifier string for each client. This value should come
-- from the persisted result of the RegisterClient API.
--
-- 'clientSecret', 'createToken_clientSecret' - A secret string generated for the client. This value should come from
-- the persisted result of the RegisterClient API.
--
-- 'grantType', 'createToken_grantType' - Supports grant types for authorization code, refresh token, and device
-- code request.
--
-- 'deviceCode', 'createToken_deviceCode' - Used only when calling this API for the device code grant type. This
-- short-term code is used to identify this authentication attempt. This
-- should come from an in-memory reference to the result of the
-- StartDeviceAuthorization API.
newCreateToken ::
  -- | 'clientId'
  Prelude.Text ->
  -- | 'clientSecret'
  Prelude.Text ->
  -- | 'grantType'
  Prelude.Text ->
  -- | 'deviceCode'
  Prelude.Text ->
  CreateToken
newCreateToken
  pClientId_
  pClientSecret_
  pGrantType_
  pDeviceCode_ =
    CreateToken'
      { redirectUri = Prelude.Nothing,
        refreshToken = Prelude.Nothing,
        scope = Prelude.Nothing,
        code = Prelude.Nothing,
        clientId = pClientId_,
        clientSecret = pClientSecret_,
        grantType = pGrantType_,
        deviceCode = pDeviceCode_
      }

-- | The location of the application that will receive the authorization
-- code. Users authorize the service to send the request to this location.
createToken_redirectUri :: Lens.Lens' CreateToken (Prelude.Maybe Prelude.Text)
createToken_redirectUri = Lens.lens (\CreateToken' {redirectUri} -> redirectUri) (\s@CreateToken' {} a -> s {redirectUri = a} :: CreateToken)

-- | The token used to obtain an access token in the event that the access
-- token is invalid or expired. This token is not issued by the service.
createToken_refreshToken :: Lens.Lens' CreateToken (Prelude.Maybe Prelude.Text)
createToken_refreshToken = Lens.lens (\CreateToken' {refreshToken} -> refreshToken) (\s@CreateToken' {} a -> s {refreshToken = a} :: CreateToken)

-- | The list of scopes that is defined by the client. Upon authorization,
-- this list is used to restrict permissions when granting an access token.
createToken_scope :: Lens.Lens' CreateToken (Prelude.Maybe [Prelude.Text])
createToken_scope = Lens.lens (\CreateToken' {scope} -> scope) (\s@CreateToken' {} a -> s {scope = a} :: CreateToken) Prelude.. Lens.mapping Lens.coerced

-- | The authorization code received from the authorization service. This
-- parameter is required to perform an authorization grant request to get
-- access to a token.
createToken_code :: Lens.Lens' CreateToken (Prelude.Maybe Prelude.Text)
createToken_code = Lens.lens (\CreateToken' {code} -> code) (\s@CreateToken' {} a -> s {code = a} :: CreateToken)

-- | The unique identifier string for each client. This value should come
-- from the persisted result of the RegisterClient API.
createToken_clientId :: Lens.Lens' CreateToken Prelude.Text
createToken_clientId = Lens.lens (\CreateToken' {clientId} -> clientId) (\s@CreateToken' {} a -> s {clientId = a} :: CreateToken)

-- | A secret string generated for the client. This value should come from
-- the persisted result of the RegisterClient API.
createToken_clientSecret :: Lens.Lens' CreateToken Prelude.Text
createToken_clientSecret = Lens.lens (\CreateToken' {clientSecret} -> clientSecret) (\s@CreateToken' {} a -> s {clientSecret = a} :: CreateToken)

-- | Supports grant types for authorization code, refresh token, and device
-- code request.
createToken_grantType :: Lens.Lens' CreateToken Prelude.Text
createToken_grantType = Lens.lens (\CreateToken' {grantType} -> grantType) (\s@CreateToken' {} a -> s {grantType = a} :: CreateToken)

-- | Used only when calling this API for the device code grant type. This
-- short-term code is used to identify this authentication attempt. This
-- should come from an in-memory reference to the result of the
-- StartDeviceAuthorization API.
createToken_deviceCode :: Lens.Lens' CreateToken Prelude.Text
createToken_deviceCode = Lens.lens (\CreateToken' {deviceCode} -> deviceCode) (\s@CreateToken' {} a -> s {deviceCode = a} :: CreateToken)

instance Core.AWSRequest CreateToken where
  type AWSResponse CreateToken = CreateTokenResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTokenResponse'
            Prelude.<$> (x Core..?> "accessToken")
            Prelude.<*> (x Core..?> "refreshToken")
            Prelude.<*> (x Core..?> "expiresIn")
            Prelude.<*> (x Core..?> "tokenType")
            Prelude.<*> (x Core..?> "idToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateToken

instance Prelude.NFData CreateToken

instance Core.ToHeaders CreateToken where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateToken where
  toJSON CreateToken' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("redirectUri" Core..=) Prelude.<$> redirectUri,
            ("refreshToken" Core..=) Prelude.<$> refreshToken,
            ("scope" Core..=) Prelude.<$> scope,
            ("code" Core..=) Prelude.<$> code,
            Prelude.Just ("clientId" Core..= clientId),
            Prelude.Just ("clientSecret" Core..= clientSecret),
            Prelude.Just ("grantType" Core..= grantType),
            Prelude.Just ("deviceCode" Core..= deviceCode)
          ]
      )

instance Core.ToPath CreateToken where
  toPath = Prelude.const "/token"

instance Core.ToQuery CreateToken where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateTokenResponse' smart constructor.
data CreateTokenResponse = CreateTokenResponse'
  { -- | An opaque token to access AWS SSO resources assigned to a user.
    accessToken :: Prelude.Maybe Prelude.Text,
    -- | A token that, if present, can be used to refresh a previously issued
    -- access token that might have expired.
    refreshToken :: Prelude.Maybe Prelude.Text,
    -- | Indicates the time in seconds when an access token will expire.
    expiresIn :: Prelude.Maybe Prelude.Int,
    -- | Used to notify the client that the returned token is an access token.
    -- The supported type is @BearerToken@.
    tokenType :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the user that associated with the access token, if
    -- present.
    idToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessToken', 'createTokenResponse_accessToken' - An opaque token to access AWS SSO resources assigned to a user.
--
-- 'refreshToken', 'createTokenResponse_refreshToken' - A token that, if present, can be used to refresh a previously issued
-- access token that might have expired.
--
-- 'expiresIn', 'createTokenResponse_expiresIn' - Indicates the time in seconds when an access token will expire.
--
-- 'tokenType', 'createTokenResponse_tokenType' - Used to notify the client that the returned token is an access token.
-- The supported type is @BearerToken@.
--
-- 'idToken', 'createTokenResponse_idToken' - The identifier of the user that associated with the access token, if
-- present.
--
-- 'httpStatus', 'createTokenResponse_httpStatus' - The response's http status code.
newCreateTokenResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateTokenResponse
newCreateTokenResponse pHttpStatus_ =
  CreateTokenResponse'
    { accessToken = Prelude.Nothing,
      refreshToken = Prelude.Nothing,
      expiresIn = Prelude.Nothing,
      tokenType = Prelude.Nothing,
      idToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An opaque token to access AWS SSO resources assigned to a user.
createTokenResponse_accessToken :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_accessToken = Lens.lens (\CreateTokenResponse' {accessToken} -> accessToken) (\s@CreateTokenResponse' {} a -> s {accessToken = a} :: CreateTokenResponse)

-- | A token that, if present, can be used to refresh a previously issued
-- access token that might have expired.
createTokenResponse_refreshToken :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_refreshToken = Lens.lens (\CreateTokenResponse' {refreshToken} -> refreshToken) (\s@CreateTokenResponse' {} a -> s {refreshToken = a} :: CreateTokenResponse)

-- | Indicates the time in seconds when an access token will expire.
createTokenResponse_expiresIn :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Int)
createTokenResponse_expiresIn = Lens.lens (\CreateTokenResponse' {expiresIn} -> expiresIn) (\s@CreateTokenResponse' {} a -> s {expiresIn = a} :: CreateTokenResponse)

-- | Used to notify the client that the returned token is an access token.
-- The supported type is @BearerToken@.
createTokenResponse_tokenType :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_tokenType = Lens.lens (\CreateTokenResponse' {tokenType} -> tokenType) (\s@CreateTokenResponse' {} a -> s {tokenType = a} :: CreateTokenResponse)

-- | The identifier of the user that associated with the access token, if
-- present.
createTokenResponse_idToken :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_idToken = Lens.lens (\CreateTokenResponse' {idToken} -> idToken) (\s@CreateTokenResponse' {} a -> s {idToken = a} :: CreateTokenResponse)

-- | The response's http status code.
createTokenResponse_httpStatus :: Lens.Lens' CreateTokenResponse Prelude.Int
createTokenResponse_httpStatus = Lens.lens (\CreateTokenResponse' {httpStatus} -> httpStatus) (\s@CreateTokenResponse' {} a -> s {httpStatus = a} :: CreateTokenResponse)

instance Prelude.NFData CreateTokenResponse
