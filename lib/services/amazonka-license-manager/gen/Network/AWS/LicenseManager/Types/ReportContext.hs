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
-- Module      : Network.AWS.LicenseManager.Types.ReportContext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.ReportContext where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details of the license configuration that this generator reports on.
--
-- /See:/ 'newReportContext' smart constructor.
data ReportContext = ReportContext'
  { -- | Amazon Resource Name (ARN) of the license configuration that this
    -- generator reports on.
    licenseConfigurationArns :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReportContext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'licenseConfigurationArns', 'reportContext_licenseConfigurationArns' - Amazon Resource Name (ARN) of the license configuration that this
-- generator reports on.
newReportContext ::
  ReportContext
newReportContext =
  ReportContext'
    { licenseConfigurationArns =
        Prelude.mempty
    }

-- | Amazon Resource Name (ARN) of the license configuration that this
-- generator reports on.
reportContext_licenseConfigurationArns :: Lens.Lens' ReportContext [Prelude.Text]
reportContext_licenseConfigurationArns = Lens.lens (\ReportContext' {licenseConfigurationArns} -> licenseConfigurationArns) (\s@ReportContext' {} a -> s {licenseConfigurationArns = a} :: ReportContext) Prelude.. Lens.coerced

instance Core.FromJSON ReportContext where
  parseJSON =
    Core.withObject
      "ReportContext"
      ( \x ->
          ReportContext'
            Prelude.<$> ( x Core..:? "licenseConfigurationArns"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable ReportContext

instance Prelude.NFData ReportContext

instance Core.ToJSON ReportContext where
  toJSON ReportContext' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "licenseConfigurationArns"
                  Core..= licenseConfigurationArns
              )
          ]
      )
