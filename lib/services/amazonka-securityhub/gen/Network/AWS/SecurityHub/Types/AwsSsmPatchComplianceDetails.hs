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
-- Module      : Network.AWS.SecurityHub.Types.AwsSsmPatchComplianceDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsSsmPatchComplianceDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.AwsSsmPatch

-- | Provides information about the state of a patch on an instance based on
-- the patch baseline that was used to patch the instance.
--
-- /See:/ 'newAwsSsmPatchComplianceDetails' smart constructor.
data AwsSsmPatchComplianceDetails = AwsSsmPatchComplianceDetails'
  { -- | Information about the status of a patch.
    patch :: Prelude.Maybe AwsSsmPatch
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsSsmPatchComplianceDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patch', 'awsSsmPatchComplianceDetails_patch' - Information about the status of a patch.
newAwsSsmPatchComplianceDetails ::
  AwsSsmPatchComplianceDetails
newAwsSsmPatchComplianceDetails =
  AwsSsmPatchComplianceDetails'
    { patch =
        Prelude.Nothing
    }

-- | Information about the status of a patch.
awsSsmPatchComplianceDetails_patch :: Lens.Lens' AwsSsmPatchComplianceDetails (Prelude.Maybe AwsSsmPatch)
awsSsmPatchComplianceDetails_patch = Lens.lens (\AwsSsmPatchComplianceDetails' {patch} -> patch) (\s@AwsSsmPatchComplianceDetails' {} a -> s {patch = a} :: AwsSsmPatchComplianceDetails)

instance Core.FromJSON AwsSsmPatchComplianceDetails where
  parseJSON =
    Core.withObject
      "AwsSsmPatchComplianceDetails"
      ( \x ->
          AwsSsmPatchComplianceDetails'
            Prelude.<$> (x Core..:? "Patch")
      )

instance
  Prelude.Hashable
    AwsSsmPatchComplianceDetails

instance Prelude.NFData AwsSsmPatchComplianceDetails

instance Core.ToJSON AwsSsmPatchComplianceDetails where
  toJSON AwsSsmPatchComplianceDetails' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Patch" Core..=) Prelude.<$> patch]
      )
