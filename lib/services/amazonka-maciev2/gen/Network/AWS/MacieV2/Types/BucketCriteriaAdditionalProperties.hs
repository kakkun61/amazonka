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
-- Module      : Network.AWS.MacieV2.Types.BucketCriteriaAdditionalProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.BucketCriteriaAdditionalProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the operator to use in a property-based condition that filters
-- the results of a query for information about S3 buckets.
--
-- /See:/ 'newBucketCriteriaAdditionalProperties' smart constructor.
data BucketCriteriaAdditionalProperties = BucketCriteriaAdditionalProperties'
  { -- | The value for the property matches (equals) the specified value. If you
    -- specify multiple values, Amazon Macie uses OR logic to join the values.
    eq :: Prelude.Maybe [Prelude.Text],
    -- | The value for the property is less than or equal to the specified value.
    lte :: Prelude.Maybe Prelude.Integer,
    -- | The name of the bucket begins with the specified value.
    prefix :: Prelude.Maybe Prelude.Text,
    -- | The value for the property is greater than the specified value.
    gt :: Prelude.Maybe Prelude.Integer,
    -- | The value for the property doesn\'t match (doesn\'t equal) the specified
    -- value. If you specify multiple values, Amazon Macie uses OR logic to
    -- join the values.
    neq :: Prelude.Maybe [Prelude.Text],
    -- | The value for the property is less than the specified value.
    lt :: Prelude.Maybe Prelude.Integer,
    -- | The value for the property is greater than or equal to the specified
    -- value.
    gte :: Prelude.Maybe Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BucketCriteriaAdditionalProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eq', 'bucketCriteriaAdditionalProperties_eq' - The value for the property matches (equals) the specified value. If you
-- specify multiple values, Amazon Macie uses OR logic to join the values.
--
-- 'lte', 'bucketCriteriaAdditionalProperties_lte' - The value for the property is less than or equal to the specified value.
--
-- 'prefix', 'bucketCriteriaAdditionalProperties_prefix' - The name of the bucket begins with the specified value.
--
-- 'gt', 'bucketCriteriaAdditionalProperties_gt' - The value for the property is greater than the specified value.
--
-- 'neq', 'bucketCriteriaAdditionalProperties_neq' - The value for the property doesn\'t match (doesn\'t equal) the specified
-- value. If you specify multiple values, Amazon Macie uses OR logic to
-- join the values.
--
-- 'lt', 'bucketCriteriaAdditionalProperties_lt' - The value for the property is less than the specified value.
--
-- 'gte', 'bucketCriteriaAdditionalProperties_gte' - The value for the property is greater than or equal to the specified
-- value.
newBucketCriteriaAdditionalProperties ::
  BucketCriteriaAdditionalProperties
newBucketCriteriaAdditionalProperties =
  BucketCriteriaAdditionalProperties'
    { eq =
        Prelude.Nothing,
      lte = Prelude.Nothing,
      prefix = Prelude.Nothing,
      gt = Prelude.Nothing,
      neq = Prelude.Nothing,
      lt = Prelude.Nothing,
      gte = Prelude.Nothing
    }

-- | The value for the property matches (equals) the specified value. If you
-- specify multiple values, Amazon Macie uses OR logic to join the values.
bucketCriteriaAdditionalProperties_eq :: Lens.Lens' BucketCriteriaAdditionalProperties (Prelude.Maybe [Prelude.Text])
bucketCriteriaAdditionalProperties_eq = Lens.lens (\BucketCriteriaAdditionalProperties' {eq} -> eq) (\s@BucketCriteriaAdditionalProperties' {} a -> s {eq = a} :: BucketCriteriaAdditionalProperties) Prelude.. Lens.mapping Lens.coerced

-- | The value for the property is less than or equal to the specified value.
bucketCriteriaAdditionalProperties_lte :: Lens.Lens' BucketCriteriaAdditionalProperties (Prelude.Maybe Prelude.Integer)
bucketCriteriaAdditionalProperties_lte = Lens.lens (\BucketCriteriaAdditionalProperties' {lte} -> lte) (\s@BucketCriteriaAdditionalProperties' {} a -> s {lte = a} :: BucketCriteriaAdditionalProperties)

-- | The name of the bucket begins with the specified value.
bucketCriteriaAdditionalProperties_prefix :: Lens.Lens' BucketCriteriaAdditionalProperties (Prelude.Maybe Prelude.Text)
bucketCriteriaAdditionalProperties_prefix = Lens.lens (\BucketCriteriaAdditionalProperties' {prefix} -> prefix) (\s@BucketCriteriaAdditionalProperties' {} a -> s {prefix = a} :: BucketCriteriaAdditionalProperties)

-- | The value for the property is greater than the specified value.
bucketCriteriaAdditionalProperties_gt :: Lens.Lens' BucketCriteriaAdditionalProperties (Prelude.Maybe Prelude.Integer)
bucketCriteriaAdditionalProperties_gt = Lens.lens (\BucketCriteriaAdditionalProperties' {gt} -> gt) (\s@BucketCriteriaAdditionalProperties' {} a -> s {gt = a} :: BucketCriteriaAdditionalProperties)

-- | The value for the property doesn\'t match (doesn\'t equal) the specified
-- value. If you specify multiple values, Amazon Macie uses OR logic to
-- join the values.
bucketCriteriaAdditionalProperties_neq :: Lens.Lens' BucketCriteriaAdditionalProperties (Prelude.Maybe [Prelude.Text])
bucketCriteriaAdditionalProperties_neq = Lens.lens (\BucketCriteriaAdditionalProperties' {neq} -> neq) (\s@BucketCriteriaAdditionalProperties' {} a -> s {neq = a} :: BucketCriteriaAdditionalProperties) Prelude.. Lens.mapping Lens.coerced

-- | The value for the property is less than the specified value.
bucketCriteriaAdditionalProperties_lt :: Lens.Lens' BucketCriteriaAdditionalProperties (Prelude.Maybe Prelude.Integer)
bucketCriteriaAdditionalProperties_lt = Lens.lens (\BucketCriteriaAdditionalProperties' {lt} -> lt) (\s@BucketCriteriaAdditionalProperties' {} a -> s {lt = a} :: BucketCriteriaAdditionalProperties)

-- | The value for the property is greater than or equal to the specified
-- value.
bucketCriteriaAdditionalProperties_gte :: Lens.Lens' BucketCriteriaAdditionalProperties (Prelude.Maybe Prelude.Integer)
bucketCriteriaAdditionalProperties_gte = Lens.lens (\BucketCriteriaAdditionalProperties' {gte} -> gte) (\s@BucketCriteriaAdditionalProperties' {} a -> s {gte = a} :: BucketCriteriaAdditionalProperties)

instance
  Prelude.Hashable
    BucketCriteriaAdditionalProperties

instance
  Prelude.NFData
    BucketCriteriaAdditionalProperties

instance
  Core.ToJSON
    BucketCriteriaAdditionalProperties
  where
  toJSON BucketCriteriaAdditionalProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("eq" Core..=) Prelude.<$> eq,
            ("lte" Core..=) Prelude.<$> lte,
            ("prefix" Core..=) Prelude.<$> prefix,
            ("gt" Core..=) Prelude.<$> gt,
            ("neq" Core..=) Prelude.<$> neq,
            ("lt" Core..=) Prelude.<$> lt,
            ("gte" Core..=) Prelude.<$> gte
          ]
      )
