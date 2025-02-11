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
-- Module      : Network.AWS.MacieV2.Types.CriterionAdditionalProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.CriterionAdditionalProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the operator to use in a property-based condition that filters
-- the results of a query for findings. For detailed information and
-- examples of each operator, see
-- <https://docs.aws.amazon.com/macie/latest/user/findings-filter-basics.html Fundamentals of filtering findings>
-- in the /Amazon Macie User Guide/.
--
-- /See:/ 'newCriterionAdditionalProperties' smart constructor.
data CriterionAdditionalProperties = CriterionAdditionalProperties'
  { -- | The value for the property matches (equals) the specified value. If you
    -- specify multiple values, Macie uses OR logic to join the values.
    eq :: Prelude.Maybe [Prelude.Text],
    -- | The value for the property is less than or equal to the specified value.
    lte :: Prelude.Maybe Prelude.Integer,
    -- | The value for the property is greater than the specified value.
    gt :: Prelude.Maybe Prelude.Integer,
    -- | The value for the property exclusively matches (equals an exact match
    -- for) all the specified values. If you specify multiple values, Amazon
    -- Macie uses AND logic to join the values.
    --
    -- You can use this operator with the following properties:
    -- customDataIdentifiers.detections.arn,
    -- customDataIdentifiers.detections.name,
    -- resourcesAffected.s3Bucket.tags.key,
    -- resourcesAffected.s3Bucket.tags.value,
    -- resourcesAffected.s3Object.tags.key,
    -- resourcesAffected.s3Object.tags.value, sensitiveData.category, and
    -- sensitiveData.detections.type.
    eqExactMatch :: Prelude.Maybe [Prelude.Text],
    -- | The value for the property doesn\'t match (doesn\'t equal) the specified
    -- value. If you specify multiple values, Macie uses OR logic to join the
    -- values.
    neq :: Prelude.Maybe [Prelude.Text],
    -- | The value for the property is less than the specified value.
    lt :: Prelude.Maybe Prelude.Integer,
    -- | The value for the property is greater than or equal to the specified
    -- value.
    gte :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CriterionAdditionalProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eq', 'criterionAdditionalProperties_eq' - The value for the property matches (equals) the specified value. If you
-- specify multiple values, Macie uses OR logic to join the values.
--
-- 'lte', 'criterionAdditionalProperties_lte' - The value for the property is less than or equal to the specified value.
--
-- 'gt', 'criterionAdditionalProperties_gt' - The value for the property is greater than the specified value.
--
-- 'eqExactMatch', 'criterionAdditionalProperties_eqExactMatch' - The value for the property exclusively matches (equals an exact match
-- for) all the specified values. If you specify multiple values, Amazon
-- Macie uses AND logic to join the values.
--
-- You can use this operator with the following properties:
-- customDataIdentifiers.detections.arn,
-- customDataIdentifiers.detections.name,
-- resourcesAffected.s3Bucket.tags.key,
-- resourcesAffected.s3Bucket.tags.value,
-- resourcesAffected.s3Object.tags.key,
-- resourcesAffected.s3Object.tags.value, sensitiveData.category, and
-- sensitiveData.detections.type.
--
-- 'neq', 'criterionAdditionalProperties_neq' - The value for the property doesn\'t match (doesn\'t equal) the specified
-- value. If you specify multiple values, Macie uses OR logic to join the
-- values.
--
-- 'lt', 'criterionAdditionalProperties_lt' - The value for the property is less than the specified value.
--
-- 'gte', 'criterionAdditionalProperties_gte' - The value for the property is greater than or equal to the specified
-- value.
newCriterionAdditionalProperties ::
  CriterionAdditionalProperties
newCriterionAdditionalProperties =
  CriterionAdditionalProperties'
    { eq =
        Prelude.Nothing,
      lte = Prelude.Nothing,
      gt = Prelude.Nothing,
      eqExactMatch = Prelude.Nothing,
      neq = Prelude.Nothing,
      lt = Prelude.Nothing,
      gte = Prelude.Nothing
    }

-- | The value for the property matches (equals) the specified value. If you
-- specify multiple values, Macie uses OR logic to join the values.
criterionAdditionalProperties_eq :: Lens.Lens' CriterionAdditionalProperties (Prelude.Maybe [Prelude.Text])
criterionAdditionalProperties_eq = Lens.lens (\CriterionAdditionalProperties' {eq} -> eq) (\s@CriterionAdditionalProperties' {} a -> s {eq = a} :: CriterionAdditionalProperties) Prelude.. Lens.mapping Lens.coerced

-- | The value for the property is less than or equal to the specified value.
criterionAdditionalProperties_lte :: Lens.Lens' CriterionAdditionalProperties (Prelude.Maybe Prelude.Integer)
criterionAdditionalProperties_lte = Lens.lens (\CriterionAdditionalProperties' {lte} -> lte) (\s@CriterionAdditionalProperties' {} a -> s {lte = a} :: CriterionAdditionalProperties)

-- | The value for the property is greater than the specified value.
criterionAdditionalProperties_gt :: Lens.Lens' CriterionAdditionalProperties (Prelude.Maybe Prelude.Integer)
criterionAdditionalProperties_gt = Lens.lens (\CriterionAdditionalProperties' {gt} -> gt) (\s@CriterionAdditionalProperties' {} a -> s {gt = a} :: CriterionAdditionalProperties)

-- | The value for the property exclusively matches (equals an exact match
-- for) all the specified values. If you specify multiple values, Amazon
-- Macie uses AND logic to join the values.
--
-- You can use this operator with the following properties:
-- customDataIdentifiers.detections.arn,
-- customDataIdentifiers.detections.name,
-- resourcesAffected.s3Bucket.tags.key,
-- resourcesAffected.s3Bucket.tags.value,
-- resourcesAffected.s3Object.tags.key,
-- resourcesAffected.s3Object.tags.value, sensitiveData.category, and
-- sensitiveData.detections.type.
criterionAdditionalProperties_eqExactMatch :: Lens.Lens' CriterionAdditionalProperties (Prelude.Maybe [Prelude.Text])
criterionAdditionalProperties_eqExactMatch = Lens.lens (\CriterionAdditionalProperties' {eqExactMatch} -> eqExactMatch) (\s@CriterionAdditionalProperties' {} a -> s {eqExactMatch = a} :: CriterionAdditionalProperties) Prelude.. Lens.mapping Lens.coerced

-- | The value for the property doesn\'t match (doesn\'t equal) the specified
-- value. If you specify multiple values, Macie uses OR logic to join the
-- values.
criterionAdditionalProperties_neq :: Lens.Lens' CriterionAdditionalProperties (Prelude.Maybe [Prelude.Text])
criterionAdditionalProperties_neq = Lens.lens (\CriterionAdditionalProperties' {neq} -> neq) (\s@CriterionAdditionalProperties' {} a -> s {neq = a} :: CriterionAdditionalProperties) Prelude.. Lens.mapping Lens.coerced

-- | The value for the property is less than the specified value.
criterionAdditionalProperties_lt :: Lens.Lens' CriterionAdditionalProperties (Prelude.Maybe Prelude.Integer)
criterionAdditionalProperties_lt = Lens.lens (\CriterionAdditionalProperties' {lt} -> lt) (\s@CriterionAdditionalProperties' {} a -> s {lt = a} :: CriterionAdditionalProperties)

-- | The value for the property is greater than or equal to the specified
-- value.
criterionAdditionalProperties_gte :: Lens.Lens' CriterionAdditionalProperties (Prelude.Maybe Prelude.Integer)
criterionAdditionalProperties_gte = Lens.lens (\CriterionAdditionalProperties' {gte} -> gte) (\s@CriterionAdditionalProperties' {} a -> s {gte = a} :: CriterionAdditionalProperties)

instance Core.FromJSON CriterionAdditionalProperties where
  parseJSON =
    Core.withObject
      "CriterionAdditionalProperties"
      ( \x ->
          CriterionAdditionalProperties'
            Prelude.<$> (x Core..:? "eq" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "lte")
            Prelude.<*> (x Core..:? "gt")
            Prelude.<*> (x Core..:? "eqExactMatch" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "neq" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "lt")
            Prelude.<*> (x Core..:? "gte")
      )

instance
  Prelude.Hashable
    CriterionAdditionalProperties

instance Prelude.NFData CriterionAdditionalProperties

instance Core.ToJSON CriterionAdditionalProperties where
  toJSON CriterionAdditionalProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("eq" Core..=) Prelude.<$> eq,
            ("lte" Core..=) Prelude.<$> lte,
            ("gt" Core..=) Prelude.<$> gt,
            ("eqExactMatch" Core..=) Prelude.<$> eqExactMatch,
            ("neq" Core..=) Prelude.<$> neq,
            ("lt" Core..=) Prelude.<$> lt,
            ("gte" Core..=) Prelude.<$> gte
          ]
      )
