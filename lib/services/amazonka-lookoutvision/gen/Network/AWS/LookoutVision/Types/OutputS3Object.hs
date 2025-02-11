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
-- Module      : Network.AWS.LookoutVision.Types.OutputS3Object
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LookoutVision.Types.OutputS3Object where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The S3 location where Amazon Lookout for Vision saves training output.
--
-- /See:/ 'newOutputS3Object' smart constructor.
data OutputS3Object = OutputS3Object'
  { -- | The bucket that contains the training output.
    bucket :: Prelude.Text,
    -- | The location of the training output in the bucket.
    key :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OutputS3Object' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bucket', 'outputS3Object_bucket' - The bucket that contains the training output.
--
-- 'key', 'outputS3Object_key' - The location of the training output in the bucket.
newOutputS3Object ::
  -- | 'bucket'
  Prelude.Text ->
  -- | 'key'
  Prelude.Text ->
  OutputS3Object
newOutputS3Object pBucket_ pKey_ =
  OutputS3Object' {bucket = pBucket_, key = pKey_}

-- | The bucket that contains the training output.
outputS3Object_bucket :: Lens.Lens' OutputS3Object Prelude.Text
outputS3Object_bucket = Lens.lens (\OutputS3Object' {bucket} -> bucket) (\s@OutputS3Object' {} a -> s {bucket = a} :: OutputS3Object)

-- | The location of the training output in the bucket.
outputS3Object_key :: Lens.Lens' OutputS3Object Prelude.Text
outputS3Object_key = Lens.lens (\OutputS3Object' {key} -> key) (\s@OutputS3Object' {} a -> s {key = a} :: OutputS3Object)

instance Core.FromJSON OutputS3Object where
  parseJSON =
    Core.withObject
      "OutputS3Object"
      ( \x ->
          OutputS3Object'
            Prelude.<$> (x Core..: "Bucket") Prelude.<*> (x Core..: "Key")
      )

instance Prelude.Hashable OutputS3Object

instance Prelude.NFData OutputS3Object
