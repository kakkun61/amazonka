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
-- Module      : Network.AWS.Pinpoint.Types.JourneyChannelSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.JourneyChannelSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The channel-specific configurations for the journey.
--
-- /See:/ 'newJourneyChannelSettings' smart constructor.
data JourneyChannelSettings = JourneyChannelSettings'
  { -- | Amazon Resource Name (ARN) of the Connect Campaign.
    connectCampaignArn :: Prelude.Maybe Prelude.Text,
    -- | IAM role ARN to be assumed when invoking Connect campaign execution APIs
    -- for dialing.
    connectCampaignExecutionRoleArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'JourneyChannelSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectCampaignArn', 'journeyChannelSettings_connectCampaignArn' - Amazon Resource Name (ARN) of the Connect Campaign.
--
-- 'connectCampaignExecutionRoleArn', 'journeyChannelSettings_connectCampaignExecutionRoleArn' - IAM role ARN to be assumed when invoking Connect campaign execution APIs
-- for dialing.
newJourneyChannelSettings ::
  JourneyChannelSettings
newJourneyChannelSettings =
  JourneyChannelSettings'
    { connectCampaignArn =
        Prelude.Nothing,
      connectCampaignExecutionRoleArn = Prelude.Nothing
    }

-- | Amazon Resource Name (ARN) of the Connect Campaign.
journeyChannelSettings_connectCampaignArn :: Lens.Lens' JourneyChannelSettings (Prelude.Maybe Prelude.Text)
journeyChannelSettings_connectCampaignArn = Lens.lens (\JourneyChannelSettings' {connectCampaignArn} -> connectCampaignArn) (\s@JourneyChannelSettings' {} a -> s {connectCampaignArn = a} :: JourneyChannelSettings)

-- | IAM role ARN to be assumed when invoking Connect campaign execution APIs
-- for dialing.
journeyChannelSettings_connectCampaignExecutionRoleArn :: Lens.Lens' JourneyChannelSettings (Prelude.Maybe Prelude.Text)
journeyChannelSettings_connectCampaignExecutionRoleArn = Lens.lens (\JourneyChannelSettings' {connectCampaignExecutionRoleArn} -> connectCampaignExecutionRoleArn) (\s@JourneyChannelSettings' {} a -> s {connectCampaignExecutionRoleArn = a} :: JourneyChannelSettings)

instance Core.FromJSON JourneyChannelSettings where
  parseJSON =
    Core.withObject
      "JourneyChannelSettings"
      ( \x ->
          JourneyChannelSettings'
            Prelude.<$> (x Core..:? "ConnectCampaignArn")
            Prelude.<*> (x Core..:? "ConnectCampaignExecutionRoleArn")
      )

instance Prelude.Hashable JourneyChannelSettings

instance Prelude.NFData JourneyChannelSettings
