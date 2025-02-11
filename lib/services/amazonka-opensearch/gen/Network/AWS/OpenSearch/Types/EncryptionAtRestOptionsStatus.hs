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
-- Module      : Network.AWS.OpenSearch.Types.EncryptionAtRestOptionsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.EncryptionAtRestOptionsStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types.EncryptionAtRestOptions
import Network.AWS.OpenSearch.Types.OptionStatus
import qualified Network.AWS.Prelude as Prelude

-- | Status of the encryption At Rest options for the specified domain.
--
-- /See:/ 'newEncryptionAtRestOptionsStatus' smart constructor.
data EncryptionAtRestOptionsStatus = EncryptionAtRestOptionsStatus'
  { -- | The Encryption At Rest options for the specified domain.
    options :: EncryptionAtRestOptions,
    -- | The status of the Encryption At Rest options for the specified domain.
    status :: OptionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EncryptionAtRestOptionsStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'options', 'encryptionAtRestOptionsStatus_options' - The Encryption At Rest options for the specified domain.
--
-- 'status', 'encryptionAtRestOptionsStatus_status' - The status of the Encryption At Rest options for the specified domain.
newEncryptionAtRestOptionsStatus ::
  -- | 'options'
  EncryptionAtRestOptions ->
  -- | 'status'
  OptionStatus ->
  EncryptionAtRestOptionsStatus
newEncryptionAtRestOptionsStatus pOptions_ pStatus_ =
  EncryptionAtRestOptionsStatus'
    { options = pOptions_,
      status = pStatus_
    }

-- | The Encryption At Rest options for the specified domain.
encryptionAtRestOptionsStatus_options :: Lens.Lens' EncryptionAtRestOptionsStatus EncryptionAtRestOptions
encryptionAtRestOptionsStatus_options = Lens.lens (\EncryptionAtRestOptionsStatus' {options} -> options) (\s@EncryptionAtRestOptionsStatus' {} a -> s {options = a} :: EncryptionAtRestOptionsStatus)

-- | The status of the Encryption At Rest options for the specified domain.
encryptionAtRestOptionsStatus_status :: Lens.Lens' EncryptionAtRestOptionsStatus OptionStatus
encryptionAtRestOptionsStatus_status = Lens.lens (\EncryptionAtRestOptionsStatus' {status} -> status) (\s@EncryptionAtRestOptionsStatus' {} a -> s {status = a} :: EncryptionAtRestOptionsStatus)

instance Core.FromJSON EncryptionAtRestOptionsStatus where
  parseJSON =
    Core.withObject
      "EncryptionAtRestOptionsStatus"
      ( \x ->
          EncryptionAtRestOptionsStatus'
            Prelude.<$> (x Core..: "Options")
            Prelude.<*> (x Core..: "Status")
      )

instance
  Prelude.Hashable
    EncryptionAtRestOptionsStatus

instance Prelude.NFData EncryptionAtRestOptionsStatus
