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
-- Module      : Network.AWS.DataExchange.Types.ExportServerSideEncryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.ExportServerSideEncryption where

import qualified Network.AWS.Core as Core
import Network.AWS.DataExchange.Types.ServerSideEncryptionTypes
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Encryption configuration of the export job. Includes the encryption type
-- in addition to the AWS KMS key. The KMS key is only necessary if you
-- chose the KMS encryption. type.
--
-- /See:/ 'newExportServerSideEncryption' smart constructor.
data ExportServerSideEncryption = ExportServerSideEncryption'
  { -- | The Amazon Resource Name (ARN) of the AWS KMS key you want to use to
    -- encrypt the Amazon S3 objects. This parameter is required if you choose
    -- aws:kms as an encryption type.
    kmsKeyArn :: Prelude.Maybe Prelude.Text,
    -- | The type of server side encryption used for encrypting the objects in
    -- Amazon S3.
    type' :: ServerSideEncryptionTypes
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportServerSideEncryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKeyArn', 'exportServerSideEncryption_kmsKeyArn' - The Amazon Resource Name (ARN) of the AWS KMS key you want to use to
-- encrypt the Amazon S3 objects. This parameter is required if you choose
-- aws:kms as an encryption type.
--
-- 'type'', 'exportServerSideEncryption_type' - The type of server side encryption used for encrypting the objects in
-- Amazon S3.
newExportServerSideEncryption ::
  -- | 'type''
  ServerSideEncryptionTypes ->
  ExportServerSideEncryption
newExportServerSideEncryption pType_ =
  ExportServerSideEncryption'
    { kmsKeyArn =
        Prelude.Nothing,
      type' = pType_
    }

-- | The Amazon Resource Name (ARN) of the AWS KMS key you want to use to
-- encrypt the Amazon S3 objects. This parameter is required if you choose
-- aws:kms as an encryption type.
exportServerSideEncryption_kmsKeyArn :: Lens.Lens' ExportServerSideEncryption (Prelude.Maybe Prelude.Text)
exportServerSideEncryption_kmsKeyArn = Lens.lens (\ExportServerSideEncryption' {kmsKeyArn} -> kmsKeyArn) (\s@ExportServerSideEncryption' {} a -> s {kmsKeyArn = a} :: ExportServerSideEncryption)

-- | The type of server side encryption used for encrypting the objects in
-- Amazon S3.
exportServerSideEncryption_type :: Lens.Lens' ExportServerSideEncryption ServerSideEncryptionTypes
exportServerSideEncryption_type = Lens.lens (\ExportServerSideEncryption' {type'} -> type') (\s@ExportServerSideEncryption' {} a -> s {type' = a} :: ExportServerSideEncryption)

instance Core.FromJSON ExportServerSideEncryption where
  parseJSON =
    Core.withObject
      "ExportServerSideEncryption"
      ( \x ->
          ExportServerSideEncryption'
            Prelude.<$> (x Core..:? "KmsKeyArn")
            Prelude.<*> (x Core..: "Type")
      )

instance Prelude.Hashable ExportServerSideEncryption

instance Prelude.NFData ExportServerSideEncryption

instance Core.ToJSON ExportServerSideEncryption where
  toJSON ExportServerSideEncryption' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("KmsKeyArn" Core..=) Prelude.<$> kmsKeyArn,
            Prelude.Just ("Type" Core..= type')
          ]
      )
