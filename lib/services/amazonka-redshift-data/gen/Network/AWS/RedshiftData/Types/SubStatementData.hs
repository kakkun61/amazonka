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
-- Module      : Network.AWS.RedshiftData.Types.SubStatementData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RedshiftData.Types.SubStatementData where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RedshiftData.Types.StatementStatusString

-- | Information about an SQL statement.
--
-- /See:/ 'newSubStatementData' smart constructor.
data SubStatementData = SubStatementData'
  { -- | The status of the SQL statement. An example is the that the SQL
    -- statement finished.
    status :: Prelude.Maybe StatementStatusString,
    -- | The SQL statement identifier. This value is a universally unique
    -- identifier (UUID) generated by Amazon Redshift Data API.
    redshiftQueryId :: Prelude.Maybe Prelude.Integer,
    -- | The size in bytes of the returned results. A @-1@ indicates the value is
    -- null.
    resultSize :: Prelude.Maybe Prelude.Integer,
    -- | The date and time (UTC) the statement was created.
    createdAt :: Prelude.Maybe Core.POSIX,
    -- | The error message from the cluster if the SQL statement encountered an
    -- error while running.
    error :: Prelude.Maybe Prelude.Text,
    -- | Either the number of rows returned from the SQL statement or the number
    -- of rows affected. If result size is greater than zero, the result rows
    -- can be the number of rows affected by SQL statements such as INSERT,
    -- UPDATE, DELETE, COPY, and others. A @-1@ indicates the value is null.
    resultRows :: Prelude.Maybe Prelude.Integer,
    -- | A value that indicates whether the statement has a result set. The
    -- result set can be empty.
    hasResultSet :: Prelude.Maybe Prelude.Bool,
    -- | The SQL statement text.
    queryString :: Prelude.Maybe Prelude.Text,
    -- | The date and time (UTC) that the statement metadata was last updated.
    updatedAt :: Prelude.Maybe Core.POSIX,
    -- | The amount of time in nanoseconds that the statement ran.
    duration :: Prelude.Maybe Prelude.Integer,
    -- | The identifier of the SQL statement. This value is a universally unique
    -- identifier (UUID) generated by Amazon Redshift Data API. A suffix
    -- indicates the number of the SQL statement. For example,
    -- @d9b6c0c9-0747-4bf4-b142-e8883122f766:2@ has a suffix of @:2@ that
    -- indicates the second SQL statement of a batch query.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubStatementData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'subStatementData_status' - The status of the SQL statement. An example is the that the SQL
-- statement finished.
--
-- 'redshiftQueryId', 'subStatementData_redshiftQueryId' - The SQL statement identifier. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API.
--
-- 'resultSize', 'subStatementData_resultSize' - The size in bytes of the returned results. A @-1@ indicates the value is
-- null.
--
-- 'createdAt', 'subStatementData_createdAt' - The date and time (UTC) the statement was created.
--
-- 'error', 'subStatementData_error' - The error message from the cluster if the SQL statement encountered an
-- error while running.
--
-- 'resultRows', 'subStatementData_resultRows' - Either the number of rows returned from the SQL statement or the number
-- of rows affected. If result size is greater than zero, the result rows
-- can be the number of rows affected by SQL statements such as INSERT,
-- UPDATE, DELETE, COPY, and others. A @-1@ indicates the value is null.
--
-- 'hasResultSet', 'subStatementData_hasResultSet' - A value that indicates whether the statement has a result set. The
-- result set can be empty.
--
-- 'queryString', 'subStatementData_queryString' - The SQL statement text.
--
-- 'updatedAt', 'subStatementData_updatedAt' - The date and time (UTC) that the statement metadata was last updated.
--
-- 'duration', 'subStatementData_duration' - The amount of time in nanoseconds that the statement ran.
--
-- 'id', 'subStatementData_id' - The identifier of the SQL statement. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API. A suffix
-- indicates the number of the SQL statement. For example,
-- @d9b6c0c9-0747-4bf4-b142-e8883122f766:2@ has a suffix of @:2@ that
-- indicates the second SQL statement of a batch query.
newSubStatementData ::
  -- | 'id'
  Prelude.Text ->
  SubStatementData
newSubStatementData pId_ =
  SubStatementData'
    { status = Prelude.Nothing,
      redshiftQueryId = Prelude.Nothing,
      resultSize = Prelude.Nothing,
      createdAt = Prelude.Nothing,
      error = Prelude.Nothing,
      resultRows = Prelude.Nothing,
      hasResultSet = Prelude.Nothing,
      queryString = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      duration = Prelude.Nothing,
      id = pId_
    }

-- | The status of the SQL statement. An example is the that the SQL
-- statement finished.
subStatementData_status :: Lens.Lens' SubStatementData (Prelude.Maybe StatementStatusString)
subStatementData_status = Lens.lens (\SubStatementData' {status} -> status) (\s@SubStatementData' {} a -> s {status = a} :: SubStatementData)

-- | The SQL statement identifier. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API.
subStatementData_redshiftQueryId :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.Integer)
subStatementData_redshiftQueryId = Lens.lens (\SubStatementData' {redshiftQueryId} -> redshiftQueryId) (\s@SubStatementData' {} a -> s {redshiftQueryId = a} :: SubStatementData)

