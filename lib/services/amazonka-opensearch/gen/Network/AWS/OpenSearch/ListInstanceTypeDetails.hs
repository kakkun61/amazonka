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
-- Module      : Network.AWS.OpenSearch.ListInstanceTypeDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Undocumented operation.
module Network.AWS.OpenSearch.ListInstanceTypeDetails
  ( -- * Creating a Request
    ListInstanceTypeDetails (..),
    newListInstanceTypeDetails,

    -- * Request Lenses
    listInstanceTypeDetails_nextToken,
    listInstanceTypeDetails_domainName,
    listInstanceTypeDetails_maxResults,
    listInstanceTypeDetails_engineVersion,

    -- * Destructuring the Response
    ListInstanceTypeDetailsResponse (..),
    newListInstanceTypeDetailsResponse,

    -- * Response Lenses
    listInstanceTypeDetailsResponse_instanceTypeDetails,
    listInstanceTypeDetailsResponse_nextToken,
    listInstanceTypeDetailsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListInstanceTypeDetails' smart constructor.
data ListInstanceTypeDetails = ListInstanceTypeDetails'
  { nextToken :: Prelude.Maybe Prelude.Text,
    domainName :: Prelude.Maybe Prelude.Text,
    maxResults :: Prelude.Maybe Prelude.Int,
    engineVersion :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInstanceTypeDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listInstanceTypeDetails_nextToken' - Undocumented member.
--
-- 'domainName', 'listInstanceTypeDetails_domainName' - Undocumented member.
--
-- 'maxResults', 'listInstanceTypeDetails_maxResults' - Undocumented member.
--
-- 'engineVersion', 'listInstanceTypeDetails_engineVersion' - Undocumented member.
newListInstanceTypeDetails ::
  -- | 'engineVersion'
  Prelude.Text ->
  ListInstanceTypeDetails
newListInstanceTypeDetails pEngineVersion_ =
  ListInstanceTypeDetails'
    { nextToken =
        Prelude.Nothing,
      domainName = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      engineVersion = pEngineVersion_
    }

-- | Undocumented member.
listInstanceTypeDetails_nextToken :: Lens.Lens' ListInstanceTypeDetails (Prelude.Maybe Prelude.Text)
listInstanceTypeDetails_nextToken = Lens.lens (\ListInstanceTypeDetails' {nextToken} -> nextToken) (\s@ListInstanceTypeDetails' {} a -> s {nextToken = a} :: ListInstanceTypeDetails)

-- | Undocumented member.
listInstanceTypeDetails_domainName :: Lens.Lens' ListInstanceTypeDetails (Prelude.Maybe Prelude.Text)
listInstanceTypeDetails_domainName = Lens.lens (\ListInstanceTypeDetails' {domainName} -> domainName) (\s@ListInstanceTypeDetails' {} a -> s {domainName = a} :: ListInstanceTypeDetails)

-- | Undocumented member.
listInstanceTypeDetails_maxResults :: Lens.Lens' ListInstanceTypeDetails (Prelude.Maybe Prelude.Int)
listInstanceTypeDetails_maxResults = Lens.lens (\ListInstanceTypeDetails' {maxResults} -> maxResults) (\s@ListInstanceTypeDetails' {} a -> s {maxResults = a} :: ListInstanceTypeDetails)

-- | Undocumented member.
listInstanceTypeDetails_engineVersion :: Lens.Lens' ListInstanceTypeDetails Prelude.Text
listInstanceTypeDetails_engineVersion = Lens.lens (\ListInstanceTypeDetails' {engineVersion} -> engineVersion) (\s@ListInstanceTypeDetails' {} a -> s {engineVersion = a} :: ListInstanceTypeDetails)

instance Core.AWSRequest ListInstanceTypeDetails where
  type
    AWSResponse ListInstanceTypeDetails =
      ListInstanceTypeDetailsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListInstanceTypeDetailsResponse'
            Prelude.<$> ( x Core..?> "InstanceTypeDetails"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListInstanceTypeDetails

instance Prelude.NFData ListInstanceTypeDetails

instance Core.ToHeaders ListInstanceTypeDetails where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListInstanceTypeDetails where
  toPath ListInstanceTypeDetails' {..} =
    Prelude.mconcat
      [ "/2021-01-01/opensearch/instanceTypeDetails/",
        Core.toBS engineVersion
      ]

instance Core.ToQuery ListInstanceTypeDetails where
  toQuery ListInstanceTypeDetails' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "domainName" Core.=: domainName,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListInstanceTypeDetailsResponse' smart constructor.
data ListInstanceTypeDetailsResponse = ListInstanceTypeDetailsResponse'
  { instanceTypeDetails :: Prelude.Maybe [InstanceTypeDetails],
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListInstanceTypeDetailsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceTypeDetails', 'listInstanceTypeDetailsResponse_instanceTypeDetails' - Undocumented member.
--
-- 'nextToken', 'listInstanceTypeDetailsResponse_nextToken' - Undocumented member.
--
-- 'httpStatus', 'listInstanceTypeDetailsResponse_httpStatus' - The response's http status code.
newListInstanceTypeDetailsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListInstanceTypeDetailsResponse
newListInstanceTypeDetailsResponse pHttpStatus_ =
  ListInstanceTypeDetailsResponse'
    { instanceTypeDetails =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
listInstanceTypeDetailsResponse_instanceTypeDetails :: Lens.Lens' ListInstanceTypeDetailsResponse (Prelude.Maybe [InstanceTypeDetails])
listInstanceTypeDetailsResponse_instanceTypeDetails = Lens.lens (\ListInstanceTypeDetailsResponse' {instanceTypeDetails} -> instanceTypeDetails) (\s@ListInstanceTypeDetailsResponse' {} a -> s {instanceTypeDetails = a} :: ListInstanceTypeDetailsResponse) Prelude.. Lens.mapping Lens.coerced

-- | Undocumented member.
listInstanceTypeDetailsResponse_nextToken :: Lens.Lens' ListInstanceTypeDetailsResponse (Prelude.Maybe Prelude.Text)
listInstanceTypeDetailsResponse_nextToken = Lens.lens (\ListInstanceTypeDetailsResponse' {nextToken} -> nextToken) (\s@ListInstanceTypeDetailsResponse' {} a -> s {nextToken = a} :: ListInstanceTypeDetailsResponse)

-- | The response's http status code.
listInstanceTypeDetailsResponse_httpStatus :: Lens.Lens' ListInstanceTypeDetailsResponse Prelude.Int
listInstanceTypeDetailsResponse_httpStatus = Lens.lens (\ListInstanceTypeDetailsResponse' {httpStatus} -> httpStatus) (\s@ListInstanceTypeDetailsResponse' {} a -> s {httpStatus = a} :: ListInstanceTypeDetailsResponse)

instance
  Prelude.NFData
    ListInstanceTypeDetailsResponse
