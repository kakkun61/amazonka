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
-- Module      : Network.AWS.SecurityHub.DisableSecurityHub
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables Security Hub in your account only in the current Region. To
-- disable Security Hub in all Regions, you must submit one request per
-- Region where you have enabled Security Hub.
--
-- When you disable Security Hub for an administrator account, it doesn\'t
-- disable Security Hub for any associated member accounts.
--
-- When you disable Security Hub, your existing findings and insights and
-- any Security Hub configuration settings are deleted after 90 days and
-- cannot be recovered. Any standards that were enabled are disabled, and
-- your administrator and member account associations are removed.
--
-- If you want to save your existing findings, you must export them before
-- you disable Security Hub.
module Network.AWS.SecurityHub.DisableSecurityHub
  ( -- * Creating a Request
    DisableSecurityHub (..),
    newDisableSecurityHub,

    -- * Destructuring the Response
    DisableSecurityHubResponse (..),
    newDisableSecurityHubResponse,

    -- * Response Lenses
    disableSecurityHubResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newDisableSecurityHub' smart constructor.
data DisableSecurityHub = DisableSecurityHub'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableSecurityHub' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDisableSecurityHub ::
  DisableSecurityHub
newDisableSecurityHub = DisableSecurityHub'

instance Core.AWSRequest DisableSecurityHub where
  type
    AWSResponse DisableSecurityHub =
      DisableSecurityHubResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisableSecurityHubResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DisableSecurityHub

instance Prelude.NFData DisableSecurityHub

instance Core.ToHeaders DisableSecurityHub where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DisableSecurityHub where
  toPath = Prelude.const "/accounts"

instance Core.ToQuery DisableSecurityHub where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisableSecurityHubResponse' smart constructor.
data DisableSecurityHubResponse = DisableSecurityHubResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisableSecurityHubResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disableSecurityHubResponse_httpStatus' - The response's http status code.
newDisableSecurityHubResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisableSecurityHubResponse
newDisableSecurityHubResponse pHttpStatus_ =
  DisableSecurityHubResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
disableSecurityHubResponse_httpStatus :: Lens.Lens' DisableSecurityHubResponse Prelude.Int
disableSecurityHubResponse_httpStatus = Lens.lens (\DisableSecurityHubResponse' {httpStatus} -> httpStatus) (\s@DisableSecurityHubResponse' {} a -> s {httpStatus = a} :: DisableSecurityHubResponse)

instance Prelude.NFData DisableSecurityHubResponse
