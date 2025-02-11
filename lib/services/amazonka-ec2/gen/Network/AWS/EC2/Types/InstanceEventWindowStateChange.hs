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
-- Module      : Network.AWS.EC2.Types.InstanceEventWindowStateChange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.InstanceEventWindowStateChange where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import Network.AWS.EC2.Types.InstanceEventWindowState
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The state of the event window.
--
-- /See:/ 'newInstanceEventWindowStateChange' smart constructor.
data InstanceEventWindowStateChange = InstanceEventWindowStateChange'
  { -- | The current state of the event window.
    state :: Prelude.Maybe InstanceEventWindowState,
    -- | The ID of the event window.
    instanceEventWindowId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceEventWindowStateChange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'instanceEventWindowStateChange_state' - The current state of the event window.
--
-- 'instanceEventWindowId', 'instanceEventWindowStateChange_instanceEventWindowId' - The ID of the event window.
newInstanceEventWindowStateChange ::
  InstanceEventWindowStateChange
newInstanceEventWindowStateChange =
  InstanceEventWindowStateChange'
    { state =
        Prelude.Nothing,
      instanceEventWindowId = Prelude.Nothing
    }

-- | The current state of the event window.
instanceEventWindowStateChange_state :: Lens.Lens' InstanceEventWindowStateChange (Prelude.Maybe InstanceEventWindowState)
instanceEventWindowStateChange_state = Lens.lens (\InstanceEventWindowStateChange' {state} -> state) (\s@InstanceEventWindowStateChange' {} a -> s {state = a} :: InstanceEventWindowStateChange)

-- | The ID of the event window.
instanceEventWindowStateChange_instanceEventWindowId :: Lens.Lens' InstanceEventWindowStateChange (Prelude.Maybe Prelude.Text)
instanceEventWindowStateChange_instanceEventWindowId = Lens.lens (\InstanceEventWindowStateChange' {instanceEventWindowId} -> instanceEventWindowId) (\s@InstanceEventWindowStateChange' {} a -> s {instanceEventWindowId = a} :: InstanceEventWindowStateChange)

instance Core.FromXML InstanceEventWindowStateChange where
  parseXML x =
    InstanceEventWindowStateChange'
      Prelude.<$> (x Core..@? "state")
      Prelude.<*> (x Core..@? "instanceEventWindowId")

instance
  Prelude.Hashable
    InstanceEventWindowStateChange

instance
  Prelude.NFData
    InstanceEventWindowStateChange
