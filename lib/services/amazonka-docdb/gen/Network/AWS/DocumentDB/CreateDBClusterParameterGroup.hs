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
-- Module      : Network.AWS.DocumentDB.CreateDBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new cluster parameter group.
--
-- Parameters in a cluster parameter group apply to all of the instances in
-- a cluster.
--
-- A cluster parameter group is initially created with the default
-- parameters for the database engine used by instances in the cluster. In
-- Amazon DocumentDB, you cannot make modifications directly to the
-- @default.docdb3.6@ cluster parameter group. If your Amazon DocumentDB
-- cluster is using the default cluster parameter group and you want to
-- modify a value in it, you must first
-- <https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-create.html create a new parameter group>
-- or
-- <https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-copy.html copy an existing parameter group>,
-- modify it, and then apply the modified parameter group to your cluster.
-- For the new cluster parameter group and associated settings to take
-- effect, you must then reboot the instances in the cluster without
-- failover. For more information, see
-- <https://docs.aws.amazon.com/documentdb/latest/developerguide/cluster_parameter_group-modify.html Modifying Amazon DocumentDB Cluster Parameter Groups>.
module Network.AWS.DocumentDB.CreateDBClusterParameterGroup
  ( -- * Creating a Request
    CreateDBClusterParameterGroup (..),
    newCreateDBClusterParameterGroup,

    -- * Request Lenses
    createDBClusterParameterGroup_tags,
    createDBClusterParameterGroup_dbClusterParameterGroupName,
    createDBClusterParameterGroup_dbParameterGroupFamily,
    createDBClusterParameterGroup_description,

    -- * Destructuring the Response
    CreateDBClusterParameterGroupResponse (..),
    newCreateDBClusterParameterGroupResponse,

    -- * Response Lenses
    createDBClusterParameterGroupResponse_dbClusterParameterGroup,
    createDBClusterParameterGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of CreateDBClusterParameterGroup.
--
-- /See:/ 'newCreateDBClusterParameterGroup' smart constructor.
data CreateDBClusterParameterGroup = CreateDBClusterParameterGroup'
  { -- | The tags to be assigned to the cluster parameter group.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the cluster parameter group.
    --
    -- Constraints:
    --
    -- -   Must not match the name of an existing @DBClusterParameterGroup@.
    --
    -- This value is stored as a lowercase string.
    dbClusterParameterGroupName :: Prelude.Text,
    -- | The cluster parameter group family name.
    dbParameterGroupFamily :: Prelude.Text,
    -- | The description for the cluster parameter group.
    description :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBClusterParameterGroup_tags' - The tags to be assigned to the cluster parameter group.
--
-- 'dbClusterParameterGroupName', 'createDBClusterParameterGroup_dbClusterParameterGroupName' - The name of the cluster parameter group.
--
-- Constraints:
--
-- -   Must not match the name of an existing @DBClusterParameterGroup@.
--
-- This value is stored as a lowercase string.
--
-- 'dbParameterGroupFamily', 'createDBClusterParameterGroup_dbParameterGroupFamily' - The cluster parameter group family name.
--
-- 'description', 'createDBClusterParameterGroup_description' - The description for the cluster parameter group.
newCreateDBClusterParameterGroup ::
  -- | 'dbClusterParameterGroupName'
  Prelude.Text ->
  -- | 'dbParameterGroupFamily'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  CreateDBClusterParameterGroup
newCreateDBClusterParameterGroup
  pDBClusterParameterGroupName_
  pDBParameterGroupFamily_
  pDescription_ =
    CreateDBClusterParameterGroup'
      { tags =
          Prelude.Nothing,
        dbClusterParameterGroupName =
          pDBClusterParameterGroupName_,
        dbParameterGroupFamily =
          pDBParameterGroupFamily_,
        description = pDescription_
      }

-- | The tags to be assigned to the cluster parameter group.
createDBClusterParameterGroup_tags :: Lens.Lens' CreateDBClusterParameterGroup (Prelude.Maybe [Tag])
createDBClusterParameterGroup_tags = Lens.lens (\CreateDBClusterParameterGroup' {tags} -> tags) (\s@CreateDBClusterParameterGroup' {} a -> s {tags = a} :: CreateDBClusterParameterGroup) Prelude.. Lens.mapping Lens.coerced

-- | The name of the cluster parameter group.
--
-- Constraints:
--
-- -   Must not match the name of an existing @DBClusterParameterGroup@.
--
-- This value is stored as a lowercase string.
createDBClusterParameterGroup_dbClusterParameterGroupName :: Lens.Lens' CreateDBClusterParameterGroup Prelude.Text
createDBClusterParameterGroup_dbClusterParameterGroupName = Lens.lens (\CreateDBClusterParameterGroup' {dbClusterParameterGroupName} -> dbClusterParameterGroupName) (\s@CreateDBClusterParameterGroup' {} a -> s {dbClusterParameterGroupName = a} :: CreateDBClusterParameterGroup)

-- | The cluster parameter group family name.
createDBClusterParameterGroup_dbParameterGroupFamily :: Lens.Lens' CreateDBClusterParameterGroup Prelude.Text
createDBClusterParameterGroup_dbParameterGroupFamily = Lens.lens (\CreateDBClusterParameterGroup' {dbParameterGroupFamily} -> dbParameterGroupFamily) (\s@CreateDBClusterParameterGroup' {} a -> s {dbParameterGroupFamily = a} :: CreateDBClusterParameterGroup)

-- | The description for the cluster parameter group.
createDBClusterParameterGroup_description :: Lens.Lens' CreateDBClusterParameterGroup Prelude.Text
createDBClusterParameterGroup_description = Lens.lens (\CreateDBClusterParameterGroup' {description} -> description) (\s@CreateDBClusterParameterGroup' {} a -> s {description = a} :: CreateDBClusterParameterGroup)

instance
  Core.AWSRequest
    CreateDBClusterParameterGroup
  where
  type
    AWSResponse CreateDBClusterParameterGroup =
      CreateDBClusterParameterGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBClusterParameterGroupResult"
      ( \s h x ->
          CreateDBClusterParameterGroupResponse'
            Prelude.<$> (x Core..@? "DBClusterParameterGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateDBClusterParameterGroup

instance Prelude.NFData CreateDBClusterParameterGroup

instance Core.ToHeaders CreateDBClusterParameterGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath CreateDBClusterParameterGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateDBClusterParameterGroup where
  toQuery CreateDBClusterParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "CreateDBClusterParameterGroup" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Core.=: Core.toQuery
            (Core.toQueryList "Tag" Prelude.<$> tags),
        "DBClusterParameterGroupName"
          Core.=: dbClusterParameterGroupName,
        "DBParameterGroupFamily"
          Core.=: dbParameterGroupFamily,
        "Description" Core.=: description
      ]

-- | /See:/ 'newCreateDBClusterParameterGroupResponse' smart constructor.
data CreateDBClusterParameterGroupResponse = CreateDBClusterParameterGroupResponse'
  { dbClusterParameterGroup :: Prelude.Maybe DBClusterParameterGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDBClusterParameterGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterParameterGroup', 'createDBClusterParameterGroupResponse_dbClusterParameterGroup' - Undocumented member.
--
-- 'httpStatus', 'createDBClusterParameterGroupResponse_httpStatus' - The response's http status code.
newCreateDBClusterParameterGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDBClusterParameterGroupResponse
newCreateDBClusterParameterGroupResponse pHttpStatus_ =
  CreateDBClusterParameterGroupResponse'
    { dbClusterParameterGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBClusterParameterGroupResponse_dbClusterParameterGroup :: Lens.Lens' CreateDBClusterParameterGroupResponse (Prelude.Maybe DBClusterParameterGroup)
createDBClusterParameterGroupResponse_dbClusterParameterGroup = Lens.lens (\CreateDBClusterParameterGroupResponse' {dbClusterParameterGroup} -> dbClusterParameterGroup) (\s@CreateDBClusterParameterGroupResponse' {} a -> s {dbClusterParameterGroup = a} :: CreateDBClusterParameterGroupResponse)

-- | The response's http status code.
createDBClusterParameterGroupResponse_httpStatus :: Lens.Lens' CreateDBClusterParameterGroupResponse Prelude.Int
createDBClusterParameterGroupResponse_httpStatus = Lens.lens (\CreateDBClusterParameterGroupResponse' {httpStatus} -> httpStatus) (\s@CreateDBClusterParameterGroupResponse' {} a -> s {httpStatus = a} :: CreateDBClusterParameterGroupResponse)

instance
  Prelude.NFData
    CreateDBClusterParameterGroupResponse
