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
-- Module      : Network.AWS.SecurityHub.Types.FindingProviderSeverity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.FindingProviderSeverity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SecurityHub.Types.SeverityLabel

-- | The severity assigned to the finding by the finding provider.
--
-- /See:/ 'newFindingProviderSeverity' smart constructor.
data FindingProviderSeverity = FindingProviderSeverity'
  { -- | The severity label assigned to the finding by the finding provider.
    label :: Prelude.Maybe SeverityLabel,
    -- | The finding provider\'s original value for the severity.
    original :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FindingProviderSeverity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'label', 'findingProviderSeverity_label' - The severity label assigned to the finding by the finding provider.
--
-- 'original', 'findingProviderSeverity_original' - The finding provider\'s original value for the severity.
newFindingProviderSeverity ::
  FindingProviderSeverity
newFindingProviderSeverity =
  FindingProviderSeverity'
    { label = Prelude.Nothing,
      original = Prelude.Nothing
    }

-- | The severity label assigned to the finding by the finding provider.
findingProviderSeverity_label :: Lens.Lens' FindingProviderSeverity (Prelude.Maybe SeverityLabel)
findingProviderSeverity_label = Lens.lens (\FindingProviderSeverity' {label} -> label) (\s@FindingProviderSeverity' {} a -> s {label = a} :: FindingProviderSeverity)

-- | The finding provider\'s original value for the severity.
findingProviderSeverity_original :: Lens.Lens' FindingProviderSeverity (Prelude.Maybe Prelude.Text)
findingProviderSeverity_original = Lens.lens (\FindingProviderSeverity' {original} -> original) (\s@FindingProviderSeverity' {} a -> s {original = a} :: FindingProviderSeverity)

instance Core.FromJSON FindingProviderSeverity where
  parseJSON =
    Core.withObject
      "FindingProviderSeverity"
      ( \x ->
          FindingProviderSeverity'
            Prelude.<$> (x Core..:? "Label")
            Prelude.<*> (x Core..:? "Original")
      )

instance Prelude.Hashable FindingProviderSeverity

instance Prelude.NFData FindingProviderSeverity

instance Core.ToJSON FindingProviderSeverity where
  toJSON FindingProviderSeverity' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Label" Core..=) Prelude.<$> label,
            ("Original" Core..=) Prelude.<$> original
          ]
      )
