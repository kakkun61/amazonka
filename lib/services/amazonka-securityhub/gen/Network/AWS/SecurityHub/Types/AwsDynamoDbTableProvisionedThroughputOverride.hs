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
-- Module      : Network.AWS.SecurityHub.Types.AwsDynamoDbTableProvisionedThroughputOverride
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsDynamoDbTableProvisionedThroughputOverride where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Replica-specific configuration for the provisioned throughput.
--
-- /See:/ 'newAwsDynamoDbTableProvisionedThroughputOverride' smart constructor.
data AwsDynamoDbTableProvisionedThroughputOverride = AwsDynamoDbTableProvisionedThroughputOverride'
  { -- | The read capacity units for the replica.
    readCapacityUnits :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsDynamoDbTableProvisionedThroughputOverride' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'readCapacityUnits', 'awsDynamoDbTableProvisionedThroughputOverride_readCapacityUnits' - The read capacity units for the replica.
newAwsDynamoDbTableProvisionedThroughputOverride ::
  AwsDynamoDbTableProvisionedThroughputOverride
newAwsDynamoDbTableProvisionedThroughputOverride =
  AwsDynamoDbTableProvisionedThroughputOverride'
    { readCapacityUnits =
        Prelude.Nothing
    }

-- | The read capacity units for the replica.
awsDynamoDbTableProvisionedThroughputOverride_readCapacityUnits :: Lens.Lens' AwsDynamoDbTableProvisionedThroughputOverride (Prelude.Maybe Prelude.Int)
awsDynamoDbTableProvisionedThroughputOverride_readCapacityUnits = Lens.lens (\AwsDynamoDbTableProvisionedThroughputOverride' {readCapacityUnits} -> readCapacityUnits) (\s@AwsDynamoDbTableProvisionedThroughputOverride' {} a -> s {readCapacityUnits = a} :: AwsDynamoDbTableProvisionedThroughputOverride)

instance
  Core.FromJSON
    AwsDynamoDbTableProvisionedThroughputOverride
  where
  parseJSON =
    Core.withObject
      "AwsDynamoDbTableProvisionedThroughputOverride"
      ( \x ->
          AwsDynamoDbTableProvisionedThroughputOverride'
            Prelude.<$> (x Core..:? "ReadCapacityUnits")
      )

instance
  Prelude.Hashable
    AwsDynamoDbTableProvisionedThroughputOverride

instance
  Prelude.NFData
    AwsDynamoDbTableProvisionedThroughputOverride

instance
  Core.ToJSON
    AwsDynamoDbTableProvisionedThroughputOverride
  where
  toJSON
    AwsDynamoDbTableProvisionedThroughputOverride' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("ReadCapacityUnits" Core..=)
                Prelude.<$> readCapacityUnits
            ]
        )
