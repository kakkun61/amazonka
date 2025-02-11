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
-- Module      : Network.AWS.AppFlow.Types.EventBridgeDestinationProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.EventBridgeDestinationProperties where

import Network.AWS.AppFlow.Types.ErrorHandlingConfig
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The properties that are applied when Amazon EventBridge is being used as
-- a destination.
--
-- /See:/ 'newEventBridgeDestinationProperties' smart constructor.
data EventBridgeDestinationProperties = EventBridgeDestinationProperties'
  { errorHandlingConfig :: Prelude.Maybe ErrorHandlingConfig,
    -- | The object specified in the Amazon EventBridge flow destination.
    object' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EventBridgeDestinationProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'errorHandlingConfig', 'eventBridgeDestinationProperties_errorHandlingConfig' - Undocumented member.
--
-- 'object'', 'eventBridgeDestinationProperties_object' - The object specified in the Amazon EventBridge flow destination.
newEventBridgeDestinationProperties ::
  -- | 'object''
  Prelude.Text ->
  EventBridgeDestinationProperties
newEventBridgeDestinationProperties pObject_ =
  EventBridgeDestinationProperties'
    { errorHandlingConfig =
        Prelude.Nothing,
      object' = pObject_
    }

-- | Undocumented member.
eventBridgeDestinationProperties_errorHandlingConfig :: Lens.Lens' EventBridgeDestinationProperties (Prelude.Maybe ErrorHandlingConfig)
eventBridgeDestinationProperties_errorHandlingConfig = Lens.lens (\EventBridgeDestinationProperties' {errorHandlingConfig} -> errorHandlingConfig) (\s@EventBridgeDestinationProperties' {} a -> s {errorHandlingConfig = a} :: EventBridgeDestinationProperties)

-- | The object specified in the Amazon EventBridge flow destination.
eventBridgeDestinationProperties_object :: Lens.Lens' EventBridgeDestinationProperties Prelude.Text
eventBridgeDestinationProperties_object = Lens.lens (\EventBridgeDestinationProperties' {object'} -> object') (\s@EventBridgeDestinationProperties' {} a -> s {object' = a} :: EventBridgeDestinationProperties)

instance
  Core.FromJSON
    EventBridgeDestinationProperties
  where
  parseJSON =
    Core.withObject
      "EventBridgeDestinationProperties"
      ( \x ->
          EventBridgeDestinationProperties'
            Prelude.<$> (x Core..:? "errorHandlingConfig")
            Prelude.<*> (x Core..: "object")
      )

instance
  Prelude.Hashable
    EventBridgeDestinationProperties

instance
  Prelude.NFData
    EventBridgeDestinationProperties

instance Core.ToJSON EventBridgeDestinationProperties where
  toJSON EventBridgeDestinationProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("errorHandlingConfig" Core..=)
              Prelude.<$> errorHandlingConfig,
            Prelude.Just ("object" Core..= object')
          ]
      )
