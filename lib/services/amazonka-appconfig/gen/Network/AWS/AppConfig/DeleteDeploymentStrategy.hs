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
-- Module      : Network.AWS.AppConfig.DeleteDeploymentStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a deployment strategy. Deleting a deployment strategy does not
-- delete a configuration from a host.
module Network.AWS.AppConfig.DeleteDeploymentStrategy
  ( -- * Creating a Request
    DeleteDeploymentStrategy (..),
    newDeleteDeploymentStrategy,

    -- * Request Lenses
    deleteDeploymentStrategy_deploymentStrategyId,

    -- * Destructuring the Response
    DeleteDeploymentStrategyResponse (..),
    newDeleteDeploymentStrategyResponse,
  )
where

import Network.AWS.AppConfig.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDeploymentStrategy' smart constructor.
data DeleteDeploymentStrategy = DeleteDeploymentStrategy'
  { -- | The ID of the deployment strategy you want to delete.
    deploymentStrategyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeploymentStrategy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentStrategyId', 'deleteDeploymentStrategy_deploymentStrategyId' - The ID of the deployment strategy you want to delete.
newDeleteDeploymentStrategy ::
  -- | 'deploymentStrategyId'
  Prelude.Text ->
  DeleteDeploymentStrategy
newDeleteDeploymentStrategy pDeploymentStrategyId_ =
  DeleteDeploymentStrategy'
    { deploymentStrategyId =
        pDeploymentStrategyId_
    }

-- | The ID of the deployment strategy you want to delete.
deleteDeploymentStrategy_deploymentStrategyId :: Lens.Lens' DeleteDeploymentStrategy Prelude.Text
deleteDeploymentStrategy_deploymentStrategyId = Lens.lens (\DeleteDeploymentStrategy' {deploymentStrategyId} -> deploymentStrategyId) (\s@DeleteDeploymentStrategy' {} a -> s {deploymentStrategyId = a} :: DeleteDeploymentStrategy)

instance Core.AWSRequest DeleteDeploymentStrategy where
  type
    AWSResponse DeleteDeploymentStrategy =
      DeleteDeploymentStrategyResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteDeploymentStrategyResponse'

instance Prelude.Hashable DeleteDeploymentStrategy

instance Prelude.NFData DeleteDeploymentStrategy

instance Core.ToHeaders DeleteDeploymentStrategy where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDeploymentStrategy where
  toPath DeleteDeploymentStrategy' {..} =
    Prelude.mconcat
      [ "/deployementstrategies/",
        Core.toBS deploymentStrategyId
      ]

instance Core.ToQuery DeleteDeploymentStrategy where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDeploymentStrategyResponse' smart constructor.
data DeleteDeploymentStrategyResponse = DeleteDeploymentStrategyResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDeploymentStrategyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDeploymentStrategyResponse ::
  DeleteDeploymentStrategyResponse
newDeleteDeploymentStrategyResponse =
  DeleteDeploymentStrategyResponse'

instance
  Prelude.NFData
    DeleteDeploymentStrategyResponse
