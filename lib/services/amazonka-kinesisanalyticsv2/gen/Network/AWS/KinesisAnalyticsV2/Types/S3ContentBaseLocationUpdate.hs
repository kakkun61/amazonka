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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.S3ContentBaseLocationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.S3ContentBaseLocationUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The information required to update the S3 base location that holds the
-- application.
--
-- /See:/ 'newS3ContentBaseLocationUpdate' smart constructor.
data S3ContentBaseLocationUpdate = S3ContentBaseLocationUpdate'
  { -- | The updated Amazon Resource Name (ARN) of the S3 bucket.
    bucketARNUpdate :: Prelude.Maybe Prelude.Text,
    -- | The updated S3 bucket path.
    basePathUpdate :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3ContentBaseLocationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucketARNUpdate', 's3ContentBaseLocationUpdate_bucketARNUpdate' - The updated Amazon Resource Name (ARN) of the S3 bucket.
--
-- 'basePathUpdate', 's3ContentBaseLocationUpdate_basePathUpdate' - The updated S3 bucket path.
newS3ContentBaseLocationUpdate ::
  S3ContentBaseLocationUpdate
newS3ContentBaseLocationUpdate =
  S3ContentBaseLocationUpdate'
    { bucketARNUpdate =
        Prelude.Nothing,
      basePathUpdate = Prelude.Nothing
    }

-- | The updated Amazon Resource Name (ARN) of the S3 bucket.
s3ContentBaseLocationUpdate_bucketARNUpdate :: Lens.Lens' S3ContentBaseLocationUpdate (Prelude.Maybe Prelude.Text)
s3ContentBaseLocationUpdate_bucketARNUpdate = Lens.lens (\S3ContentBaseLocationUpdate' {bucketARNUpdate} -> bucketARNUpdate) (\s@S3ContentBaseLocationUpdate' {} a -> s {bucketARNUpdate = a} :: S3ContentBaseLocationUpdate)

-- | The updated S3 bucket path.
s3ContentBaseLocationUpdate_basePathUpdate :: Lens.Lens' S3ContentBaseLocationUpdate (Prelude.Maybe Prelude.Text)
s3ContentBaseLocationUpdate_basePathUpdate = Lens.lens (\S3ContentBaseLocationUpdate' {basePathUpdate} -> basePathUpdate) (\s@S3ContentBaseLocationUpdate' {} a -> s {basePathUpdate = a} :: S3ContentBaseLocationUpdate)

instance Prelude.Hashable S3ContentBaseLocationUpdate

instance Prelude.NFData S3ContentBaseLocationUpdate

instance Core.ToJSON S3ContentBaseLocationUpdate where
  toJSON S3ContentBaseLocationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("BucketARNUpdate" Core..=)
              Prelude.<$> bucketARNUpdate,
            ("BasePathUpdate" Core..=)
              Prelude.<$> basePathUpdate
          ]
      )
