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
-- Module      : Network.AWS.Grafana.DescribeWorkspaceAuthentication
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays information about the authentication methods used in one Amazon
-- Managed Grafana workspace.
module Network.AWS.Grafana.DescribeWorkspaceAuthentication
  ( -- * Creating a Request
    DescribeWorkspaceAuthentication (..),
    newDescribeWorkspaceAuthentication,

    -- * Request Lenses
    describeWorkspaceAuthentication_workspaceId,

    -- * Destructuring the Response
    DescribeWorkspaceAuthenticationResponse (..),
    newDescribeWorkspaceAuthenticationResponse,

    -- * Response Lenses
    describeWorkspaceAuthenticationResponse_httpStatus,
    describeWorkspaceAuthenticationResponse_authentication,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Grafana.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeWorkspaceAuthentication' smart constructor.
data DescribeWorkspaceAuthentication = DescribeWorkspaceAuthentication'
  { -- | The ID of the workspace to return authentication information about.
    workspaceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorkspaceAuthentication' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workspaceId', 'describeWorkspaceAuthentication_workspaceId' - The ID of the workspace to return authentication information about.
newDescribeWorkspaceAuthentication ::
  -- | 'workspaceId'
  Prelude.Text ->
  DescribeWorkspaceAuthentication
newDescribeWorkspaceAuthentication pWorkspaceId_ =
  DescribeWorkspaceAuthentication'
    { workspaceId =
        pWorkspaceId_
    }

-- | The ID of the workspace to return authentication information about.
describeWorkspaceAuthentication_workspaceId :: Lens.Lens' DescribeWorkspaceAuthentication Prelude.Text
describeWorkspaceAuthentication_workspaceId = Lens.lens (\DescribeWorkspaceAuthentication' {workspaceId} -> workspaceId) (\s@DescribeWorkspaceAuthentication' {} a -> s {workspaceId = a} :: DescribeWorkspaceAuthentication)

instance
  Core.AWSRequest
    DescribeWorkspaceAuthentication
  where
  type
    AWSResponse DescribeWorkspaceAuthentication =
      DescribeWorkspaceAuthenticationResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeWorkspaceAuthenticationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "authentication")
      )

instance
  Prelude.Hashable
    DescribeWorkspaceAuthentication

instance
  Prelude.NFData
    DescribeWorkspaceAuthentication

instance
  Core.ToHeaders
    DescribeWorkspaceAuthentication
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

instance Core.ToPath DescribeWorkspaceAuthentication where
  toPath DescribeWorkspaceAuthentication' {..} =
    Prelude.mconcat
      [ "/workspaces/",
        Core.toBS workspaceId,
        "/authentication"
      ]

instance Core.ToQuery DescribeWorkspaceAuthentication where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeWorkspaceAuthenticationResponse' smart constructor.
data DescribeWorkspaceAuthenticationResponse = DescribeWorkspaceAuthenticationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A structure containing information about the authentication methods used
    -- in the workspace.
    authentication :: AuthenticationDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeWorkspaceAuthenticationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeWorkspaceAuthenticationResponse_httpStatus' - The response's http status code.
--
-- 'authentication', 'describeWorkspaceAuthenticationResponse_authentication' - A structure containing information about the authentication methods used
-- in the workspace.
newDescribeWorkspaceAuthenticationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'authentication'
  AuthenticationDescription ->
  DescribeWorkspaceAuthenticationResponse
newDescribeWorkspaceAuthenticationResponse
  pHttpStatus_
  pAuthentication_ =
    DescribeWorkspaceAuthenticationResponse'
      { httpStatus =
          pHttpStatus_,
        authentication = pAuthentication_
      }

-- | The response's http status code.
describeWorkspaceAuthenticationResponse_httpStatus :: Lens.Lens' DescribeWorkspaceAuthenticationResponse Prelude.Int
describeWorkspaceAuthenticationResponse_httpStatus = Lens.lens (\DescribeWorkspaceAuthenticationResponse' {httpStatus} -> httpStatus) (\s@DescribeWorkspaceAuthenticationResponse' {} a -> s {httpStatus = a} :: DescribeWorkspaceAuthenticationResponse)

-- | A structure containing information about the authentication methods used
-- in the workspace.
describeWorkspaceAuthenticationResponse_authentication :: Lens.Lens' DescribeWorkspaceAuthenticationResponse AuthenticationDescription
describeWorkspaceAuthenticationResponse_authentication = Lens.lens (\DescribeWorkspaceAuthenticationResponse' {authentication} -> authentication) (\s@DescribeWorkspaceAuthenticationResponse' {} a -> s {authentication = a} :: DescribeWorkspaceAuthenticationResponse)

instance
  Prelude.NFData
    DescribeWorkspaceAuthenticationResponse
