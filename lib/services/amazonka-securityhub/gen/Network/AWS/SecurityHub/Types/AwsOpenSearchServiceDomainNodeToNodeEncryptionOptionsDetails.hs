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
-- Module      : Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides details about the configuration for node-to-node encryption.
--
-- /See:/ 'newAwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails' smart constructor.
data AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails = AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails'
  { -- | Whether node-to-node encryption is enabled.
    enabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'awsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails_enabled' - Whether node-to-node encryption is enabled.
newAwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails ::
  AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
newAwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails =
  AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails'
    { enabled =
        Prelude.Nothing
    }

-- | Whether node-to-node encryption is enabled.
awsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails_enabled :: Lens.Lens' AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails (Prelude.Maybe Prelude.Bool)
awsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails_enabled = Lens.lens (\AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails' {enabled} -> enabled) (\s@AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails' {} a -> s {enabled = a} :: AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails)

instance
  Core.FromJSON
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
  where
  parseJSON =
    Core.withObject
      "AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails"
      ( \x ->
          AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails'
            Prelude.<$> (x Core..:? "Enabled")
      )

instance
  Prelude.Hashable
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails

instance
  Prelude.NFData
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails

instance
  Core.ToJSON
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails
  where
  toJSON
    AwsOpenSearchServiceDomainNodeToNodeEncryptionOptionsDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [("Enabled" Core..=) Prelude.<$> enabled]
        )
