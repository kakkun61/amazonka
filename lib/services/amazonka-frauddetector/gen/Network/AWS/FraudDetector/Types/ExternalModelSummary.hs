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
-- Module      : Network.AWS.FraudDetector.Types.ExternalModelSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.ExternalModelSummary where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types.ModelSource
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The Amazon SageMaker model.
--
-- /See:/ 'newExternalModelSummary' smart constructor.
data ExternalModelSummary = ExternalModelSummary'
  { -- | The endpoint of the Amazon SageMaker model.
    modelEndpoint :: Prelude.Maybe Prelude.Text,
    -- | The source of the model.
    modelSource :: Prelude.Maybe ModelSource
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExternalModelSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'modelEndpoint', 'externalModelSummary_modelEndpoint' - The endpoint of the Amazon SageMaker model.
--
-- 'modelSource', 'externalModelSummary_modelSource' - The source of the model.
newExternalModelSummary ::
  ExternalModelSummary
newExternalModelSummary =
  ExternalModelSummary'
    { modelEndpoint =
        Prelude.Nothing,
      modelSource = Prelude.Nothing
    }

-- | The endpoint of the Amazon SageMaker model.
externalModelSummary_modelEndpoint :: Lens.Lens' ExternalModelSummary (Prelude.Maybe Prelude.Text)
externalModelSummary_modelEndpoint = Lens.lens (\ExternalModelSummary' {modelEndpoint} -> modelEndpoint) (\s@ExternalModelSummary' {} a -> s {modelEndpoint = a} :: ExternalModelSummary)

-- | The source of the model.
externalModelSummary_modelSource :: Lens.Lens' ExternalModelSummary (Prelude.Maybe ModelSource)
externalModelSummary_modelSource = Lens.lens (\ExternalModelSummary' {modelSource} -> modelSource) (\s@ExternalModelSummary' {} a -> s {modelSource = a} :: ExternalModelSummary)

instance Core.FromJSON ExternalModelSummary where
  parseJSON =
    Core.withObject
      "ExternalModelSummary"
      ( \x ->
          ExternalModelSummary'
            Prelude.<$> (x Core..:? "modelEndpoint")
            Prelude.<*> (x Core..:? "modelSource")
      )

instance Prelude.Hashable ExternalModelSummary

instance Prelude.NFData ExternalModelSummary
