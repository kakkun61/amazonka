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
-- Module      : Network.AWS.Chime.Types.ConversationRetentionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.ConversationRetentionSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The retention settings that determine how long to retain conversation
-- messages for an Amazon Chime Enterprise account.
--
-- /See:/ 'newConversationRetentionSettings' smart constructor.
data ConversationRetentionSettings = ConversationRetentionSettings'
  { -- | The number of days for which to retain conversation messages.
    retentionDays :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConversationRetentionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'retentionDays', 'conversationRetentionSettings_retentionDays' - The number of days for which to retain conversation messages.
newConversationRetentionSettings ::
  ConversationRetentionSettings
newConversationRetentionSettings =
  ConversationRetentionSettings'
    { retentionDays =
        Prelude.Nothing
    }

-- | The number of days for which to retain conversation messages.
conversationRetentionSettings_retentionDays :: Lens.Lens' ConversationRetentionSettings (Prelude.Maybe Prelude.Natural)
conversationRetentionSettings_retentionDays = Lens.lens (\ConversationRetentionSettings' {retentionDays} -> retentionDays) (\s@ConversationRetentionSettings' {} a -> s {retentionDays = a} :: ConversationRetentionSettings)

instance Core.FromJSON ConversationRetentionSettings where
  parseJSON =
    Core.withObject
      "ConversationRetentionSettings"
      ( \x ->
          ConversationRetentionSettings'
            Prelude.<$> (x Core..:? "RetentionDays")
      )

instance
  Prelude.Hashable
    ConversationRetentionSettings

instance Prelude.NFData ConversationRetentionSettings

instance Core.ToJSON ConversationRetentionSettings where
  toJSON ConversationRetentionSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("RetentionDays" Core..=)
              Prelude.<$> retentionDays
          ]
      )
