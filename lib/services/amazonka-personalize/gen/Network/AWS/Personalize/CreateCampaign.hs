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
-- Module      : Network.AWS.Personalize.CreateCampaign
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a campaign by deploying a solution version. When a client calls
-- the
-- <https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetRecommendations.html GetRecommendations>
-- and
-- <https://docs.aws.amazon.com/personalize/latest/dg/API_RS_GetPersonalizedRanking.html GetPersonalizedRanking>
-- APIs, a campaign is specified in the request.
--
-- __Minimum Provisioned TPS and Auto-Scaling__
--
-- A transaction is a single @GetRecommendations@ or
-- @GetPersonalizedRanking@ call. Transactions per second (TPS) is the
-- throughput and unit of billing for Amazon Personalize. The minimum
-- provisioned TPS (@minProvisionedTPS@) specifies the baseline throughput
-- provisioned by Amazon Personalize, and thus, the minimum billing charge.
--
-- If your TPS increases beyond @minProvisionedTPS@, Amazon Personalize
-- auto-scales the provisioned capacity up and down, but never below
-- @minProvisionedTPS@. There\'s a short time delay while the capacity is
-- increased that might cause loss of transactions.
--
-- The actual TPS used is calculated as the average requests\/second within
-- a 5-minute window. You pay for maximum of either the minimum provisioned
-- TPS or the actual TPS. We recommend starting with a low
-- @minProvisionedTPS@, track your usage using Amazon CloudWatch metrics,
-- and then increase the @minProvisionedTPS@ as necessary.
--
-- __Status__
--
-- A campaign can be in one of the following states:
--
-- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
--
-- -   DELETE PENDING > DELETE IN_PROGRESS
--
-- To get the campaign status, call DescribeCampaign.
--
-- Wait until the @status@ of the campaign is @ACTIVE@ before asking the
-- campaign for recommendations.
--
-- __Related APIs__
--
-- -   ListCampaigns
--
-- -   DescribeCampaign
--
-- -   UpdateCampaign
--
-- -   DeleteCampaign
module Network.AWS.Personalize.CreateCampaign
  ( -- * Creating a Request
    CreateCampaign (..),
    newCreateCampaign,

    -- * Request Lenses
    createCampaign_campaignConfig,
    createCampaign_minProvisionedTPS,
    createCampaign_name,
    createCampaign_solutionVersionArn,

    -- * Destructuring the Response
    CreateCampaignResponse (..),
    newCreateCampaignResponse,

    -- * Response Lenses
    createCampaignResponse_campaignArn,
    createCampaignResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateCampaign' smart constructor.
data CreateCampaign = CreateCampaign'
  { -- | The configuration details of a campaign.
    campaignConfig :: Prelude.Maybe CampaignConfig,
    -- | Specifies the requested minimum provisioned transactions
    -- (recommendations) per second that Amazon Personalize will support.
    minProvisionedTPS :: Prelude.Maybe Prelude.Natural,
    -- | A name for the new campaign. The campaign name must be unique within
    -- your account.
    name :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the solution version to deploy.
    solutionVersionArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCampaign' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'campaignConfig', 'createCampaign_campaignConfig' - The configuration details of a campaign.
--
-- 'minProvisionedTPS', 'createCampaign_minProvisionedTPS' - Specifies the requested minimum provisioned transactions
-- (recommendations) per second that Amazon Personalize will support.
--
-- 'name', 'createCampaign_name' - A name for the new campaign. The campaign name must be unique within
-- your account.
--
-- 'solutionVersionArn', 'createCampaign_solutionVersionArn' - The Amazon Resource Name (ARN) of the solution version to deploy.
newCreateCampaign ::
  -- | 'name'
  Prelude.Text ->
  -- | 'solutionVersionArn'
  Prelude.Text ->
  CreateCampaign
newCreateCampaign pName_ pSolutionVersionArn_ =
  CreateCampaign'
    { campaignConfig = Prelude.Nothing,
      minProvisionedTPS = Prelude.Nothing,
      name = pName_,
      solutionVersionArn = pSolutionVersionArn_
    }

-- | The configuration details of a campaign.
createCampaign_campaignConfig :: Lens.Lens' CreateCampaign (Prelude.Maybe CampaignConfig)
createCampaign_campaignConfig = Lens.lens (\CreateCampaign' {campaignConfig} -> campaignConfig) (\s@CreateCampaign' {} a -> s {campaignConfig = a} :: CreateCampaign)

-- | Specifies the requested minimum provisioned transactions
-- (recommendations) per second that Amazon Personalize will support.
createCampaign_minProvisionedTPS :: Lens.Lens' CreateCampaign (Prelude.Maybe Prelude.Natural)
createCampaign_minProvisionedTPS = Lens.lens (\CreateCampaign' {minProvisionedTPS} -> minProvisionedTPS) (\s@CreateCampaign' {} a -> s {minProvisionedTPS = a} :: CreateCampaign)

-- | A name for the new campaign. The campaign name must be unique within
-- your account.
createCampaign_name :: Lens.Lens' CreateCampaign Prelude.Text
createCampaign_name = Lens.lens (\CreateCampaign' {name} -> name) (\s@CreateCampaign' {} a -> s {name = a} :: CreateCampaign)

-- | The Amazon Resource Name (ARN) of the solution version to deploy.
createCampaign_solutionVersionArn :: Lens.Lens' CreateCampaign Prelude.Text
createCampaign_solutionVersionArn = Lens.lens (\CreateCampaign' {solutionVersionArn} -> solutionVersionArn) (\s@CreateCampaign' {} a -> s {solutionVersionArn = a} :: CreateCampaign)

instance Core.AWSRequest CreateCampaign where
  type
    AWSResponse CreateCampaign =
      CreateCampaignResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateCampaignResponse'
            Prelude.<$> (x Core..?> "campaignArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateCampaign

instance Prelude.NFData CreateCampaign

instance Core.ToHeaders CreateCampaign where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonPersonalize.CreateCampaign" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateCampaign where
  toJSON CreateCampaign' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("campaignConfig" Core..=)
              Prelude.<$> campaignConfig,
            ("minProvisionedTPS" Core..=)
              Prelude.<$> minProvisionedTPS,
            Prelude.Just ("name" Core..= name),
            Prelude.Just
              ("solutionVersionArn" Core..= solutionVersionArn)
          ]
      )

instance Core.ToPath CreateCampaign where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateCampaign where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateCampaignResponse' smart constructor.
data CreateCampaignResponse = CreateCampaignResponse'
  { -- | The Amazon Resource Name (ARN) of the campaign.
    campaignArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateCampaignResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'campaignArn', 'createCampaignResponse_campaignArn' - The Amazon Resource Name (ARN) of the campaign.
--
-- 'httpStatus', 'createCampaignResponse_httpStatus' - The response's http status code.
newCreateCampaignResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateCampaignResponse
newCreateCampaignResponse pHttpStatus_ =
  CreateCampaignResponse'
    { campaignArn =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the campaign.
createCampaignResponse_campaignArn :: Lens.Lens' CreateCampaignResponse (Prelude.Maybe Prelude.Text)
createCampaignResponse_campaignArn = Lens.lens (\CreateCampaignResponse' {campaignArn} -> campaignArn) (\s@CreateCampaignResponse' {} a -> s {campaignArn = a} :: CreateCampaignResponse)

-- | The response's http status code.
createCampaignResponse_httpStatus :: Lens.Lens' CreateCampaignResponse Prelude.Int
createCampaignResponse_httpStatus = Lens.lens (\CreateCampaignResponse' {httpStatus} -> httpStatus) (\s@CreateCampaignResponse' {} a -> s {httpStatus = a} :: CreateCampaignResponse)

instance Prelude.NFData CreateCampaignResponse
