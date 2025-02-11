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
-- Module      : Network.AWS.Chime.Types.VoiceConnectorItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.VoiceConnectorItem where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For Amazon Chime Voice Connector groups, the Amazon Chime Voice
-- Connectors to which to route inbound calls. Includes priority
-- configuration settings. Limit: 3 @VoiceConnectorItems@ per Amazon Chime
-- Voice Connector group.
--
-- /See:/ 'newVoiceConnectorItem' smart constructor.
data VoiceConnectorItem = VoiceConnectorItem'
  { -- | The Amazon Chime Voice Connector ID.
    voiceConnectorId :: Prelude.Text,
    -- | The priority associated with the Amazon Chime Voice Connector, with 1
    -- being the highest priority. Higher priority Amazon Chime Voice
    -- Connectors are attempted first.
    priority :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VoiceConnectorItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'voiceConnectorId', 'voiceConnectorItem_voiceConnectorId' - The Amazon Chime Voice Connector ID.
--
-- 'priority', 'voiceConnectorItem_priority' - The priority associated with the Amazon Chime Voice Connector, with 1
-- being the highest priority. Higher priority Amazon Chime Voice
-- Connectors are attempted first.
newVoiceConnectorItem ::
  -- | 'voiceConnectorId'
  Prelude.Text ->
  -- | 'priority'
  Prelude.Natural ->
  VoiceConnectorItem
newVoiceConnectorItem pVoiceConnectorId_ pPriority_ =
  VoiceConnectorItem'
    { voiceConnectorId =
        pVoiceConnectorId_,
      priority = pPriority_
    }

-- | The Amazon Chime Voice Connector ID.
voiceConnectorItem_voiceConnectorId :: Lens.Lens' VoiceConnectorItem Prelude.Text
voiceConnectorItem_voiceConnectorId = Lens.lens (\VoiceConnectorItem' {voiceConnectorId} -> voiceConnectorId) (\s@VoiceConnectorItem' {} a -> s {voiceConnectorId = a} :: VoiceConnectorItem)

-- | The priority associated with the Amazon Chime Voice Connector, with 1
-- being the highest priority. Higher priority Amazon Chime Voice
-- Connectors are attempted first.
voiceConnectorItem_priority :: Lens.Lens' VoiceConnectorItem Prelude.Natural
voiceConnectorItem_priority = Lens.lens (\VoiceConnectorItem' {priority} -> priority) (\s@VoiceConnectorItem' {} a -> s {priority = a} :: VoiceConnectorItem)

instance Core.FromJSON VoiceConnectorItem where
  parseJSON =
    Core.withObject
      "VoiceConnectorItem"
      ( \x ->
          VoiceConnectorItem'
            Prelude.<$> (x Core..: "VoiceConnectorId")
            Prelude.<*> (x Core..: "Priority")
      )

instance Prelude.Hashable VoiceConnectorItem

instance Prelude.NFData VoiceConnectorItem

instance Core.ToJSON VoiceConnectorItem where
  toJSON VoiceConnectorItem' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("VoiceConnectorId" Core..= voiceConnectorId),
            Prelude.Just ("Priority" Core..= priority)
          ]
      )
