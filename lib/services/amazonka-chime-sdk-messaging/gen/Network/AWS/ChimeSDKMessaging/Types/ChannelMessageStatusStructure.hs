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
-- Module      : Network.AWS.ChimeSDKMessaging.Types.ChannelMessageStatusStructure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ChimeSDKMessaging.Types.ChannelMessageStatusStructure where

import Network.AWS.ChimeSDKMessaging.Types.ChannelMessageStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Stores information about a message status.
--
-- /See:/ 'newChannelMessageStatusStructure' smart constructor.
data ChannelMessageStatusStructure = ChannelMessageStatusStructure'
  { -- | The message status value.
    value :: Prelude.Maybe ChannelMessageStatus,
    -- | Contains more details about the messasge status.
    detail :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChannelMessageStatusStructure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'channelMessageStatusStructure_value' - The message status value.
--
-- 'detail', 'channelMessageStatusStructure_detail' - Contains more details about the messasge status.
newChannelMessageStatusStructure ::
  ChannelMessageStatusStructure
newChannelMessageStatusStructure =
  ChannelMessageStatusStructure'
    { value =
        Prelude.Nothing,
      detail = Prelude.Nothing
    }

-- | The message status value.
channelMessageStatusStructure_value :: Lens.Lens' ChannelMessageStatusStructure (Prelude.Maybe ChannelMessageStatus)
channelMessageStatusStructure_value = Lens.lens (\ChannelMessageStatusStructure' {value} -> value) (\s@ChannelMessageStatusStructure' {} a -> s {value = a} :: ChannelMessageStatusStructure)

-- | Contains more details about the messasge status.
channelMessageStatusStructure_detail :: Lens.Lens' ChannelMessageStatusStructure (Prelude.Maybe Prelude.Text)
channelMessageStatusStructure_detail = Lens.lens (\ChannelMessageStatusStructure' {detail} -> detail) (\s@ChannelMessageStatusStructure' {} a -> s {detail = a} :: ChannelMessageStatusStructure)

instance Core.FromJSON ChannelMessageStatusStructure where
  parseJSON =
    Core.withObject
      "ChannelMessageStatusStructure"
      ( \x ->
          ChannelMessageStatusStructure'
            Prelude.<$> (x Core..:? "Value")
            Prelude.<*> (x Core..:? "Detail")
      )

instance
  Prelude.Hashable
    ChannelMessageStatusStructure

instance Prelude.NFData ChannelMessageStatusStructure
