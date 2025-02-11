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
-- Module      : Network.AWS.CodeArtifact.GetAuthorizationToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a temporary authorization token for accessing repositories in
-- the domain. This API requires the @codeartifact:GetAuthorizationToken@
-- and @sts:GetServiceBearerToken@ permissions. For more information about
-- authorization tokens, see
-- <https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html AWS CodeArtifact authentication and tokens>.
--
-- CodeArtifact authorization tokens are valid for a period of 12 hours
-- when created with the @login@ command. You can call @login@ periodically
-- to refresh the token. When you create an authorization token with the
-- @GetAuthorizationToken@ API, you can set a custom authorization period,
-- up to a maximum of 12 hours, with the @durationSeconds@ parameter.
--
-- The authorization period begins after @login@ or @GetAuthorizationToken@
-- is called. If @login@ or @GetAuthorizationToken@ is called while
-- assuming a role, the token lifetime is independent of the maximum
-- session duration of the role. For example, if you call @sts assume-role@
-- and specify a session duration of 15 minutes, then generate a
-- CodeArtifact authorization token, the token will be valid for the full
-- authorization period even though this is longer than the 15-minute
-- session duration.
--
-- See
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html Using IAM Roles>
-- for more information on controlling session duration.
module Network.AWS.CodeArtifact.GetAuthorizationToken
  ( -- * Creating a Request
    GetAuthorizationToken (..),
    newGetAuthorizationToken,

    -- * Request Lenses
    getAuthorizationToken_domainOwner,
    getAuthorizationToken_durationSeconds,
    getAuthorizationToken_domain,

    -- * Destructuring the Response
    GetAuthorizationTokenResponse (..),
    newGetAuthorizationTokenResponse,

    -- * Response Lenses
    getAuthorizationTokenResponse_expiration,
    getAuthorizationTokenResponse_authorizationToken,
    getAuthorizationTokenResponse_httpStatus,
  )
where

