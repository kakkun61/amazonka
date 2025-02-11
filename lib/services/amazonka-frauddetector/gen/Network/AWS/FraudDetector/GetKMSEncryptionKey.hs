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
-- Module      : Network.AWS.FraudDetector.GetKMSEncryptionKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the encryption key if a KMS key has been specified to be used to
-- encrypt content in Amazon Fraud Detector.
module Network.AWS.FraudDetector.GetKMSEncryptionKey
  ( -- * Creating a Request
    GetKMSEncryptionKey (..),
    newGetKMSEncryptionKey,

    -- * Destructuring the Response
    GetKMSEncryptionKeyResponse (..),
    newGetKMSEncryptionKeyResponse,

    -- * Response Lenses
    getKMSEncryptionKeyResponse_kmsKey,
    getKMSEncryptionKeyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetKMSEncryptionKey' smart constructor.
data GetKMSEncryptionKey = GetKMSEncryptionKey'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetKMSEncryptionKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newGetKMSEncryptionKey ::
  GetKMSEncryptionKey
newGetKMSEncryptionKey = GetKMSEncryptionKey'

instance Core.AWSRequest GetKMSEncryptionKey where
  type
    AWSResponse GetKMSEncryptionKey =
      GetKMSEncryptionKeyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetKMSEncryptionKeyResponse'
            Prelude.<$> (x Core..?> "kmsKey")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetKMSEncryptionKey

instance Prelude.NFData GetKMSEncryptionKey

instance Core.ToHeaders GetKMSEncryptionKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.GetKMSEncryptionKey" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetKMSEncryptionKey where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath GetKMSEncryptionKey where
  toPath = Prelude.const "/"

instance Core.ToQuery GetKMSEncryptionKey where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetKMSEncryptionKeyResponse' smart constructor.
data GetKMSEncryptionKeyResponse = GetKMSEncryptionKeyResponse'
  { -- | The KMS encryption key.
    kmsKey :: Prelude.Maybe KMSKey,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetKMSEncryptionKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kmsKey', 'getKMSEncryptionKeyResponse_kmsKey' - The KMS encryption key.
--
-- 'httpStatus', 'getKMSEncryptionKeyResponse_httpStatus' - The response's http status code.
newGetKMSEncryptionKeyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetKMSEncryptionKeyResponse
newGetKMSEncryptionKeyResponse pHttpStatus_ =
  GetKMSEncryptionKeyResponse'
    { kmsKey =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The KMS encryption key.
getKMSEncryptionKeyResponse_kmsKey :: Lens.Lens' GetKMSEncryptionKeyResponse (Prelude.Maybe KMSKey)
getKMSEncryptionKeyResponse_kmsKey = Lens.lens (\GetKMSEncryptionKeyResponse' {kmsKey} -> kmsKey) (\s@GetKMSEncryptionKeyResponse' {} a -> s {kmsKey = a} :: GetKMSEncryptionKeyResponse)

-- | The response's http status code.
getKMSEncryptionKeyResponse_httpStatus :: Lens.Lens' GetKMSEncryptionKeyResponse Prelude.Int
getKMSEncryptionKeyResponse_httpStatus = Lens.lens (\GetKMSEncryptionKeyResponse' {httpStatus} -> httpStatus) (\s@GetKMSEncryptionKeyResponse' {} a -> s {httpStatus = a} :: GetKMSEncryptionKeyResponse)

instance Prelude.NFData GetKMSEncryptionKeyResponse
