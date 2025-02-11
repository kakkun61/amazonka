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
-- Module      : Network.AWS.RDSData.BeginTransaction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts a SQL transaction.
--
-- >  <important> <p>A transaction can run for a maximum of 24 hours. A transaction is terminated and rolled back automatically after 24 hours.</p> <p>A transaction times out if no calls use its transaction ID in three minutes. If a transaction times out before it's committed, it's rolled back automatically.</p> <p>DDL statements inside a transaction cause an implicit commit. We recommend that you run each DDL statement in a separate <code>ExecuteStatement</code> call with <code>continueAfterTimeout</code> enabled.</p> </important>
module Network.AWS.RDSData.BeginTransaction
  ( -- * Creating a Request
    BeginTransaction (..),
    newBeginTransaction,

    -- * Request Lenses
    beginTransaction_database,
    beginTransaction_schema,
    beginTransaction_resourceArn,
    beginTransaction_secretArn,

    -- * Destructuring the Response
    BeginTransactionResponse (..),
    newBeginTransactionResponse,

    -- * Response Lenses
    beginTransactionResponse_transactionId,
    beginTransactionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDSData.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request parameters represent the input of a request to start a SQL
-- transaction.
--
-- /See:/ 'newBeginTransaction' smart constructor.
data BeginTransaction = BeginTransaction'
  { -- | The name of the database.
    database :: Prelude.Maybe Prelude.Text,
    -- | The name of the database schema.
    schema :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    resourceArn :: Prelude.Text,
    -- | The name or ARN of the secret that enables access to the DB cluster.
    secretArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BeginTransaction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'database', 'beginTransaction_database' - The name of the database.
--
-- 'schema', 'beginTransaction_schema' - The name of the database schema.
--
-- 'resourceArn', 'beginTransaction_resourceArn' - The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
--
-- 'secretArn', 'beginTransaction_secretArn' - The name or ARN of the secret that enables access to the DB cluster.
newBeginTransaction ::
  -- | 'resourceArn'
  Prelude.Text ->
  -- | 'secretArn'
  Prelude.Text ->
  BeginTransaction
newBeginTransaction pResourceArn_ pSecretArn_ =
  BeginTransaction'
    { database = Prelude.Nothing,
      schema = Prelude.Nothing,
      resourceArn = pResourceArn_,
      secretArn = pSecretArn_
    }

-- | The name of the database.
beginTransaction_database :: Lens.Lens' BeginTransaction (Prelude.Maybe Prelude.Text)
beginTransaction_database = Lens.lens (\BeginTransaction' {database} -> database) (\s@BeginTransaction' {} a -> s {database = a} :: BeginTransaction)

-- | The name of the database schema.
beginTransaction_schema :: Lens.Lens' BeginTransaction (Prelude.Maybe Prelude.Text)
beginTransaction_schema = Lens.lens (\BeginTransaction' {schema} -> schema) (\s@BeginTransaction' {} a -> s {schema = a} :: BeginTransaction)

-- | The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
beginTransaction_resourceArn :: Lens.Lens' BeginTransaction Prelude.Text
beginTransaction_resourceArn = Lens.lens (\BeginTransaction' {resourceArn} -> resourceArn) (\s@BeginTransaction' {} a -> s {resourceArn = a} :: BeginTransaction)

-- | The name or ARN of the secret that enables access to the DB cluster.
beginTransaction_secretArn :: Lens.Lens' BeginTransaction Prelude.Text
beginTransaction_secretArn = Lens.lens (\BeginTransaction' {secretArn} -> secretArn) (\s@BeginTransaction' {} a -> s {secretArn = a} :: BeginTransaction)

instance Core.AWSRequest BeginTransaction where
  type
    AWSResponse BeginTransaction =
      BeginTransactionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BeginTransactionResponse'
            Prelude.<$> (x Core..?> "transactionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BeginTransaction

instance Prelude.NFData BeginTransaction

instance Core.ToHeaders BeginTransaction where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BeginTransaction where
  toJSON BeginTransaction' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("database" Core..=) Prelude.<$> database,
            ("schema" Core..=) Prelude.<$> schema,
            Prelude.Just ("resourceArn" Core..= resourceArn),
            Prelude.Just ("secretArn" Core..= secretArn)
          ]
      )

instance Core.ToPath BeginTransaction where
  toPath = Prelude.const "/BeginTransaction"

instance Core.ToQuery BeginTransaction where
  toQuery = Prelude.const Prelude.mempty

-- | The response elements represent the output of a request to start a SQL
-- transaction.
--
-- /See:/ 'newBeginTransactionResponse' smart constructor.
data BeginTransactionResponse = BeginTransactionResponse'
  { -- | The transaction ID of the transaction started by the call.
    transactionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BeginTransactionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transactionId', 'beginTransactionResponse_transactionId' - The transaction ID of the transaction started by the call.
--
-- 'httpStatus', 'beginTransactionResponse_httpStatus' - The response's http status code.
newBeginTransactionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BeginTransactionResponse
newBeginTransactionResponse pHttpStatus_ =
  BeginTransactionResponse'
    { transactionId =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The transaction ID of the transaction started by the call.
beginTransactionResponse_transactionId :: Lens.Lens' BeginTransactionResponse (Prelude.Maybe Prelude.Text)
beginTransactionResponse_transactionId = Lens.lens (\BeginTransactionResponse' {transactionId} -> transactionId) (\s@BeginTransactionResponse' {} a -> s {transactionId = a} :: BeginTransactionResponse)

-- | The response's http status code.
beginTransactionResponse_httpStatus :: Lens.Lens' BeginTransactionResponse Prelude.Int
beginTransactionResponse_httpStatus = Lens.lens (\BeginTransactionResponse' {httpStatus} -> httpStatus) (\s@BeginTransactionResponse' {} a -> s {httpStatus = a} :: BeginTransactionResponse)

instance Prelude.NFData BeginTransactionResponse
