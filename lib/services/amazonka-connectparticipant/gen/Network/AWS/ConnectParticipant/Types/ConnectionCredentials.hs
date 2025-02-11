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
-- Module      : Network.AWS.ConnectParticipant.Types.ConnectionCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ConnectParticipant.Types.ConnectionCredentials where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Connection credentials.
--
-- /See:/ 'newConnectionCredentials' smart constructor.
data ConnectionCredentials = ConnectionCredentials'
  { -- | The expiration of the token.
    --
    -- It\'s specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
    -- example, 2019-11-08T02:41:28.172Z.
    expiry :: Prelude.Maybe Prelude.Text,
    -- | The connection token.
    connectionToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ConnectionCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expiry', 'connectionCredentials_expiry' - The expiration of the token.
--
-- It\'s specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
-- example, 2019-11-08T02:41:28.172Z.
--
-- 'connectionToken', 'connectionCredentials_connectionToken' - The connection token.
newConnectionCredentials ::
  ConnectionCredentials
newConnectionCredentials =
  ConnectionCredentials'
    { expiry = Prelude.Nothing,
      connectionToken = Prelude.Nothing
    }

-- | The expiration of the token.
--
-- It\'s specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For
-- example, 2019-11-08T02:41:28.172Z.
connectionCredentials_expiry :: Lens.Lens' ConnectionCredentials (Prelude.Maybe Prelude.Text)
connectionCredentials_expiry = Lens.lens (\ConnectionCredentials' {expiry} -> expiry) (\s@ConnectionCredentials' {} a -> s {expiry = a} :: ConnectionCredentials)

-- | The connection token.
connectionCredentials_connectionToken :: Lens.Lens' ConnectionCredentials (Prelude.Maybe Prelude.Text)
connectionCredentials_connectionToken = Lens.lens (\ConnectionCredentials' {connectionToken} -> connectionToken) (\s@ConnectionCredentials' {} a -> s {connectionToken = a} :: ConnectionCredentials)

instance Core.FromJSON ConnectionCredentials where
  parseJSON =
    Core.withObject
      "ConnectionCredentials"
      ( \x ->
          ConnectionCredentials'
            Prelude.<$> (x Core..:? "Expiry")
            Prelude.<*> (x Core..:? "ConnectionToken")
      )

instance Prelude.Hashable ConnectionCredentials

instance Prelude.NFData ConnectionCredentials
