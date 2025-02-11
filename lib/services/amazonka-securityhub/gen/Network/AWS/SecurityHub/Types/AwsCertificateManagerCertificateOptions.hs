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
-- Module      : Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains other options for the certificate.
--
-- /See:/ 'newAwsCertificateManagerCertificateOptions' smart constructor.
data AwsCertificateManagerCertificateOptions = AwsCertificateManagerCertificateOptions'
  { -- | Whether to add the certificate to a transparency log.
    --
    -- Valid values: @DISABLED@ | @ENABLED@
    certificateTransparencyLoggingPreference :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsCertificateManagerCertificateOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateTransparencyLoggingPreference', 'awsCertificateManagerCertificateOptions_certificateTransparencyLoggingPreference' - Whether to add the certificate to a transparency log.
--
-- Valid values: @DISABLED@ | @ENABLED@
newAwsCertificateManagerCertificateOptions ::
  AwsCertificateManagerCertificateOptions
newAwsCertificateManagerCertificateOptions =
  AwsCertificateManagerCertificateOptions'
    { certificateTransparencyLoggingPreference =
        Prelude.Nothing
    }

-- | Whether to add the certificate to a transparency log.
--
-- Valid values: @DISABLED@ | @ENABLED@
awsCertificateManagerCertificateOptions_certificateTransparencyLoggingPreference :: Lens.Lens' AwsCertificateManagerCertificateOptions (Prelude.Maybe Prelude.Text)
awsCertificateManagerCertificateOptions_certificateTransparencyLoggingPreference = Lens.lens (\AwsCertificateManagerCertificateOptions' {certificateTransparencyLoggingPreference} -> certificateTransparencyLoggingPreference) (\s@AwsCertificateManagerCertificateOptions' {} a -> s {certificateTransparencyLoggingPreference = a} :: AwsCertificateManagerCertificateOptions)

instance
  Core.FromJSON
    AwsCertificateManagerCertificateOptions
  where
  parseJSON =
    Core.withObject
      "AwsCertificateManagerCertificateOptions"
      ( \x ->
          AwsCertificateManagerCertificateOptions'
            Prelude.<$> ( x
                            Core..:? "CertificateTransparencyLoggingPreference"
                        )
      )

instance
  Prelude.Hashable
    AwsCertificateManagerCertificateOptions

instance
  Prelude.NFData
    AwsCertificateManagerCertificateOptions

instance
  Core.ToJSON
    AwsCertificateManagerCertificateOptions
  where
  toJSON AwsCertificateManagerCertificateOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CertificateTransparencyLoggingPreference" Core..=)
              Prelude.<$> certificateTransparencyLoggingPreference
          ]
      )
