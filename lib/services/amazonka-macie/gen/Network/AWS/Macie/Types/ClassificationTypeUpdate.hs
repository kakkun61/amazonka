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
-- Module      : Network.AWS.Macie.Types.ClassificationTypeUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Macie.Types.ClassificationTypeUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Macie.Types.S3ContinuousClassificationType
import Network.AWS.Macie.Types.S3OneTimeClassificationType
import qualified Network.AWS.Prelude as Prelude

-- | The classification type that Amazon Macie Classic applies to the
-- associated S3 resources. At least one of the classification types
-- (oneTime or continuous) must be specified.
--
-- /See:/ 'newClassificationTypeUpdate' smart constructor.
data ClassificationTypeUpdate = ClassificationTypeUpdate'
  { -- | A continuous classification of the objects that are added to a specified
    -- S3 bucket. Amazon Macie Classic begins performing continuous
    -- classification after a bucket is successfully associated with Macie
    -- Classic.
    continuous :: Prelude.Maybe S3ContinuousClassificationType,
    -- | A one-time classification of all of the existing objects in a specified
    -- S3 bucket.
    oneTime :: Prelude.Maybe S3OneTimeClassificationType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ClassificationTypeUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'continuous', 'classificationTypeUpdate_continuous' - A continuous classification of the objects that are added to a specified
-- S3 bucket. Amazon Macie Classic begins performing continuous
-- classification after a bucket is successfully associated with Macie
-- Classic.
--
-- 'oneTime', 'classificationTypeUpdate_oneTime' - A one-time classification of all of the existing objects in a specified
-- S3 bucket.
newClassificationTypeUpdate ::
  ClassificationTypeUpdate
newClassificationTypeUpdate =
  ClassificationTypeUpdate'
    { continuous =
        Prelude.Nothing,
      oneTime = Prelude.Nothing
    }

-- | A continuous classification of the objects that are added to a specified
-- S3 bucket. Amazon Macie Classic begins performing continuous
-- classification after a bucket is successfully associated with Macie
-- Classic.
classificationTypeUpdate_continuous :: Lens.Lens' ClassificationTypeUpdate (Prelude.Maybe S3ContinuousClassificationType)
classificationTypeUpdate_continuous = Lens.lens (\ClassificationTypeUpdate' {continuous} -> continuous) (\s@ClassificationTypeUpdate' {} a -> s {continuous = a} :: ClassificationTypeUpdate)

-- | A one-time classification of all of the existing objects in a specified
-- S3 bucket.
classificationTypeUpdate_oneTime :: Lens.Lens' ClassificationTypeUpdate (Prelude.Maybe S3OneTimeClassificationType)
classificationTypeUpdate_oneTime = Lens.lens (\ClassificationTypeUpdate' {oneTime} -> oneTime) (\s@ClassificationTypeUpdate' {} a -> s {oneTime = a} :: ClassificationTypeUpdate)

instance Prelude.Hashable ClassificationTypeUpdate

instance Prelude.NFData ClassificationTypeUpdate

instance Core.ToJSON ClassificationTypeUpdate where
  toJSON ClassificationTypeUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("continuous" Core..=) Prelude.<$> continuous,
            ("oneTime" Core..=) Prelude.<$> oneTime
          ]
      )
