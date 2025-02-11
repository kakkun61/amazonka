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
-- Module      : Network.AWS.LicenseManager.Types.ReportFrequency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.ReportFrequency where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types.ReportFrequencyType
import qualified Network.AWS.Prelude as Prelude

-- | Details about how frequently reports are generated.
--
-- /See:/ 'newReportFrequency' smart constructor.
data ReportFrequency = ReportFrequency'
  { -- | Time period between each report. The period can be daily, weekly, or
    -- monthly.
    period :: Prelude.Maybe ReportFrequencyType,
    -- | Number of times within the frequency period that a report is generated.
    -- The only supported value is @1@.
    value :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReportFrequency' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'period', 'reportFrequency_period' - Time period between each report. The period can be daily, weekly, or
-- monthly.
--
-- 'value', 'reportFrequency_value' - Number of times within the frequency period that a report is generated.
-- The only supported value is @1@.
newReportFrequency ::
  ReportFrequency
newReportFrequency =
  ReportFrequency'
    { period = Prelude.Nothing,
      value = Prelude.Nothing
    }

-- | Time period between each report. The period can be daily, weekly, or
-- monthly.
reportFrequency_period :: Lens.Lens' ReportFrequency (Prelude.Maybe ReportFrequencyType)
reportFrequency_period = Lens.lens (\ReportFrequency' {period} -> period) (\s@ReportFrequency' {} a -> s {period = a} :: ReportFrequency)

-- | Number of times within the frequency period that a report is generated.
-- The only supported value is @1@.
reportFrequency_value :: Lens.Lens' ReportFrequency (Prelude.Maybe Prelude.Int)
reportFrequency_value = Lens.lens (\ReportFrequency' {value} -> value) (\s@ReportFrequency' {} a -> s {value = a} :: ReportFrequency)

instance Core.FromJSON ReportFrequency where
  parseJSON =
    Core.withObject
      "ReportFrequency"
      ( \x ->
          ReportFrequency'
            Prelude.<$> (x Core..:? "period")
            Prelude.<*> (x Core..:? "value")
      )

instance Prelude.Hashable ReportFrequency

instance Prelude.NFData ReportFrequency

instance Core.ToJSON ReportFrequency where
  toJSON ReportFrequency' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("period" Core..=) Prelude.<$> period,
            ("value" Core..=) Prelude.<$> value
          ]
      )
