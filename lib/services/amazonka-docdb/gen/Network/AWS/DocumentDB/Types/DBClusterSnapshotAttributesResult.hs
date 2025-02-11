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
-- Module      : Network.AWS.DocumentDB.Types.DBClusterSnapshotAttributesResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DocumentDB.Types.DBClusterSnapshotAttributesResult where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types.DBClusterSnapshotAttribute
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Detailed information about the attributes that are associated with a
-- cluster snapshot.
--
-- /See:/ 'newDBClusterSnapshotAttributesResult' smart constructor.
data DBClusterSnapshotAttributesResult = DBClusterSnapshotAttributesResult'
  { -- | The identifier of the cluster snapshot that the attributes apply to.
    dbClusterSnapshotIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The list of attributes and values for the cluster snapshot.
    dbClusterSnapshotAttributes :: Prelude.Maybe [DBClusterSnapshotAttribute]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DBClusterSnapshotAttributesResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterSnapshotIdentifier', 'dbClusterSnapshotAttributesResult_dbClusterSnapshotIdentifier' - The identifier of the cluster snapshot that the attributes apply to.
--
-- 'dbClusterSnapshotAttributes', 'dbClusterSnapshotAttributesResult_dbClusterSnapshotAttributes' - The list of attributes and values for the cluster snapshot.
newDBClusterSnapshotAttributesResult ::
  DBClusterSnapshotAttributesResult
newDBClusterSnapshotAttributesResult =
  DBClusterSnapshotAttributesResult'
    { dbClusterSnapshotIdentifier =
        Prelude.Nothing,
      dbClusterSnapshotAttributes =
        Prelude.Nothing
    }

-- | The identifier of the cluster snapshot that the attributes apply to.
dbClusterSnapshotAttributesResult_dbClusterSnapshotIdentifier :: Lens.Lens' DBClusterSnapshotAttributesResult (Prelude.Maybe Prelude.Text)
dbClusterSnapshotAttributesResult_dbClusterSnapshotIdentifier = Lens.lens (\DBClusterSnapshotAttributesResult' {dbClusterSnapshotIdentifier} -> dbClusterSnapshotIdentifier) (\s@DBClusterSnapshotAttributesResult' {} a -> s {dbClusterSnapshotIdentifier = a} :: DBClusterSnapshotAttributesResult)

-- | The list of attributes and values for the cluster snapshot.
dbClusterSnapshotAttributesResult_dbClusterSnapshotAttributes :: Lens.Lens' DBClusterSnapshotAttributesResult (Prelude.Maybe [DBClusterSnapshotAttribute])
dbClusterSnapshotAttributesResult_dbClusterSnapshotAttributes = Lens.lens (\DBClusterSnapshotAttributesResult' {dbClusterSnapshotAttributes} -> dbClusterSnapshotAttributes) (\s@DBClusterSnapshotAttributesResult' {} a -> s {dbClusterSnapshotAttributes = a} :: DBClusterSnapshotAttributesResult) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromXML
    DBClusterSnapshotAttributesResult
  where
  parseXML x =
    DBClusterSnapshotAttributesResult'
      Prelude.<$> (x Core..@? "DBClusterSnapshotIdentifier")
      Prelude.<*> ( x Core..@? "DBClusterSnapshotAttributes"
                      Core..!@ Prelude.mempty
                      Prelude.>>= Core.may
                        (Core.parseXMLList "DBClusterSnapshotAttribute")
                  )

instance
  Prelude.Hashable
    DBClusterSnapshotAttributesResult

instance
  Prelude.NFData
    DBClusterSnapshotAttributesResult
