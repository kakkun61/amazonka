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
-- Module      : Network.AWS.KafkaConnect.Types.CapacityUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.CapacityUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.KafkaConnect.Types.AutoScalingUpdate
import Network.AWS.KafkaConnect.Types.ProvisionedCapacityUpdate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The target capacity for the connector. The capacity can be auto scaled
-- or provisioned.
--
-- /See:/ 'newCapacityUpdate' smart constructor.
data CapacityUpdate = CapacityUpdate'
  { -- | The target auto scaling setting.
    autoScaling :: Prelude.Maybe AutoScalingUpdate,
    -- | The target settings for provisioned capacity.
    provisionedCapacity :: Prelude.Maybe ProvisionedCapacityUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CapacityUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoScaling', 'capacityUpdate_autoScaling' - The target auto scaling setting.
--
-- 'provisionedCapacity', 'capacityUpdate_provisionedCapacity' - The target settings for provisioned capacity.
newCapacityUpdate ::
  CapacityUpdate
newCapacityUpdate =
  CapacityUpdate'
    { autoScaling = Prelude.Nothing,
      provisionedCapacity = Prelude.Nothing
    }

-- | The target auto scaling setting.
capacityUpdate_autoScaling :: Lens.Lens' CapacityUpdate (Prelude.Maybe AutoScalingUpdate)
capacityUpdate_autoScaling = Lens.lens (\CapacityUpdate' {autoScaling} -> autoScaling) (\s@CapacityUpdate' {} a -> s {autoScaling = a} :: CapacityUpdate)

-- | The target settings for provisioned capacity.
capacityUpdate_provisionedCapacity :: Lens.Lens' CapacityUpdate (Prelude.Maybe ProvisionedCapacityUpdate)
capacityUpdate_provisionedCapacity = Lens.lens (\CapacityUpdate' {provisionedCapacity} -> provisionedCapacity) (\s@CapacityUpdate' {} a -> s {provisionedCapacity = a} :: CapacityUpdate)

instance Prelude.Hashable CapacityUpdate

instance Prelude.NFData CapacityUpdate

instance Core.ToJSON CapacityUpdate where
  toJSON CapacityUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("autoScaling" Core..=) Prelude.<$> autoScaling,
            ("provisionedCapacity" Core..=)
              Prelude.<$> provisionedCapacity
          ]
      )
