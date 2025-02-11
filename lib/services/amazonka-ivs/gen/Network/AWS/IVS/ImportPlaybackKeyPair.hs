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
-- Module      : Network.AWS.IVS.ImportPlaybackKeyPair
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports the public portion of a new key pair and returns its @arn@ and
-- @fingerprint@. The @privateKey@ can then be used to generate viewer
-- authorization tokens, to grant viewers access to private channels. For
-- more information, see
-- <https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html Setting Up Private Channels>
-- in the /Amazon IVS User Guide/.
module Network.AWS.IVS.ImportPlaybackKeyPair
  ( -- * Creating a Request
    ImportPlaybackKeyPair (..),
    newImportPlaybackKeyPair,

    -- * Request Lenses
    importPlaybackKeyPair_name,
    importPlaybackKeyPair_tags,
    importPlaybackKeyPair_publicKeyMaterial,

    -- * Destructuring the Response
    ImportPlaybackKeyPairResponse (..),
    newImportPlaybackKeyPairResponse,

    -- * Response Lenses
    importPlaybackKeyPairResponse_keyPair,
    importPlaybackKeyPairResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IVS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newImportPlaybackKeyPair' smart constructor.
data ImportPlaybackKeyPair = ImportPlaybackKeyPair'
  { -- | Playback-key-pair name. The value does not need to be unique.
    name :: Prelude.Maybe Prelude.Text,
    -- | Any tags provided with the request are added to the playback key pair
    -- tags.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The public portion of a customer-generated key pair.
    publicKeyMaterial :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportPlaybackKeyPair' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'importPlaybackKeyPair_name' - Playback-key-pair name. The value does not need to be unique.
--
-- 'tags', 'importPlaybackKeyPair_tags' - Any tags provided with the request are added to the playback key pair
-- tags.
--
-- 'publicKeyMaterial', 'importPlaybackKeyPair_publicKeyMaterial' - The public portion of a customer-generated key pair.
newImportPlaybackKeyPair ::
  -- | 'publicKeyMaterial'
  Prelude.Text ->
  ImportPlaybackKeyPair
newImportPlaybackKeyPair pPublicKeyMaterial_ =
  ImportPlaybackKeyPair'
    { name = Prelude.Nothing,
      tags = Prelude.Nothing,
      publicKeyMaterial = pPublicKeyMaterial_
    }

-- | Playback-key-pair name. The value does not need to be unique.
importPlaybackKeyPair_name :: Lens.Lens' ImportPlaybackKeyPair (Prelude.Maybe Prelude.Text)
importPlaybackKeyPair_name = Lens.lens (\ImportPlaybackKeyPair' {name} -> name) (\s@ImportPlaybackKeyPair' {} a -> s {name = a} :: ImportPlaybackKeyPair)

-- | Any tags provided with the request are added to the playback key pair
-- tags.
importPlaybackKeyPair_tags :: Lens.Lens' ImportPlaybackKeyPair (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
importPlaybackKeyPair_tags = Lens.lens (\ImportPlaybackKeyPair' {tags} -> tags) (\s@ImportPlaybackKeyPair' {} a -> s {tags = a} :: ImportPlaybackKeyPair) Prelude.. Lens.mapping Lens.coerced

-- | The public portion of a customer-generated key pair.
importPlaybackKeyPair_publicKeyMaterial :: Lens.Lens' ImportPlaybackKeyPair Prelude.Text
importPlaybackKeyPair_publicKeyMaterial = Lens.lens (\ImportPlaybackKeyPair' {publicKeyMaterial} -> publicKeyMaterial) (\s@ImportPlaybackKeyPair' {} a -> s {publicKeyMaterial = a} :: ImportPlaybackKeyPair)

instance Core.AWSRequest ImportPlaybackKeyPair where
  type
    AWSResponse ImportPlaybackKeyPair =
      ImportPlaybackKeyPairResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ImportPlaybackKeyPairResponse'
            Prelude.<$> (x Core..?> "keyPair")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ImportPlaybackKeyPair

instance Prelude.NFData ImportPlaybackKeyPair

instance Core.ToHeaders ImportPlaybackKeyPair where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ImportPlaybackKeyPair where
  toJSON ImportPlaybackKeyPair' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("name" Core..=) Prelude.<$> name,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("publicKeyMaterial" Core..= publicKeyMaterial)
          ]
      )

instance Core.ToPath ImportPlaybackKeyPair where
  toPath = Prelude.const "/ImportPlaybackKeyPair"

instance Core.ToQuery ImportPlaybackKeyPair where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newImportPlaybackKeyPairResponse' smart constructor.
data ImportPlaybackKeyPairResponse = ImportPlaybackKeyPairResponse'
  { keyPair :: Prelude.Maybe PlaybackKeyPair,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ImportPlaybackKeyPairResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyPair', 'importPlaybackKeyPairResponse_keyPair' -
--
-- 'httpStatus', 'importPlaybackKeyPairResponse_httpStatus' - The response's http status code.
newImportPlaybackKeyPairResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ImportPlaybackKeyPairResponse
newImportPlaybackKeyPairResponse pHttpStatus_ =
  ImportPlaybackKeyPairResponse'
    { keyPair =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
importPlaybackKeyPairResponse_keyPair :: Lens.Lens' ImportPlaybackKeyPairResponse (Prelude.Maybe PlaybackKeyPair)
importPlaybackKeyPairResponse_keyPair = Lens.lens (\ImportPlaybackKeyPairResponse' {keyPair} -> keyPair) (\s@ImportPlaybackKeyPairResponse' {} a -> s {keyPair = a} :: ImportPlaybackKeyPairResponse)

-- | The response's http status code.
importPlaybackKeyPairResponse_httpStatus :: Lens.Lens' ImportPlaybackKeyPairResponse Prelude.Int
importPlaybackKeyPairResponse_httpStatus = Lens.lens (\ImportPlaybackKeyPairResponse' {httpStatus} -> httpStatus) (\s@ImportPlaybackKeyPairResponse' {} a -> s {httpStatus = a} :: ImportPlaybackKeyPairResponse)

instance Prelude.NFData ImportPlaybackKeyPairResponse
