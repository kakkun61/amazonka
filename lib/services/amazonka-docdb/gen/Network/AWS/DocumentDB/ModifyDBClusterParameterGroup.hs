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
-- Module      : Network.AWS.DocumentDB.ModifyDBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the parameters of a cluster parameter group. To modify more
-- than one parameter, submit a list of the following: @ParameterName@,
-- @ParameterValue@, and @ApplyMethod@. A maximum of 20 parameters can be
-- modified in a single request.
--
-- Changes to dynamic parameters are applied immediately. Changes to static
-- parameters require a reboot or maintenance window before the change can
-- take effect.
--
-- After you create a cluster parameter group, you should wait at least 5
-- minutes before creating your first cluster that uses that cluster
-- parameter group as the default parameter group. This allows Amazon
-- DocumentDB to fully complete the create action before the parameter
-- group is used as the default for a new cluster. This step is especially
-- important for parameters that are critical when creating the default
-- database for a cluster, such as the character set for the default
-- database defined by the @character_set_database@ parameter.
module Network.AWS.DocumentDB.ModifyDBClusterParameterGroup
  ( -- * Creating a Request
    ModifyDBClusterParameterGroup (..),
    newModifyDBClusterParameterGroup,

    -- * Request Lenses
    modifyDBClusterParameterGroup_dbClusterParameterGroupName,
    modifyDBClusterParameterGroup_parameters,

    -- * Destructuring the Response
    DBClusterParameterGroupNameMessage (..),
    newDBClusterParameterGroupNameMessage,

    -- * Response Lenses
    dbClusterParameterGroupNameMessage_dbClusterParameterGroupName,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DocumentDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input to ModifyDBClusterParameterGroup.
--
-- /See:/ 'newModifyDBClusterParameterGroup' smart constructor.
data ModifyDBClusterParameterGroup = ModifyDBClusterParameterGroup'
  { -- | The name of the cluster parameter group to modify.
    dbClusterParameterGroupName :: Prelude.Text,
    -- | A list of parameters in the cluster parameter group to modify.
    parameters :: [Parameter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyDBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbClusterParameterGroupName', 'modifyDBClusterParameterGroup_dbClusterParameterGroupName' - The name of the cluster parameter group to modify.
--
-- 'parameters', 'modifyDBClusterParameterGroup_parameters' - A list of parameters in the cluster parameter group to modify.
newModifyDBClusterParameterGroup ::
  -- | 'dbClusterParameterGroupName'
  Prelude.Text ->
  ModifyDBClusterParameterGroup
newModifyDBClusterParameterGroup
  pDBClusterParameterGroupName_ =
    ModifyDBClusterParameterGroup'
      { dbClusterParameterGroupName =
          pDBClusterParameterGroupName_,
        parameters = Prelude.mempty
      }

-- | The name of the cluster parameter group to modify.
modifyDBClusterParameterGroup_dbClusterParameterGroupName :: Lens.Lens' ModifyDBClusterParameterGroup Prelude.Text
modifyDBClusterParameterGroup_dbClusterParameterGroupName = Lens.lens (\ModifyDBClusterParameterGroup' {dbClusterParameterGroupName} -> dbClusterParameterGroupName) (\s@ModifyDBClusterParameterGroup' {} a -> s {dbClusterParameterGroupName = a} :: ModifyDBClusterParameterGroup)

-- | A list of parameters in the cluster parameter group to modify.
modifyDBClusterParameterGroup_parameters :: Lens.Lens' ModifyDBClusterParameterGroup [Parameter]
modifyDBClusterParameterGroup_parameters = Lens.lens (\ModifyDBClusterParameterGroup' {parameters} -> parameters) (\s@ModifyDBClusterParameterGroup' {} a -> s {parameters = a} :: ModifyDBClusterParameterGroup) Prelude.. Lens.coerced

instance
  Core.AWSRequest
    ModifyDBClusterParameterGroup
  where
  type
    AWSResponse ModifyDBClusterParameterGroup =
      DBClusterParameterGroupNameMessage
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ModifyDBClusterParameterGroupResult"
      (\s h x -> Core.parseXML x)

instance
  Prelude.Hashable
    ModifyDBClusterParameterGroup

instance Prelude.NFData ModifyDBClusterParameterGroup

instance Core.ToHeaders ModifyDBClusterParameterGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ModifyDBClusterParameterGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery ModifyDBClusterParameterGroup where
  toQuery ModifyDBClusterParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "ModifyDBClusterParameterGroup" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterParameterGroupName"
          Core.=: dbClusterParameterGroupName,
        "Parameters"
          Core.=: Core.toQueryList "Parameter" parameters
      ]
