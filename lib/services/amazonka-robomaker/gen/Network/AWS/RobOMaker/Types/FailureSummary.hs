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
-- Module      : Network.AWS.RobOMaker.Types.FailureSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.FailureSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RobOMaker.Types.WorldFailure

-- | Information about worlds that failed.
--
-- /See:/ 'newFailureSummary' smart constructor.
data FailureSummary = FailureSummary'
  { -- | The worlds that failed.
    failures :: Prelude.Maybe [WorldFailure],
    -- | The total number of failures.
    totalFailureCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FailureSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failures', 'failureSummary_failures' - The worlds that failed.
--
-- 'totalFailureCount', 'failureSummary_totalFailureCount' - The total number of failures.
newFailureSummary ::
  FailureSummary
newFailureSummary =
  FailureSummary'
    { failures = Prelude.Nothing,
      totalFailureCount = Prelude.Nothing
    }

-- | The worlds that failed.
failureSummary_failures :: Lens.Lens' FailureSummary (Prelude.Maybe [WorldFailure])
failureSummary_failures = Lens.lens (\FailureSummary' {failures} -> failures) (\s@FailureSummary' {} a -> s {failures = a} :: FailureSummary) Prelude.. Lens.mapping Lens.coerced

-- | The total number of failures.
failureSummary_totalFailureCount :: Lens.Lens' FailureSummary (Prelude.Maybe Prelude.Int)
failureSummary_totalFailureCount = Lens.lens (\FailureSummary' {totalFailureCount} -> totalFailureCount) (\s@FailureSummary' {} a -> s {totalFailureCount = a} :: FailureSummary)

instance Core.FromJSON FailureSummary where
  parseJSON =
    Core.withObject
      "FailureSummary"
      ( \x ->
          FailureSummary'
            Prelude.<$> (x Core..:? "failures" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "totalFailureCount")
      )

instance Prelude.Hashable FailureSummary

instance Prelude.NFData FailureSummary
