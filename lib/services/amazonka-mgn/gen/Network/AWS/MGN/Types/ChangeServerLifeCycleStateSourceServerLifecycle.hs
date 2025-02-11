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
-- Module      : Network.AWS.MGN.Types.ChangeServerLifeCycleStateSourceServerLifecycle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MGN.Types.ChangeServerLifeCycleStateSourceServerLifecycle where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types.ChangeServerLifeCycleStateSourceServerLifecycleState
import qualified Network.AWS.Prelude as Prelude

-- | The request to change the source server migration lifecycle state.
--
-- /See:/ 'newChangeServerLifeCycleStateSourceServerLifecycle' smart constructor.
data ChangeServerLifeCycleStateSourceServerLifecycle = ChangeServerLifeCycleStateSourceServerLifecycle'
  { -- | The request to change the source server migration lifecycle state.
    state :: ChangeServerLifeCycleStateSourceServerLifecycleState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ChangeServerLifeCycleStateSourceServerLifecycle' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'changeServerLifeCycleStateSourceServerLifecycle_state' - The request to change the source server migration lifecycle state.
newChangeServerLifeCycleStateSourceServerLifecycle ::
  -- | 'state'
  ChangeServerLifeCycleStateSourceServerLifecycleState ->
  ChangeServerLifeCycleStateSourceServerLifecycle
newChangeServerLifeCycleStateSourceServerLifecycle
  pState_ =
    ChangeServerLifeCycleStateSourceServerLifecycle'
      { state =
          pState_
      }

-- | The request to change the source server migration lifecycle state.
changeServerLifeCycleStateSourceServerLifecycle_state :: Lens.Lens' ChangeServerLifeCycleStateSourceServerLifecycle ChangeServerLifeCycleStateSourceServerLifecycleState
changeServerLifeCycleStateSourceServerLifecycle_state = Lens.lens (\ChangeServerLifeCycleStateSourceServerLifecycle' {state} -> state) (\s@ChangeServerLifeCycleStateSourceServerLifecycle' {} a -> s {state = a} :: ChangeServerLifeCycleStateSourceServerLifecycle)

instance
  Prelude.Hashable
    ChangeServerLifeCycleStateSourceServerLifecycle

instance
  Prelude.NFData
    ChangeServerLifeCycleStateSourceServerLifecycle

instance
  Core.ToJSON
    ChangeServerLifeCycleStateSourceServerLifecycle
  where
  toJSON
    ChangeServerLifeCycleStateSourceServerLifecycle' {..} =
      Core.object
        ( Prelude.catMaybes
            [Prelude.Just ("state" Core..= state)]
        )
