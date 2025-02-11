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
-- Module      : Network.AWS.RedshiftData.ListTables
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List the tables in a database. If neither @SchemaPattern@ nor
-- @TablePattern@ are specified, then all tables in the database are
-- returned. A token is returned to page through the table list. Depending
-- on the authorization method, use one of the following combinations of
-- request parameters:
--
-- -   Secrets Manager - specify the Amazon Resource Name (ARN) of the
--     secret, the database name, and the cluster identifier that matches
--     the cluster in the secret.
--
-- -   Temporary credentials - specify the cluster identifier, the database
--     name, and the database user name. Permission to call the
--     @redshift:GetClusterCredentials@ operation is required to use this
--     method.
--
-- This operation returns paginated results.
module Network.AWS.RedshiftData.ListTables
  ( -- * Creating a Request
    ListTables (..),
    newListTables,

    -- * Request Lenses
    listTables_dbUser,
    listTables_connectedDatabase,
    listTables_nextToken,
    listTables_secretArn,
    listTables_tablePattern,
    listTables_maxResults,
    listTables_schemaPattern,
    listTables_clusterIdentifier,
    listTables_database,

    -- * Destructuring the Response
    ListTablesResponse (..),
    newListTablesResponse,

    -- * Response Lenses
    listTablesResponse_nextToken,
    listTablesResponse_tables,
    listTablesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RedshiftData.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListTables' smart constructor.
data ListTables = ListTables'
  { -- | The database user name. This parameter is required when authenticating
    -- using temporary credentials.
    dbUser :: Prelude.Maybe Prelude.Text,
    -- | A database name. The connected database is specified when you connect
    -- with your authentication credentials.
    connectedDatabase :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates the starting point for the next set of response
    -- records in a subsequent request. If a value is returned in a response,
    -- you can retrieve the next set of records by providing this returned
    -- NextToken value in the next NextToken parameter and retrying the
    -- command. If the NextToken field is empty, all response records have been
    -- retrieved for the request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name or ARN of the secret that enables access to the database. This
    -- parameter is required when authenticating using Secrets Manager.
    secretArn :: Prelude.Maybe Prelude.Text,
    -- | A pattern to filter results by table name. Within a table pattern, \"%\"
    -- means match any substring of 0 or more characters and \"_\" means match
    -- any one character. Only table name entries matching the search pattern
    -- are returned. If @TablePattern@ is not specified, then all tables that
    -- match @SchemaPattern@are returned. If neither @SchemaPattern@ or
    -- @TablePattern@ are specified, then all tables are returned.
    tablePattern :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of tables to return in the response. If more tables
    -- exist than fit in one response, then @NextToken@ is returned to page
    -- through the results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | A pattern to filter results by schema name. Within a schema pattern,
    -- \"%\" means match any substring of 0 or more characters and \"_\" means
    -- match any one character. Only schema name entries matching the search
    -- pattern are returned. If @SchemaPattern@ is not specified, then all
    -- tables that match @TablePattern@ are returned. If neither
    -- @SchemaPattern@ or @TablePattern@ are specified, then all tables are
    -- returned.
    schemaPattern :: Prelude.Maybe Prelude.Text,
    -- | The cluster identifier. This parameter is required when authenticating
    -- using either Secrets Manager or temporary credentials.
    clusterIdentifier :: Prelude.Text,
    -- | The name of the database that contains the tables to list. If
    -- @ConnectedDatabase@ is not specified, this is also the database to
    -- connect to with your authentication credentials.
    database :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTables' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbUser', 'listTables_dbUser' - The database user name. This parameter is required when authenticating
-- using temporary credentials.
--
-- 'connectedDatabase', 'listTables_connectedDatabase' - A database name. The connected database is specified when you connect
-- with your authentication credentials.
--
-- 'nextToken', 'listTables_nextToken' - A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
--
-- 'secretArn', 'listTables_secretArn' - The name or ARN of the secret that enables access to the database. This
-- parameter is required when authenticating using Secrets Manager.
--
-- 'tablePattern', 'listTables_tablePattern' - A pattern to filter results by table name. Within a table pattern, \"%\"
-- means match any substring of 0 or more characters and \"_\" means match
-- any one character. Only table name entries matching the search pattern
-- are returned. If @TablePattern@ is not specified, then all tables that
-- match @SchemaPattern@are returned. If neither @SchemaPattern@ or
-- @TablePattern@ are specified, then all tables are returned.
--
-- 'maxResults', 'listTables_maxResults' - The maximum number of tables to return in the response. If more tables
-- exist than fit in one response, then @NextToken@ is returned to page
-- through the results.
--
-- 'schemaPattern', 'listTables_schemaPattern' - A pattern to filter results by schema name. Within a schema pattern,
-- \"%\" means match any substring of 0 or more characters and \"_\" means
-- match any one character. Only schema name entries matching the search
-- pattern are returned. If @SchemaPattern@ is not specified, then all
-- tables that match @TablePattern@ are returned. If neither
-- @SchemaPattern@ or @TablePattern@ are specified, then all tables are
-- returned.
--
-- 'clusterIdentifier', 'listTables_clusterIdentifier' - The cluster identifier. This parameter is required when authenticating
-- using either Secrets Manager or temporary credentials.
--
-- 'database', 'listTables_database' - The name of the database that contains the tables to list. If
-- @ConnectedDatabase@ is not specified, this is also the database to
-- connect to with your authentication credentials.
newListTables ::
  -- | 'clusterIdentifier'
  Prelude.Text ->
  -- | 'database'
  Prelude.Text ->
  ListTables
newListTables pClusterIdentifier_ pDatabase_ =
  ListTables'
    { dbUser = Prelude.Nothing,
      connectedDatabase = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      secretArn = Prelude.Nothing,
      tablePattern = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      schemaPattern = Prelude.Nothing,
      clusterIdentifier = pClusterIdentifier_,
      database = pDatabase_
    }

-- | The database user name. This parameter is required when authenticating
-- using temporary credentials.
listTables_dbUser :: Lens.Lens' ListTables (Prelude.Maybe Prelude.Text)
listTables_dbUser = Lens.lens (\ListTables' {dbUser} -> dbUser) (\s@ListTables' {} a -> s {dbUser = a} :: ListTables)

-- | A database name. The connected database is specified when you connect
-- with your authentication credentials.
listTables_connectedDatabase :: Lens.Lens' ListTables (Prelude.Maybe Prelude.Text)
listTables_connectedDatabase = Lens.lens (\ListTables' {connectedDatabase} -> connectedDatabase) (\s@ListTables' {} a -> s {connectedDatabase = a} :: ListTables)

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
listTables_nextToken :: Lens.Lens' ListTables (Prelude.Maybe Prelude.Text)
listTables_nextToken = Lens.lens (\ListTables' {nextToken} -> nextToken) (\s@ListTables' {} a -> s {nextToken = a} :: ListTables)

-- | The name or ARN of the secret that enables access to the database. This
-- parameter is required when authenticating using Secrets Manager.
listTables_secretArn :: Lens.Lens' ListTables (Prelude.Maybe Prelude.Text)
listTables_secretArn = Lens.lens (\ListTables' {secretArn} -> secretArn) (\s@ListTables' {} a -> s {secretArn = a} :: ListTables)

-- | A pattern to filter results by table name. Within a table pattern, \"%\"
-- means match any substring of 0 or more characters and \"_\" means match
-- any one character. Only table name entries matching the search pattern
-- are returned. If @TablePattern@ is not specified, then all tables that
-- match @SchemaPattern@are returned. If neither @SchemaPattern@ or
-- @TablePattern@ are specified, then all tables are returned.
listTables_tablePattern :: Lens.Lens' ListTables (Prelude.Maybe Prelude.Text)
listTables_tablePattern = Lens.lens (\ListTables' {tablePattern} -> tablePattern) (\s@ListTables' {} a -> s {tablePattern = a} :: ListTables)

-- | The maximum number of tables to return in the response. If more tables
-- exist than fit in one response, then @NextToken@ is returned to page
-- through the results.
listTables_maxResults :: Lens.Lens' ListTables (Prelude.Maybe Prelude.Natural)
listTables_maxResults = Lens.lens (\ListTables' {maxResults} -> maxResults) (\s@ListTables' {} a -> s {maxResults = a} :: ListTables)

-- | A pattern to filter results by schema name. Within a schema pattern,
-- \"%\" means match any substring of 0 or more characters and \"_\" means
-- match any one character. Only schema name entries matching the search
-- pattern are returned. If @SchemaPattern@ is not specified, then all
-- tables that match @TablePattern@ are returned. If neither
-- @SchemaPattern@ or @TablePattern@ are specified, then all tables are
-- returned.
listTables_schemaPattern :: Lens.Lens' ListTables (Prelude.Maybe Prelude.Text)
listTables_schemaPattern = Lens.lens (\ListTables' {schemaPattern} -> schemaPattern) (\s@ListTables' {} a -> s {schemaPattern = a} :: ListTables)

-- | The cluster identifier. This parameter is required when authenticating
-- using either Secrets Manager or temporary credentials.
listTables_clusterIdentifier :: Lens.Lens' ListTables Prelude.Text
listTables_clusterIdentifier = Lens.lens (\ListTables' {clusterIdentifier} -> clusterIdentifier) (\s@ListTables' {} a -> s {clusterIdentifier = a} :: ListTables)

-- | The name of the database that contains the tables to list. If
-- @ConnectedDatabase@ is not specified, this is also the database to
-- connect to with your authentication credentials.
listTables_database :: Lens.Lens' ListTables Prelude.Text
listTables_database = Lens.lens (\ListTables' {database} -> database) (\s@ListTables' {} a -> s {database = a} :: ListTables)

instance Core.AWSPager ListTables where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listTablesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listTablesResponse_tables Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listTables_nextToken
          Lens..~ rs
          Lens.^? listTablesResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListTables where
  type AWSResponse ListTables = ListTablesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTablesResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (x Core..?> "Tables" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListTables

instance Prelude.NFData ListTables

instance Core.ToHeaders ListTables where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ("RedshiftData.ListTables" :: Prelude.ByteString),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListTables where
  toJSON ListTables' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DbUser" Core..=) Prelude.<$> dbUser,
            ("ConnectedDatabase" Core..=)
              Prelude.<$> connectedDatabase,
            ("NextToken" Core..=) Prelude.<$> nextToken,
            ("SecretArn" Core..=) Prelude.<$> secretArn,
            ("TablePattern" Core..=) Prelude.<$> tablePattern,
            ("MaxResults" Core..=) Prelude.<$> maxResults,
            ("SchemaPattern" Core..=) Prelude.<$> schemaPattern,
            Prelude.Just
              ("ClusterIdentifier" Core..= clusterIdentifier),
            Prelude.Just ("Database" Core..= database)
          ]
      )

instance Core.ToPath ListTables where
  toPath = Prelude.const "/"

instance Core.ToQuery ListTables where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListTablesResponse' smart constructor.
data ListTablesResponse = ListTablesResponse'
  { -- | A value that indicates the starting point for the next set of response
    -- records in a subsequent request. If a value is returned in a response,
    -- you can retrieve the next set of records by providing this returned
    -- NextToken value in the next NextToken parameter and retrying the
    -- command. If the NextToken field is empty, all response records have been
    -- retrieved for the request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The tables that match the request pattern.
    tables :: Prelude.Maybe [TableMember],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListTablesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listTablesResponse_nextToken' - A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
--
-- 'tables', 'listTablesResponse_tables' - The tables that match the request pattern.
--
-- 'httpStatus', 'listTablesResponse_httpStatus' - The response's http status code.
newListTablesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTablesResponse
newListTablesResponse pHttpStatus_ =
  ListTablesResponse'
    { nextToken = Prelude.Nothing,
      tables = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A value that indicates the starting point for the next set of response
-- records in a subsequent request. If a value is returned in a response,
-- you can retrieve the next set of records by providing this returned
-- NextToken value in the next NextToken parameter and retrying the
-- command. If the NextToken field is empty, all response records have been
-- retrieved for the request.
listTablesResponse_nextToken :: Lens.Lens' ListTablesResponse (Prelude.Maybe Prelude.Text)
listTablesResponse_nextToken = Lens.lens (\ListTablesResponse' {nextToken} -> nextToken) (\s@ListTablesResponse' {} a -> s {nextToken = a} :: ListTablesResponse)

-- | The tables that match the request pattern.
listTablesResponse_tables :: Lens.Lens' ListTablesResponse (Prelude.Maybe [TableMember])
listTablesResponse_tables = Lens.lens (\ListTablesResponse' {tables} -> tables) (\s@ListTablesResponse' {} a -> s {tables = a} :: ListTablesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
listTablesResponse_httpStatus :: Lens.Lens' ListTablesResponse Prelude.Int
listTablesResponse_httpStatus = Lens.lens (\ListTablesResponse' {httpStatus} -> httpStatus) (\s@ListTablesResponse' {} a -> s {httpStatus = a} :: ListTablesResponse)

instance Prelude.NFData ListTablesResponse
