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
-- Module      : Network.AWS.QuickSight.Types.TemplateSourceAnalysis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.TemplateSourceAnalysis where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.DataSetReference

-- | The source analysis of the template.
--
-- /See:/ 'newTemplateSourceAnalysis' smart constructor.
data TemplateSourceAnalysis = TemplateSourceAnalysis'
  { -- | The Amazon Resource Name (ARN) of the resource.
    arn :: Prelude.Text,
    -- | A structure containing information about the dataset references used as
    -- placeholders in the template.
    dataSetReferences :: Prelude.NonEmpty DataSetReference
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateSourceAnalysis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'templateSourceAnalysis_arn' - The Amazon Resource Name (ARN) of the resource.
--
-- 'dataSetReferences', 'templateSourceAnalysis_dataSetReferences' - A structure containing information about the dataset references used as
-- placeholders in the template.
newTemplateSourceAnalysis ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'dataSetReferences'
  Prelude.NonEmpty DataSetReference ->
  TemplateSourceAnalysis
newTemplateSourceAnalysis pArn_ pDataSetReferences_ =
  TemplateSourceAnalysis'
    { arn = pArn_,
      dataSetReferences =
        Lens.coerced Lens.# pDataSetReferences_
    }

-- | The Amazon Resource Name (ARN) of the resource.
templateSourceAnalysis_arn :: Lens.Lens' TemplateSourceAnalysis Prelude.Text
templateSourceAnalysis_arn = Lens.lens (\TemplateSourceAnalysis' {arn} -> arn) (\s@TemplateSourceAnalysis' {} a -> s {arn = a} :: TemplateSourceAnalysis)

-- | A structure containing information about the dataset references used as
-- placeholders in the template.
templateSourceAnalysis_dataSetReferences :: Lens.Lens' TemplateSourceAnalysis (Prelude.NonEmpty DataSetReference)
templateSourceAnalysis_dataSetReferences = Lens.lens (\TemplateSourceAnalysis' {dataSetReferences} -> dataSetReferences) (\s@TemplateSourceAnalysis' {} a -> s {dataSetReferences = a} :: TemplateSourceAnalysis) Prelude.. Lens.coerced

instance Prelude.Hashable TemplateSourceAnalysis

instance Prelude.NFData TemplateSourceAnalysis

instance Core.ToJSON TemplateSourceAnalysis where
  toJSON TemplateSourceAnalysis' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Arn" Core..= arn),
            Prelude.Just
              ("DataSetReferences" Core..= dataSetReferences)
          ]
      )
