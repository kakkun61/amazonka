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
-- Module      : Network.AWS.OpenSearch.Types.InboundConnectionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.InboundConnectionStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types.InboundConnectionStatusCode
import qualified Network.AWS.Prelude as Prelude

-- | The connection status of an inbound cross-cluster connection.
--
-- /See:/ 'newInboundConnectionStatus' smart constructor.
data InboundConnectionStatus = InboundConnectionStatus'
  { -- | Verbose information for the inbound connection status.
    message :: Prelude.Maybe Prelude.Text,
    -- | The state code for the inbound connection. Can be one of the following:
    --
    -- -   PENDING_ACCEPTANCE: Inbound connection is not yet accepted by the
    --     remote domain owner.
    -- -   APPROVED: Inbound connection is pending acceptance by the remote
    --     domain owner.
    -- -   PROVISIONING: Inbound connection provisioning is in progress.
    -- -   ACTIVE: Inbound connection is active and ready to use.
    -- -   REJECTING: Inbound connection rejection is in process.
    -- -   REJECTED: Inbound connection is rejected.
    -- -   DELETING: Inbound connection deletion is in progress.
    -- -   DELETED: Inbound connection is deleted and can no longer be used.
    statusCode :: Prelude.Maybe InboundConnectionStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InboundConnectionStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'inboundConnectionStatus_message' - Verbose information for the inbound connection status.
--
-- 'statusCode', 'inboundConnectionStatus_statusCode' - The state code for the inbound connection. Can be one of the following:
--
-- -   PENDING_ACCEPTANCE: Inbound connection is not yet accepted by the
--     remote domain owner.
-- -   APPROVED: Inbound connection is pending acceptance by the remote
--     domain owner.
-- -   PROVISIONING: Inbound connection provisioning is in progress.
-- -   ACTIVE: Inbound connection is active and ready to use.
-- -   REJECTING: Inbound connection rejection is in process.
-- -   REJECTED: Inbound connection is rejected.
-- -   DELETING: Inbound connection deletion is in progress.
-- -   DELETED: Inbound connection is deleted and can no longer be used.
newInboundConnectionStatus ::
  InboundConnectionStatus
newInboundConnectionStatus =
  InboundConnectionStatus'
    { message = Prelude.Nothing,
      statusCode = Prelude.Nothing
    }

-- | Verbose information for the inbound connection status.
inboundConnectionStatus_message :: Lens.Lens' InboundConnectionStatus (Prelude.Maybe Prelude.Text)
inboundConnectionStatus_message = Lens.lens (\InboundConnectionStatus' {message} -> message) (\s@InboundConnectionStatus' {} a -> s {message = a} :: InboundConnectionStatus)

-- | The state code for the inbound connection. Can be one of the following:
--
-- -   PENDING_ACCEPTANCE: Inbound connection is not yet accepted by the
--     remote domain owner.
-- -   APPROVED: Inbound connection is pending acceptance by the remote
--     domain owner.
-- -   PROVISIONING: Inbound connection provisioning is in progress.
-- -   ACTIVE: Inbound connection is active and ready to use.
-- -   REJECTING: Inbound connection rejection is in process.
-- -   REJECTED: Inbound connection is rejected.
-- -   DELETING: Inbound connection deletion is in progress.
-- -   DELETED: Inbound connection is deleted and can no longer be used.
inboundConnectionStatus_statusCode :: Lens.Lens' InboundConnectionStatus (Prelude.Maybe InboundConnectionStatusCode)
inboundConnectionStatus_statusCode = Lens.lens (\InboundConnectionStatus' {statusCode} -> statusCode) (\s@InboundConnectionStatus' {} a -> s {statusCode = a} :: InboundConnectionStatus)

instance Core.FromJSON InboundConnectionStatus where
  parseJSON =
    Core.withObject
      "InboundConnectionStatus"
      ( \x ->
          InboundConnectionStatus'
            Prelude.<$> (x Core..:? "Message")
            Prelude.<*> (x Core..:? "StatusCode")
      )

instance Prelude.Hashable InboundConnectionStatus

instance Prelude.NFData InboundConnectionStatus
