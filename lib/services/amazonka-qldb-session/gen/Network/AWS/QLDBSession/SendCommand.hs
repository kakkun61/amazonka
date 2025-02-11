{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.QLDBSession.SendCommand
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a command to an Amazon QLDB ledger.
--
-- Instead of interacting directly with this API, we recommend using the
-- QLDB driver or the QLDB shell to execute data transactions on a ledger.
--
-- -   If you are working with an AWS SDK, use the QLDB driver. The driver
--     provides a high-level abstraction layer above this /QLDB Session/
--     data plane and manages @SendCommand@ API calls for you. For
--     information and a list of supported programming languages, see
--     <https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html Getting started with the driver>
--     in the /Amazon QLDB Developer Guide/.
--
-- -   If you are working with the AWS Command Line Interface (AWS CLI),
--     use the QLDB shell. The shell is a command line interface that uses
--     the QLDB driver to interact with a ledger. For information, see
--     <https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html Accessing Amazon QLDB using the QLDB shell>.
module Network.AWS.QLDBSession.SendCommand
  ( -- * Creating a Request
    SendCommand (..),
    newSendCommand,

    -- * Request Lenses
    sendCommand_fetchPage,
    sendCommand_sessionToken,
    sendCommand_abortTransaction,
    sendCommand_endSession,
    sendCommand_startTransaction,
    sendCommand_executeStatement,
    sendCommand_commitTransaction,
    sendCommand_startSession,

    -- * Destructuring the Response
    SendCommandResponse (..),
    newSendCommandResponse,

    -- * Response Lenses
    sendCommandResponse_fetchPage,
    sendCommandResponse_abortTransaction,
    sendCommandResponse_endSession,
    sendCommandResponse_startTransaction,
    sendCommandResponse_executeStatement,
    sendCommandResponse_commitTransaction,
    sendCommandResponse_startSession,
    sendCommandResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QLDBSession.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSendCommand' smart constructor.
data SendCommand = SendCommand'
  { -- | Command to fetch a page.
    fetchPage :: Prelude.Maybe FetchPageRequest,
    -- | Specifies the session token for the current command. A session token is
    -- constant throughout the life of the session.
    --
    -- To obtain a session token, run the @StartSession@ command. This
    -- @SessionToken@ is required for every subsequent command that is issued
    -- during the current session.
    sessionToken :: Prelude.Maybe Prelude.Text,
    -- | Command to abort the current transaction.
    abortTransaction :: Prelude.Maybe AbortTransactionRequest,
    -- | Command to end the current session.
    endSession :: Prelude.Maybe EndSessionRequest,
    -- | Command to start a new transaction.
    startTransaction :: Prelude.Maybe StartTransactionRequest,
    -- | Command to execute a statement in the specified transaction.
    executeStatement :: Prelude.Maybe ExecuteStatementRequest,
    -- | Command to commit the specified transaction.
    commitTransaction :: Prelude.Maybe CommitTransactionRequest,
    -- | Command to start a new session. A session token is obtained as part of
    -- the response.
    startSession :: Prelude.Maybe StartSessionRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendCommand' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fetchPage', 'sendCommand_fetchPage' - Command to fetch a page.
--
-- 'sessionToken', 'sendCommand_sessionToken' - Specifies the session token for the current command. A session token is
-- constant throughout the life of the session.
--
-- To obtain a session token, run the @StartSession@ command. This
-- @SessionToken@ is required for every subsequent command that is issued
-- during the current session.
--
-- 'abortTransaction', 'sendCommand_abortTransaction' - Command to abort the current transaction.
--
-- 'endSession', 'sendCommand_endSession' - Command to end the current session.
--
-- 'startTransaction', 'sendCommand_startTransaction' - Command to start a new transaction.
--
-- 'executeStatement', 'sendCommand_executeStatement' - Command to execute a statement in the specified transaction.
--
-- 'commitTransaction', 'sendCommand_commitTransaction' - Command to commit the specified transaction.
--
-- 'startSession', 'sendCommand_startSession' - Command to start a new session. A session token is obtained as part of
-- the response.
newSendCommand ::
  SendCommand
newSendCommand =
  SendCommand'
    { fetchPage = Prelude.Nothing,
      sessionToken = Prelude.Nothing,
      abortTransaction = Prelude.Nothing,
      endSession = Prelude.Nothing,
      startTransaction = Prelude.Nothing,
      executeStatement = Prelude.Nothing,
      commitTransaction = Prelude.Nothing,
      startSession = Prelude.Nothing
    }

-- | Command to fetch a page.
sendCommand_fetchPage :: Lens.Lens' SendCommand (Prelude.Maybe FetchPageRequest)
sendCommand_fetchPage = Lens.lens (\SendCommand' {fetchPage} -> fetchPage) (\s@SendCommand' {} a -> s {fetchPage = a} :: SendCommand)

-- | Specifies the session token for the current command. A session token is
-- constant throughout the life of the session.
--
-- To obtain a session token, run the @StartSession@ command. This
-- @SessionToken@ is required for every subsequent command that is issued
-- during the current session.
sendCommand_sessionToken :: Lens.Lens' SendCommand (Prelude.Maybe Prelude.Text)
sendCommand_sessionToken = Lens.lens (\SendCommand' {sessionToken} -> sessionToken) (\s@SendCommand' {} a -> s {sessionToken = a} :: SendCommand)

-- | Command to abort the current transaction.
sendCommand_abortTransaction :: Lens.Lens' SendCommand (Prelude.Maybe AbortTransactionRequest)
sendCommand_abortTransaction = Lens.lens (\SendCommand' {abortTransaction} -> abortTransaction) (\s@SendCommand' {} a -> s {abortTransaction = a} :: SendCommand)

-- | Command to end the current session.
sendCommand_endSession :: Lens.Lens' SendCommand (Prelude.Maybe EndSessionRequest)
sendCommand_endSession = Lens.lens (\SendCommand' {endSession} -> endSession) (\s@SendCommand' {} a -> s {endSession = a} :: SendCommand)

-- | Command to start a new transaction.
sendCommand_startTransaction :: Lens.Lens' SendCommand (Prelude.Maybe StartTransactionRequest)
sendCommand_startTransaction = Lens.lens (\SendCommand' {startTransaction} -> startTransaction) (\s@SendCommand' {} a -> s {startTransaction = a} :: SendCommand)

-- | Command to execute a statement in the specified transaction.
sendCommand_executeStatement :: Lens.Lens' SendCommand (Prelude.Maybe ExecuteStatementRequest)
sendCommand_executeStatement = Lens.lens (\SendCommand' {executeStatement} -> executeStatement) (\s@SendCommand' {} a -> s {executeStatement = a} :: SendCommand)

-- | Command to commit the specified transaction.
sendCommand_commitTransaction :: Lens.Lens' SendCommand (Prelude.Maybe CommitTransactionRequest)
sendCommand_commitTransaction = Lens.lens (\SendCommand' {commitTransaction} -> commitTransaction) (\s@SendCommand' {} a -> s {commitTransaction = a} :: SendCommand)

-- | Command to start a new session. A session token is obtained as part of
-- the response.
sendCommand_startSession :: Lens.Lens' SendCommand (Prelude.Maybe StartSessionRequest)
sendCommand_startSession = Lens.lens (\SendCommand' {startSession} -> startSession) (\s@SendCommand' {} a -> s {startSession = a} :: SendCommand)

instance Core.AWSRequest SendCommand where
  type AWSResponse SendCommand = SendCommandResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SendCommandResponse'
            Prelude.<$> (x Core..?> "FetchPage")
            Prelude.<*> (x Core..?> "AbortTransaction")
            Prelude.<*> (x Core..?> "EndSession")
            Prelude.<*> (x Core..?> "StartTransaction")
            Prelude.<*> (x Core..?> "ExecuteStatement")
            Prelude.<*> (x Core..?> "CommitTransaction")
            Prelude.<*> (x Core..?> "StartSession")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable SendCommand

instance Prelude.NFData SendCommand

instance Core.ToHeaders SendCommand where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("QLDBSession.SendCommand" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON SendCommand where
  toJSON SendCommand' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("FetchPage" Core..=) Prelude.<$> fetchPage,
            ("SessionToken" Core..=) Prelude.<$> sessionToken,
            ("AbortTransaction" Core..=)
              Prelude.<$> abortTransaction,
            ("EndSession" Core..=) Prelude.<$> endSession,
            ("StartTransaction" Core..=)
              Prelude.<$> startTransaction,
            ("ExecuteStatement" Core..=)
              Prelude.<$> executeStatement,
            ("CommitTransaction" Core..=)
              Prelude.<$> commitTransaction,
            ("StartSession" Core..=) Prelude.<$> startSession
          ]
      )

instance Core.ToPath SendCommand where
  toPath = Prelude.const "/"

instance Core.ToQuery SendCommand where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSendCommandResponse' smart constructor.
data SendCommandResponse = SendCommandResponse'
  { -- | Contains the details of the fetched page.
    fetchPage :: Prelude.Maybe FetchPageResult,
    -- | Contains the details of the aborted transaction.
    abortTransaction :: Prelude.Maybe AbortTransactionResult,
    -- | Contains the details of the ended session.
    endSession :: Prelude.Maybe EndSessionResult,
    -- | Contains the details of the started transaction.
    startTransaction :: Prelude.Maybe StartTransactionResult,
    -- | Contains the details of the executed statement.
    executeStatement :: Prelude.Maybe ExecuteStatementResult,
    -- | Contains the details of the committed transaction.
    commitTransaction :: Prelude.Maybe CommitTransactionResult,
    -- | Contains the details of the started session that includes a session
    -- token. This @SessionToken@ is required for every subsequent command that
    -- is issued during the current session.
    startSession :: Prelude.Maybe StartSessionResult,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SendCommandResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fetchPage', 'sendCommandResponse_fetchPage' - Contains the details of the fetched page.
--
-- 'abortTransaction', 'sendCommandResponse_abortTransaction' - Contains the details of the aborted transaction.
--
-- 'endSession', 'sendCommandResponse_endSession' - Contains the details of the ended session.
--
-- 'startTransaction', 'sendCommandResponse_startTransaction' - Contains the details of the started transaction.
--
-- 'executeStatement', 'sendCommandResponse_executeStatement' - Contains the details of the executed statement.
--
-- 'commitTransaction', 'sendCommandResponse_commitTransaction' - Contains the details of the committed transaction.
--
-- 'startSession', 'sendCommandResponse_startSession' - Contains the details of the started session that includes a session
-- token. This @SessionToken@ is required for every subsequent command that
-- is issued during the current session.
--
-- 'httpStatus', 'sendCommandResponse_httpStatus' - The response's http status code.
newSendCommandResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SendCommandResponse
newSendCommandResponse pHttpStatus_ =
  SendCommandResponse'
    { fetchPage = Prelude.Nothing,
      abortTransaction = Prelude.Nothing,
      endSession = Prelude.Nothing,
      startTransaction = Prelude.Nothing,
      executeStatement = Prelude.Nothing,
      commitTransaction = Prelude.Nothing,
      startSession = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains the details of the fetched page.
sendCommandResponse_fetchPage :: Lens.Lens' SendCommandResponse (Prelude.Maybe FetchPageResult)
sendCommandResponse_fetchPage = Lens.lens (\SendCommandResponse' {fetchPage} -> fetchPage) (\s@SendCommandResponse' {} a -> s {fetchPage = a} :: SendCommandResponse)

-- | Contains the details of the aborted transaction.
sendCommandResponse_abortTransaction :: Lens.Lens' SendCommandResponse (Prelude.Maybe AbortTransactionResult)
sendCommandResponse_abortTransaction = Lens.lens (\SendCommandResponse' {abortTransaction} -> abortTransaction) (\s@SendCommandResponse' {} a -> s {abortTransaction = a} :: SendCommandResponse)

-- | Contains the details of the ended session.
sendCommandResponse_endSession :: Lens.Lens' SendCommandResponse (Prelude.Maybe EndSessionResult)
sendCommandResponse_endSession = Lens.lens (\SendCommandResponse' {endSession} -> endSession) (\s@SendCommandResponse' {} a -> s {endSession = a} :: SendCommandResponse)

-- | Contains the details of the started transaction.
sendCommandResponse_startTransaction :: Lens.Lens' SendCommandResponse (Prelude.Maybe StartTransactionResult)
sendCommandResponse_startTransaction = Lens.lens (\SendCommandResponse' {startTransaction} -> startTransaction) (\s@SendCommandResponse' {} a -> s {startTransaction = a} :: SendCommandResponse)

-- | Contains the details of the executed statement.
sendCommandResponse_executeStatement :: Lens.Lens' SendCommandResponse (Prelude.Maybe ExecuteStatementResult)
sendCommandResponse_executeStatement = Lens.lens (\SendCommandResponse' {executeStatement} -> executeStatement) (\s@SendCommandResponse' {} a -> s {executeStatement = a} :: SendCommandResponse)

-- | Contains the details of the committed transaction.
sendCommandResponse_commitTransaction :: Lens.Lens' SendCommandResponse (Prelude.Maybe CommitTransactionResult)
sendCommandResponse_commitTransaction = Lens.lens (\SendCommandResponse' {commitTransaction} -> commitTransaction) (\s@SendCommandResponse' {} a -> s {commitTransaction = a} :: SendCommandResponse)

-- | Contains the details of the started session that includes a session
-- token. This @SessionToken@ is required for every subsequent command that
-- is issued during the current session.
sendCommandResponse_startSession :: Lens.Lens' SendCommandResponse (Prelude.Maybe StartSessionResult)
sendCommandResponse_startSession = Lens.lens (\SendCommandResponse' {startSession} -> startSession) (\s@SendCommandResponse' {} a -> s {startSession = a} :: SendCommandResponse)

-- | The response's http status code.
sendCommandResponse_httpStatus :: Lens.Lens' SendCommandResponse Prelude.Int
sendCommandResponse_httpStatus = Lens.lens (\SendCommandResponse' {httpStatus} -> httpStatus) (\s@SendCommandResponse' {} a -> s {httpStatus = a} :: SendCommandResponse)

instance Prelude.NFData SendCommandResponse
