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
-- Module      : Network.AWS.MacieV2.Types.FederatedUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.FederatedUser where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.SessionContext
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about an identity that performed an action on an
-- affected resource by using temporary security credentials. The
-- credentials were obtained using the GetFederationToken operation of the
-- Security Token Service (STS) API.
--
-- /See:/ 'newFederatedUser' smart constructor.
data FederatedUser = FederatedUser'
  { -- | The unique identifier for the entity that was used to get the
    -- credentials.
    principalId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the entity that was used to get the
    -- credentials.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The details of the session that was created for the credentials,
    -- including the entity that issued the session.
    sessionContext :: Prelude.Maybe SessionContext,
    -- | The unique identifier for the Amazon Web Services account that owns the
    -- entity that was used to get the credentials.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Web Services access key ID that identifies the credentials.
    accessKeyId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FederatedUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'principalId', 'federatedUser_principalId' - The unique identifier for the entity that was used to get the
-- credentials.
--
-- 'arn', 'federatedUser_arn' - The Amazon Resource Name (ARN) of the entity that was used to get the
-- credentials.
--
-- 'sessionContext', 'federatedUser_sessionContext' - The details of the session that was created for the credentials,
-- including the entity that issued the session.
--
-- 'accountId', 'federatedUser_accountId' - The unique identifier for the Amazon Web Services account that owns the
-- entity that was used to get the credentials.
--
-- 'accessKeyId', 'federatedUser_accessKeyId' - The Amazon Web Services access key ID that identifies the credentials.
newFederatedUser ::
  FederatedUser
newFederatedUser =
  FederatedUser'
    { principalId = Prelude.Nothing,
      arn = Prelude.Nothing,
      sessionContext = Prelude.Nothing,
      accountId = Prelude.Nothing,
      accessKeyId = Prelude.Nothing
    }

-- | The unique identifier for the entity that was used to get the
-- credentials.
federatedUser_principalId :: Lens.Lens' FederatedUser (Prelude.Maybe Prelude.Text)
federatedUser_principalId = Lens.lens (\FederatedUser' {principalId} -> principalId) (\s@FederatedUser' {} a -> s {principalId = a} :: FederatedUser)

-- | The Amazon Resource Name (ARN) of the entity that was used to get the
-- credentials.
federatedUser_arn :: Lens.Lens' FederatedUser (Prelude.Maybe Prelude.Text)
federatedUser_arn = Lens.lens (\FederatedUser' {arn} -> arn) (\s@FederatedUser' {} a -> s {arn = a} :: FederatedUser)

-- | The details of the session that was created for the credentials,
-- including the entity that issued the session.
federatedUser_sessionContext :: Lens.Lens' FederatedUser (Prelude.Maybe SessionContext)
federatedUser_sessionContext = Lens.lens (\FederatedUser' {sessionContext} -> sessionContext) (\s@FederatedUser' {} a -> s {sessionContext = a} :: FederatedUser)

-- | The unique identifier for the Amazon Web Services account that owns the
-- entity that was used to get the credentials.
federatedUser_accountId :: Lens.Lens' FederatedUser (Prelude.Maybe Prelude.Text)
federatedUser_accountId = Lens.lens (\FederatedUser' {accountId} -> accountId) (\s@FederatedUser' {} a -> s {accountId = a} :: FederatedUser)

-- | The Amazon Web Services access key ID that identifies the credentials.
federatedUser_accessKeyId :: Lens.Lens' FederatedUser (Prelude.Maybe Prelude.Text)
federatedUser_accessKeyId = Lens.lens (\FederatedUser' {accessKeyId} -> accessKeyId) (\s@FederatedUser' {} a -> s {accessKeyId = a} :: FederatedUser)

instance Core.FromJSON FederatedUser where
  parseJSON =
    Core.withObject
      "FederatedUser"
      ( \x ->
          FederatedUser'
            Prelude.<$> (x Core..:? "principalId")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "sessionContext")
            Prelude.<*> (x Core..:? "accountId")
            Prelude.<*> (x Core..:? "accessKeyId")
      )

instance Prelude.Hashable FederatedUser

instance Prelude.NFData FederatedUser
