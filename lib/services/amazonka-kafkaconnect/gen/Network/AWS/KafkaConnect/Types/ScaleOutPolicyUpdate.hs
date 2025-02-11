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
-- Module      : Network.AWS.KafkaConnect.Types.ScaleOutPolicyUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KafkaConnect.Types.ScaleOutPolicyUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An update to the connector\'s scale-out policy.
--
-- /See:/ 'newScaleOutPolicyUpdate' smart constructor.
data ScaleOutPolicyUpdate = ScaleOutPolicyUpdate'
  { -- | The target CPU utilization percentage threshold at which you want
    -- connector scale out to be triggered.
    cpuUtilizationPercentage :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ScaleOutPolicyUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cpuUtilizationPercentage', 'scaleOutPolicyUpdate_cpuUtilizationPercentage' - The target CPU utilization percentage threshold at which you want
-- connector scale out to be triggered.
newScaleOutPolicyUpdate ::
  -- | 'cpuUtilizationPercentage'
  Prelude.Natural ->
  ScaleOutPolicyUpdate
newScaleOutPolicyUpdate pCpuUtilizationPercentage_ =
  ScaleOutPolicyUpdate'
    { cpuUtilizationPercentage =
        pCpuUtilizationPercentage_
    }

-- | The target CPU utilization percentage threshold at which you want
-- connector scale out to be triggered.
scaleOutPolicyUpdate_cpuUtilizationPercentage :: Lens.Lens' ScaleOutPolicyUpdate Prelude.Natural
scaleOutPolicyUpdate_cpuUtilizationPercentage = Lens.lens (\ScaleOutPolicyUpdate' {cpuUtilizationPercentage} -> cpuUtilizationPercentage) (\s@ScaleOutPolicyUpdate' {} a -> s {cpuUtilizationPercentage = a} :: ScaleOutPolicyUpdate)

instance Prelude.Hashable ScaleOutPolicyUpdate

instance Prelude.NFData ScaleOutPolicyUpdate

instance Core.ToJSON ScaleOutPolicyUpdate where
  toJSON ScaleOutPolicyUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "cpuUtilizationPercentage"
                  Core..= cpuUtilizationPercentage
              )
          ]
      )
