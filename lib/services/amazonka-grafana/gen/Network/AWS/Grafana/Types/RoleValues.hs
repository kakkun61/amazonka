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
-- Module      : Network.AWS.Grafana.Types.RoleValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Grafana.Types.RoleValues where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This structure defines which groups defined in the SAML assertion
-- attribute are to be mapped to the Grafana @Admin@ and @Editor@ roles in
-- the workspace.
--
-- /See:/ 'newRoleValues' smart constructor.
data RoleValues = RoleValues'
  { -- | A list of groups from the SAML assertion attribute to grant the Grafana
    -- @Admin@ role to.
    admin :: Prelude.Maybe [Prelude.Text],
    -- | A list of groups from the SAML assertion attribute to grant the Grafana
    -- @Editor@ role to.
    editor :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RoleValues' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'admin', 'roleValues_admin' - A list of groups from the SAML assertion attribute to grant the Grafana
-- @Admin@ role to.
--
-- 'editor', 'roleValues_editor' - A list of groups from the SAML assertion attribute to grant the Grafana
-- @Editor@ role to.
newRoleValues ::
  RoleValues
newRoleValues =
  RoleValues'
    { admin = Prelude.Nothing,
      editor = Prelude.Nothing
    }

-- | A list of groups from the SAML assertion attribute to grant the Grafana
-- @Admin@ role to.
roleValues_admin :: Lens.Lens' RoleValues (Prelude.Maybe [Prelude.Text])
roleValues_admin = Lens.lens (\RoleValues' {admin} -> admin) (\s@RoleValues' {} a -> s {admin = a} :: RoleValues) Prelude.. Lens.mapping Lens.coerced

-- | A list of groups from the SAML assertion attribute to grant the Grafana
-- @Editor@ role to.
roleValues_editor :: Lens.Lens' RoleValues (Prelude.Maybe [Prelude.Text])
roleValues_editor = Lens.lens (\RoleValues' {editor} -> editor) (\s@RoleValues' {} a -> s {editor = a} :: RoleValues) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON RoleValues where
  parseJSON =
    Core.withObject
      "RoleValues"
      ( \x ->
          RoleValues'
            Prelude.<$> (x Core..:? "admin" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "editor" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable RoleValues

instance Prelude.NFData RoleValues

instance Core.ToJSON RoleValues where
  toJSON RoleValues' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("admin" Core..=) Prelude.<$> admin,
            ("editor" Core..=) Prelude.<$> editor
          ]
      )
