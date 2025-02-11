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
-- Module      : Network.AWS.Pinpoint.Types.InAppMessagesResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.InAppMessagesResponse where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.InAppMessageCampaign
import qualified Network.AWS.Prelude as Prelude

-- | Get in-app messages response object.
--
-- /See:/ 'newInAppMessagesResponse' smart constructor.
data InAppMessagesResponse = InAppMessagesResponse'
  { -- | List of targeted in-app message campaigns.
    inAppMessageCampaigns :: Prelude.Maybe [InAppMessageCampaign]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InAppMessagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'inAppMessageCampaigns', 'inAppMessagesResponse_inAppMessageCampaigns' - List of targeted in-app message campaigns.
newInAppMessagesResponse ::
  InAppMessagesResponse
newInAppMessagesResponse =
  InAppMessagesResponse'
    { inAppMessageCampaigns =
        Prelude.Nothing
    }

-- | List of targeted in-app message campaigns.
inAppMessagesResponse_inAppMessageCampaigns :: Lens.Lens' InAppMessagesResponse (Prelude.Maybe [InAppMessageCampaign])
inAppMessagesResponse_inAppMessageCampaigns = Lens.lens (\InAppMessagesResponse' {inAppMessageCampaigns} -> inAppMessageCampaigns) (\s@InAppMessagesResponse' {} a -> s {inAppMessageCampaigns = a} :: InAppMessagesResponse) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON InAppMessagesResponse where
  parseJSON =
    Core.withObject
      "InAppMessagesResponse"
      ( \x ->
          InAppMessagesResponse'
            Prelude.<$> ( x Core..:? "InAppMessageCampaigns"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable InAppMessagesResponse

instance Prelude.NFData InAppMessagesResponse
