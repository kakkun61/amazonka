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
-- Module      : Network.AWS.Kafka.Types.ClusterOperationStepInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.ClusterOperationStepInfo where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | State information about the operation step.
--
-- /See:/ 'newClusterOperationStepInfo' smart constructor.
data ClusterOperationStepInfo = ClusterOperationStepInfo'
  { -- | The steps current status.
    stepStatus :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClusterOperationStepInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stepStatus', 'clusterOperationStepInfo_stepStatus' - The steps current status.
newClusterOperationStepInfo ::
  ClusterOperationStepInfo
newClusterOperationStepInfo =
  ClusterOperationStepInfo'
    { stepStatus =
        Prelude.Nothing
    }

-- | The steps current status.
clusterOperationStepInfo_stepStatus :: Lens.Lens' ClusterOperationStepInfo (Prelude.Maybe Prelude.Text)
clusterOperationStepInfo_stepStatus = Lens.lens (\ClusterOperationStepInfo' {stepStatus} -> stepStatus) (\s@ClusterOperationStepInfo' {} a -> s {stepStatus = a} :: ClusterOperationStepInfo)

instance Core.FromJSON ClusterOperationStepInfo where
  parseJSON =
    Core.withObject
      "ClusterOperationStepInfo"
      ( \x ->
          ClusterOperationStepInfo'
            Prelude.<$> (x Core..:? "stepStatus")
      )

instance Prelude.Hashable ClusterOperationStepInfo

instance Prelude.NFData ClusterOperationStepInfo
