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
-- Module      : Network.AWS.CustomerProfiles.DeleteProfileKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a searchable key from a customer profile.
module Network.AWS.CustomerProfiles.DeleteProfileKey
  ( -- * Creating a Request
    DeleteProfileKey (..),
    newDeleteProfileKey,

    -- * Request Lenses
    deleteProfileKey_profileId,
    deleteProfileKey_keyName,
    deleteProfileKey_values,
    deleteProfileKey_domainName,

    -- * Destructuring the Response
    DeleteProfileKeyResponse (..),
    newDeleteProfileKeyResponse,

    -- * Response Lenses
    deleteProfileKeyResponse_message,
    deleteProfileKeyResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteProfileKey' smart constructor.
data DeleteProfileKey = DeleteProfileKey'
  { -- | The unique identifier of a customer profile.
    profileId :: Prelude.Text,
    -- | A searchable identifier of a customer profile.
    keyName :: Prelude.Text,
    -- | A list of key values.
    values :: [Prelude.Text],
    -- | The unique name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteProfileKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileId', 'deleteProfileKey_profileId' - The unique identifier of a customer profile.
--
-- 'keyName', 'deleteProfileKey_keyName' - A searchable identifier of a customer profile.
--
-- 'values', 'deleteProfileKey_values' - A list of key values.
--
-- 'domainName', 'deleteProfileKey_domainName' - The unique name of the domain.
newDeleteProfileKey ::
  -- | 'profileId'
  Prelude.Text ->
  -- | 'keyName'
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  DeleteProfileKey
newDeleteProfileKey
  pProfileId_
  pKeyName_
  pDomainName_ =
    DeleteProfileKey'
      { profileId = pProfileId_,
        keyName = pKeyName_,
        values = Prelude.mempty,
        domainName = pDomainName_
      }

-- | The unique identifier of a customer profile.
deleteProfileKey_profileId :: Lens.Lens' DeleteProfileKey Prelude.Text
deleteProfileKey_profileId = Lens.lens (\DeleteProfileKey' {profileId} -> profileId) (\s@DeleteProfileKey' {} a -> s {profileId = a} :: DeleteProfileKey)

-- | A searchable identifier of a customer profile.
deleteProfileKey_keyName :: Lens.Lens' DeleteProfileKey Prelude.Text
deleteProfileKey_keyName = Lens.lens (\DeleteProfileKey' {keyName} -> keyName) (\s@DeleteProfileKey' {} a -> s {keyName = a} :: DeleteProfileKey)

-- | A list of key values.
deleteProfileKey_values :: Lens.Lens' DeleteProfileKey [Prelude.Text]
deleteProfileKey_values = Lens.lens (\DeleteProfileKey' {values} -> values) (\s@DeleteProfileKey' {} a -> s {values = a} :: DeleteProfileKey) Prelude.. Lens.coerced

-- | The unique name of the domain.
deleteProfileKey_domainName :: Lens.Lens' DeleteProfileKey Prelude.Text
deleteProfileKey_domainName = Lens.lens (\DeleteProfileKey' {domainName} -> domainName) (\s@DeleteProfileKey' {} a -> s {domainName = a} :: DeleteProfileKey)

instance Core.AWSRequest DeleteProfileKey where
  type
    AWSResponse DeleteProfileKey =
      DeleteProfileKeyResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteProfileKeyResponse'
            Prelude.<$> (x Core..?> "Message")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteProfileKey

instance Prelude.NFData DeleteProfileKey

instance Core.ToHeaders DeleteProfileKey where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteProfileKey where
  toJSON DeleteProfileKey' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ProfileId" Core..= profileId),
            Prelude.Just ("KeyName" Core..= keyName),
            Prelude.Just ("Values" Core..= values)
          ]
      )

instance Core.ToPath DeleteProfileKey where
  toPath DeleteProfileKey' {..} =
    Prelude.mconcat
      [ "/domains/",
        Core.toBS domainName,
        "/profiles/keys/delete"
      ]

instance Core.ToQuery DeleteProfileKey where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteProfileKeyResponse' smart constructor.
data DeleteProfileKeyResponse = DeleteProfileKeyResponse'
  { -- | A message that indicates the delete request is done.
    message :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteProfileKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'message', 'deleteProfileKeyResponse_message' - A message that indicates the delete request is done.
--
-- 'httpStatus', 'deleteProfileKeyResponse_httpStatus' - The response's http status code.
newDeleteProfileKeyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteProfileKeyResponse
newDeleteProfileKeyResponse pHttpStatus_ =
  DeleteProfileKeyResponse'
    { message =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A message that indicates the delete request is done.
deleteProfileKeyResponse_message :: Lens.Lens' DeleteProfileKeyResponse (Prelude.Maybe Prelude.Text)
deleteProfileKeyResponse_message = Lens.lens (\DeleteProfileKeyResponse' {message} -> message) (\s@DeleteProfileKeyResponse' {} a -> s {message = a} :: DeleteProfileKeyResponse)

-- | The response's http status code.
deleteProfileKeyResponse_httpStatus :: Lens.Lens' DeleteProfileKeyResponse Prelude.Int
deleteProfileKeyResponse_httpStatus = Lens.lens (\DeleteProfileKeyResponse' {httpStatus} -> httpStatus) (\s@DeleteProfileKeyResponse' {} a -> s {httpStatus = a} :: DeleteProfileKeyResponse)

instance Prelude.NFData DeleteProfileKeyResponse
