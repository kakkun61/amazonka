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
-- Module      : Network.AWS.RDSData.ExecuteStatement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs a SQL statement against a database.
--
-- If a call isn\'t part of a transaction because it doesn\'t include the
-- @transactionID@ parameter, changes that result from the call are
-- committed automatically.
--
-- The response size limit is 1 MB. If the call returns more than 1 MB of
-- response data, the call is terminated.
module Network.AWS.RDSData.ExecuteStatement
  ( -- * Creating a Request
    ExecuteStatement (..),
    newExecuteStatement,

    -- * Request Lenses
    executeStatement_database,
    executeStatement_transactionId,
    executeStatement_schema,
    executeStatement_parameters,
    executeStatement_includeResultMetadata,
    executeStatement_resultSetOptions,
    executeStatement_continueAfterTimeout,
    executeStatement_resourceArn,
    executeStatement_secretArn,
    executeStatement_sql,

    -- * Destructuring the Response
    ExecuteStatementResponse (..),
    newExecuteStatementResponse,

    -- * Response Lenses
    executeStatementResponse_records,
    executeStatementResponse_columnMetadata,
    executeStatementResponse_generatedFields,
    executeStatementResponse_numberOfRecordsUpdated,
    executeStatementResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDSData.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The request parameters represent the input of a request to run a SQL
-- statement against a database.
--
-- /See:/ 'newExecuteStatement' smart constructor.
data ExecuteStatement = ExecuteStatement'
  { -- | The name of the database.
    database :: Prelude.Maybe Prelude.Text,
    -- | The identifier of a transaction that was started by using the
    -- @BeginTransaction@ operation. Specify the transaction ID of the
    -- transaction that you want to include the SQL statement in.
    --
    -- If the SQL statement is not part of a transaction, don\'t set this
    -- parameter.
    transactionId :: Prelude.Maybe Prelude.Text,
    -- | The name of the database schema.
    --
    -- Currently, the @schema@ parameter isn\'t supported.
    schema :: Prelude.Maybe Prelude.Text,
    -- | The parameters for the SQL statement.
    --
    -- Array parameters are not supported.
    parameters :: Prelude.Maybe [SqlParameter],
    -- | A value that indicates whether to include metadata in the results.
    includeResultMetadata :: Prelude.Maybe Prelude.Bool,
    -- | Options that control how the result set is returned.
    resultSetOptions :: Prelude.Maybe ResultSetOptions,
    -- | A value that indicates whether to continue running the statement after
    -- the call times out. By default, the statement stops running when the
    -- call times out.
    --
    -- For DDL statements, we recommend continuing to run the statement after
    -- the call times out. When a DDL statement terminates before it is
    -- finished running, it can result in errors and possibly corrupted data
    -- structures.
    continueAfterTimeout :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
    resourceArn :: Prelude.Text,
    -- | The name or ARN of the secret that enables access to the DB cluster.
    secretArn :: Prelude.Text,
    -- | The SQL statement to run.
    sql :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecuteStatement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'database', 'executeStatement_database' - The name of the database.
--
-- 'transactionId', 'executeStatement_transactionId' - The identifier of a transaction that was started by using the
-- @BeginTransaction@ operation. Specify the transaction ID of the
-- transaction that you want to include the SQL statement in.
--
-- If the SQL statement is not part of a transaction, don\'t set this
-- parameter.
--
-- 'schema', 'executeStatement_schema' - The name of the database schema.
--
-- Currently, the @schema@ parameter isn\'t supported.
--
-- 'parameters', 'executeStatement_parameters' - The parameters for the SQL statement.
--
-- Array parameters are not supported.
--
-- 'includeResultMetadata', 'executeStatement_includeResultMetadata' - A value that indicates whether to include metadata in the results.
--
-- 'resultSetOptions', 'executeStatement_resultSetOptions' - Options that control how the result set is returned.
--
-- 'continueAfterTimeout', 'executeStatement_continueAfterTimeout' - A value that indicates whether to continue running the statement after
-- the call times out. By default, the statement stops running when the
-- call times out.
--
-- For DDL statements, we recommend continuing to run the statement after
-- the call times out. When a DDL statement terminates before it is
-- finished running, it can result in errors and possibly corrupted data
-- structures.
--
-- 'resourceArn', 'executeStatement_resourceArn' - The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
--
-- 'secretArn', 'executeStatement_secretArn' - The name or ARN of the secret that enables access to the DB cluster.
--
-- 'sql', 'executeStatement_sql' - The SQL statement to run.
newExecuteStatement ::
  -- | 'resourceArn'
  Prelude.Text ->
  -- | 'secretArn'
  Prelude.Text ->
  -- | 'sql'
  Prelude.Text ->
  ExecuteStatement
newExecuteStatement pResourceArn_ pSecretArn_ pSql_ =
  ExecuteStatement'
    { database = Prelude.Nothing,
      transactionId = Prelude.Nothing,
      schema = Prelude.Nothing,
      parameters = Prelude.Nothing,
      includeResultMetadata = Prelude.Nothing,
      resultSetOptions = Prelude.Nothing,
      continueAfterTimeout = Prelude.Nothing,
      resourceArn = pResourceArn_,
      secretArn = pSecretArn_,
      sql = pSql_
    }

-- | The name of the database.
executeStatement_database :: Lens.Lens' ExecuteStatement (Prelude.Maybe Prelude.Text)
executeStatement_database = Lens.lens (\ExecuteStatement' {database} -> database) (\s@ExecuteStatement' {} a -> s {database = a} :: ExecuteStatement)

-- | The identifier of a transaction that was started by using the
-- @BeginTransaction@ operation. Specify the transaction ID of the
-- transaction that you want to include the SQL statement in.
--
-- If the SQL statement is not part of a transaction, don\'t set this
-- parameter.
executeStatement_transactionId :: Lens.Lens' ExecuteStatement (Prelude.Maybe Prelude.Text)
executeStatement_transactionId = Lens.lens (\ExecuteStatement' {transactionId} -> transactionId) (\s@ExecuteStatement' {} a -> s {transactionId = a} :: ExecuteStatement)

-- | The name of the database schema.
--
-- Currently, the @schema@ parameter isn\'t supported.
executeStatement_schema :: Lens.Lens' ExecuteStatement (Prelude.Maybe Prelude.Text)
executeStatement_schema = Lens.lens (\ExecuteStatement' {schema} -> schema) (\s@ExecuteStatement' {} a -> s {schema = a} :: ExecuteStatement)

-- | The parameters for the SQL statement.
--
-- Array parameters are not supported.
executeStatement_parameters :: Lens.Lens' ExecuteStatement (Prelude.Maybe [SqlParameter])
executeStatement_parameters = Lens.lens (\ExecuteStatement' {parameters} -> parameters) (\s@ExecuteStatement' {} a -> s {parameters = a} :: ExecuteStatement) Prelude.. Lens.mapping Lens.coerced

-- | A value that indicates whether to include metadata in the results.
executeStatement_includeResultMetadata :: Lens.Lens' ExecuteStatement (Prelude.Maybe Prelude.Bool)
executeStatement_includeResultMetadata = Lens.lens (\ExecuteStatement' {includeResultMetadata} -> includeResultMetadata) (\s@ExecuteStatement' {} a -> s {includeResultMetadata = a} :: ExecuteStatement)

-- | Options that control how the result set is returned.
executeStatement_resultSetOptions :: Lens.Lens' ExecuteStatement (Prelude.Maybe ResultSetOptions)
executeStatement_resultSetOptions = Lens.lens (\ExecuteStatement' {resultSetOptions} -> resultSetOptions) (\s@ExecuteStatement' {} a -> s {resultSetOptions = a} :: ExecuteStatement)

-- | A value that indicates whether to continue running the statement after
-- the call times out. By default, the statement stops running when the
-- call times out.
--
-- For DDL statements, we recommend continuing to run the statement after
-- the call times out. When a DDL statement terminates before it is
-- finished running, it can result in errors and possibly corrupted data
-- structures.
executeStatement_continueAfterTimeout :: Lens.Lens' ExecuteStatement (Prelude.Maybe Prelude.Bool)
executeStatement_continueAfterTimeout = Lens.lens (\ExecuteStatement' {continueAfterTimeout} -> continueAfterTimeout) (\s@ExecuteStatement' {} a -> s {continueAfterTimeout = a} :: ExecuteStatement)

-- | The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.
executeStatement_resourceArn :: Lens.Lens' ExecuteStatement Prelude.Text
executeStatement_resourceArn = Lens.lens (\ExecuteStatement' {resourceArn} -> resourceArn) (\s@ExecuteStatement' {} a -> s {resourceArn = a} :: ExecuteStatement)

-- | The name or ARN of the secret that enables access to the DB cluster.
executeStatement_secretArn :: Lens.Lens' ExecuteStatement Prelude.Text
executeStatement_secretArn = Lens.lens (\ExecuteStatement' {secretArn} -> secretArn) (\s@ExecuteStatement' {} a -> s {secretArn = a} :: ExecuteStatement)

-- | The SQL statement to run.
executeStatement_sql :: Lens.Lens' ExecuteStatement Prelude.Text
executeStatement_sql = Lens.lens (\ExecuteStatement' {sql} -> sql) (\s@ExecuteStatement' {} a -> s {sql = a} :: ExecuteStatement)

instance Core.AWSRequest ExecuteStatement where
  type
    AWSResponse ExecuteStatement =
      ExecuteStatementResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ExecuteStatementResponse'
            Prelude.<$> (x Core..?> "records" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "columnMetadata" Core..!@ Prelude.mempty)
            Prelude.<*> ( x Core..?> "generatedFields"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "numberOfRecordsUpdated")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ExecuteStatement

instance Prelude.NFData ExecuteStatement

instance Core.ToHeaders ExecuteStatement where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ExecuteStatement where
  toJSON ExecuteStatement' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("database" Core..=) Prelude.<$> database,
            ("transactionId" Core..=) Prelude.<$> transactionId,
            ("schema" Core..=) Prelude.<$> schema,
            ("parameters" Core..=) Prelude.<$> parameters,
            ("includeResultMetadata" Core..=)
              Prelude.<$> includeResultMetadata,
            ("resultSetOptions" Core..=)
              Prelude.<$> resultSetOptions,
            ("continueAfterTimeout" Core..=)
              Prelude.<$> continueAfterTimeout,
            Prelude.Just ("resourceArn" Core..= resourceArn),
            Prelude.Just ("secretArn" Core..= secretArn),
            Prelude.Just ("sql" Core..= sql)
          ]
      )

