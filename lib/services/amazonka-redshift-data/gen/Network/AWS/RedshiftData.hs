{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.RedshiftData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2019-12-20@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- You can use the Amazon Redshift Data API to run queries on Amazon
-- Redshift tables. You can run SQL statements, which are committed if the
-- statement succeeds.
--
-- For more information about the Amazon Redshift Data API, see
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/data-api.html Using the Amazon Redshift Data API>
-- in the /Amazon Redshift Cluster Management Guide/.
module Network.AWS.RedshiftData
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** ExecuteStatementException
    _ExecuteStatementException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ActiveStatementsExceededException
    _ActiveStatementsExceededException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** BatchExecuteStatementException
    _BatchExecuteStatementException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListStatements (Paginated)
    ListStatements (ListStatements'),
    newListStatements,
    ListStatementsResponse (ListStatementsResponse'),
    newListStatementsResponse,

    -- ** ListDatabases (Paginated)
    ListDatabases (ListDatabases'),
    newListDatabases,
    ListDatabasesResponse (ListDatabasesResponse'),
    newListDatabasesResponse,

    -- ** ListSchemas (Paginated)
    ListSchemas (ListSchemas'),
    newListSchemas,
    ListSchemasResponse (ListSchemasResponse'),
    newListSchemasResponse,

    -- ** DescribeStatement
    DescribeStatement (DescribeStatement'),
    newDescribeStatement,
    DescribeStatementResponse (DescribeStatementResponse'),
    newDescribeStatementResponse,

    -- ** CancelStatement
    CancelStatement (CancelStatement'),
    newCancelStatement,
    CancelStatementResponse (CancelStatementResponse'),
    newCancelStatementResponse,

    -- ** DescribeTable (Paginated)
    DescribeTable (DescribeTable'),
    newDescribeTable,
    DescribeTableResponse (DescribeTableResponse'),
    newDescribeTableResponse,

    -- ** BatchExecuteStatement
    BatchExecuteStatement (BatchExecuteStatement'),
    newBatchExecuteStatement,
    BatchExecuteStatementResponse (BatchExecuteStatementResponse'),
    newBatchExecuteStatementResponse,

    -- ** ListTables (Paginated)
    ListTables (ListTables'),
    newListTables,
    ListTablesResponse (ListTablesResponse'),
    newListTablesResponse,

    -- ** ExecuteStatement
    ExecuteStatement (ExecuteStatement'),
    newExecuteStatement,
    ExecuteStatementResponse (ExecuteStatementResponse'),
    newExecuteStatementResponse,

    -- ** GetStatementResult (Paginated)
    GetStatementResult (GetStatementResult'),
    newGetStatementResult,
    GetStatementResultResponse (GetStatementResultResponse'),
    newGetStatementResultResponse,

    -- * Types

    -- ** StatementStatusString
    StatementStatusString (..),

    -- ** StatusString
    StatusString (..),

    -- ** ColumnMetadata
    ColumnMetadata (ColumnMetadata'),
    newColumnMetadata,

    -- ** Field
    Field (Field'),
    newField,

    -- ** SqlParameter
    SqlParameter (SqlParameter'),
    newSqlParameter,

    -- ** StatementData
    StatementData (StatementData'),
    newStatementData,

    -- ** SubStatementData
    SubStatementData (SubStatementData'),
    newSubStatementData,

    -- ** TableMember
    TableMember (TableMember'),
    newTableMember,
  )
where

import Network.AWS.RedshiftData.BatchExecuteStatement
import Network.AWS.RedshiftData.CancelStatement
import Network.AWS.RedshiftData.DescribeStatement
import Network.AWS.RedshiftData.DescribeTable
import Network.AWS.RedshiftData.ExecuteStatement
import Network.AWS.RedshiftData.GetStatementResult
import Network.AWS.RedshiftData.Lens
import Network.AWS.RedshiftData.ListDatabases
import Network.AWS.RedshiftData.ListSchemas
import Network.AWS.RedshiftData.ListStatements
import Network.AWS.RedshiftData.ListTables
import Network.AWS.RedshiftData.Types
import Network.AWS.RedshiftData.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'RedshiftData'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