import Network.AWS.CodeArtifact.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAuthorizationToken' smart constructor.
data GetAuthorizationToken = GetAuthorizationToken'
  { -- | The 12-digit account number of the AWS account that owns the domain. It
    -- does not include dashes or spaces.
    domainOwner :: Prelude.Maybe Prelude.Text,
    -- | The time, in seconds, that the generated authorization token is valid.
    -- Valid values are @0@ and any number between @900@ (15 minutes) and
    -- @43200@ (12 hours). A value of @0@ will set the expiration of the
    -- authorization token to the same expiration of the user\'s role\'s
    -- temporary credentials.
    durationSeconds :: Prelude.Maybe Prelude.Natural,
    -- | The name of the domain that is in scope for the generated authorization
    -- token.
    domain :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAuthorizationToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainOwner', 'getAuthorizationToken_domainOwner' - The 12-digit account number of the AWS account that owns the domain. It
-- does not include dashes or spaces.
--
-- 'durationSeconds', 'getAuthorizationToken_durationSeconds' - The time, in seconds, that the generated authorization token is valid.
-- Valid values are @0@ and any number between @900@ (15 minutes) and
-- @43200@ (12 hours). A value of @0@ will set the expiration of the
-- authorization token to the same expiration of the user\'s role\'s
-- temporary credentials.
--
-- 'domain', 'getAuthorizationToken_domain' - The name of the domain that is in scope for the generated authorization
-- token.
newGetAuthorizationToken ::
  -- | 'domain'
  Prelude.Text ->
  GetAuthorizationToken
newGetAuthorizationToken pDomain_ =
  GetAuthorizationToken'
    { domainOwner =
        Prelude.Nothing,
      durationSeconds = Prelude.Nothing,
      domain = pDomain_
    }

-- | The 12-digit account number of the AWS account that owns the domain. It
-- does not include dashes or spaces.
getAuthorizationToken_domainOwner :: Lens.Lens' GetAuthorizationToken (Prelude.Maybe Prelude.Text)
getAuthorizationToken_domainOwner = Lens.lens (\GetAuthorizationToken' {domainOwner} -> domainOwner) (\s@GetAuthorizationToken' {} a -> s {domainOwner = a} :: GetAuthorizationToken)

-- | The time, in seconds, that the generated authorization token is valid.
-- Valid values are @0@ and any number between @900@ (15 minutes) and
-- @43200@ (12 hours). A value of @0@ will set the expiration of the
-- authorization token to the same expiration of the user\'s role\'s
-- temporary credentials.
getAuthorizationToken_durationSeconds :: Lens.Lens' GetAuthorizationToken (Prelude.Maybe Prelude.Natural)
getAuthorizationToken_durationSeconds = Lens.lens (\GetAuthorizationToken' {durationSeconds} -> durationSeconds) (\s@GetAuthorizationToken' {} a -> s {durationSeconds = a} :: GetAuthorizationToken)

-- | The name of the domain that is in scope for the generated authorization
-- token.
getAuthorizationToken_domain :: Lens.Lens' GetAuthorizationToken Prelude.Text
getAuthorizationToken_domain = Lens.lens (\GetAuthorizationToken' {domain} -> domain) (\s@GetAuthorizationToken' {} a -> s {domain = a} :: GetAuthorizationToken)

instance Core.AWSRequest GetAuthorizationToken where
  type
    AWSResponse GetAuthorizationToken =
      GetAuthorizationTokenResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAuthorizationTokenResponse'
            Prelude.<$> (x Core..?> "expiration")
            Prelude.<*> (x Core..?> "authorizationToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAuthorizationToken

instance Prelude.NFData GetAuthorizationToken

instance Core.ToHeaders GetAuthorizationToken where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetAuthorizationToken where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath GetAuthorizationToken where
  toPath = Prelude.const "/v1/authorization-token"

instance Core.ToQuery GetAuthorizationToken where
  toQuery GetAuthorizationToken' {..} =
    Prelude.mconcat
      [ "domain-owner" Core.=: domainOwner,
        "duration" Core.=: durationSeconds,
        "domain" Core.=: domain
      ]

-- | /See:/ 'newGetAuthorizationTokenResponse' smart constructor.
data GetAuthorizationTokenResponse = GetAuthorizationTokenResponse'
  { -- | A timestamp that specifies the date and time the authorization token
    -- expires.
    expiration :: Prelude.Maybe Core.POSIX,
    -- | The returned authentication token.
    authorizationToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetAuthorizationTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expiration', 'getAuthorizationTokenResponse_expiration' - A timestamp that specifies the date and time the authorization token
-- expires.
--
-- 'authorizationToken', 'getAuthorizationTokenResponse_authorizationToken' - The returned authentication token.
--
-- 'httpStatus', 'getAuthorizationTokenResponse_httpStatus' - The response's http status code.
newGetAuthorizationTokenResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAuthorizationTokenResponse
newGetAuthorizationTokenResponse pHttpStatus_ =
  GetAuthorizationTokenResponse'
    { expiration =
        Prelude.Nothing,
      authorizationToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A timestamp that specifies the date and time the authorization token
-- expires.
getAuthorizationTokenResponse_expiration :: Lens.Lens' GetAuthorizationTokenResponse (Prelude.Maybe Prelude.UTCTime)
getAuthorizationTokenResponse_expiration = Lens.lens (\GetAuthorizationTokenResponse' {expiration} -> expiration) (\s@GetAuthorizationTokenResponse' {} a -> s {expiration = a} :: GetAuthorizationTokenResponse) Prelude.. Lens.mapping Core._Time

-- | The returned authentication token.
getAuthorizationTokenResponse_authorizationToken :: Lens.Lens' GetAuthorizationTokenResponse (Prelude.Maybe Prelude.Text)
getAuthorizationTokenResponse_authorizationToken = Lens.lens (\GetAuthorizationTokenResponse' {authorizationToken} -> authorizationToken) (\s@GetAuthorizationTokenResponse' {} a -> s {authorizationToken = a} :: GetAuthorizationTokenResponse)

-- | The response's http status code.
getAuthorizationTokenResponse_httpStatus :: Lens.Lens' GetAuthorizationTokenResponse Prelude.Int
getAuthorizationTokenResponse_httpStatus = Lens.lens (\GetAuthorizationTokenResponse' {httpStatus} -> httpStatus) (\s@GetAuthorizationTokenResponse' {} a -> s {httpStatus = a} :: GetAuthorizationTokenResponse)

instance Prelude.NFData GetAuthorizationTokenResponse
