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
-- Module      : Network.AWS.KafkaConnect.Types.ProvisionedCapacityUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.ProvisionedCapacityUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An update to a connector\'s fixed capacity.
--
-- /See:/ 'newProvisionedCapacityUpdate' smart constructor.
data ProvisionedCapacityUpdate = ProvisionedCapacityUpdate'
  { -- | The number of microcontroller units (MCUs) allocated to each connector
    -- worker. The valid values are 1,2,4,8.
    mcuCount :: Prelude.Natural,
    -- | The number of workers that are allocated to the connector.
    workerCount :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionedCapacityUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mcuCount', 'provisionedCapacityUpdate_mcuCount' - The number of microcontroller units (MCUs) allocated to each connector
-- worker. The valid values are 1,2,4,8.
--
-- 'workerCount', 'provisionedCapacityUpdate_workerCount' - The number of workers that are allocated to the connector.
newProvisionedCapacityUpdate ::
  -- | 'mcuCount'
  Prelude.Natural ->
  -- | 'workerCount'
  Prelude.Natural ->
  ProvisionedCapacityUpdate
newProvisionedCapacityUpdate pMcuCount_ pWorkerCount_ =
  ProvisionedCapacityUpdate'
    { mcuCount = pMcuCount_,
      workerCount = pWorkerCount_
    }

-- | The number of microcontroller units (MCUs) allocated to each connector
-- worker. The valid values are 1,2,4,8.
provisionedCapacityUpdate_mcuCount :: Lens.Lens' ProvisionedCapacityUpdate Prelude.Natural
provisionedCapacityUpdate_mcuCount = Lens.lens (\ProvisionedCapacityUpdate' {mcuCount} -> mcuCount) (\s@ProvisionedCapacityUpdate' {} a -> s {mcuCount = a} :: ProvisionedCapacityUpdate)

-- | The number of workers that are allocated to the connector.
provisionedCapacityUpdate_workerCount :: Lens.Lens' ProvisionedCapacityUpdate Prelude.Natural
provisionedCapacityUpdate_workerCount = Lens.lens (\ProvisionedCapacityUpdate' {workerCount} -> workerCount) (\s@ProvisionedCapacityUpdate' {} a -> s {workerCount = a} :: ProvisionedCapacityUpdate)

instance Prelude.Hashable ProvisionedCapacityUpdate

instance Prelude.NFData ProvisionedCapacityUpdate

instance Core.ToJSON ProvisionedCapacityUpdate where
  toJSON ProvisionedCapacityUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("mcuCount" Core..= mcuCount),
            Prelude.Just ("workerCount" Core..= workerCount)
          ]
      )
