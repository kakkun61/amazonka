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
-- Module      : Network.AWS.FraudDetector.Types.ModelOutputConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.ModelOutputConfiguration where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types.ModelOutputDataFormat
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides the Amazon Sagemaker model output configuration.
--
-- /See:/ 'newModelOutputConfiguration' smart constructor.
data ModelOutputConfiguration = ModelOutputConfiguration'
  { -- | A map of JSON keys in response from SageMaker to the Amazon Fraud
    -- Detector variables.
    jsonKeyToVariableMap :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A map of CSV index values in the SageMaker response to the Amazon Fraud
    -- Detector variables.
    csvIndexToVariableMap :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The format of the model output configuration.
    format :: ModelOutputDataFormat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModelOutputConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jsonKeyToVariableMap', 'modelOutputConfiguration_jsonKeyToVariableMap' - A map of JSON keys in response from SageMaker to the Amazon Fraud
-- Detector variables.
--
-- 'csvIndexToVariableMap', 'modelOutputConfiguration_csvIndexToVariableMap' - A map of CSV index values in the SageMaker response to the Amazon Fraud
-- Detector variables.
--
-- 'format', 'modelOutputConfiguration_format' - The format of the model output configuration.
newModelOutputConfiguration ::
  -- | 'format'
  ModelOutputDataFormat ->
  ModelOutputConfiguration
newModelOutputConfiguration pFormat_ =
  ModelOutputConfiguration'
    { jsonKeyToVariableMap =
        Prelude.Nothing,
      csvIndexToVariableMap = Prelude.Nothing,
      format = pFormat_
    }

-- | A map of JSON keys in response from SageMaker to the Amazon Fraud
-- Detector variables.
modelOutputConfiguration_jsonKeyToVariableMap :: Lens.Lens' ModelOutputConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
modelOutputConfiguration_jsonKeyToVariableMap = Lens.lens (\ModelOutputConfiguration' {jsonKeyToVariableMap} -> jsonKeyToVariableMap) (\s@ModelOutputConfiguration' {} a -> s {jsonKeyToVariableMap = a} :: ModelOutputConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | A map of CSV index values in the SageMaker response to the Amazon Fraud
-- Detector variables.
modelOutputConfiguration_csvIndexToVariableMap :: Lens.Lens' ModelOutputConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
modelOutputConfiguration_csvIndexToVariableMap = Lens.lens (\ModelOutputConfiguration' {csvIndexToVariableMap} -> csvIndexToVariableMap) (\s@ModelOutputConfiguration' {} a -> s {csvIndexToVariableMap = a} :: ModelOutputConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The format of the model output configuration.
modelOutputConfiguration_format :: Lens.Lens' ModelOutputConfiguration ModelOutputDataFormat
modelOutputConfiguration_format = Lens.lens (\ModelOutputConfiguration' {format} -> format) (\s@ModelOutputConfiguration' {} a -> s {format = a} :: ModelOutputConfiguration)

instance Core.FromJSON ModelOutputConfiguration where
  parseJSON =
    Core.withObject
      "ModelOutputConfiguration"
      ( \x ->
          ModelOutputConfiguration'
            Prelude.<$> ( x Core..:? "jsonKeyToVariableMap"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "csvIndexToVariableMap"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..: "format")
      )

instance Prelude.Hashable ModelOutputConfiguration

instance Prelude.NFData ModelOutputConfiguration

instance Core.ToJSON ModelOutputConfiguration where
  toJSON ModelOutputConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("jsonKeyToVariableMap" Core..=)
              Prelude.<$> jsonKeyToVariableMap,
            ("csvIndexToVariableMap" Core..=)
              Prelude.<$> csvIndexToVariableMap,
            Prelude.Just ("format" Core..= format)
          ]
      )
