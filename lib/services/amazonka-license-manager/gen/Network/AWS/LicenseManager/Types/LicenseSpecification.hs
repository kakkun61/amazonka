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
-- Module      : Network.AWS.LicenseManager.Types.LicenseSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.LicenseSpecification where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details for associating a license configuration with a resource.
--
-- /See:/ 'newLicenseSpecification' smart constructor.
data LicenseSpecification = LicenseSpecification'
  { -- | Scope of AMI associations. The possible value is @cross-account@.
    amiAssociationScope :: Prelude.Maybe Prelude.Text,
    -- | Amazon Resource Name (ARN) of the license configuration.
    licenseConfigurationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LicenseSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'amiAssociationScope', 'licenseSpecification_amiAssociationScope' - Scope of AMI associations. The possible value is @cross-account@.
--
-- 'licenseConfigurationArn', 'licenseSpecification_licenseConfigurationArn' - Amazon Resource Name (ARN) of the license configuration.
newLicenseSpecification ::
  -- | 'licenseConfigurationArn'
  Prelude.Text ->
  LicenseSpecification
newLicenseSpecification pLicenseConfigurationArn_ =
  LicenseSpecification'
    { amiAssociationScope =
        Prelude.Nothing,
      licenseConfigurationArn = pLicenseConfigurationArn_
    }

-- | Scope of AMI associations. The possible value is @cross-account@.
licenseSpecification_amiAssociationScope :: Lens.Lens' LicenseSpecification (Prelude.Maybe Prelude.Text)
licenseSpecification_amiAssociationScope = Lens.lens (\LicenseSpecification' {amiAssociationScope} -> amiAssociationScope) (\s@LicenseSpecification' {} a -> s {amiAssociationScope = a} :: LicenseSpecification)

-- | Amazon Resource Name (ARN) of the license configuration.
licenseSpecification_licenseConfigurationArn :: Lens.Lens' LicenseSpecification Prelude.Text
licenseSpecification_licenseConfigurationArn = Lens.lens (\LicenseSpecification' {licenseConfigurationArn} -> licenseConfigurationArn) (\s@LicenseSpecification' {} a -> s {licenseConfigurationArn = a} :: LicenseSpecification)

instance Core.FromJSON LicenseSpecification where
  parseJSON =
    Core.withObject
      "LicenseSpecification"
      ( \x ->
          LicenseSpecification'
            Prelude.<$> (x Core..:? "AmiAssociationScope")
            Prelude.<*> (x Core..: "LicenseConfigurationArn")
      )

instance Prelude.Hashable LicenseSpecification

instance Prelude.NFData LicenseSpecification

instance Core.ToJSON LicenseSpecification where
  toJSON LicenseSpecification' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AmiAssociationScope" Core..=)
              Prelude.<$> amiAssociationScope,
            Prelude.Just
              ( "LicenseConfigurationArn"
                  Core..= licenseConfigurationArn
              )
          ]
      )
