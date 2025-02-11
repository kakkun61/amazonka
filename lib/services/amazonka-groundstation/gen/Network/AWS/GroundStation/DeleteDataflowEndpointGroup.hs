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
-- Module      : Network.AWS.GroundStation.DeleteDataflowEndpointGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a dataflow endpoint group.
module Network.AWS.GroundStation.DeleteDataflowEndpointGroup
  ( -- * Creating a Request
    DeleteDataflowEndpointGroup (..),
    newDeleteDataflowEndpointGroup,

    -- * Request Lenses
    deleteDataflowEndpointGroup_dataflowEndpointGroupId,

    -- * Destructuring the Response
    DataflowEndpointGroupIdResponse (..),
    newDataflowEndpointGroupIdResponse,

    -- * Response Lenses
    dataflowEndpointGroupIdResponse_dataflowEndpointGroupId,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GroundStation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDeleteDataflowEndpointGroup' smart constructor.
data DeleteDataflowEndpointGroup = DeleteDataflowEndpointGroup'
  { -- | UUID of a dataflow endpoint group.
    dataflowEndpointGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDataflowEndpointGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataflowEndpointGroupId', 'deleteDataflowEndpointGroup_dataflowEndpointGroupId' - UUID of a dataflow endpoint group.
newDeleteDataflowEndpointGroup ::
  -- | 'dataflowEndpointGroupId'
  Prelude.Text ->
  DeleteDataflowEndpointGroup
newDeleteDataflowEndpointGroup
  pDataflowEndpointGroupId_ =
    DeleteDataflowEndpointGroup'
      { dataflowEndpointGroupId =
          pDataflowEndpointGroupId_
      }

-- | UUID of a dataflow endpoint group.
deleteDataflowEndpointGroup_dataflowEndpointGroupId :: Lens.Lens' DeleteDataflowEndpointGroup Prelude.Text
deleteDataflowEndpointGroup_dataflowEndpointGroupId = Lens.lens (\DeleteDataflowEndpointGroup' {dataflowEndpointGroupId} -> dataflowEndpointGroupId) (\s@DeleteDataflowEndpointGroup' {} a -> s {dataflowEndpointGroupId = a} :: DeleteDataflowEndpointGroup)

instance Core.AWSRequest DeleteDataflowEndpointGroup where
  type
    AWSResponse DeleteDataflowEndpointGroup =
      DataflowEndpointGroupIdResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable DeleteDataflowEndpointGroup

instance Prelude.NFData DeleteDataflowEndpointGroup

instance Core.ToHeaders DeleteDataflowEndpointGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDataflowEndpointGroup where
  toPath DeleteDataflowEndpointGroup' {..} =
    Prelude.mconcat
      [ "/dataflowEndpointGroup/",
        Core.toBS dataflowEndpointGroupId
      ]

instance Core.ToQuery DeleteDataflowEndpointGroup where
  toQuery = Prelude.const Prelude.mempty
