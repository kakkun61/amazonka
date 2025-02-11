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
-- Module      : Network.AWS.ElasticInference.Types.ElasticInferenceAcceleratorHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticInference.Types.ElasticInferenceAcceleratorHealth where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The health details of an Elastic Inference Accelerator.
--
-- /See:/ 'newElasticInferenceAcceleratorHealth' smart constructor.
data ElasticInferenceAcceleratorHealth = ElasticInferenceAcceleratorHealth'
  { -- | The health status of the Elastic Inference Accelerator.
    status :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ElasticInferenceAcceleratorHealth' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'elasticInferenceAcceleratorHealth_status' - The health status of the Elastic Inference Accelerator.
newElasticInferenceAcceleratorHealth ::
  ElasticInferenceAcceleratorHealth
newElasticInferenceAcceleratorHealth =
  ElasticInferenceAcceleratorHealth'
    { status =
        Prelude.Nothing
    }

-- | The health status of the Elastic Inference Accelerator.
elasticInferenceAcceleratorHealth_status :: Lens.Lens' ElasticInferenceAcceleratorHealth (Prelude.Maybe Prelude.Text)
elasticInferenceAcceleratorHealth_status = Lens.lens (\ElasticInferenceAcceleratorHealth' {status} -> status) (\s@ElasticInferenceAcceleratorHealth' {} a -> s {status = a} :: ElasticInferenceAcceleratorHealth)

instance
  Core.FromJSON
    ElasticInferenceAcceleratorHealth
  where
  parseJSON =
    Core.withObject
      "ElasticInferenceAcceleratorHealth"
      ( \x ->
          ElasticInferenceAcceleratorHealth'
            Prelude.<$> (x Core..:? "status")
      )

instance
  Prelude.Hashable
    ElasticInferenceAcceleratorHealth

instance
  Prelude.NFData
    ElasticInferenceAcceleratorHealth
