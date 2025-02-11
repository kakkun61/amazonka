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
-- Module      : Network.AWS.IoTEvents.Types.SSOIdentity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.SSOIdentity where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about your identity source in AWS Single Sign-On.
-- For more information, see the
-- <https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html AWS Single Sign-On User Guide>.
--
-- /See:/ 'newSSOIdentity' smart constructor.
data SSOIdentity = SSOIdentity'
  { -- | The user ID.
    userId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the AWS SSO identity store.
    identityStoreId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SSOIdentity' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userId', 'sSOIdentity_userId' - The user ID.
--
-- 'identityStoreId', 'sSOIdentity_identityStoreId' - The ID of the AWS SSO identity store.
newSSOIdentity ::
  -- | 'identityStoreId'
  Prelude.Text ->
  SSOIdentity
newSSOIdentity pIdentityStoreId_ =
  SSOIdentity'
    { userId = Prelude.Nothing,
      identityStoreId = pIdentityStoreId_
    }

-- | The user ID.
sSOIdentity_userId :: Lens.Lens' SSOIdentity (Prelude.Maybe Prelude.Text)
sSOIdentity_userId = Lens.lens (\SSOIdentity' {userId} -> userId) (\s@SSOIdentity' {} a -> s {userId = a} :: SSOIdentity)

-- | The ID of the AWS SSO identity store.
sSOIdentity_identityStoreId :: Lens.Lens' SSOIdentity Prelude.Text
sSOIdentity_identityStoreId = Lens.lens (\SSOIdentity' {identityStoreId} -> identityStoreId) (\s@SSOIdentity' {} a -> s {identityStoreId = a} :: SSOIdentity)

instance Core.FromJSON SSOIdentity where
  parseJSON =
    Core.withObject
      "SSOIdentity"
      ( \x ->
          SSOIdentity'
            Prelude.<$> (x Core..:? "userId")
            Prelude.<*> (x Core..: "identityStoreId")
      )

instance Prelude.Hashable SSOIdentity

instance Prelude.NFData SSOIdentity

instance Core.ToJSON SSOIdentity where
  toJSON SSOIdentity' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("userId" Core..=) Prelude.<$> userId,
            Prelude.Just
              ("identityStoreId" Core..= identityStoreId)
          ]
      )
