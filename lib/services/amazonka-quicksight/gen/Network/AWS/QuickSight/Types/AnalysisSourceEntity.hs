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
-- Module      : Network.AWS.QuickSight.Types.AnalysisSourceEntity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.AnalysisSourceEntity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.AnalysisSourceTemplate

-- | The source entity of an analysis.
--
-- /See:/ 'newAnalysisSourceEntity' smart constructor.
data AnalysisSourceEntity = AnalysisSourceEntity'
  { -- | The source template for the source entity of the analysis.
    sourceTemplate :: Prelude.Maybe AnalysisSourceTemplate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnalysisSourceEntity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceTemplate', 'analysisSourceEntity_sourceTemplate' - The source template for the source entity of the analysis.
newAnalysisSourceEntity ::
  AnalysisSourceEntity
newAnalysisSourceEntity =
  AnalysisSourceEntity'
    { sourceTemplate =
        Prelude.Nothing
    }

-- | The source template for the source entity of the analysis.
analysisSourceEntity_sourceTemplate :: Lens.Lens' AnalysisSourceEntity (Prelude.Maybe AnalysisSourceTemplate)
analysisSourceEntity_sourceTemplate = Lens.lens (\AnalysisSourceEntity' {sourceTemplate} -> sourceTemplate) (\s@AnalysisSourceEntity' {} a -> s {sourceTemplate = a} :: AnalysisSourceEntity)

instance Prelude.Hashable AnalysisSourceEntity

instance Prelude.NFData AnalysisSourceEntity

instance Core.ToJSON AnalysisSourceEntity where
  toJSON AnalysisSourceEntity' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SourceTemplate" Core..=)
              Prelude.<$> sourceTemplate
          ]
      )
