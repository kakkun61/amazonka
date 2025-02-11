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
-- Module      : Network.AWS.KafkaConnect.Types.ProvisionedCapacityDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.ProvisionedCapacityDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The description of a connector\'s provisioned capacity.
--
-- /See:/ 'newProvisionedCapacityDescription' smart constructor.
data ProvisionedCapacityDescription = ProvisionedCapacityDescription'
  { -- | The number of workers that are allocated to the connector.
    workerCount :: Prelude.Maybe Prelude.Int,
    -- | The number of microcontroller units (MCUs) allocated to each connector
    -- worker. The valid values are 1,2,4,8.
    mcuCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionedCapacityDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'workerCount', 'provisionedCapacityDescription_workerCount' - The number of workers that are allocated to the connector.
--
-- 'mcuCount', 'provisionedCapacityDescription_mcuCount' - The number of microcontroller units (MCUs) allocated to each connector
-- worker. The valid values are 1,2,4,8.
newProvisionedCapacityDescription ::
  ProvisionedCapacityDescription
newProvisionedCapacityDescription =
  ProvisionedCapacityDescription'
    { workerCount =
        Prelude.Nothing,
      mcuCount = Prelude.Nothing
    }

-- | The number of workers that are allocated to the connector.
provisionedCapacityDescription_workerCount :: Lens.Lens' ProvisionedCapacityDescription (Prelude.Maybe Prelude.Int)
provisionedCapacityDescription_workerCount = Lens.lens (\ProvisionedCapacityDescription' {workerCount} -> workerCount) (\s@ProvisionedCapacityDescription' {} a -> s {workerCount = a} :: ProvisionedCapacityDescription)

-- | The number of microcontroller units (MCUs) allocated to each connector
-- worker. The valid values are 1,2,4,8.
provisionedCapacityDescription_mcuCount :: Lens.Lens' ProvisionedCapacityDescription (Prelude.Maybe Prelude.Int)
provisionedCapacityDescription_mcuCount = Lens.lens (\ProvisionedCapacityDescription' {mcuCount} -> mcuCount) (\s@ProvisionedCapacityDescription' {} a -> s {mcuCount = a} :: ProvisionedCapacityDescription)

instance Core.FromJSON ProvisionedCapacityDescription where
  parseJSON =
    Core.withObject
      "ProvisionedCapacityDescription"
      ( \x ->
          ProvisionedCapacityDescription'
            Prelude.<$> (x Core..:? "workerCount")
            Prelude.<*> (x Core..:? "mcuCount")
      )

instance
  Prelude.Hashable
    ProvisionedCapacityDescription

instance
  Prelude.NFData
    ProvisionedCapacityDescription
