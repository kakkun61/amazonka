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
-- Module      : Network.AWS.Signer.Types.SignedObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Signer.Types.SignedObject where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Signer.Types.S3SignedObject

-- | Points to an @S3SignedObject@ object that contains information about
-- your signed code image.
--
-- /See:/ 'newSignedObject' smart constructor.
data SignedObject = SignedObject'
  { -- | The @S3SignedObject@.
    s3 :: Prelude.Maybe S3SignedObject
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SignedObject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 's3', 'signedObject_s3' - The @S3SignedObject@.
newSignedObject ::
  SignedObject
newSignedObject = SignedObject' {s3 = Prelude.Nothing}

-- | The @S3SignedObject@.
signedObject_s3 :: Lens.Lens' SignedObject (Prelude.Maybe S3SignedObject)
signedObject_s3 = Lens.lens (\SignedObject' {s3} -> s3) (\s@SignedObject' {} a -> s {s3 = a} :: SignedObject)

instance Core.FromJSON SignedObject where
  parseJSON =
    Core.withObject
      "SignedObject"
      (\x -> SignedObject' Prelude.<$> (x Core..:? "s3"))

instance Prelude.Hashable SignedObject

instance Prelude.NFData SignedObject
