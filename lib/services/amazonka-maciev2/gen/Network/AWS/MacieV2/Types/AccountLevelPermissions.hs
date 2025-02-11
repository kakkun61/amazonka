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
-- Module      : Network.AWS.MacieV2.Types.AccountLevelPermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.AccountLevelPermissions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.BlockPublicAccess
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about the account-level permissions settings that
-- apply to an S3 bucket.
--
-- /See:/ 'newAccountLevelPermissions' smart constructor.
data AccountLevelPermissions = AccountLevelPermissions'
  { -- | The block public access settings for the Amazon Web Services account
    -- that owns the bucket.
    blockPublicAccess :: Prelude.Maybe BlockPublicAccess
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccountLevelPermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'blockPublicAccess', 'accountLevelPermissions_blockPublicAccess' - The block public access settings for the Amazon Web Services account
-- that owns the bucket.
newAccountLevelPermissions ::
  AccountLevelPermissions
newAccountLevelPermissions =
  AccountLevelPermissions'
    { blockPublicAccess =
        Prelude.Nothing
    }

-- | The block public access settings for the Amazon Web Services account
-- that owns the bucket.
accountLevelPermissions_blockPublicAccess :: Lens.Lens' AccountLevelPermissions (Prelude.Maybe BlockPublicAccess)
accountLevelPermissions_blockPublicAccess = Lens.lens (\AccountLevelPermissions' {blockPublicAccess} -> blockPublicAccess) (\s@AccountLevelPermissions' {} a -> s {blockPublicAccess = a} :: AccountLevelPermissions)

instance Core.FromJSON AccountLevelPermissions where
  parseJSON =
    Core.withObject
      "AccountLevelPermissions"
      ( \x ->
          AccountLevelPermissions'
            Prelude.<$> (x Core..:? "blockPublicAccess")
      )

instance Prelude.Hashable AccountLevelPermissions

instance Prelude.NFData AccountLevelPermissions
