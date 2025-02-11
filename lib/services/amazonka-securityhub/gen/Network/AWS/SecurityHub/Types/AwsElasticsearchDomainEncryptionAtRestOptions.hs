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
-- Module      : Network.AWS.SecurityHub.Types.AwsElasticsearchDomainEncryptionAtRestOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsElasticsearchDomainEncryptionAtRestOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details about the configuration for encryption at rest.
--
-- /See:/ 'newAwsElasticsearchDomainEncryptionAtRestOptions' smart constructor.
data AwsElasticsearchDomainEncryptionAtRestOptions = AwsElasticsearchDomainEncryptionAtRestOptions'
  { -- | Whether encryption at rest is enabled.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The KMS key ID. Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.
    kmsKeyId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsElasticsearchDomainEncryptionAtRestOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'awsElasticsearchDomainEncryptionAtRestOptions_enabled' - Whether encryption at rest is enabled.
--
-- 'kmsKeyId', 'awsElasticsearchDomainEncryptionAtRestOptions_kmsKeyId' - The KMS key ID. Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.
newAwsElasticsearchDomainEncryptionAtRestOptions ::
  AwsElasticsearchDomainEncryptionAtRestOptions
newAwsElasticsearchDomainEncryptionAtRestOptions =
  AwsElasticsearchDomainEncryptionAtRestOptions'
    { enabled =
        Prelude.Nothing,
      kmsKeyId = Prelude.Nothing
    }

-- | Whether encryption at rest is enabled.
awsElasticsearchDomainEncryptionAtRestOptions_enabled :: Lens.Lens' AwsElasticsearchDomainEncryptionAtRestOptions (Prelude.Maybe Prelude.Bool)
awsElasticsearchDomainEncryptionAtRestOptions_enabled = Lens.lens (\AwsElasticsearchDomainEncryptionAtRestOptions' {enabled} -> enabled) (\s@AwsElasticsearchDomainEncryptionAtRestOptions' {} a -> s {enabled = a} :: AwsElasticsearchDomainEncryptionAtRestOptions)

-- | The KMS key ID. Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.
awsElasticsearchDomainEncryptionAtRestOptions_kmsKeyId :: Lens.Lens' AwsElasticsearchDomainEncryptionAtRestOptions (Prelude.Maybe Prelude.Text)
awsElasticsearchDomainEncryptionAtRestOptions_kmsKeyId = Lens.lens (\AwsElasticsearchDomainEncryptionAtRestOptions' {kmsKeyId} -> kmsKeyId) (\s@AwsElasticsearchDomainEncryptionAtRestOptions' {} a -> s {kmsKeyId = a} :: AwsElasticsearchDomainEncryptionAtRestOptions)

instance
  Core.FromJSON
    AwsElasticsearchDomainEncryptionAtRestOptions
  where
  parseJSON =
    Core.withObject
      "AwsElasticsearchDomainEncryptionAtRestOptions"
      ( \x ->
          AwsElasticsearchDomainEncryptionAtRestOptions'
            Prelude.<$> (x Core..:? "Enabled")
              Prelude.<*> (x Core..:? "KmsKeyId")
      )

instance
  Prelude.Hashable
    AwsElasticsearchDomainEncryptionAtRestOptions

instance
  Prelude.NFData
    AwsElasticsearchDomainEncryptionAtRestOptions

instance
  Core.ToJSON
    AwsElasticsearchDomainEncryptionAtRestOptions
  where
  toJSON
    AwsElasticsearchDomainEncryptionAtRestOptions' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Enabled" Core..=) Prelude.<$> enabled,
              ("KmsKeyId" Core..=) Prelude.<$> kmsKeyId
            ]
        )
