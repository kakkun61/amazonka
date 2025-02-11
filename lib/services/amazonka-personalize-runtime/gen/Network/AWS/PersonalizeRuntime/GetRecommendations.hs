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
-- Module      : Network.AWS.PersonalizeRuntime.GetRecommendations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of recommended items. The required input depends on the
-- recipe type used to create the solution backing the campaign, as
-- follows:
--
-- -   RELATED_ITEMS - @itemId@ required, @userId@ not used
--
-- -   USER_PERSONALIZATION - @itemId@ optional, @userId@ required
--
-- Campaigns that are backed by a solution created using a recipe of type
-- PERSONALIZED_RANKING use the API.
module Network.AWS.PersonalizeRuntime.GetRecommendations
  ( -- * Creating a Request
    GetRecommendations (..),
    newGetRecommendations,

    -- * Request Lenses
    getRecommendations_context,
    getRecommendations_itemId,
    getRecommendations_userId,
    getRecommendations_numResults,
    getRecommendations_filterArn,
    getRecommendations_filterValues,
    getRecommendations_campaignArn,

    -- * Destructuring the Response
    GetRecommendationsResponse (..),
    newGetRecommendationsResponse,

    -- * Response Lenses
    getRecommendationsResponse_recommendationId,
    getRecommendationsResponse_itemList,
    getRecommendationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.PersonalizeRuntime.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetRecommendations' smart constructor.
data GetRecommendations = GetRecommendations'
  { -- | The contextual metadata to use when getting recommendations. Contextual
    -- metadata includes any interaction information that might be relevant
    -- when getting a user\'s recommendations, such as the user\'s current
    -- location or device type.
    context :: Prelude.Maybe (Prelude.HashMap Prelude.Text (Core.Sensitive Prelude.Text)),
    -- | The item ID to provide recommendations for.
    --
    -- Required for @RELATED_ITEMS@ recipe type.
    itemId :: Prelude.Maybe Prelude.Text,
    -- | The user ID to provide recommendations for.
    --
    -- Required for @USER_PERSONALIZATION@ recipe type.
    userId :: Prelude.Maybe Prelude.Text,
    -- | The number of results to return. The default is 25. The maximum is 500.
    numResults :: Prelude.Maybe Prelude.Natural,
    -- | The ARN of the filter to apply to the returned recommendations. For more
    -- information, see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/filter.html Filtering Recommendations>.
    --
    -- When using this parameter, be sure the filter resource is @ACTIVE@.
    filterArn :: Prelude.Maybe Prelude.Text,
    -- | The values to use when filtering recommendations. For each placeholder
    -- parameter in your filter expression, provide the parameter name (in
    -- matching case) as a key and the filter value(s) as the corresponding
    -- value. Separate multiple values for one parameter with a comma.
    --
    -- For filter expressions that use an @INCLUDE@ element to include items,
    -- you must provide values for all parameters that are defined in the
    -- expression. For filters with expressions that use an @EXCLUDE@ element
    -- to exclude items, you can omit the @filter-values@.In this case, Amazon
    -- Personalize doesn\'t use that portion of the expression to filter
    -- recommendations.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/personalize/latest/dg/filter.html Filtering Recommendations>.
    filterValues :: Prelude.Maybe (Prelude.HashMap Prelude.Text (Core.Sensitive Prelude.Text)),
    -- | The Amazon Resource Name (ARN) of the campaign to use for getting
    -- recommendations.
    campaignArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecommendations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'context', 'getRecommendations_context' - The contextual metadata to use when getting recommendations. Contextual
-- metadata includes any interaction information that might be relevant
-- when getting a user\'s recommendations, such as the user\'s current
-- location or device type.
--
-- 'itemId', 'getRecommendations_itemId' - The item ID to provide recommendations for.
--
-- Required for @RELATED_ITEMS@ recipe type.
--
-- 'userId', 'getRecommendations_userId' - The user ID to provide recommendations for.
--
-- Required for @USER_PERSONALIZATION@ recipe type.
--
-- 'numResults', 'getRecommendations_numResults' - The number of results to return. The default is 25. The maximum is 500.
--
-- 'filterArn', 'getRecommendations_filterArn' - The ARN of the filter to apply to the returned recommendations. For more
-- information, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/filter.html Filtering Recommendations>.
--
-- When using this parameter, be sure the filter resource is @ACTIVE@.
--
-- 'filterValues', 'getRecommendations_filterValues' - The values to use when filtering recommendations. For each placeholder
-- parameter in your filter expression, provide the parameter name (in
-- matching case) as a key and the filter value(s) as the corresponding
-- value. Separate multiple values for one parameter with a comma.
--
-- For filter expressions that use an @INCLUDE@ element to include items,
-- you must provide values for all parameters that are defined in the
-- expression. For filters with expressions that use an @EXCLUDE@ element
-- to exclude items, you can omit the @filter-values@.In this case, Amazon
-- Personalize doesn\'t use that portion of the expression to filter
-- recommendations.
--
-- For more information, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/filter.html Filtering Recommendations>.
--
-- 'campaignArn', 'getRecommendations_campaignArn' - The Amazon Resource Name (ARN) of the campaign to use for getting
-- recommendations.
newGetRecommendations ::
  -- | 'campaignArn'
  Prelude.Text ->
  GetRecommendations
newGetRecommendations pCampaignArn_ =
  GetRecommendations'
    { context = Prelude.Nothing,
      itemId = Prelude.Nothing,
      userId = Prelude.Nothing,
      numResults = Prelude.Nothing,
      filterArn = Prelude.Nothing,
      filterValues = Prelude.Nothing,
      campaignArn = pCampaignArn_
    }

-- | The contextual metadata to use when getting recommendations. Contextual
-- metadata includes any interaction information that might be relevant
-- when getting a user\'s recommendations, such as the user\'s current
-- location or device type.
getRecommendations_context :: Lens.Lens' GetRecommendations (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRecommendations_context = Lens.lens (\GetRecommendations' {context} -> context) (\s@GetRecommendations' {} a -> s {context = a} :: GetRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The item ID to provide recommendations for.
--
-- Required for @RELATED_ITEMS@ recipe type.
getRecommendations_itemId :: Lens.Lens' GetRecommendations (Prelude.Maybe Prelude.Text)
getRecommendations_itemId = Lens.lens (\GetRecommendations' {itemId} -> itemId) (\s@GetRecommendations' {} a -> s {itemId = a} :: GetRecommendations)

-- | The user ID to provide recommendations for.
--
-- Required for @USER_PERSONALIZATION@ recipe type.
getRecommendations_userId :: Lens.Lens' GetRecommendations (Prelude.Maybe Prelude.Text)
getRecommendations_userId = Lens.lens (\GetRecommendations' {userId} -> userId) (\s@GetRecommendations' {} a -> s {userId = a} :: GetRecommendations)

-- | The number of results to return. The default is 25. The maximum is 500.
getRecommendations_numResults :: Lens.Lens' GetRecommendations (Prelude.Maybe Prelude.Natural)
getRecommendations_numResults = Lens.lens (\GetRecommendations' {numResults} -> numResults) (\s@GetRecommendations' {} a -> s {numResults = a} :: GetRecommendations)

-- | The ARN of the filter to apply to the returned recommendations. For more
-- information, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/filter.html Filtering Recommendations>.
--
-- When using this parameter, be sure the filter resource is @ACTIVE@.
getRecommendations_filterArn :: Lens.Lens' GetRecommendations (Prelude.Maybe Prelude.Text)
getRecommendations_filterArn = Lens.lens (\GetRecommendations' {filterArn} -> filterArn) (\s@GetRecommendations' {} a -> s {filterArn = a} :: GetRecommendations)

-- | The values to use when filtering recommendations. For each placeholder
-- parameter in your filter expression, provide the parameter name (in
-- matching case) as a key and the filter value(s) as the corresponding
-- value. Separate multiple values for one parameter with a comma.
--
-- For filter expressions that use an @INCLUDE@ element to include items,
-- you must provide values for all parameters that are defined in the
-- expression. For filters with expressions that use an @EXCLUDE@ element
-- to exclude items, you can omit the @filter-values@.In this case, Amazon
-- Personalize doesn\'t use that portion of the expression to filter
-- recommendations.
--
-- For more information, see
-- <https://docs.aws.amazon.com/personalize/latest/dg/filter.html Filtering Recommendations>.
getRecommendations_filterValues :: Lens.Lens' GetRecommendations (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getRecommendations_filterValues = Lens.lens (\GetRecommendations' {filterValues} -> filterValues) (\s@GetRecommendations' {} a -> s {filterValues = a} :: GetRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) of the campaign to use for getting
-- recommendations.
getRecommendations_campaignArn :: Lens.Lens' GetRecommendations Prelude.Text
getRecommendations_campaignArn = Lens.lens (\GetRecommendations' {campaignArn} -> campaignArn) (\s@GetRecommendations' {} a -> s {campaignArn = a} :: GetRecommendations)

instance Core.AWSRequest GetRecommendations where
  type
    AWSResponse GetRecommendations =
      GetRecommendationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRecommendationsResponse'
            Prelude.<$> (x Core..?> "recommendationId")
            Prelude.<*> (x Core..?> "itemList" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetRecommendations

instance Prelude.NFData GetRecommendations

instance Core.ToHeaders GetRecommendations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetRecommendations where
  toJSON GetRecommendations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("context" Core..=) Prelude.<$> context,
            ("itemId" Core..=) Prelude.<$> itemId,
            ("userId" Core..=) Prelude.<$> userId,
            ("numResults" Core..=) Prelude.<$> numResults,
            ("filterArn" Core..=) Prelude.<$> filterArn,
            ("filterValues" Core..=) Prelude.<$> filterValues,
            Prelude.Just ("campaignArn" Core..= campaignArn)
          ]
      )

instance Core.ToPath GetRecommendations where
  toPath = Prelude.const "/recommendations"

instance Core.ToQuery GetRecommendations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRecommendationsResponse' smart constructor.
data GetRecommendationsResponse = GetRecommendationsResponse'
  { -- | The ID of the recommendation.
    recommendationId :: Prelude.Maybe Prelude.Text,
    -- | A list of recommendations sorted in ascending order by prediction score.
    -- There can be a maximum of 500 items in the list.
    itemList :: Prelude.Maybe [PredictedItem],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecommendationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recommendationId', 'getRecommendationsResponse_recommendationId' - The ID of the recommendation.
--
-- 'itemList', 'getRecommendationsResponse_itemList' - A list of recommendations sorted in ascending order by prediction score.
-- There can be a maximum of 500 items in the list.
--
-- 'httpStatus', 'getRecommendationsResponse_httpStatus' - The response's http status code.
newGetRecommendationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetRecommendationsResponse
newGetRecommendationsResponse pHttpStatus_ =
  GetRecommendationsResponse'
    { recommendationId =
        Prelude.Nothing,
      itemList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the recommendation.
getRecommendationsResponse_recommendationId :: Lens.Lens' GetRecommendationsResponse (Prelude.Maybe Prelude.Text)
getRecommendationsResponse_recommendationId = Lens.lens (\GetRecommendationsResponse' {recommendationId} -> recommendationId) (\s@GetRecommendationsResponse' {} a -> s {recommendationId = a} :: GetRecommendationsResponse)

-- | A list of recommendations sorted in ascending order by prediction score.
-- There can be a maximum of 500 items in the list.
getRecommendationsResponse_itemList :: Lens.Lens' GetRecommendationsResponse (Prelude.Maybe [PredictedItem])
getRecommendationsResponse_itemList = Lens.lens (\GetRecommendationsResponse' {itemList} -> itemList) (\s@GetRecommendationsResponse' {} a -> s {itemList = a} :: GetRecommendationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getRecommendationsResponse_httpStatus :: Lens.Lens' GetRecommendationsResponse Prelude.Int
getRecommendationsResponse_httpStatus = Lens.lens (\GetRecommendationsResponse' {httpStatus} -> httpStatus) (\s@GetRecommendationsResponse' {} a -> s {httpStatus = a} :: GetRecommendationsResponse)

instance Prelude.NFData GetRecommendationsResponse
