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
-- Module      : Network.AWS.FMS.Types.PossibleRemediationActions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.PossibleRemediationActions where

import qualified Network.AWS.Core as Core
import Network.AWS.FMS.Types.PossibleRemediationAction
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A list of possible remediation action lists. Each individual possible
-- remediation action is a list of individual remediation actions.
--
-- /See:/ 'newPossibleRemediationActions' smart constructor.
data PossibleRemediationActions = PossibleRemediationActions'
  { -- | Information about the actions.
    actions :: Prelude.Maybe [PossibleRemediationAction],
    -- | A description of the possible remediation actions list.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PossibleRemediationActions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'actions', 'possibleRemediationActions_actions' - Information about the actions.
--
-- 'description', 'possibleRemediationActions_description' - A description of the possible remediation actions list.
newPossibleRemediationActions ::
  PossibleRemediationActions
newPossibleRemediationActions =
  PossibleRemediationActions'
    { actions =
        Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | Information about the actions.
possibleRemediationActions_actions :: Lens.Lens' PossibleRemediationActions (Prelude.Maybe [PossibleRemediationAction])
possibleRemediationActions_actions = Lens.lens (\PossibleRemediationActions' {actions} -> actions) (\s@PossibleRemediationActions' {} a -> s {actions = a} :: PossibleRemediationActions) Prelude.. Lens.mapping Lens.coerced

-- | A description of the possible remediation actions list.
possibleRemediationActions_description :: Lens.Lens' PossibleRemediationActions (Prelude.Maybe Prelude.Text)
possibleRemediationActions_description = Lens.lens (\PossibleRemediationActions' {description} -> description) (\s@PossibleRemediationActions' {} a -> s {description = a} :: PossibleRemediationActions)

instance Core.FromJSON PossibleRemediationActions where
  parseJSON =
    Core.withObject
      "PossibleRemediationActions"
      ( \x ->
          PossibleRemediationActions'
            Prelude.<$> (x Core..:? "Actions" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "Description")
      )

instance Prelude.Hashable PossibleRemediationActions

instance Prelude.NFData PossibleRemediationActions
