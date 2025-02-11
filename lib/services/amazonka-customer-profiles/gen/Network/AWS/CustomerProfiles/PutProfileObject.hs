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
-- Module      : Network.AWS.CustomerProfiles.PutProfileObject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds additional objects to customer profiles of a given ObjectType.
--
-- When adding a specific profile object, like a Contact Trace Record
-- (CTR), an inferred profile can get created if it is not mapped to an
-- existing profile. The resulting profile will only have a phone number
-- populated in the standard ProfileObject. Any additional CTRs with the
-- same phone number will be mapped to the same inferred profile.
--
-- When a ProfileObject is created and if a ProfileObjectType already
-- exists for the ProfileObject, it will provide data to a standard profile
-- depending on the ProfileObjectType definition.
--
-- PutProfileObject needs an ObjectType, which can be created using
-- PutProfileObjectType.
module Network.AWS.CustomerProfiles.PutProfileObject
  ( -- * Creating a Request
    PutProfileObject (..),
    newPutProfileObject,

    -- * Request Lenses
    putProfileObject_objectTypeName,
    putProfileObject_object,
    putProfileObject_domainName,

    -- * Destructuring the Response
    PutProfileObjectResponse (..),
    newPutProfileObjectResponse,

    -- * Response Lenses
    putProfileObjectResponse_profileObjectUniqueKey,
    putProfileObjectResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.CustomerProfiles.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutProfileObject' smart constructor.
data PutProfileObject = PutProfileObject'
  { -- | The name of the profile object type.
    objectTypeName :: Prelude.Text,
    -- | A string that is serialized from a JSON object.
    object' :: Prelude.Text,
    -- | The unique name of the domain.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutProfileObject' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'objectTypeName', 'putProfileObject_objectTypeName' - The name of the profile object type.
--
-- 'object'', 'putProfileObject_object' - A string that is serialized from a JSON object.
--
-- 'domainName', 'putProfileObject_domainName' - The unique name of the domain.
newPutProfileObject ::
  -- | 'objectTypeName'
  Prelude.Text ->
  -- | 'object''
  Prelude.Text ->
  -- | 'domainName'
  Prelude.Text ->
  PutProfileObject
newPutProfileObject
  pObjectTypeName_
  pObject_
  pDomainName_ =
    PutProfileObject'
      { objectTypeName =
          pObjectTypeName_,
        object' = pObject_,
        domainName = pDomainName_
      }

-- | The name of the profile object type.
putProfileObject_objectTypeName :: Lens.Lens' PutProfileObject Prelude.Text
putProfileObject_objectTypeName = Lens.lens (\PutProfileObject' {objectTypeName} -> objectTypeName) (\s@PutProfileObject' {} a -> s {objectTypeName = a} :: PutProfileObject)

-- | A string that is serialized from a JSON object.
putProfileObject_object :: Lens.Lens' PutProfileObject Prelude.Text
putProfileObject_object = Lens.lens (\PutProfileObject' {object'} -> object') (\s@PutProfileObject' {} a -> s {object' = a} :: PutProfileObject)

-- | The unique name of the domain.
putProfileObject_domainName :: Lens.Lens' PutProfileObject Prelude.Text
putProfileObject_domainName = Lens.lens (\PutProfileObject' {domainName} -> domainName) (\s@PutProfileObject' {} a -> s {domainName = a} :: PutProfileObject)

instance Core.AWSRequest PutProfileObject where
  type
    AWSResponse PutProfileObject =
      PutProfileObjectResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutProfileObjectResponse'
            Prelude.<$> (x Core..?> "ProfileObjectUniqueKey")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutProfileObject

instance Prelude.NFData PutProfileObject

instance Core.ToHeaders PutProfileObject where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON PutProfileObject where
  toJSON PutProfileObject' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ObjectTypeName" Core..= objectTypeName),
            Prelude.Just ("Object" Core..= object')
          ]
      )

instance Core.ToPath PutProfileObject where
  toPath PutProfileObject' {..} =
    Prelude.mconcat
      [ "/domains/",
        Core.toBS domainName,
        "/profiles/objects"
      ]

instance Core.ToQuery PutProfileObject where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutProfileObjectResponse' smart constructor.
data PutProfileObjectResponse = PutProfileObjectResponse'
  { -- | The unique identifier of the profile object generated by the service.
    profileObjectUniqueKey :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PutProfileObjectResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'profileObjectUniqueKey', 'putProfileObjectResponse_profileObjectUniqueKey' - The unique identifier of the profile object generated by the service.
--
-- 'httpStatus', 'putProfileObjectResponse_httpStatus' - The response's http status code.
newPutProfileObjectResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutProfileObjectResponse
newPutProfileObjectResponse pHttpStatus_ =
  PutProfileObjectResponse'
    { profileObjectUniqueKey =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The unique identifier of the profile object generated by the service.
putProfileObjectResponse_profileObjectUniqueKey :: Lens.Lens' PutProfileObjectResponse (Prelude.Maybe Prelude.Text)
putProfileObjectResponse_profileObjectUniqueKey = Lens.lens (\PutProfileObjectResponse' {profileObjectUniqueKey} -> profileObjectUniqueKey) (\s@PutProfileObjectResponse' {} a -> s {profileObjectUniqueKey = a} :: PutProfileObjectResponse)

-- | The response's http status code.
putProfileObjectResponse_httpStatus :: Lens.Lens' PutProfileObjectResponse Prelude.Int
putProfileObjectResponse_httpStatus = Lens.lens (\PutProfileObjectResponse' {httpStatus} -> httpStatus) (\s@PutProfileObjectResponse' {} a -> s {httpStatus = a} :: PutProfileObjectResponse)

instance Prelude.NFData PutProfileObjectResponse
