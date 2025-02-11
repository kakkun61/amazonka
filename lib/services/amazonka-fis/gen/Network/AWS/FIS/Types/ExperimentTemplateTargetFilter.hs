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
-- Module      : Network.AWS.FIS.Types.ExperimentTemplateTargetFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FIS.Types.ExperimentTemplateTargetFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes a filter used for the target resources in an experiment
-- template.
--
-- /See:/ 'newExperimentTemplateTargetFilter' smart constructor.
data ExperimentTemplateTargetFilter = ExperimentTemplateTargetFilter'
  { -- | The attribute path for the filter.
    path :: Prelude.Maybe Prelude.Text,
    -- | The attribute values for the filter.
    values :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExperimentTemplateTargetFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'path', 'experimentTemplateTargetFilter_path' - The attribute path for the filter.
--
-- 'values', 'experimentTemplateTargetFilter_values' - The attribute values for the filter.
newExperimentTemplateTargetFilter ::
  ExperimentTemplateTargetFilter
newExperimentTemplateTargetFilter =
  ExperimentTemplateTargetFilter'
    { path =
        Prelude.Nothing,
      values = Prelude.Nothing
    }

-- | The attribute path for the filter.
experimentTemplateTargetFilter_path :: Lens.Lens' ExperimentTemplateTargetFilter (Prelude.Maybe Prelude.Text)
experimentTemplateTargetFilter_path = Lens.lens (\ExperimentTemplateTargetFilter' {path} -> path) (\s@ExperimentTemplateTargetFilter' {} a -> s {path = a} :: ExperimentTemplateTargetFilter)

-- | The attribute values for the filter.
experimentTemplateTargetFilter_values :: Lens.Lens' ExperimentTemplateTargetFilter (Prelude.Maybe [Prelude.Text])
experimentTemplateTargetFilter_values = Lens.lens (\ExperimentTemplateTargetFilter' {values} -> values) (\s@ExperimentTemplateTargetFilter' {} a -> s {values = a} :: ExperimentTemplateTargetFilter) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ExperimentTemplateTargetFilter where
  parseJSON =
    Core.withObject
      "ExperimentTemplateTargetFilter"
      ( \x ->
          ExperimentTemplateTargetFilter'
            Prelude.<$> (x Core..:? "path")
            Prelude.<*> (x Core..:? "values" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    ExperimentTemplateTargetFilter

instance
  Prelude.NFData
    ExperimentTemplateTargetFilter
