{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Personalize.Types.CampaignConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Types.CampaignConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration details of a campaign.
--
-- /See:/ 'newCampaignConfig' smart constructor.
data CampaignConfig = CampaignConfig'
  { -- | A string to string map specifying the exploration configuration
    -- hyperparameters, including @explorationWeight@ and
    -- @explorationItemAgeCutOff@, you want to use to configure the amount of
    -- item exploration Amazon Personalize uses when recommending items.
    -- Provide @itemExplorationConfig@ data only if your solution uses the
    -- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html User-Personalization>
    -- recipe.
    itemExplorationConfig :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CampaignConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'itemExplorationConfig', 'campaignConfig_itemExplorationConfig' - A string to string map specifying the exploration configuration
-- hyperparameters, including @explorationWeight@ and
-- @explorationItemAgeCutOff@, you want to use to configure the amount of
-- item exploration Amazon Personalize uses when recommending items.
-- Provide @itemExplorationConfig@ data only if your solution uses the
-- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html User-Personalization>
-- recipe.
newCampaignConfig ::
  CampaignConfig
newCampaignConfig =
  CampaignConfig'
    { itemExplorationConfig =
        Prelude.Nothing
    }

-- | A string to string map specifying the exploration configuration
-- hyperparameters, including @explorationWeight@ and
-- @explorationItemAgeCutOff@, you want to use to configure the amount of
-- item exploration Amazon Personalize uses when recommending items.
-- Provide @itemExplorationConfig@ data only if your solution uses the
-- <https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html User-Personalization>
-- recipe.
campaignConfig_itemExplorationConfig :: Lens.Lens' CampaignConfig (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
campaignConfig_itemExplorationConfig = Lens.lens (\CampaignConfig' {itemExplorationConfig} -> itemExplorationConfig) (\s@CampaignConfig' {} a -> s {itemExplorationConfig = a} :: CampaignConfig) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON CampaignConfig where
  parseJSON =
    Core.withObject
      "CampaignConfig"
      ( \x ->
          CampaignConfig'
            Prelude.<$> ( x Core..:? "itemExplorationConfig"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable CampaignConfig

instance Prelude.NFData CampaignConfig

instance Core.ToJSON CampaignConfig where
  toJSON CampaignConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("itemExplorationConfig" Core..=)
              Prelude.<$> itemExplorationConfig
          ]
      )
