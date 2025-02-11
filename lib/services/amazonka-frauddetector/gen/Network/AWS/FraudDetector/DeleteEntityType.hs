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
-- Module      : Network.AWS.FraudDetector.DeleteEntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an entity type.
--
-- You cannot delete an entity type that is included in an event type.
--
-- When you delete an entity type, Amazon Fraud Detector permanently
-- deletes that entity type and the data is no longer stored in Amazon
-- Fraud Detector.
module Network.AWS.FraudDetector.DeleteEntityType
  ( -- * Creating a Request
    DeleteEntityType (..),
    newDeleteEntityType,

    -- * Request Lenses
    deleteEntityType_name,

    -- * Destructuring the Response
    DeleteEntityTypeResponse (..),
    newDeleteEntityTypeResponse,

    -- * Response Lenses
    deleteEntityTypeResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.FraudDetector.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteEntityType' smart constructor.
data DeleteEntityType = DeleteEntityType'
  { -- | The name of the entity type to delete.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEntityType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'deleteEntityType_name' - The name of the entity type to delete.
newDeleteEntityType ::
  -- | 'name'
  Prelude.Text ->
  DeleteEntityType
newDeleteEntityType pName_ =
  DeleteEntityType' {name = pName_}

-- | The name of the entity type to delete.
deleteEntityType_name :: Lens.Lens' DeleteEntityType Prelude.Text
deleteEntityType_name = Lens.lens (\DeleteEntityType' {name} -> name) (\s@DeleteEntityType' {} a -> s {name = a} :: DeleteEntityType)

instance Core.AWSRequest DeleteEntityType where
  type
    AWSResponse DeleteEntityType =
      DeleteEntityTypeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteEntityTypeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteEntityType

instance Prelude.NFData DeleteEntityType

instance Core.ToHeaders DeleteEntityType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AWSHawksNestServiceFacade.DeleteEntityType" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteEntityType where
  toJSON DeleteEntityType' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("name" Core..= name)]
      )

instance Core.ToPath DeleteEntityType where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteEntityType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteEntityTypeResponse' smart constructor.
data DeleteEntityTypeResponse = DeleteEntityTypeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteEntityTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteEntityTypeResponse_httpStatus' - The response's http status code.
newDeleteEntityTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteEntityTypeResponse
newDeleteEntityTypeResponse pHttpStatus_ =
  DeleteEntityTypeResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteEntityTypeResponse_httpStatus :: Lens.Lens' DeleteEntityTypeResponse Prelude.Int
deleteEntityTypeResponse_httpStatus = Lens.lens (\DeleteEntityTypeResponse' {httpStatus} -> httpStatus) (\s@DeleteEntityTypeResponse' {} a -> s {httpStatus = a} :: DeleteEntityTypeResponse)

instance Prelude.NFData DeleteEntityTypeResponse
