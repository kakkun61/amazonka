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
-- Module      : Network.AWS.IoTEventsData.Types.ResetActionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEventsData.Types.ResetActionConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the configuration information of a reset action.
--
-- /See:/ 'newResetActionConfiguration' smart constructor.
data ResetActionConfiguration = ResetActionConfiguration'
  { -- | The note that you can leave when you reset the alarm.
    note :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetActionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'note', 'resetActionConfiguration_note' - The note that you can leave when you reset the alarm.
newResetActionConfiguration ::
  ResetActionConfiguration
newResetActionConfiguration =
  ResetActionConfiguration' {note = Prelude.Nothing}

-- | The note that you can leave when you reset the alarm.
resetActionConfiguration_note :: Lens.Lens' ResetActionConfiguration (Prelude.Maybe Prelude.Text)
resetActionConfiguration_note = Lens.lens (\ResetActionConfiguration' {note} -> note) (\s@ResetActionConfiguration' {} a -> s {note = a} :: ResetActionConfiguration)

instance Core.FromJSON ResetActionConfiguration where
  parseJSON =
    Core.withObject
      "ResetActionConfiguration"
      ( \x ->
          ResetActionConfiguration'
            Prelude.<$> (x Core..:? "note")
      )

instance Prelude.Hashable ResetActionConfiguration

instance Prelude.NFData ResetActionConfiguration
