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
-- Module      : Network.AWS.Schemas.DeleteDiscoverer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a discoverer.
module Network.AWS.Schemas.DeleteDiscoverer
  ( -- * Creating a Request
    DeleteDiscoverer (..),
    newDeleteDiscoverer,

    -- * Request Lenses
    deleteDiscoverer_discovererId,

    -- * Destructuring the Response
    DeleteDiscovererResponse (..),
    newDeleteDiscovererResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Schemas.Types

-- | /See:/ 'newDeleteDiscoverer' smart constructor.
data DeleteDiscoverer = DeleteDiscoverer'
  { -- | The ID of the discoverer.
    discovererId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDiscoverer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'discovererId', 'deleteDiscoverer_discovererId' - The ID of the discoverer.
newDeleteDiscoverer ::
  -- | 'discovererId'
  Prelude.Text ->
  DeleteDiscoverer
newDeleteDiscoverer pDiscovererId_ =
  DeleteDiscoverer' {discovererId = pDiscovererId_}

-- | The ID of the discoverer.
deleteDiscoverer_discovererId :: Lens.Lens' DeleteDiscoverer Prelude.Text
deleteDiscoverer_discovererId = Lens.lens (\DeleteDiscoverer' {discovererId} -> discovererId) (\s@DeleteDiscoverer' {} a -> s {discovererId = a} :: DeleteDiscoverer)

instance Core.AWSRequest DeleteDiscoverer where
  type
    AWSResponse DeleteDiscoverer =
      DeleteDiscovererResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull DeleteDiscovererResponse'

instance Prelude.Hashable DeleteDiscoverer

instance Prelude.NFData DeleteDiscoverer

instance Core.ToHeaders DeleteDiscoverer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteDiscoverer where
  toPath DeleteDiscoverer' {..} =
    Prelude.mconcat
      ["/v1/discoverers/id/", Core.toBS discovererId]

instance Core.ToQuery DeleteDiscoverer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDiscovererResponse' smart constructor.
data DeleteDiscovererResponse = DeleteDiscovererResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteDiscovererResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDiscovererResponse ::
  DeleteDiscovererResponse
newDeleteDiscovererResponse =
  DeleteDiscovererResponse'

instance Prelude.NFData DeleteDiscovererResponse