-- | The size in bytes of the returned results. A @-1@ indicates the value is
-- null.
subStatementData_resultSize :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.Integer)
subStatementData_resultSize = Lens.lens (\SubStatementData' {resultSize} -> resultSize) (\s@SubStatementData' {} a -> s {resultSize = a} :: SubStatementData)

-- | The date and time (UTC) the statement was created.
subStatementData_createdAt :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.UTCTime)
subStatementData_createdAt = Lens.lens (\SubStatementData' {createdAt} -> createdAt) (\s@SubStatementData' {} a -> s {createdAt = a} :: SubStatementData) Prelude.. Lens.mapping Core._Time

-- | The error message from the cluster if the SQL statement encountered an
-- error while running.
subStatementData_error :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.Text)
subStatementData_error = Lens.lens (\SubStatementData' {error} -> error) (\s@SubStatementData' {} a -> s {error = a} :: SubStatementData)

-- | Either the number of rows returned from the SQL statement or the number
-- of rows affected. If result size is greater than zero, the result rows
-- can be the number of rows affected by SQL statements such as INSERT,
-- UPDATE, DELETE, COPY, and others. A @-1@ indicates the value is null.
subStatementData_resultRows :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.Integer)
subStatementData_resultRows = Lens.lens (\SubStatementData' {resultRows} -> resultRows) (\s@SubStatementData' {} a -> s {resultRows = a} :: SubStatementData)

-- | A value that indicates whether the statement has a result set. The
-- result set can be empty.
subStatementData_hasResultSet :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.Bool)
subStatementData_hasResultSet = Lens.lens (\SubStatementData' {hasResultSet} -> hasResultSet) (\s@SubStatementData' {} a -> s {hasResultSet = a} :: SubStatementData)

-- | The SQL statement text.
subStatementData_queryString :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.Text)
subStatementData_queryString = Lens.lens (\SubStatementData' {queryString} -> queryString) (\s@SubStatementData' {} a -> s {queryString = a} :: SubStatementData)

-- | The date and time (UTC) that the statement metadata was last updated.
subStatementData_updatedAt :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.UTCTime)
subStatementData_updatedAt = Lens.lens (\SubStatementData' {updatedAt} -> updatedAt) (\s@SubStatementData' {} a -> s {updatedAt = a} :: SubStatementData) Prelude.. Lens.mapping Core._Time

-- | The amount of time in nanoseconds that the statement ran.
subStatementData_duration :: Lens.Lens' SubStatementData (Prelude.Maybe Prelude.Integer)
subStatementData_duration = Lens.lens (\SubStatementData' {duration} -> duration) (\s@SubStatementData' {} a -> s {duration = a} :: SubStatementData)

-- | The identifier of the SQL statement. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API. A suffix
-- indicates the number of the SQL statement. For example,
-- @d9b6c0c9-0747-4bf4-b142-e8883122f766:2@ has a suffix of @:2@ that
-- indicates the second SQL statement of a batch query.
subStatementData_id :: Lens.Lens' SubStatementData Prelude.Text
subStatementData_id = Lens.lens (\SubStatementData' {id} -> id) (\s@SubStatementData' {} a -> s {id = a} :: SubStatementData)

instance Core.FromJSON SubStatementData where
  parseJSON =
    Core.withObject
      "SubStatementData"
      ( \x ->
          SubStatementData'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "RedshiftQueryId")
            Prelude.<*> (x Core..:? "ResultSize")
            Prelude.<*> (x Core..:? "CreatedAt")
            Prelude.<*> (x Core..:? "Error")
            Prelude.<*> (x Core..:? "ResultRows")
            Prelude.<*> (x Core..:? "HasResultSet")
            Prelude.<*> (x Core..:? "QueryString")
            Prelude.<*> (x Core..:? "UpdatedAt")
            Prelude.<*> (x Core..:? "Duration")
            Prelude.<*> (x Core..: "Id")
      )

instance Prelude.Hashable SubStatementData

instance Prelude.NFData SubStatementData
