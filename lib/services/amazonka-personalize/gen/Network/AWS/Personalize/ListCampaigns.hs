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
-- Module      : Network.AWS.Personalize.ListCampaigns
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of campaigns that use the given solution. When a solution
-- is not specified, all the campaigns associated with the account are
-- listed. The response provides the properties for each campaign,
-- including the Amazon Resource Name (ARN). For more information on
-- campaigns, see CreateCampaign.
--
-- This operation returns paginated results.
module Network.AWS.Personalize.ListCampaigns
  ( -- * Creating a Request
    ListCampaigns (..),
    newListCampaigns,

    -- * Request Lenses
    listCampaigns_solutionArn,
    listCampaigns_nextToken,
    listCampaigns_maxResults,

    -- * Destructuring the Response
    ListCampaignsResponse (..),
    newListCampaignsResponse,

    -- * Response Lenses
    listCampaignsResponse_campaigns,
    listCampaignsResponse_nextToken,
    listCampaignsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListCampaigns' smart constructor.
data ListCampaigns = ListCampaigns'
  { -- | The Amazon Resource Name (ARN) of the solution to list the campaigns
    -- for. When a solution is not specified, all the campaigns associated with
    -- the account are listed.
    solutionArn :: Prelude.Maybe Prelude.Text,
    -- | A token returned from the previous call to @ListCampaigns@ for getting
    -- the next set of campaigns (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of campaigns to return.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCampaigns' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'solutionArn', 'listCampaigns_solutionArn' - The Amazon Resource Name (ARN) of the solution to list the campaigns
-- for. When a solution is not specified, all the campaigns associated with
-- the account are listed.
--
-- 'nextToken', 'listCampaigns_nextToken' - A token returned from the previous call to @ListCampaigns@ for getting
-- the next set of campaigns (if they exist).
--
-- 'maxResults', 'listCampaigns_maxResults' - The maximum number of campaigns to return.
newListCampaigns ::
  ListCampaigns
newListCampaigns =
  ListCampaigns'
    { solutionArn = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the solution to list the campaigns
-- for. When a solution is not specified, all the campaigns associated with
-- the account are listed.
listCampaigns_solutionArn :: Lens.Lens' ListCampaigns (Prelude.Maybe Prelude.Text)
listCampaigns_solutionArn = Lens.lens (\ListCampaigns' {solutionArn} -> solutionArn) (\s@ListCampaigns' {} a -> s {solutionArn = a} :: ListCampaigns)

-- | A token returned from the previous call to @ListCampaigns@ for getting
-- the next set of campaigns (if they exist).
listCampaigns_nextToken :: Lens.Lens' ListCampaigns (Prelude.Maybe Prelude.Text)
listCampaigns_nextToken = Lens.lens (\ListCampaigns' {nextToken} -> nextToken) (\s@ListCampaigns' {} a -> s {nextToken = a} :: ListCampaigns)

-- | The maximum number of campaigns to return.
listCampaigns_maxResults :: Lens.Lens' ListCampaigns (Prelude.Maybe Prelude.Natural)
listCampaigns_maxResults = Lens.lens (\ListCampaigns' {maxResults} -> maxResults) (\s@ListCampaigns' {} a -> s {maxResults = a} :: ListCampaigns)

instance Core.AWSPager ListCampaigns where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listCampaignsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listCampaignsResponse_campaigns Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listCampaigns_nextToken
          Lens..~ rs
          Lens.^? listCampaignsResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListCampaigns where
  type
    AWSResponse ListCampaigns =
      ListCampaignsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListCampaignsResponse'
            Prelude.<$> (x Core..?> "campaigns" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListCampaigns

instance Prelude.NFData ListCampaigns

instance Core.ToHeaders ListCampaigns where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.ListCampaigns" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListCampaigns where
  toJSON ListCampaigns' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("solutionArn" Core..=) Prelude.<$> solutionArn,
            ("nextToken" Core..=) Prelude.<$> nextToken,
            ("maxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListCampaigns where
  toPath = Prelude.const "/"

instance Core.ToQuery ListCampaigns where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListCampaignsResponse' smart constructor.
data ListCampaignsResponse = ListCampaignsResponse'
  { -- | A list of the campaigns.
    campaigns :: Prelude.Maybe [CampaignSummary],
    -- | A token for getting the next set of campaigns (if they exist).
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListCampaignsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'campaigns', 'listCampaignsResponse_campaigns' - A list of the campaigns.
--
-- 'nextToken', 'listCampaignsResponse_nextToken' - A token for getting the next set of campaigns (if they exist).
--
-- 'httpStatus', 'listCampaignsResponse_httpStatus' - The response's http status code.
newListCampaignsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListCampaignsResponse
newListCampaignsResponse pHttpStatus_ =
  ListCampaignsResponse'
    { campaigns = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of the campaigns.
listCampaignsResponse_campaigns :: Lens.Lens' ListCampaignsResponse (Prelude.Maybe [CampaignSummary])
listCampaignsResponse_campaigns = Lens.lens (\ListCampaignsResponse' {campaigns} -> campaigns) (\s@ListCampaignsResponse' {} a -> s {campaigns = a} :: ListCampaignsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A token for getting the next set of campaigns (if they exist).
listCampaignsResponse_nextToken :: Lens.Lens' ListCampaignsResponse (Prelude.Maybe Prelude.Text)
listCampaignsResponse_nextToken = Lens.lens (\ListCampaignsResponse' {nextToken} -> nextToken) (\s@ListCampaignsResponse' {} a -> s {nextToken = a} :: ListCampaignsResponse)

-- | The response's http status code.
listCampaignsResponse_httpStatus :: Lens.Lens' ListCampaignsResponse Prelude.Int
listCampaignsResponse_httpStatus = Lens.lens (\ListCampaignsResponse' {httpStatus} -> httpStatus) (\s@ListCampaignsResponse' {} a -> s {httpStatus = a} :: ListCampaignsResponse)

instance Prelude.NFData ListCampaignsResponse
