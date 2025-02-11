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
-- Module      : Network.AWS.EC2.Types.S3ObjectTag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.S3ObjectTag where

import qualified Network.AWS.Core as Core
import Network.AWS.EC2.Internal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The tags to apply to the AMI object that will be stored in the Amazon S3
-- bucket. For more information, see
-- <https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-tagging.html Categorizing your storage using tags>
-- in the /Amazon Simple Storage Service User Guide/.
--
-- /See:/ 'newS3ObjectTag' smart constructor.
data S3ObjectTag = S3ObjectTag'
  { -- | The value of the tag.
    --
    -- Constraints: Tag values are case-sensitive and can be up to 256 Unicode
    -- characters in length.
    value :: Prelude.Maybe Prelude.Text,
    -- | The key of the tag.
    --
    -- Constraints: Tag keys are case-sensitive and can be up to 128 Unicode
    -- characters in length. May not begin with @aws@:.
    key :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'S3ObjectTag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 's3ObjectTag_value' - The value of the tag.
--
-- Constraints: Tag values are case-sensitive and can be up to 256 Unicode
-- characters in length.
--
-- 'key', 's3ObjectTag_key' - The key of the tag.
--
-- Constraints: Tag keys are case-sensitive and can be up to 128 Unicode
-- characters in length. May not begin with @aws@:.
newS3ObjectTag ::
  S3ObjectTag
newS3ObjectTag =
  S3ObjectTag'
    { value = Prelude.Nothing,
      key = Prelude.Nothing
    }

-- | The value of the tag.
--
-- Constraints: Tag values are case-sensitive and can be up to 256 Unicode
-- characters in length.
s3ObjectTag_value :: Lens.Lens' S3ObjectTag (Prelude.Maybe Prelude.Text)
s3ObjectTag_value = Lens.lens (\S3ObjectTag' {value} -> value) (\s@S3ObjectTag' {} a -> s {value = a} :: S3ObjectTag)

-- | The key of the tag.
--
-- Constraints: Tag keys are case-sensitive and can be up to 128 Unicode
-- characters in length. May not begin with @aws@:.
s3ObjectTag_key :: Lens.Lens' S3ObjectTag (Prelude.Maybe Prelude.Text)
s3ObjectTag_key = Lens.lens (\S3ObjectTag' {key} -> key) (\s@S3ObjectTag' {} a -> s {key = a} :: S3ObjectTag)

instance Prelude.Hashable S3ObjectTag

instance Prelude.NFData S3ObjectTag

instance Core.ToQuery S3ObjectTag where
  toQuery S3ObjectTag' {..} =
    Prelude.mconcat
      ["Value" Core.=: value, "Key" Core.=: key]
