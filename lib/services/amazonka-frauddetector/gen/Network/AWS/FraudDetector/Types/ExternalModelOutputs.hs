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
-- Module      : Network.AWS.FraudDetector.Types.ExternalModelOutputs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.ExternalModelOutputs where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types.ExternalModelSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The fraud prediction scores from Amazon SageMaker model.
--
-- /See:/ 'newExternalModelOutputs' smart constructor.
data ExternalModelOutputs = ExternalModelOutputs'
  { -- | The Amazon SageMaker model.
    externalModel :: Prelude.Maybe ExternalModelSummary,
    -- | The fraud prediction scores from Amazon SageMaker model.
    outputs :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExternalModelOutputs' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'externalModel', 'externalModelOutputs_externalModel' - The Amazon SageMaker model.
--
-- 'outputs', 'externalModelOutputs_outputs' - The fraud prediction scores from Amazon SageMaker model.
newExternalModelOutputs ::
  ExternalModelOutputs
newExternalModelOutputs =
  ExternalModelOutputs'
    { externalModel =
        Prelude.Nothing,
      outputs = Prelude.Nothing
    }

-- | The Amazon SageMaker model.
externalModelOutputs_externalModel :: Lens.Lens' ExternalModelOutputs (Prelude.Maybe ExternalModelSummary)
externalModelOutputs_externalModel = Lens.lens (\ExternalModelOutputs' {externalModel} -> externalModel) (\s@ExternalModelOutputs' {} a -> s {externalModel = a} :: ExternalModelOutputs)

-- | The fraud prediction scores from Amazon SageMaker model.
externalModelOutputs_outputs :: Lens.Lens' ExternalModelOutputs (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
externalModelOutputs_outputs = Lens.lens (\ExternalModelOutputs' {outputs} -> outputs) (\s@ExternalModelOutputs' {} a -> s {outputs = a} :: ExternalModelOutputs) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ExternalModelOutputs where
  parseJSON =
    Core.withObject
      "ExternalModelOutputs"
      ( \x ->
          ExternalModelOutputs'
            Prelude.<$> (x Core..:? "externalModel")
            Prelude.<*> (x Core..:? "outputs" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ExternalModelOutputs

instance Prelude.NFData ExternalModelOutputs
