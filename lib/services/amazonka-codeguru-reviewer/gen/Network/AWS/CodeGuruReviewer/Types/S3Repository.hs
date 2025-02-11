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
-- Module      : Network.AWS.CodeGuruReviewer.Types.S3Repository
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Types.S3Repository where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about a repository in an S3 bucket.
--
-- /See:/ 'newS3Repository' smart constructor.
data S3Repository = S3Repository'
  { -- | The name of the repository in the S3 bucket.
    name :: Prelude.Text,
    -- | The name of the S3 bucket used for associating a new S3 repository. It
    -- must begin with @codeguru-reviewer-@.
    bucketName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3Repository' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 's3Repository_name' - The name of the repository in the S3 bucket.
--
-- 'bucketName', 's3Repository_bucketName' - The name of the S3 bucket used for associating a new S3 repository. It
-- must begin with @codeguru-reviewer-@.
newS3Repository ::
  -- | 'name'
  Prelude.Text ->
  -- | 'bucketName'
  Prelude.Text ->
  S3Repository
newS3Repository pName_ pBucketName_ =
  S3Repository'
    { name = pName_,
      bucketName = pBucketName_
    }

-- | The name of the repository in the S3 bucket.
s3Repository_name :: Lens.Lens' S3Repository Prelude.Text
s3Repository_name = Lens.lens (\S3Repository' {name} -> name) (\s@S3Repository' {} a -> s {name = a} :: S3Repository)

-- | The name of the S3 bucket used for associating a new S3 repository. It
-- must begin with @codeguru-reviewer-@.
s3Repository_bucketName :: Lens.Lens' S3Repository Prelude.Text
s3Repository_bucketName = Lens.lens (\S3Repository' {bucketName} -> bucketName) (\s@S3Repository' {} a -> s {bucketName = a} :: S3Repository)

instance Prelude.Hashable S3Repository

instance Prelude.NFData S3Repository

instance Core.ToJSON S3Repository where
  toJSON S3Repository' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Name" Core..= name),
            Prelude.Just ("BucketName" Core..= bucketName)
          ]
      )
