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
-- Module      : Network.AWS.DocumentDB.Types.DBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DocumentDB.Types.DBClusterParameterGroup where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Detailed information about a cluster parameter group.
--
-- /See:/ 'newDBClusterParameterGroup' smart constructor.
data DBClusterParameterGroup = DBClusterParameterGroup'
  { -- | The Amazon Resource Name (ARN) for the cluster parameter group.
    dbClusterParameterGroupArn :: Prelude.Maybe Prelude.Text,
    -- | Provides the name of the parameter group family that this cluster
    -- parameter group is compatible with.
    dbParameterGroupFamily :: Prelude.Maybe Prelude.Text,
    -- | Provides the name of the cluster parameter group.
    dbClusterParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | Provides the customer-specified description for this cluster parameter
    -- group.
    description :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterParameterGroupArn', 'dbClusterParameterGroup_dbClusterParameterGroupArn' - The Amazon Resource Name (ARN) for the cluster parameter group.
--
-- 'dbParameterGroupFamily', 'dbClusterParameterGroup_dbParameterGroupFamily' - Provides the name of the parameter group family that this cluster
-- parameter group is compatible with.
--
-- 'dbClusterParameterGroupName', 'dbClusterParameterGroup_dbClusterParameterGroupName' - Provides the name of the cluster parameter group.
--
-- 'description', 'dbClusterParameterGroup_description' - Provides the customer-specified description for this cluster parameter
-- group.
newDBClusterParameterGroup ::
  DBClusterParameterGroup
newDBClusterParameterGroup =
  DBClusterParameterGroup'
    { dbClusterParameterGroupArn =
        Prelude.Nothing,
      dbParameterGroupFamily = Prelude.Nothing,
      dbClusterParameterGroupName = Prelude.Nothing,
      description = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) for the cluster parameter group.
dbClusterParameterGroup_dbClusterParameterGroupArn :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dbClusterParameterGroup_dbClusterParameterGroupArn = Lens.lens (\DBClusterParameterGroup' {dbClusterParameterGroupArn} -> dbClusterParameterGroupArn) (\s@DBClusterParameterGroup' {} a -> s {dbClusterParameterGroupArn = a} :: DBClusterParameterGroup)

-- | Provides the name of the parameter group family that this cluster
-- parameter group is compatible with.
dbClusterParameterGroup_dbParameterGroupFamily :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dbClusterParameterGroup_dbParameterGroupFamily = Lens.lens (\DBClusterParameterGroup' {dbParameterGroupFamily} -> dbParameterGroupFamily) (\s@DBClusterParameterGroup' {} a -> s {dbParameterGroupFamily = a} :: DBClusterParameterGroup)

-- | Provides the name of the cluster parameter group.
dbClusterParameterGroup_dbClusterParameterGroupName :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dbClusterParameterGroup_dbClusterParameterGroupName = Lens.lens (\DBClusterParameterGroup' {dbClusterParameterGroupName} -> dbClusterParameterGroupName) (\s@DBClusterParameterGroup' {} a -> s {dbClusterParameterGroupName = a} :: DBClusterParameterGroup)

-- | Provides the customer-specified description for this cluster parameter
-- group.
dbClusterParameterGroup_description :: Lens.Lens' DBClusterParameterGroup (Prelude.Maybe Prelude.Text)
dbClusterParameterGroup_description = Lens.lens (\DBClusterParameterGroup' {description} -> description) (\s@DBClusterParameterGroup' {} a -> s {description = a} :: DBClusterParameterGroup)

instance Core.FromXML DBClusterParameterGroup where
  parseXML x =
    DBClusterParameterGroup'
      Prelude.<$> (x Core..@? "DBClusterParameterGroupArn")
      Prelude.<*> (x Core..@? "DBParameterGroupFamily")
      Prelude.<*> (x Core..@? "DBClusterParameterGroupName")
      Prelude.<*> (x Core..@? "Description")

instance Prelude.Hashable DBClusterParameterGroup

instance Prelude.NFData DBClusterParameterGroup
