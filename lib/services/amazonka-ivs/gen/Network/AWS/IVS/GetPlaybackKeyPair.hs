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
-- Module      : Network.AWS.IVS.GetPlaybackKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a specified playback authorization key pair and returns the @arn@
-- and @fingerprint@. The @privateKey@ held by the caller can be used to
-- generate viewer authorization tokens, to grant viewers access to private
-- channels. For more information, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html Setting Up Private Channels>
-- in the /Amazon IVS User Guide/.
module Network.AWS.IVS.GetPlaybackKeyPair
  ( -- * Creating a Request
    GetPlaybackKeyPair (..),
    newGetPlaybackKeyPair,

    -- * Request Lenses
    getPlaybackKeyPair_arn,

    -- * Destructuring the Response
    GetPlaybackKeyPairResponse (..),
    newGetPlaybackKeyPairResponse,

    -- * Response Lenses
    getPlaybackKeyPairResponse_keyPair,
    getPlaybackKeyPairResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IVS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPlaybackKeyPair' smart constructor.
data GetPlaybackKeyPair = GetPlaybackKeyPair'
  { -- | ARN of the key pair to be returned.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPlaybackKeyPair' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getPlaybackKeyPair_arn' - ARN of the key pair to be returned.
newGetPlaybackKeyPair ::
  -- | 'arn'
  Prelude.Text ->
  GetPlaybackKeyPair
newGetPlaybackKeyPair pArn_ =
  GetPlaybackKeyPair' {arn = pArn_}

-- | ARN of the key pair to be returned.
getPlaybackKeyPair_arn :: Lens.Lens' GetPlaybackKeyPair Prelude.Text
getPlaybackKeyPair_arn = Lens.lens (\GetPlaybackKeyPair' {arn} -> arn) (\s@GetPlaybackKeyPair' {} a -> s {arn = a} :: GetPlaybackKeyPair)

instance Core.AWSRequest GetPlaybackKeyPair where
  type
    AWSResponse GetPlaybackKeyPair =
      GetPlaybackKeyPairResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPlaybackKeyPairResponse'
            Prelude.<$> (x Core..?> "keyPair")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPlaybackKeyPair

instance Prelude.NFData GetPlaybackKeyPair

instance Core.ToHeaders GetPlaybackKeyPair where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetPlaybackKeyPair where
  toJSON GetPlaybackKeyPair' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("arn" Core..= arn)]
      )

instance Core.ToPath GetPlaybackKeyPair where
  toPath = Prelude.const "/GetPlaybackKeyPair"

instance Core.ToQuery GetPlaybackKeyPair where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPlaybackKeyPairResponse' smart constructor.
data GetPlaybackKeyPairResponse = GetPlaybackKeyPairResponse'
  { keyPair :: Prelude.Maybe PlaybackKeyPair,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetPlaybackKeyPairResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyPair', 'getPlaybackKeyPairResponse_keyPair' -
--
-- 'httpStatus', 'getPlaybackKeyPairResponse_httpStatus' - The response's http status code.
newGetPlaybackKeyPairResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPlaybackKeyPairResponse
newGetPlaybackKeyPairResponse pHttpStatus_ =
  GetPlaybackKeyPairResponse'
    { keyPair =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
getPlaybackKeyPairResponse_keyPair :: Lens.Lens' GetPlaybackKeyPairResponse (Prelude.Maybe PlaybackKeyPair)
getPlaybackKeyPairResponse_keyPair = Lens.lens (\GetPlaybackKeyPairResponse' {keyPair} -> keyPair) (\s@GetPlaybackKeyPairResponse' {} a -> s {keyPair = a} :: GetPlaybackKeyPairResponse)

-- | The response's http status code.
getPlaybackKeyPairResponse_httpStatus :: Lens.Lens' GetPlaybackKeyPairResponse Prelude.Int
getPlaybackKeyPairResponse_httpStatus = Lens.lens (\GetPlaybackKeyPairResponse' {httpStatus} -> httpStatus) (\s@GetPlaybackKeyPairResponse' {} a -> s {httpStatus = a} :: GetPlaybackKeyPairResponse)

instance Prelude.NFData GetPlaybackKeyPairResponse
