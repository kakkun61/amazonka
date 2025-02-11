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
-- Module      : Network.AWS.Pinpoint.Types.CampaignInAppMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.CampaignInAppMessage where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.InAppMessageContent
import Network.AWS.Pinpoint.Types.Layout
import qualified Network.AWS.Prelude as Prelude

-- | In-app message configuration.
--
-- /See:/ 'newCampaignInAppMessage' smart constructor.
data CampaignInAppMessage = CampaignInAppMessage'
  { -- | In-app message layout.
    layout :: Prelude.Maybe Layout,
    -- | The message body of the notification, the email body or the text
    -- message.
    body :: Prelude.Maybe Prelude.Text,
    -- | In-app message content.
    content :: Prelude.Maybe [InAppMessageContent],
    -- | Custom config to be sent to client.
    customConfig :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CampaignInAppMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'layout', 'campaignInAppMessage_layout' - In-app message layout.
--
-- 'body', 'campaignInAppMessage_body' - The message body of the notification, the email body or the text
-- message.
--
-- 'content', 'campaignInAppMessage_content' - In-app message content.
--
-- 'customConfig', 'campaignInAppMessage_customConfig' - Custom config to be sent to client.
newCampaignInAppMessage ::
  CampaignInAppMessage
newCampaignInAppMessage =
  CampaignInAppMessage'
    { layout = Prelude.Nothing,
      body = Prelude.Nothing,
      content = Prelude.Nothing,
      customConfig = Prelude.Nothing
    }

-- | In-app message layout.
campaignInAppMessage_layout :: Lens.Lens' CampaignInAppMessage (Prelude.Maybe Layout)
campaignInAppMessage_layout = Lens.lens (\CampaignInAppMessage' {layout} -> layout) (\s@CampaignInAppMessage' {} a -> s {layout = a} :: CampaignInAppMessage)

-- | The message body of the notification, the email body or the text
-- message.
campaignInAppMessage_body :: Lens.Lens' CampaignInAppMessage (Prelude.Maybe Prelude.Text)
campaignInAppMessage_body = Lens.lens (\CampaignInAppMessage' {body} -> body) (\s@CampaignInAppMessage' {} a -> s {body = a} :: CampaignInAppMessage)

-- | In-app message content.
campaignInAppMessage_content :: Lens.Lens' CampaignInAppMessage (Prelude.Maybe [InAppMessageContent])
campaignInAppMessage_content = Lens.lens (\CampaignInAppMessage' {content} -> content) (\s@CampaignInAppMessage' {} a -> s {content = a} :: CampaignInAppMessage) Prelude.. Lens.mapping Lens.coerced

-- | Custom config to be sent to client.
campaignInAppMessage_customConfig :: Lens.Lens' CampaignInAppMessage (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
campaignInAppMessage_customConfig = Lens.lens (\CampaignInAppMessage' {customConfig} -> customConfig) (\s@CampaignInAppMessage' {} a -> s {customConfig = a} :: CampaignInAppMessage) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON CampaignInAppMessage where
  parseJSON =
    Core.withObject
      "CampaignInAppMessage"
      ( \x ->
          CampaignInAppMessage'
            Prelude.<$> (x Core..:? "Layout")
            Prelude.<*> (x Core..:? "Body")
            Prelude.<*> (x Core..:? "Content" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "CustomConfig" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable CampaignInAppMessage

instance Prelude.NFData CampaignInAppMessage

instance Core.ToJSON CampaignInAppMessage where
  toJSON CampaignInAppMessage' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Layout" Core..=) Prelude.<$> layout,
            ("Body" Core..=) Prelude.<$> body,
            ("Content" Core..=) Prelude.<$> content,
            ("CustomConfig" Core..=) Prelude.<$> customConfig
          ]
      )
