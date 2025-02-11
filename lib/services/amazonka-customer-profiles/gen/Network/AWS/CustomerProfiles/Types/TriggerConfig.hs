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
-- Module      : Network.AWS.CustomerProfiles.Types.TriggerConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CustomerProfiles.Types.TriggerConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types.TriggerProperties
import Network.AWS.CustomerProfiles.Types.TriggerType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The trigger settings that determine how and when Amazon AppFlow runs the
-- specified flow.
--
-- /See:/ 'newTriggerConfig' smart constructor.
data TriggerConfig = TriggerConfig'
  { -- | Specifies the configuration details of a schedule-triggered flow that
    -- you define. Currently, these settings only apply to the Scheduled
    -- trigger type.
    triggerProperties :: Prelude.Maybe TriggerProperties,
    -- | Specifies the type of flow trigger. It can be OnDemand, Scheduled, or
    -- Event.
    triggerType :: TriggerType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TriggerConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'triggerProperties', 'triggerConfig_triggerProperties' - Specifies the configuration details of a schedule-triggered flow that
-- you define. Currently, these settings only apply to the Scheduled
-- trigger type.
--
-- 'triggerType', 'triggerConfig_triggerType' - Specifies the type of flow trigger. It can be OnDemand, Scheduled, or
-- Event.
newTriggerConfig ::
  -- | 'triggerType'
  TriggerType ->
  TriggerConfig
newTriggerConfig pTriggerType_ =
  TriggerConfig'
    { triggerProperties = Prelude.Nothing,
      triggerType = pTriggerType_
    }

-- | Specifies the configuration details of a schedule-triggered flow that
-- you define. Currently, these settings only apply to the Scheduled
-- trigger type.
triggerConfig_triggerProperties :: Lens.Lens' TriggerConfig (Prelude.Maybe TriggerProperties)
triggerConfig_triggerProperties = Lens.lens (\TriggerConfig' {triggerProperties} -> triggerProperties) (\s@TriggerConfig' {} a -> s {triggerProperties = a} :: TriggerConfig)

-- | Specifies the type of flow trigger. It can be OnDemand, Scheduled, or
-- Event.
triggerConfig_triggerType :: Lens.Lens' TriggerConfig TriggerType
triggerConfig_triggerType = Lens.lens (\TriggerConfig' {triggerType} -> triggerType) (\s@TriggerConfig' {} a -> s {triggerType = a} :: TriggerConfig)

instance Prelude.Hashable TriggerConfig

instance Prelude.NFData TriggerConfig

instance Core.ToJSON TriggerConfig where
  toJSON TriggerConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("TriggerProperties" Core..=)
              Prelude.<$> triggerProperties,
            Prelude.Just ("TriggerType" Core..= triggerType)
          ]
      )
