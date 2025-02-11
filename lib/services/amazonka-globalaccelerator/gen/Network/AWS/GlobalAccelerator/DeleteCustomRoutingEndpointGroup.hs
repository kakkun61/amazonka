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
-- Module      : Network.AWS.GlobalAccelerator.DeleteCustomRoutingEndpointGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete an endpoint group from a listener for a custom routing
-- accelerator.
module Network.AWS.GlobalAccelerator.DeleteCustomRoutingEndpointGroup
  ( -- * Creating a Request
    DeleteCustomRoutingEndpointGroup (..),
    newDeleteCustomRoutingEndpointGroup,

    -- * Request Lenses
    deleteCustomRoutingEndpointGroup_endpointGroupArn,

    -- * Destructuring the Response
    DeleteCustomRoutingEndpointGroupResponse (..),
    newDeleteCustomRoutingEndpointGroupResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteCustomRoutingEndpointGroup' smart constructor.
data DeleteCustomRoutingEndpointGroup = DeleteCustomRoutingEndpointGroup'
  { -- | The Amazon Resource Name (ARN) of the endpoint group to delete.
    endpointGroupArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCustomRoutingEndpointGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpointGroupArn', 'deleteCustomRoutingEndpointGroup_endpointGroupArn' - The Amazon Resource Name (ARN) of the endpoint group to delete.
newDeleteCustomRoutingEndpointGroup ::
  -- | 'endpointGroupArn'
  Prelude.Text ->
  DeleteCustomRoutingEndpointGroup
newDeleteCustomRoutingEndpointGroup
  pEndpointGroupArn_ =
    DeleteCustomRoutingEndpointGroup'
      { endpointGroupArn =
          pEndpointGroupArn_
      }

-- | The Amazon Resource Name (ARN) of the endpoint group to delete.
deleteCustomRoutingEndpointGroup_endpointGroupArn :: Lens.Lens' DeleteCustomRoutingEndpointGroup Prelude.Text
deleteCustomRoutingEndpointGroup_endpointGroupArn = Lens.lens (\DeleteCustomRoutingEndpointGroup' {endpointGroupArn} -> endpointGroupArn) (\s@DeleteCustomRoutingEndpointGroup' {} a -> s {endpointGroupArn = a} :: DeleteCustomRoutingEndpointGroup)

instance
  Core.AWSRequest
    DeleteCustomRoutingEndpointGroup
  where
  type
    AWSResponse DeleteCustomRoutingEndpointGroup =
      DeleteCustomRoutingEndpointGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      DeleteCustomRoutingEndpointGroupResponse'

instance
  Prelude.Hashable
    DeleteCustomRoutingEndpointGroup

instance
  Prelude.NFData
    DeleteCustomRoutingEndpointGroup

instance
  Core.ToHeaders
    DeleteCustomRoutingEndpointGroup
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.DeleteCustomRoutingEndpointGroup" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteCustomRoutingEndpointGroup where
  toJSON DeleteCustomRoutingEndpointGroup' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("EndpointGroupArn" Core..= endpointGroupArn)
          ]
      )

instance Core.ToPath DeleteCustomRoutingEndpointGroup where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DeleteCustomRoutingEndpointGroup
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteCustomRoutingEndpointGroupResponse' smart constructor.
data DeleteCustomRoutingEndpointGroupResponse = DeleteCustomRoutingEndpointGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteCustomRoutingEndpointGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteCustomRoutingEndpointGroupResponse ::
  DeleteCustomRoutingEndpointGroupResponse
newDeleteCustomRoutingEndpointGroupResponse =
  DeleteCustomRoutingEndpointGroupResponse'

instance
  Prelude.NFData
    DeleteCustomRoutingEndpointGroupResponse
