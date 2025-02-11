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
-- Module      : Network.AWS.RobOMaker.Types.TemplateLocation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.TemplateLocation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a template location.
--
-- /See:/ 'newTemplateLocation' smart constructor.
data TemplateLocation = TemplateLocation'
  { -- | The Amazon S3 bucket name.
    s3Bucket :: Prelude.Text,
    -- | The list of S3 keys identifying the data source files.
    s3Key :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateLocation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3Bucket', 'templateLocation_s3Bucket' - The Amazon S3 bucket name.
--
-- 's3Key', 'templateLocation_s3Key' - The list of S3 keys identifying the data source files.
newTemplateLocation ::
  -- | 's3Bucket'
  Prelude.Text ->
  -- | 's3Key'
  Prelude.Text ->
  TemplateLocation
newTemplateLocation pS3Bucket_ pS3Key_ =
  TemplateLocation'
    { s3Bucket = pS3Bucket_,
      s3Key = pS3Key_
    }

-- | The Amazon S3 bucket name.
templateLocation_s3Bucket :: Lens.Lens' TemplateLocation Prelude.Text
templateLocation_s3Bucket = Lens.lens (\TemplateLocation' {s3Bucket} -> s3Bucket) (\s@TemplateLocation' {} a -> s {s3Bucket = a} :: TemplateLocation)

-- | The list of S3 keys identifying the data source files.
templateLocation_s3Key :: Lens.Lens' TemplateLocation Prelude.Text
templateLocation_s3Key = Lens.lens (\TemplateLocation' {s3Key} -> s3Key) (\s@TemplateLocation' {} a -> s {s3Key = a} :: TemplateLocation)

instance Prelude.Hashable TemplateLocation

instance Prelude.NFData TemplateLocation

instance Core.ToJSON TemplateLocation where
  toJSON TemplateLocation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("s3Bucket" Core..= s3Bucket),
            Prelude.Just ("s3Key" Core..= s3Key)
          ]
      )
