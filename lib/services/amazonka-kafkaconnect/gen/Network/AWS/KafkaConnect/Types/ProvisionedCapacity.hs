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
-- Module      : Network.AWS.KafkaConnect.Types.ProvisionedCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.ProvisionedCapacity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details about a connector\'s provisioned capacity.
--
-- /See:/ 'newProvisionedCapacity' smart constructor.
data ProvisionedCapacity = ProvisionedCapacity'
  { -- | The number of microcontroller units (MCUs) allocated to each connector
    -- worker. The valid values are 1,2,4,8.
    mcuCount :: Prelude.Natural,
    -- | The number of workers that are allocated to the connector.
    workerCount :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionedCapacity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mcuCount', 'provisionedCapacity_mcuCount' - The number of microcontroller units (MCUs) allocated to each connector
-- worker. The valid values are 1,2,4,8.
--
-- 'workerCount', 'provisionedCapacity_workerCount' - The number of workers that are allocated to the connector.
newProvisionedCapacity ::
  -- | 'mcuCount'
  Prelude.Natural ->
  -- | 'workerCount'
  Prelude.Natural ->
  ProvisionedCapacity
newProvisionedCapacity pMcuCount_ pWorkerCount_ =
  ProvisionedCapacity'
    { mcuCount = pMcuCount_,
      workerCount = pWorkerCount_
    }

-- | The number of microcontroller units (MCUs) allocated to each connector
-- worker. The valid values are 1,2,4,8.
provisionedCapacity_mcuCount :: Lens.Lens' ProvisionedCapacity Prelude.Natural
provisionedCapacity_mcuCount = Lens.lens (\ProvisionedCapacity' {mcuCount} -> mcuCount) (\s@ProvisionedCapacity' {} a -> s {mcuCount = a} :: ProvisionedCapacity)

-- | The number of workers that are allocated to the connector.
provisionedCapacity_workerCount :: Lens.Lens' ProvisionedCapacity Prelude.Natural
provisionedCapacity_workerCount = Lens.lens (\ProvisionedCapacity' {workerCount} -> workerCount) (\s@ProvisionedCapacity' {} a -> s {workerCount = a} :: ProvisionedCapacity)

instance Prelude.Hashable ProvisionedCapacity

instance Prelude.NFData ProvisionedCapacity

instance Core.ToJSON ProvisionedCapacity where
  toJSON ProvisionedCapacity' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("mcuCount" Core..= mcuCount),
            Prelude.Just ("workerCount" Core..= workerCount)
          ]
      )
