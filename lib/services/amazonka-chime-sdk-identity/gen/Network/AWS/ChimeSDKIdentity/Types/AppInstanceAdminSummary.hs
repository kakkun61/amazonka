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
-- Module      : Network.AWS.ChimeSDKIdentity.Types.AppInstanceAdminSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ChimeSDKIdentity.Types.AppInstanceAdminSummary where

import Network.AWS.ChimeSDKIdentity.Types.Identity
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary of the details of an @AppInstanceAdmin@.
--
-- /See:/ 'newAppInstanceAdminSummary' smart constructor.
data AppInstanceAdminSummary = AppInstanceAdminSummary'
  { -- | The details of the @AppInstanceAdmin@.
    admin :: Prelude.Maybe Identity
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AppInstanceAdminSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'admin', 'appInstanceAdminSummary_admin' - The details of the @AppInstanceAdmin@.
newAppInstanceAdminSummary ::
  AppInstanceAdminSummary
newAppInstanceAdminSummary =
  AppInstanceAdminSummary' {admin = Prelude.Nothing}

-- | The details of the @AppInstanceAdmin@.
appInstanceAdminSummary_admin :: Lens.Lens' AppInstanceAdminSummary (Prelude.Maybe Identity)
appInstanceAdminSummary_admin = Lens.lens (\AppInstanceAdminSummary' {admin} -> admin) (\s@AppInstanceAdminSummary' {} a -> s {admin = a} :: AppInstanceAdminSummary)

instance Core.FromJSON AppInstanceAdminSummary where
  parseJSON =
    Core.withObject
      "AppInstanceAdminSummary"
      ( \x ->
          AppInstanceAdminSummary'
            Prelude.<$> (x Core..:? "Admin")
      )

instance Prelude.Hashable AppInstanceAdminSummary

instance Prelude.NFData AppInstanceAdminSummary
