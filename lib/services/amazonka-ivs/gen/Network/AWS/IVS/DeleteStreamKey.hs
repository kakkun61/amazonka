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
-- Module      : Network.AWS.IVS.DeleteStreamKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the stream key for the specified ARN, so it can no longer be
-- used to stream.
module Network.AWS.IVS.DeleteStreamKey
  ( -- * Creating a Request
    DeleteStreamKey (..),
    newDeleteStreamKey,

    -- * Request Lenses
    deleteStreamKey_arn,

    -- * Destructuring the Response
    DeleteStreamKeyResponse (..),
    newDeleteStreamKeyResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IVS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteStreamKey' smart constructor.
data DeleteStreamKey = DeleteStreamKey'
  { -- | ARN of the stream key to be deleted.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteStreamKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'deleteStreamKey_arn' - ARN of the stream key to be deleted.
newDeleteStreamKey ::
  -- | 'arn'
  Prelude.Text ->
  DeleteStreamKey
newDeleteStreamKey pArn_ =
  DeleteStreamKey' {arn = pArn_}

-- | ARN of the stream key to be deleted.
deleteStreamKey_arn :: Lens.Lens' DeleteStreamKey Prelude.Text
deleteStreamKey_arn = Lens.lens (\DeleteStreamKey' {arn} -> arn) (\s@DeleteStreamKey' {} a -> s {arn = a} :: DeleteStreamKey)

instance Core.AWSRequest DeleteStreamKey where
  type
    AWSResponse DeleteStreamKey =
      DeleteStreamKeyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteStreamKeyResponse'

instance Prelude.Hashable DeleteStreamKey

instance Prelude.NFData DeleteStreamKey

instance Core.ToHeaders DeleteStreamKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteStreamKey where
  toJSON DeleteStreamKey' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("arn" Core..= arn)]
      )

instance Core.ToPath DeleteStreamKey where
  toPath = Prelude.const "/DeleteStreamKey"

instance Core.ToQuery DeleteStreamKey where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteStreamKeyResponse' smart constructor.
data DeleteStreamKeyResponse = DeleteStreamKeyResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteStreamKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteStreamKeyResponse ::
  DeleteStreamKeyResponse
newDeleteStreamKeyResponse = DeleteStreamKeyResponse'

instance Prelude.NFData DeleteStreamKeyResponse
