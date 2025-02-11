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
-- Module      : Network.AWS.IoTEvents.Types.TransitionEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.TransitionEvent where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.Action
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the actions performed and the next state entered when a
-- @condition@ evaluates to TRUE.
--
-- /See:/ 'newTransitionEvent' smart constructor.
data TransitionEvent = TransitionEvent'
  { -- | The actions to be performed.
    actions :: Prelude.Maybe [Action],
    -- | The name of the transition event.
    eventName :: Prelude.Text,
    -- | Required. A Boolean expression that when TRUE causes the actions to be
    -- performed and the @nextState@ to be entered.
    condition :: Prelude.Text,
    -- | The next state to enter.
    nextState :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TransitionEvent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actions', 'transitionEvent_actions' - The actions to be performed.
--
-- 'eventName', 'transitionEvent_eventName' - The name of the transition event.
--
-- 'condition', 'transitionEvent_condition' - Required. A Boolean expression that when TRUE causes the actions to be
-- performed and the @nextState@ to be entered.
--
-- 'nextState', 'transitionEvent_nextState' - The next state to enter.
newTransitionEvent ::
  -- | 'eventName'
  Prelude.Text ->
  -- | 'condition'
  Prelude.Text ->
  -- | 'nextState'
  Prelude.Text ->
  TransitionEvent
newTransitionEvent
  pEventName_
  pCondition_
  pNextState_ =
    TransitionEvent'
      { actions = Prelude.Nothing,
        eventName = pEventName_,
        condition = pCondition_,
        nextState = pNextState_
      }

-- | The actions to be performed.
transitionEvent_actions :: Lens.Lens' TransitionEvent (Prelude.Maybe [Action])
transitionEvent_actions = Lens.lens (\TransitionEvent' {actions} -> actions) (\s@TransitionEvent' {} a -> s {actions = a} :: TransitionEvent) Prelude.. Lens.mapping Lens.coerced

-- | The name of the transition event.
transitionEvent_eventName :: Lens.Lens' TransitionEvent Prelude.Text
transitionEvent_eventName = Lens.lens (\TransitionEvent' {eventName} -> eventName) (\s@TransitionEvent' {} a -> s {eventName = a} :: TransitionEvent)

-- | Required. A Boolean expression that when TRUE causes the actions to be
-- performed and the @nextState@ to be entered.
transitionEvent_condition :: Lens.Lens' TransitionEvent Prelude.Text
transitionEvent_condition = Lens.lens (\TransitionEvent' {condition} -> condition) (\s@TransitionEvent' {} a -> s {condition = a} :: TransitionEvent)

-- | The next state to enter.
transitionEvent_nextState :: Lens.Lens' TransitionEvent Prelude.Text
transitionEvent_nextState = Lens.lens (\TransitionEvent' {nextState} -> nextState) (\s@TransitionEvent' {} a -> s {nextState = a} :: TransitionEvent)

instance Core.FromJSON TransitionEvent where
  parseJSON =
    Core.withObject
      "TransitionEvent"
      ( \x ->
          TransitionEvent'
            Prelude.<$> (x Core..:? "actions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "eventName")
            Prelude.<*> (x Core..: "condition")
            Prelude.<*> (x Core..: "nextState")
      )

instance Prelude.Hashable TransitionEvent

instance Prelude.NFData TransitionEvent

instance Core.ToJSON TransitionEvent where
  toJSON TransitionEvent' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("actions" Core..=) Prelude.<$> actions,
            Prelude.Just ("eventName" Core..= eventName),
            Prelude.Just ("condition" Core..= condition),
            Prelude.Just ("nextState" Core..= nextState)
          ]
      )
