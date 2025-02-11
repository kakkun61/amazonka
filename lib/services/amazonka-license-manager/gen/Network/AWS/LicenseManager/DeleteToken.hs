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
-- Module      : Network.AWS.LicenseManager.DeleteToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified token. Must be called in the license home Region.
module Network.AWS.LicenseManager.DeleteToken
  ( -- * Creating a Request
    DeleteToken (..),
    newDeleteToken,

    -- * Request Lenses
    deleteToken_tokenId,

    -- * Destructuring the Response
    DeleteTokenResponse (..),
    newDeleteTokenResponse,

    -- * Response Lenses
    deleteTokenResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteToken' smart constructor.
data DeleteToken = DeleteToken'
  { -- | Token ID.
    tokenId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tokenId', 'deleteToken_tokenId' - Token ID.
newDeleteToken ::
  -- | 'tokenId'
  Prelude.Text ->
  DeleteToken
newDeleteToken pTokenId_ =
  DeleteToken' {tokenId = pTokenId_}

-- | Token ID.
deleteToken_tokenId :: Lens.Lens' DeleteToken Prelude.Text
deleteToken_tokenId = Lens.lens (\DeleteToken' {tokenId} -> tokenId) (\s@DeleteToken' {} a -> s {tokenId = a} :: DeleteToken)

instance Core.AWSRequest DeleteToken where
  type AWSResponse DeleteToken = DeleteTokenResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteTokenResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteToken

instance Prelude.NFData DeleteToken

instance Core.ToHeaders DeleteToken where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSLicenseManager.DeleteToken" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteToken where
  toJSON DeleteToken' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("TokenId" Core..= tokenId)]
      )

instance Core.ToPath DeleteToken where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteToken where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteTokenResponse' smart constructor.
data DeleteTokenResponse = DeleteTokenResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteTokenResponse_httpStatus' - The response's http status code.
newDeleteTokenResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteTokenResponse
newDeleteTokenResponse pHttpStatus_ =
  DeleteTokenResponse' {httpStatus = pHttpStatus_}

-- | The response's http status code.
deleteTokenResponse_httpStatus :: Lens.Lens' DeleteTokenResponse Prelude.Int
deleteTokenResponse_httpStatus = Lens.lens (\DeleteTokenResponse' {httpStatus} -> httpStatus) (\s@DeleteTokenResponse' {} a -> s {httpStatus = a} :: DeleteTokenResponse)

instance Prelude.NFData DeleteTokenResponse
