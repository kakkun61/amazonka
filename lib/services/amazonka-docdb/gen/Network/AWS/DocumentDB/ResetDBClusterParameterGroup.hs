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
-- Module      : Network.AWS.DocumentDB.ResetDBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the parameters of a cluster parameter group to the default
-- value. To reset specific parameters, submit a list of the following:
-- @ParameterName@ and @ApplyMethod@. To reset the entire cluster parameter
-- group, specify the @DBClusterParameterGroupName@ and
-- @ResetAllParameters@ parameters.
--
-- When you reset the entire group, dynamic parameters are updated
-- immediately and static parameters are set to @pending-reboot@ to take
-- effect on the next DB instance reboot.
module Network.AWS.DocumentDB.ResetDBClusterParameterGroup
  ( -- * Creating a Request
    ResetDBClusterParameterGroup (..),
    newResetDBClusterParameterGroup,

    -- * Request Lenses
    resetDBClusterParameterGroup_resetAllParameters,
    resetDBClusterParameterGroup_parameters,
    resetDBClusterParameterGroup_dbClusterParameterGroupName,

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

-- | Represents the input to ResetDBClusterParameterGroup.
--
-- /See:/ 'newResetDBClusterParameterGroup' smart constructor.
data ResetDBClusterParameterGroup = ResetDBClusterParameterGroup'
  { -- | A value that is set to @true@ to reset all parameters in the cluster
    -- parameter group to their default values, and @false@ otherwise. You
    -- can\'t use this parameter if there is a list of parameter names
    -- specified for the @Parameters@ parameter.
    resetAllParameters :: Prelude.Maybe Prelude.Bool,
    -- | A list of parameter names in the cluster parameter group to reset to the
    -- default values. You can\'t use this parameter if the
    -- @ResetAllParameters@ parameter is set to @true@.
    parameters :: Prelude.Maybe [Parameter],
    -- | The name of the cluster parameter group to reset.
    dbClusterParameterGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetDBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resetAllParameters', 'resetDBClusterParameterGroup_resetAllParameters' - A value that is set to @true@ to reset all parameters in the cluster
-- parameter group to their default values, and @false@ otherwise. You
-- can\'t use this parameter if there is a list of parameter names
-- specified for the @Parameters@ parameter.
--
-- 'parameters', 'resetDBClusterParameterGroup_parameters' - A list of parameter names in the cluster parameter group to reset to the
-- default values. You can\'t use this parameter if the
-- @ResetAllParameters@ parameter is set to @true@.
--
-- 'dbClusterParameterGroupName', 'resetDBClusterParameterGroup_dbClusterParameterGroupName' - The name of the cluster parameter group to reset.
newResetDBClusterParameterGroup ::
  -- | 'dbClusterParameterGroupName'
  Prelude.Text ->
  ResetDBClusterParameterGroup
newResetDBClusterParameterGroup
  pDBClusterParameterGroupName_ =
    ResetDBClusterParameterGroup'
      { resetAllParameters =
          Prelude.Nothing,
        parameters = Prelude.Nothing,
        dbClusterParameterGroupName =
          pDBClusterParameterGroupName_
      }

-- | A value that is set to @true@ to reset all parameters in the cluster
-- parameter group to their default values, and @false@ otherwise. You
-- can\'t use this parameter if there is a list of parameter names
-- specified for the @Parameters@ parameter.
resetDBClusterParameterGroup_resetAllParameters :: Lens.Lens' ResetDBClusterParameterGroup (Prelude.Maybe Prelude.Bool)
resetDBClusterParameterGroup_resetAllParameters = Lens.lens (\ResetDBClusterParameterGroup' {resetAllParameters} -> resetAllParameters) (\s@ResetDBClusterParameterGroup' {} a -> s {resetAllParameters = a} :: ResetDBClusterParameterGroup)

-- | A list of parameter names in the cluster parameter group to reset to the
-- default values. You can\'t use this parameter if the
-- @ResetAllParameters@ parameter is set to @true@.
resetDBClusterParameterGroup_parameters :: Lens.Lens' ResetDBClusterParameterGroup (Prelude.Maybe [Parameter])
resetDBClusterParameterGroup_parameters = Lens.lens (\ResetDBClusterParameterGroup' {parameters} -> parameters) (\s@ResetDBClusterParameterGroup' {} a -> s {parameters = a} :: ResetDBClusterParameterGroup) Prelude.. Lens.mapping Lens.coerced

-- | The name of the cluster parameter group to reset.
resetDBClusterParameterGroup_dbClusterParameterGroupName :: Lens.Lens' ResetDBClusterParameterGroup Prelude.Text
resetDBClusterParameterGroup_dbClusterParameterGroupName = Lens.lens (\ResetDBClusterParameterGroup' {dbClusterParameterGroupName} -> dbClusterParameterGroupName) (\s@ResetDBClusterParameterGroup' {} a -> s {dbClusterParameterGroupName = a} :: ResetDBClusterParameterGroup)

instance Core.AWSRequest ResetDBClusterParameterGroup where
  type
    AWSResponse ResetDBClusterParameterGroup =
      DBClusterParameterGroupNameMessage
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ResetDBClusterParameterGroupResult"
      (\s h x -> Core.parseXML x)

instance
  Prelude.Hashable
    ResetDBClusterParameterGroup

instance Prelude.NFData ResetDBClusterParameterGroup

instance Core.ToHeaders ResetDBClusterParameterGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ResetDBClusterParameterGroup where
  toPath = Prelude.const "/"

instance Core.ToQuery ResetDBClusterParameterGroup where
  toQuery ResetDBClusterParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Core.=: ( "ResetDBClusterParameterGroup" ::
                      Prelude.ByteString
                  ),
        "Version"
          Core.=: ("2014-10-31" :: Prelude.ByteString),
        "ResetAllParameters" Core.=: resetAllParameters,
        "Parameters"
          Core.=: Core.toQuery
            ( Core.toQueryList "Parameter"
                Prelude.<$> parameters
            ),
        "DBClusterParameterGroupName"
          Core.=: dbClusterParameterGroupName
      ]
