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
-- Module      : Network.AWS.Grafana.Types.User
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Grafana.Types.User where

import qualified Network.AWS.Core as Core
import Network.AWS.Grafana.Types.UserType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure that specifies one user or group in the workspace.
--
-- /See:/ 'newUser' smart constructor.
data User = User'
  { -- | The ID of the user or group.
    id :: Prelude.Text,
    -- | Specifies whether this is a single user or a group.
    type' :: UserType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'User' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'user_id' - The ID of the user or group.
--
-- 'type'', 'user_type' - Specifies whether this is a single user or a group.
newUser ::
  -- | 'id'
  Prelude.Text ->
  -- | 'type''
  UserType ->
  User
newUser pId_ pType_ =
  User' {id = pId_, type' = pType_}

-- | The ID of the user or group.
user_id :: Lens.Lens' User Prelude.Text
user_id = Lens.lens (\User' {id} -> id) (\s@User' {} a -> s {id = a} :: User)

-- | Specifies whether this is a single user or a group.
user_type :: Lens.Lens' User UserType
user_type = Lens.lens (\User' {type'} -> type') (\s@User' {} a -> s {type' = a} :: User)

instance Core.FromJSON User where
  parseJSON =
    Core.withObject
      "User"
      ( \x ->
          User'
            Prelude.<$> (x Core..: "id") Prelude.<*> (x Core..: "type")
      )

instance Prelude.Hashable User

instance Prelude.NFData User

instance Core.ToJSON User where
  toJSON User' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("id" Core..= id),
            Prelude.Just ("type" Core..= type')
          ]
      )
