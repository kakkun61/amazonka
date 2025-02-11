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
-- Module      : Network.AWS.IVS.DeletePlaybackKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified authorization key pair. This invalidates future
-- viewer tokens generated using the key pair’s @privateKey@. For more
-- information, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html Setting Up Private Channels>
-- in the /Amazon IVS User Guide/.
module Network.AWS.IVS.DeletePlaybackKeyPair
  ( -- * Creating a Request
    DeletePlaybackKeyPair (..),
    newDeletePlaybackKeyPair,

    -- * Request Lenses
    deletePlaybackKeyPair_arn,

    -- * Destructuring the Response
    DeletePlaybackKeyPairResponse (..),
    newDeletePlaybackKeyPairResponse,

    -- * Response Lenses
    deletePlaybackKeyPairResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IVS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeletePlaybackKeyPair' smart constructor.
data DeletePlaybackKeyPair = DeletePlaybackKeyPair'
  { -- | ARN of the key pair to be deleted.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePlaybackKeyPair' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'deletePlaybackKeyPair_arn' - ARN of the key pair to be deleted.
newDeletePlaybackKeyPair ::
  -- | 'arn'
  Prelude.Text ->
  DeletePlaybackKeyPair
newDeletePlaybackKeyPair pArn_ =
  DeletePlaybackKeyPair' {arn = pArn_}

-- | ARN of the key pair to be deleted.
deletePlaybackKeyPair_arn :: Lens.Lens' DeletePlaybackKeyPair Prelude.Text
deletePlaybackKeyPair_arn = Lens.lens (\DeletePlaybackKeyPair' {arn} -> arn) (\s@DeletePlaybackKeyPair' {} a -> s {arn = a} :: DeletePlaybackKeyPair)

instance Core.AWSRequest DeletePlaybackKeyPair where
  type
    AWSResponse DeletePlaybackKeyPair =
      DeletePlaybackKeyPairResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeletePlaybackKeyPairResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeletePlaybackKeyPair

instance Prelude.NFData DeletePlaybackKeyPair

instance Core.ToHeaders DeletePlaybackKeyPair where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeletePlaybackKeyPair where
  toJSON DeletePlaybackKeyPair' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("arn" Core..= arn)]
      )

instance Core.ToPath DeletePlaybackKeyPair where
  toPath = Prelude.const "/DeletePlaybackKeyPair"

instance Core.ToQuery DeletePlaybackKeyPair where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeletePlaybackKeyPairResponse' smart constructor.
data DeletePlaybackKeyPairResponse = DeletePlaybackKeyPairResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeletePlaybackKeyPairResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deletePlaybackKeyPairResponse_httpStatus' - The response's http status code.
newDeletePlaybackKeyPairResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeletePlaybackKeyPairResponse
newDeletePlaybackKeyPairResponse pHttpStatus_ =
  DeletePlaybackKeyPairResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deletePlaybackKeyPairResponse_httpStatus :: Lens.Lens' DeletePlaybackKeyPairResponse Prelude.Int
deletePlaybackKeyPairResponse_httpStatus = Lens.lens (\DeletePlaybackKeyPairResponse' {httpStatus} -> httpStatus) (\s@DeletePlaybackKeyPairResponse' {} a -> s {httpStatus = a} :: DeletePlaybackKeyPairResponse)

instance Prelude.NFData DeletePlaybackKeyPairResponse
