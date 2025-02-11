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
-- Module      : Network.AWS.HoneyCode.Types.UpsertRowsResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.HoneyCode.Types.UpsertRowsResult where

import qualified Network.AWS.Core as Core
import Network.AWS.HoneyCode.Types.UpsertAction
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the result of a single upsert row request.
--
-- /See:/ 'newUpsertRowsResult' smart constructor.
data UpsertRowsResult = UpsertRowsResult'
  { -- | The list of row ids that were changed as part of an upsert row
    -- operation. If the upsert resulted in an update, this list could
    -- potentially contain multiple rows that matched the filter and hence got
    -- updated. If the upsert resulted in an append, this list would only have
    -- the single row that was appended.
    rowIds :: Prelude.NonEmpty Prelude.Text,
    -- | The result of the upsert action.
    upsertAction :: UpsertAction
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpsertRowsResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rowIds', 'upsertRowsResult_rowIds' - The list of row ids that were changed as part of an upsert row
-- operation. If the upsert resulted in an update, this list could
-- potentially contain multiple rows that matched the filter and hence got
-- updated. If the upsert resulted in an append, this list would only have
-- the single row that was appended.
--
-- 'upsertAction', 'upsertRowsResult_upsertAction' - The result of the upsert action.
newUpsertRowsResult ::
  -- | 'rowIds'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'upsertAction'
  UpsertAction ->
  UpsertRowsResult
newUpsertRowsResult pRowIds_ pUpsertAction_ =
  UpsertRowsResult'
    { rowIds =
        Lens.coerced Lens.# pRowIds_,
      upsertAction = pUpsertAction_
    }

-- | The list of row ids that were changed as part of an upsert row
-- operation. If the upsert resulted in an update, this list could
-- potentially contain multiple rows that matched the filter and hence got
-- updated. If the upsert resulted in an append, this list would only have
-- the single row that was appended.
upsertRowsResult_rowIds :: Lens.Lens' UpsertRowsResult (Prelude.NonEmpty Prelude.Text)
upsertRowsResult_rowIds = Lens.lens (\UpsertRowsResult' {rowIds} -> rowIds) (\s@UpsertRowsResult' {} a -> s {rowIds = a} :: UpsertRowsResult) Prelude.. Lens.coerced

-- | The result of the upsert action.
upsertRowsResult_upsertAction :: Lens.Lens' UpsertRowsResult UpsertAction
upsertRowsResult_upsertAction = Lens.lens (\UpsertRowsResult' {upsertAction} -> upsertAction) (\s@UpsertRowsResult' {} a -> s {upsertAction = a} :: UpsertRowsResult)

instance Core.FromJSON UpsertRowsResult where
  parseJSON =
    Core.withObject
      "UpsertRowsResult"
      ( \x ->
          UpsertRowsResult'
            Prelude.<$> (x Core..: "rowIds")
            Prelude.<*> (x Core..: "upsertAction")
      )

instance Prelude.Hashable UpsertRowsResult

instance Prelude.NFData UpsertRowsResult
