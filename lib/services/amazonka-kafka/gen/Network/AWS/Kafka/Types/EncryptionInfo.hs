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
-- Module      : Network.AWS.Kafka.Types.EncryptionInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.EncryptionInfo where

import qualified Network.AWS.Core as Core
import Network.AWS.Kafka.Types.EncryptionAtRest
import Network.AWS.Kafka.Types.EncryptionInTransit
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Includes encryption-related information, such as the AWS KMS key used
-- for encrypting data at rest and whether you want MSK to encrypt your
-- data in transit.
--
-- /See:/ 'newEncryptionInfo' smart constructor.
data EncryptionInfo = EncryptionInfo'
  { -- | The data-volume encryption details.
    encryptionAtRest :: Prelude.Maybe EncryptionAtRest,
    -- | The details for encryption in transit.
    encryptionInTransit :: Prelude.Maybe EncryptionInTransit
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EncryptionInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionAtRest', 'encryptionInfo_encryptionAtRest' - The data-volume encryption details.
--
-- 'encryptionInTransit', 'encryptionInfo_encryptionInTransit' - The details for encryption in transit.
newEncryptionInfo ::
  EncryptionInfo
newEncryptionInfo =
  EncryptionInfo'
    { encryptionAtRest = Prelude.Nothing,
      encryptionInTransit = Prelude.Nothing
    }

-- | The data-volume encryption details.
encryptionInfo_encryptionAtRest :: Lens.Lens' EncryptionInfo (Prelude.Maybe EncryptionAtRest)
encryptionInfo_encryptionAtRest = Lens.lens (\EncryptionInfo' {encryptionAtRest} -> encryptionAtRest) (\s@EncryptionInfo' {} a -> s {encryptionAtRest = a} :: EncryptionInfo)

-- | The details for encryption in transit.
encryptionInfo_encryptionInTransit :: Lens.Lens' EncryptionInfo (Prelude.Maybe EncryptionInTransit)
encryptionInfo_encryptionInTransit = Lens.lens (\EncryptionInfo' {encryptionInTransit} -> encryptionInTransit) (\s@EncryptionInfo' {} a -> s {encryptionInTransit = a} :: EncryptionInfo)

instance Core.FromJSON EncryptionInfo where
  parseJSON =
    Core.withObject
      "EncryptionInfo"
      ( \x ->
          EncryptionInfo'
            Prelude.<$> (x Core..:? "encryptionAtRest")
            Prelude.<*> (x Core..:? "encryptionInTransit")
      )

instance Prelude.Hashable EncryptionInfo

instance Prelude.NFData EncryptionInfo

instance Core.ToJSON EncryptionInfo where
  toJSON EncryptionInfo' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("encryptionAtRest" Core..=)
              Prelude.<$> encryptionAtRest,
            ("encryptionInTransit" Core..=)
              Prelude.<$> encryptionInTransit
          ]
      )