instance Core.ToPath ExecuteStatement where
  toPath = Prelude.const "/Execute"

instance Core.ToQuery ExecuteStatement where
  toQuery = Prelude.const Prelude.mempty

-- | The response elements represent the output of a request to run a SQL
-- statement against a database.
--
-- /See:/ 'newExecuteStatementResponse' smart constructor.
data ExecuteStatementResponse = ExecuteStatementResponse'
  { -- | The records returned by the SQL statement.
    records :: Prelude.Maybe [[Field]],
    -- | Metadata for the columns included in the results.
    columnMetadata :: Prelude.Maybe [ColumnMetadata],
    -- | Values for fields generated during the request.
    --
    -- >  <note> <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the <code>RETURNING</code> clause. For more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From Modified Rows</a> in the PostgreSQL documentation.</p> </note>
    generatedFields :: Prelude.Maybe [Field],
    -- | The number of records updated by the request.
    numberOfRecordsUpdated :: Prelude.Maybe Prelude.Integer,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExecuteStatementResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'records', 'executeStatementResponse_records' - The records returned by the SQL statement.
--
-- 'columnMetadata', 'executeStatementResponse_columnMetadata' - Metadata for the columns included in the results.
--
-- 'generatedFields', 'executeStatementResponse_generatedFields' - Values for fields generated during the request.
--
-- >  <note> <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the <code>RETURNING</code> clause. For more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From Modified Rows</a> in the PostgreSQL documentation.</p> </note>
--
-- 'numberOfRecordsUpdated', 'executeStatementResponse_numberOfRecordsUpdated' - The number of records updated by the request.
--
-- 'httpStatus', 'executeStatementResponse_httpStatus' - The response's http status code.
newExecuteStatementResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ExecuteStatementResponse
newExecuteStatementResponse pHttpStatus_ =
  ExecuteStatementResponse'
    { records =
        Prelude.Nothing,
      columnMetadata = Prelude.Nothing,
      generatedFields = Prelude.Nothing,
      numberOfRecordsUpdated = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The records returned by the SQL statement.
executeStatementResponse_records :: Lens.Lens' ExecuteStatementResponse (Prelude.Maybe [[Field]])
executeStatementResponse_records = Lens.lens (\ExecuteStatementResponse' {records} -> records) (\s@ExecuteStatementResponse' {} a -> s {records = a} :: ExecuteStatementResponse) Prelude.. Lens.mapping Lens.coerced

-- | Metadata for the columns included in the results.
executeStatementResponse_columnMetadata :: Lens.Lens' ExecuteStatementResponse (Prelude.Maybe [ColumnMetadata])
executeStatementResponse_columnMetadata = Lens.lens (\ExecuteStatementResponse' {columnMetadata} -> columnMetadata) (\s@ExecuteStatementResponse' {} a -> s {columnMetadata = a} :: ExecuteStatementResponse) Prelude.. Lens.mapping Lens.coerced

-- | Values for fields generated during the request.
--
-- >  <note> <p>The <code>generatedFields</code> data isn't supported by Aurora PostgreSQL. To get the values of generated fields, use the <code>RETURNING</code> clause. For more information, see <a href="https://www.postgresql.org/docs/10/dml-returning.html">Returning Data From Modified Rows</a> in the PostgreSQL documentation.</p> </note>
executeStatementResponse_generatedFields :: Lens.Lens' ExecuteStatementResponse (Prelude.Maybe [Field])
executeStatementResponse_generatedFields = Lens.lens (\ExecuteStatementResponse' {generatedFields} -> generatedFields) (\s@ExecuteStatementResponse' {} a -> s {generatedFields = a} :: ExecuteStatementResponse) Prelude.. Lens.mapping Lens.coerced

-- | The number of records updated by the request.
executeStatementResponse_numberOfRecordsUpdated :: Lens.Lens' ExecuteStatementResponse (Prelude.Maybe Prelude.Integer)
executeStatementResponse_numberOfRecordsUpdated = Lens.lens (\ExecuteStatementResponse' {numberOfRecordsUpdated} -> numberOfRecordsUpdated) (\s@ExecuteStatementResponse' {} a -> s {numberOfRecordsUpdated = a} :: ExecuteStatementResponse)

-- | The response's http status code.
executeStatementResponse_httpStatus :: Lens.Lens' ExecuteStatementResponse Prelude.Int
executeStatementResponse_httpStatus = Lens.lens (\ExecuteStatementResponse' {httpStatus} -> httpStatus) (\s@ExecuteStatementResponse' {} a -> s {httpStatus = a} :: ExecuteStatementResponse)

instance Prelude.NFData ExecuteStatementResponse
