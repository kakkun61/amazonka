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
-- Module      : Network.AWS.HealthLake.Types.KmsEncryptionConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HealthLake.Types.KmsEncryptionConfig where

import qualified Network.AWS.Core as Core
import Network.AWS.HealthLake.Types.CmkType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The customer-managed-key(CMK) used when creating a Data Store. If a
-- customer owned key is not specified, an AWS owned key will be used for
-- encryption.
--
-- /See:/ 'newKmsEncryptionConfig' smart constructor.
data KmsEncryptionConfig = KmsEncryptionConfig'
  { -- | The KMS encryption key id\/alias used to encrypt the Data Store contents
    -- at rest.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The type of customer-managed-key(CMK) used for encyrption. The two types
    -- of supported CMKs are customer owned CMKs and AWS owned CMKs.
    cmkType :: CmkType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KmsEncryptionConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKeyId', 'kmsEncryptionConfig_kmsKeyId' - The KMS encryption key id\/alias used to encrypt the Data Store contents
-- at rest.
--
-- 'cmkType', 'kmsEncryptionConfig_cmkType' - The type of customer-managed-key(CMK) used for encyrption. The two types
-- of supported CMKs are customer owned CMKs and AWS owned CMKs.
newKmsEncryptionConfig ::
  -- | 'cmkType'
  CmkType ->
  KmsEncryptionConfig
newKmsEncryptionConfig pCmkType_ =
  KmsEncryptionConfig'
    { kmsKeyId = Prelude.Nothing,
      cmkType = pCmkType_
    }

-- | The KMS encryption key id\/alias used to encrypt the Data Store contents
-- at rest.
kmsEncryptionConfig_kmsKeyId :: Lens.Lens' KmsEncryptionConfig (Prelude.Maybe Prelude.Text)
kmsEncryptionConfig_kmsKeyId = Lens.lens (\KmsEncryptionConfig' {kmsKeyId} -> kmsKeyId) (\s@KmsEncryptionConfig' {} a -> s {kmsKeyId = a} :: KmsEncryptionConfig)

-- | The type of customer-managed-key(CMK) used for encyrption. The two types
-- of supported CMKs are customer owned CMKs and AWS owned CMKs.
kmsEncryptionConfig_cmkType :: Lens.Lens' KmsEncryptionConfig CmkType
kmsEncryptionConfig_cmkType = Lens.lens (\KmsEncryptionConfig' {cmkType} -> cmkType) (\s@KmsEncryptionConfig' {} a -> s {cmkType = a} :: KmsEncryptionConfig)

instance Core.FromJSON KmsEncryptionConfig where
  parseJSON =
    Core.withObject
      "KmsEncryptionConfig"
      ( \x ->
          KmsEncryptionConfig'
            Prelude.<$> (x Core..:? "KmsKeyId")
            Prelude.<*> (x Core..: "CmkType")
      )

instance Prelude.Hashable KmsEncryptionConfig

instance Prelude.NFData KmsEncryptionConfig

instance Core.ToJSON KmsEncryptionConfig where
  toJSON KmsEncryptionConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("KmsKeyId" Core..=) Prelude.<$> kmsKeyId,
            Prelude.Just ("CmkType" Core..= cmkType)
          ]
      )
