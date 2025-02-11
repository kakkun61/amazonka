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
-- Module      : Network.AWS.MacieV2.Types.S3BucketCriteriaForJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.S3BucketCriteriaForJob where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.CriteriaBlockForJob
import qualified Network.AWS.Prelude as Prelude

-- | Specifies property- and tag-based conditions that define criteria for
-- including or excluding S3 buckets from a classification job. Exclude
-- conditions take precedence over include conditions.
--
-- /See:/ 'newS3BucketCriteriaForJob' smart constructor.
data S3BucketCriteriaForJob = S3BucketCriteriaForJob'
  { -- | The property- and tag-based conditions that determine which buckets to
    -- include in the job.
    includes :: Prelude.Maybe CriteriaBlockForJob,
    -- | The property- and tag-based conditions that determine which buckets to
    -- exclude from the job.
    excludes :: Prelude.Maybe CriteriaBlockForJob
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3BucketCriteriaForJob' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'includes', 's3BucketCriteriaForJob_includes' - The property- and tag-based conditions that determine which buckets to
-- include in the job.
--
-- 'excludes', 's3BucketCriteriaForJob_excludes' - The property- and tag-based conditions that determine which buckets to
-- exclude from the job.
newS3BucketCriteriaForJob ::
  S3BucketCriteriaForJob
newS3BucketCriteriaForJob =
  S3BucketCriteriaForJob'
    { includes = Prelude.Nothing,
      excludes = Prelude.Nothing
    }

-- | The property- and tag-based conditions that determine which buckets to
-- include in the job.
s3BucketCriteriaForJob_includes :: Lens.Lens' S3BucketCriteriaForJob (Prelude.Maybe CriteriaBlockForJob)
s3BucketCriteriaForJob_includes = Lens.lens (\S3BucketCriteriaForJob' {includes} -> includes) (\s@S3BucketCriteriaForJob' {} a -> s {includes = a} :: S3BucketCriteriaForJob)

-- | The property- and tag-based conditions that determine which buckets to
-- exclude from the job.
s3BucketCriteriaForJob_excludes :: Lens.Lens' S3BucketCriteriaForJob (Prelude.Maybe CriteriaBlockForJob)
s3BucketCriteriaForJob_excludes = Lens.lens (\S3BucketCriteriaForJob' {excludes} -> excludes) (\s@S3BucketCriteriaForJob' {} a -> s {excludes = a} :: S3BucketCriteriaForJob)

instance Core.FromJSON S3BucketCriteriaForJob where
  parseJSON =
    Core.withObject
      "S3BucketCriteriaForJob"
      ( \x ->
          S3BucketCriteriaForJob'
            Prelude.<$> (x Core..:? "includes")
            Prelude.<*> (x Core..:? "excludes")
      )

instance Prelude.Hashable S3BucketCriteriaForJob

instance Prelude.NFData S3BucketCriteriaForJob

instance Core.ToJSON S3BucketCriteriaForJob where
  toJSON S3BucketCriteriaForJob' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("includes" Core..=) Prelude.<$> includes,
            ("excludes" Core..=) Prelude.<$> excludes
          ]
      )
