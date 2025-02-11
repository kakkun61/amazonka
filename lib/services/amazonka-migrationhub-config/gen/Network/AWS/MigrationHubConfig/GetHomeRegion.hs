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
-- Module      : Network.AWS.MigrationHubConfig.GetHomeRegion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the calling account’s home region, if configured. This API is
-- used by other AWS services to determine the regional endpoint for
-- calling AWS Application Discovery Service and Migration Hub. You must
-- call @GetHomeRegion@ at least once before you call any other AWS
-- Application Discovery Service and AWS Migration Hub APIs, to obtain the
-- account\'s Migration Hub home region.
module Network.AWS.MigrationHubConfig.GetHomeRegion
  ( -- * Creating a Request
    GetHomeRegion (..),
    newGetHomeRegion,

    -- * Destructuring the Response
    GetHomeRegionResponse (..),
    newGetHomeRegionResponse,

    -- * Response Lenses
    getHomeRegionResponse_homeRegion,
    getHomeRegionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MigrationHubConfig.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetHomeRegion' smart constructor.
data GetHomeRegion = GetHomeRegion'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetHomeRegion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetHomeRegion ::
  GetHomeRegion
newGetHomeRegion = GetHomeRegion'

instance Core.AWSRequest GetHomeRegion where
  type
    AWSResponse GetHomeRegion =
      GetHomeRegionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetHomeRegionResponse'
            Prelude.<$> (x Core..?> "HomeRegion")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetHomeRegion

instance Prelude.NFData GetHomeRegion

instance Core.ToHeaders GetHomeRegion where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSMigrationHubMultiAccountService.GetHomeRegion" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetHomeRegion where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath GetHomeRegion where
  toPath = Prelude.const "/"

instance Core.ToQuery GetHomeRegion where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetHomeRegionResponse' smart constructor.
data GetHomeRegionResponse = GetHomeRegionResponse'
  { -- | The name of the home region of the calling account.
    homeRegion :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetHomeRegionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'homeRegion', 'getHomeRegionResponse_homeRegion' - The name of the home region of the calling account.
--
-- 'httpStatus', 'getHomeRegionResponse_httpStatus' - The response's http status code.
newGetHomeRegionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetHomeRegionResponse
newGetHomeRegionResponse pHttpStatus_ =
  GetHomeRegionResponse'
    { homeRegion =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the home region of the calling account.
getHomeRegionResponse_homeRegion :: Lens.Lens' GetHomeRegionResponse (Prelude.Maybe Prelude.Text)
getHomeRegionResponse_homeRegion = Lens.lens (\GetHomeRegionResponse' {homeRegion} -> homeRegion) (\s@GetHomeRegionResponse' {} a -> s {homeRegion = a} :: GetHomeRegionResponse)

-- | The response's http status code.
getHomeRegionResponse_httpStatus :: Lens.Lens' GetHomeRegionResponse Prelude.Int
getHomeRegionResponse_httpStatus = Lens.lens (\GetHomeRegionResponse' {httpStatus} -> httpStatus) (\s@GetHomeRegionResponse' {} a -> s {httpStatus = a} :: GetHomeRegionResponse)

instance Prelude.NFData GetHomeRegionResponse
