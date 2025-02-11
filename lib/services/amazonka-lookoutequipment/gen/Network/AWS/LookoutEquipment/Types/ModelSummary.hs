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
-- Module      : Network.AWS.LookoutEquipment.Types.ModelSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutEquipment.Types.ModelSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LookoutEquipment.Types.ModelStatus
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the specified ML model, including dataset and
-- model names and ARNs, as well as status.
--
-- /See:/ 'newModelSummary' smart constructor.
data ModelSummary = ModelSummary'
  { -- | Indicates the status of the ML model.
    status :: Prelude.Maybe ModelStatus,
    -- | The Amazon Resource Name (ARN) of the dataset used to create the model.
    datasetArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the ML model.
    modelArn :: Prelude.Maybe Prelude.Text,
    -- | The time at which the specific model was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The name of the ML model.
    modelName :: Prelude.Maybe Prelude.Text,
    -- | The name of the dataset being used for the ML model.
    datasetName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'modelSummary_status' - Indicates the status of the ML model.
--
-- 'datasetArn', 'modelSummary_datasetArn' - The Amazon Resource Name (ARN) of the dataset used to create the model.
--
-- 'modelArn', 'modelSummary_modelArn' - The Amazon Resource Name (ARN) of the ML model.
--
-- 'createdAt', 'modelSummary_createdAt' - The time at which the specific model was created.
--
-- 'modelName', 'modelSummary_modelName' - The name of the ML model.
--
-- 'datasetName', 'modelSummary_datasetName' - The name of the dataset being used for the ML model.
newModelSummary ::
  ModelSummary
newModelSummary =
  ModelSummary'
    { status = Prelude.Nothing,
      datasetArn = Prelude.Nothing,
      modelArn = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      modelName = Prelude.Nothing,
      datasetName = Prelude.Nothing
    }

-- | Indicates the status of the ML model.
modelSummary_status :: Lens.Lens' ModelSummary (Prelude.Maybe ModelStatus)
modelSummary_status = Lens.lens (\ModelSummary' {status} -> status) (\s@ModelSummary' {} a -> s {status = a} :: ModelSummary)

-- | The Amazon Resource Name (ARN) of the dataset used to create the model.
modelSummary_datasetArn :: Lens.Lens' ModelSummary (Prelude.Maybe Prelude.Text)
modelSummary_datasetArn = Lens.lens (\ModelSummary' {datasetArn} -> datasetArn) (\s@ModelSummary' {} a -> s {datasetArn = a} :: ModelSummary)

-- | The Amazon Resource Name (ARN) of the ML model.
modelSummary_modelArn :: Lens.Lens' ModelSummary (Prelude.Maybe Prelude.Text)
modelSummary_modelArn = Lens.lens (\ModelSummary' {modelArn} -> modelArn) (\s@ModelSummary' {} a -> s {modelArn = a} :: ModelSummary)

-- | The time at which the specific model was created.
modelSummary_createdAt :: Lens.Lens' ModelSummary (Prelude.Maybe Prelude.UTCTime)
modelSummary_createdAt = Lens.lens (\ModelSummary' {createdAt} -> createdAt) (\s@ModelSummary' {} a -> s {createdAt = a} :: ModelSummary) Prelude.. Lens.mapping Core._Time

-- | The name of the ML model.
modelSummary_modelName :: Lens.Lens' ModelSummary (Prelude.Maybe Prelude.Text)
modelSummary_modelName = Lens.lens (\ModelSummary' {modelName} -> modelName) (\s@ModelSummary' {} a -> s {modelName = a} :: ModelSummary)

-- | The name of the dataset being used for the ML model.
modelSummary_datasetName :: Lens.Lens' ModelSummary (Prelude.Maybe Prelude.Text)
modelSummary_datasetName = Lens.lens (\ModelSummary' {datasetName} -> datasetName) (\s@ModelSummary' {} a -> s {datasetName = a} :: ModelSummary)

instance Core.FromJSON ModelSummary where
  parseJSON =
    Core.withObject
      "ModelSummary"
      ( \x ->
          ModelSummary'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "DatasetArn")
            Prelude.<*> (x Core..:? "ModelArn")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "ModelName")
            Prelude.<*> (x Core..:? "DatasetName")
      )

instance Prelude.Hashable ModelSummary

instance Prelude.NFData ModelSummary
