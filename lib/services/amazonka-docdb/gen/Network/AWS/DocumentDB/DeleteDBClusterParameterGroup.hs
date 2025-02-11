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
-- Module      : Network.AWS.DocumentDB.DeleteDBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified cluster parameter group. The cluster parameter group
-- to be deleted can\'t be associated with any clusters.
module Network.AWS.DocumentDB.DeleteDBClusterParameterGroup
  ( -- * Creating a Request
    DeleteDBClusterParameterGroup (..),
    newDeleteDBClusterParameterGroup,

    -- * Request Lenses
    deleteDBClusterParameterGroup_dbClusterParameterGroupName,

    -- * Destructuring the Response
    DeleteDBClusterParameterGroupResponse (..),
    newDeleteDBClusterParameterGroupResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to DeleteDBClusterParameterGroup.
--
-- /See:/ 'newDeleteDBClusterParameterGroup' smart constructor.
data DeleteDBClusterParameterGroup = DeleteDBClusterParameterGroup'
  { -- | The name of the cluster parameter group.
    --
    -- Constraints:
    --
    -- -   Must be the name of an existing cluster parameter group.
    --
    -- -   You can\'t delete a default cluster parameter group.
    --
    -- -   Cannot be associated with any clusters.
    dbClusterParameterGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterParameterGroupName', 'deleteDBClusterParameterGroup_dbClusterParameterGroupName' - The name of the cluster parameter group.
--
-- Constraints:
--
-- -   Must be the name of an existing cluster parameter group.
--
-- -   You can\'t delete a default cluster parameter group.
--
-- -   Cannot be associated with any clusters.
newDeleteDBClusterParameterGroup ::
  -- | 'dbClusterParameterGroupName'
  Prelude.Text ->
  DeleteDBClusterParameterGroup
newDeleteDBClusterParameterGroup
  pDBClusterParameterGroupName_ =
    DeleteDBClusterParameterGroup'
      { dbClusterParameterGroupName =
          pDBClusterParameterGroupName_
      }

-- | The name of the cluster parameter group.
--
-- Constraints:
--
-- -   Must be the name of an existing cluster parameter group.
--
-- -   You can\'t delete a default cluster parameter group.
--
-- -   Cannot be associated with any clusters.
deleteDBClusterParameterGroup_dbClusterParameterGroupName :: Lens.Lens' DeleteDBClusterParameterGroup Prelude.Text
deleteDBClusterParameterGroup_dbClusterParameterGroupName = Lens.lens (\DeleteDBClusterParameterGroup' {dbClusterParameterGroupName} -> dbClusterParameterGroupName) (\s@DeleteDBClusterParameterGroup' {} a -> s {dbClusterParameterGroupName = a} :: DeleteDBClusterParameterGroup)

instance
  Core.AWSRequest
    DeleteDBClusterParameterGroup
  where
  type
    AWSResponse DeleteDBClusterParameterGroup =
      DeleteDBClusterParameterGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull
      DeleteDBClusterParameterGroupResponse'

instance
  Prelude.Hashable
    DeleteDBClusterParameterGroup

instance Prelude.NFData DeleteDBClusterParameterGroup

instance Core.ToHeaders DeleteDBClusterParameterGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DeleteDBClusterParameterGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteDBClusterParameterGroup where
  toQuery DeleteDBClusterParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "DeleteDBClusterParameterGroup" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterParameterGroupName"
          Core.=: dbClusterParameterGroupName
      ]

-- | /See:/ 'newDeleteDBClusterParameterGroupResponse' smart constructor.
data DeleteDBClusterParameterGroupResponse = DeleteDBClusterParameterGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBClusterParameterGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDBClusterParameterGroupResponse ::
  DeleteDBClusterParameterGroupResponse
newDeleteDBClusterParameterGroupResponse =
  DeleteDBClusterParameterGroupResponse'

instance
  Prelude.NFData
    DeleteDBClusterParameterGroupResponse
