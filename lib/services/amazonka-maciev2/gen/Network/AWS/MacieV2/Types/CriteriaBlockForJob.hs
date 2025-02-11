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
-- Module      : Network.AWS.MacieV2.Types.CriteriaBlockForJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.CriteriaBlockForJob where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.CriteriaForJob
import qualified Network.AWS.Prelude as Prelude

-- | Specifies one or more property- and tag-based conditions that define
-- criteria for including or excluding S3 buckets from a classification
-- job.
--
-- /See:/ 'newCriteriaBlockForJob' smart constructor.
data CriteriaBlockForJob = CriteriaBlockForJob'
  { -- | An array of conditions, one for each condition that determines which
    -- buckets to include or exclude from the job. If you specify more than one
    -- condition, Amazon Macie uses AND logic to join the conditions.
    and :: Prelude.Maybe [CriteriaForJob]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CriteriaBlockForJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'and', 'criteriaBlockForJob_and' - An array of conditions, one for each condition that determines which
-- buckets to include or exclude from the job. If you specify more than one
-- condition, Amazon Macie uses AND logic to join the conditions.
newCriteriaBlockForJob ::
  CriteriaBlockForJob
newCriteriaBlockForJob =
  CriteriaBlockForJob' {and = Prelude.Nothing}

-- | An array of conditions, one for each condition that determines which
-- buckets to include or exclude from the job. If you specify more than one
-- condition, Amazon Macie uses AND logic to join the conditions.
criteriaBlockForJob_and :: Lens.Lens' CriteriaBlockForJob (Prelude.Maybe [CriteriaForJob])
criteriaBlockForJob_and = Lens.lens (\CriteriaBlockForJob' {and} -> and) (\s@CriteriaBlockForJob' {} a -> s {and = a} :: CriteriaBlockForJob) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON CriteriaBlockForJob where
  parseJSON =
    Core.withObject
      "CriteriaBlockForJob"
      ( \x ->
          CriteriaBlockForJob'
            Prelude.<$> (x Core..:? "and" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable CriteriaBlockForJob

instance Prelude.NFData CriteriaBlockForJob

instance Core.ToJSON CriteriaBlockForJob where
  toJSON CriteriaBlockForJob' {..} =
    Core.object
      (Prelude.catMaybes [("and" Core..=) Prelude.<$> and])
