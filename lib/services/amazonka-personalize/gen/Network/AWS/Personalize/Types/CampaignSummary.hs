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
-- Module      : Network.AWS.Personalize.Types.CampaignSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Types.CampaignSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a summary of the properties of a campaign. For a complete
-- listing, call the DescribeCampaign API.
--
-- /See:/ 'newCampaignSummary' smart constructor.
data CampaignSummary = CampaignSummary'
  { -- | If a campaign fails, the reason behind the failure.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The status of the campaign.
    --
    -- A campaign can be in one of the following states:
    --
    -- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
    --
    -- -   DELETE PENDING > DELETE IN_PROGRESS
    status :: Prelude.Maybe Prelude.Text,
    -- | The date and time (in Unix time) that the campaign was last updated.
    lastUpdatedDateTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the campaign.
    name :: Prelude.Maybe Prelude.Text,
    -- | The date and time (in Unix time) that the campaign was created.
    creationDateTime :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) of the campaign.
    campaignArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CampaignSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failureReason', 'campaignSummary_failureReason' - If a campaign fails, the reason behind the failure.
--
-- 'status', 'campaignSummary_status' - The status of the campaign.
--
-- A campaign can be in one of the following states:
--
-- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
--
-- -   DELETE PENDING > DELETE IN_PROGRESS
--
-- 'lastUpdatedDateTime', 'campaignSummary_lastUpdatedDateTime' - The date and time (in Unix time) that the campaign was last updated.
--
-- 'name', 'campaignSummary_name' - The name of the campaign.
--
-- 'creationDateTime', 'campaignSummary_creationDateTime' - The date and time (in Unix time) that the campaign was created.
--
-- 'campaignArn', 'campaignSummary_campaignArn' - The Amazon Resource Name (ARN) of the campaign.
newCampaignSummary ::
  CampaignSummary
newCampaignSummary =
  CampaignSummary'
    { failureReason = Prelude.Nothing,
      status = Prelude.Nothing,
      lastUpdatedDateTime = Prelude.Nothing,
      name = Prelude.Nothing,
      creationDateTime = Prelude.Nothing,
      campaignArn = Prelude.Nothing
    }

-- | If a campaign fails, the reason behind the failure.
campaignSummary_failureReason :: Lens.Lens' CampaignSummary (Prelude.Maybe Prelude.Text)
campaignSummary_failureReason = Lens.lens (\CampaignSummary' {failureReason} -> failureReason) (\s@CampaignSummary' {} a -> s {failureReason = a} :: CampaignSummary)

-- | The status of the campaign.
--
-- A campaign can be in one of the following states:
--
-- -   CREATE PENDING > CREATE IN_PROGRESS > ACTIVE -or- CREATE FAILED
--
-- -   DELETE PENDING > DELETE IN_PROGRESS
campaignSummary_status :: Lens.Lens' CampaignSummary (Prelude.Maybe Prelude.Text)
campaignSummary_status = Lens.lens (\CampaignSummary' {status} -> status) (\s@CampaignSummary' {} a -> s {status = a} :: CampaignSummary)

-- | The date and time (in Unix time) that the campaign was last updated.
campaignSummary_lastUpdatedDateTime :: Lens.Lens' CampaignSummary (Prelude.Maybe Prelude.UTCTime)
campaignSummary_lastUpdatedDateTime = Lens.lens (\CampaignSummary' {lastUpdatedDateTime} -> lastUpdatedDateTime) (\s@CampaignSummary' {} a -> s {lastUpdatedDateTime = a} :: CampaignSummary) Prelude.. Lens.mapping Core._Time

-- | The name of the campaign.
campaignSummary_name :: Lens.Lens' CampaignSummary (Prelude.Maybe Prelude.Text)
campaignSummary_name = Lens.lens (\CampaignSummary' {name} -> name) (\s@CampaignSummary' {} a -> s {name = a} :: CampaignSummary)

-- | The date and time (in Unix time) that the campaign was created.
campaignSummary_creationDateTime :: Lens.Lens' CampaignSummary (Prelude.Maybe Prelude.UTCTime)
campaignSummary_creationDateTime = Lens.lens (\CampaignSummary' {creationDateTime} -> creationDateTime) (\s@CampaignSummary' {} a -> s {creationDateTime = a} :: CampaignSummary) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) of the campaign.
campaignSummary_campaignArn :: Lens.Lens' CampaignSummary (Prelude.Maybe Prelude.Text)
campaignSummary_campaignArn = Lens.lens (\CampaignSummary' {campaignArn} -> campaignArn) (\s@CampaignSummary' {} a -> s {campaignArn = a} :: CampaignSummary)

instance Core.FromJSON CampaignSummary where
  parseJSON =
    Core.withObject
      "CampaignSummary"
      ( \x ->
          CampaignSummary'
            Prelude.<$> (x Core..:? "failureReason")
            Prelude.<*> (x Core..:? "status")
            Prelude.<*> (x Core..:? "lastUpdatedDateTime")
            Prelude.<*> (x Core..:? "name")
            Prelude.<*> (x Core..:? "creationDateTime")
            Prelude.<*> (x Core..:? "campaignArn")
      )

instance Prelude.Hashable CampaignSummary

instance Prelude.NFData CampaignSummary
