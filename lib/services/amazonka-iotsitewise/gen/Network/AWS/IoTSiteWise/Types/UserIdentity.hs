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
-- Module      : Network.AWS.IoTSiteWise.Types.UserIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTSiteWise.Types.UserIdentity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information for a user identity in an access policy.
--
-- /See:/ 'newUserIdentity' smart constructor.
data UserIdentity = UserIdentity'
  { -- | The Amazon Web Services SSO ID of the user.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UserIdentity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'userIdentity_id' - The Amazon Web Services SSO ID of the user.
newUserIdentity ::
  -- | 'id'
  Prelude.Text ->
  UserIdentity
newUserIdentity pId_ = UserIdentity' {id = pId_}

-- | The Amazon Web Services SSO ID of the user.
userIdentity_id :: Lens.Lens' UserIdentity Prelude.Text
userIdentity_id = Lens.lens (\UserIdentity' {id} -> id) (\s@UserIdentity' {} a -> s {id = a} :: UserIdentity)

instance Core.FromJSON UserIdentity where
  parseJSON =
    Core.withObject
      "UserIdentity"
      (\x -> UserIdentity' Prelude.<$> (x Core..: "id"))

instance Prelude.Hashable UserIdentity

instance Prelude.NFData UserIdentity

instance Core.ToJSON UserIdentity where
  toJSON UserIdentity' {..} =
    Core.object
      (Prelude.catMaybes [Prelude.Just ("id" Core..= id)])
