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
-- Module      : Network.AWS.FraudDetector.Types.KMSKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.KMSKey where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The KMS key details.
--
-- /See:/ 'newKMSKey' smart constructor.
data KMSKey = KMSKey'
  { -- | The encryption key ARN.
    kmsEncryptionKeyArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KMSKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsEncryptionKeyArn', 'kmsKey_kmsEncryptionKeyArn' - The encryption key ARN.
newKMSKey ::
  KMSKey
newKMSKey =
  KMSKey' {kmsEncryptionKeyArn = Prelude.Nothing}

-- | The encryption key ARN.
kmsKey_kmsEncryptionKeyArn :: Lens.Lens' KMSKey (Prelude.Maybe Prelude.Text)
kmsKey_kmsEncryptionKeyArn = Lens.lens (\KMSKey' {kmsEncryptionKeyArn} -> kmsEncryptionKeyArn) (\s@KMSKey' {} a -> s {kmsEncryptionKeyArn = a} :: KMSKey)

instance Core.FromJSON KMSKey where
  parseJSON =
    Core.withObject
      "KMSKey"
      ( \x ->
          KMSKey'
            Prelude.<$> (x Core..:? "kmsEncryptionKeyArn")
      )

instance Prelude.Hashable KMSKey

instance Prelude.NFData KMSKey
