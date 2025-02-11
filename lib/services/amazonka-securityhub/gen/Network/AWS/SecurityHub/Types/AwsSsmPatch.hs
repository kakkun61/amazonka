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
-- Module      : Network.AWS.SecurityHub.Types.AwsSsmPatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsSsmPatch where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsSsmComplianceSummary

-- | Provides details about the compliance for a patch.
--
-- /See:/ 'newAwsSsmPatch' smart constructor.
data AwsSsmPatch = AwsSsmPatch'
  { -- | The compliance status details for the patch.
    complianceSummary :: Prelude.Maybe AwsSsmComplianceSummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsSsmPatch' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'complianceSummary', 'awsSsmPatch_complianceSummary' - The compliance status details for the patch.
newAwsSsmPatch ::
  AwsSsmPatch
newAwsSsmPatch =
  AwsSsmPatch' {complianceSummary = Prelude.Nothing}

-- | The compliance status details for the patch.
awsSsmPatch_complianceSummary :: Lens.Lens' AwsSsmPatch (Prelude.Maybe AwsSsmComplianceSummary)
awsSsmPatch_complianceSummary = Lens.lens (\AwsSsmPatch' {complianceSummary} -> complianceSummary) (\s@AwsSsmPatch' {} a -> s {complianceSummary = a} :: AwsSsmPatch)

instance Core.FromJSON AwsSsmPatch where
  parseJSON =
    Core.withObject
      "AwsSsmPatch"
      ( \x ->
          AwsSsmPatch'
            Prelude.<$> (x Core..:? "ComplianceSummary")
      )

instance Prelude.Hashable AwsSsmPatch

instance Prelude.NFData AwsSsmPatch

instance Core.ToJSON AwsSsmPatch where
  toJSON AwsSsmPatch' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ComplianceSummary" Core..=)
              Prelude.<$> complianceSummary
          ]
      )
