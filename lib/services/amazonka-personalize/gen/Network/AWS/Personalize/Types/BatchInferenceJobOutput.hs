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
-- Module      : Network.AWS.Personalize.Types.BatchInferenceJobOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Personalize.Types.BatchInferenceJobOutput where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Personalize.Types.S3DataConfig
import qualified Network.AWS.Prelude as Prelude

-- | The output configuration parameters of a batch inference job.
--
-- /See:/ 'newBatchInferenceJobOutput' smart constructor.
data BatchInferenceJobOutput = BatchInferenceJobOutput'
  { -- | Information on the Amazon S3 bucket in which the batch inference job\'s
    -- output is stored.
    s3DataDestination :: S3DataConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchInferenceJobOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3DataDestination', 'batchInferenceJobOutput_s3DataDestination' - Information on the Amazon S3 bucket in which the batch inference job\'s
-- output is stored.
newBatchInferenceJobOutput ::
  -- | 's3DataDestination'
  S3DataConfig ->
  BatchInferenceJobOutput
newBatchInferenceJobOutput pS3DataDestination_ =
  BatchInferenceJobOutput'
    { s3DataDestination =
        pS3DataDestination_
    }

-- | Information on the Amazon S3 bucket in which the batch inference job\'s
-- output is stored.
batchInferenceJobOutput_s3DataDestination :: Lens.Lens' BatchInferenceJobOutput S3DataConfig
batchInferenceJobOutput_s3DataDestination = Lens.lens (\BatchInferenceJobOutput' {s3DataDestination} -> s3DataDestination) (\s@BatchInferenceJobOutput' {} a -> s {s3DataDestination = a} :: BatchInferenceJobOutput)

instance Core.FromJSON BatchInferenceJobOutput where
  parseJSON =
    Core.withObject
      "BatchInferenceJobOutput"
      ( \x ->
          BatchInferenceJobOutput'
            Prelude.<$> (x Core..: "s3DataDestination")
      )

instance Prelude.Hashable BatchInferenceJobOutput

instance Prelude.NFData BatchInferenceJobOutput

instance Core.ToJSON BatchInferenceJobOutput where
  toJSON BatchInferenceJobOutput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("s3DataDestination" Core..= s3DataDestination)
          ]
      )
