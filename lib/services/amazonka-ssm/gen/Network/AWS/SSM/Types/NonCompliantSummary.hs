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
-- Module      : Network.AWS.SSM.Types.NonCompliantSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.NonCompliantSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSM.Types.SeveritySummary

-- | A summary of resources that aren\'t compliant. The summary is organized
-- according to resource type.
--
-- /See:/ 'newNonCompliantSummary' smart constructor.
data NonCompliantSummary = NonCompliantSummary'
  { -- | The total number of compliance items that aren\'t compliant.
    nonCompliantCount :: Prelude.Maybe Prelude.Int,
    -- | A summary of the non-compliance severity by compliance type
    severitySummary :: Prelude.Maybe SeveritySummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'NonCompliantSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nonCompliantCount', 'nonCompliantSummary_nonCompliantCount' - The total number of compliance items that aren\'t compliant.
--
-- 'severitySummary', 'nonCompliantSummary_severitySummary' - A summary of the non-compliance severity by compliance type
newNonCompliantSummary ::
  NonCompliantSummary
newNonCompliantSummary =
  NonCompliantSummary'
    { nonCompliantCount =
        Prelude.Nothing,
      severitySummary = Prelude.Nothing
    }

-- | The total number of compliance items that aren\'t compliant.
nonCompliantSummary_nonCompliantCount :: Lens.Lens' NonCompliantSummary (Prelude.Maybe Prelude.Int)
nonCompliantSummary_nonCompliantCount = Lens.lens (\NonCompliantSummary' {nonCompliantCount} -> nonCompliantCount) (\s@NonCompliantSummary' {} a -> s {nonCompliantCount = a} :: NonCompliantSummary)

-- | A summary of the non-compliance severity by compliance type
nonCompliantSummary_severitySummary :: Lens.Lens' NonCompliantSummary (Prelude.Maybe SeveritySummary)
nonCompliantSummary_severitySummary = Lens.lens (\NonCompliantSummary' {severitySummary} -> severitySummary) (\s@NonCompliantSummary' {} a -> s {severitySummary = a} :: NonCompliantSummary)

instance Core.FromJSON NonCompliantSummary where
  parseJSON =
    Core.withObject
      "NonCompliantSummary"
      ( \x ->
          NonCompliantSummary'
            Prelude.<$> (x Core..:? "NonCompliantCount")
            Prelude.<*> (x Core..:? "SeveritySummary")
      )

instance Prelude.Hashable NonCompliantSummary

instance Prelude.NFData NonCompliantSummary
