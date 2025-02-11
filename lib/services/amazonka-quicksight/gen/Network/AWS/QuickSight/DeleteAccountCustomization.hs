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
-- Module      : Network.AWS.QuickSight.DeleteAccountCustomization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all Amazon QuickSight customizations in this Amazon Web Services
-- Region for the specified Amazon Web Services account and Amazon
-- QuickSight namespace.
module Network.AWS.QuickSight.DeleteAccountCustomization
  ( -- * Creating a Request
    DeleteAccountCustomization (..),
    newDeleteAccountCustomization,

    -- * Request Lenses
    deleteAccountCustomization_namespace,
    deleteAccountCustomization_awsAccountId,

    -- * Destructuring the Response
    DeleteAccountCustomizationResponse (..),
    newDeleteAccountCustomizationResponse,

    -- * Response Lenses
    deleteAccountCustomizationResponse_requestId,
    deleteAccountCustomizationResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAccountCustomization' smart constructor.
data DeleteAccountCustomization = DeleteAccountCustomization'
  { -- | The Amazon QuickSight namespace that you\'re deleting the customizations
    -- from.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The ID for the Amazon Web Services account that you want to delete
    -- Amazon QuickSight customizations from in this Amazon Web Services
    -- Region.
    awsAccountId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAccountCustomization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namespace', 'deleteAccountCustomization_namespace' - The Amazon QuickSight namespace that you\'re deleting the customizations
-- from.
--
-- 'awsAccountId', 'deleteAccountCustomization_awsAccountId' - The ID for the Amazon Web Services account that you want to delete
-- Amazon QuickSight customizations from in this Amazon Web Services
-- Region.
newDeleteAccountCustomization ::
  -- | 'awsAccountId'
  Prelude.Text ->
  DeleteAccountCustomization
newDeleteAccountCustomization pAwsAccountId_ =
  DeleteAccountCustomization'
    { namespace =
        Prelude.Nothing,
      awsAccountId = pAwsAccountId_
    }

-- | The Amazon QuickSight namespace that you\'re deleting the customizations
-- from.
deleteAccountCustomization_namespace :: Lens.Lens' DeleteAccountCustomization (Prelude.Maybe Prelude.Text)
deleteAccountCustomization_namespace = Lens.lens (\DeleteAccountCustomization' {namespace} -> namespace) (\s@DeleteAccountCustomization' {} a -> s {namespace = a} :: DeleteAccountCustomization)

-- | The ID for the Amazon Web Services account that you want to delete
-- Amazon QuickSight customizations from in this Amazon Web Services
-- Region.
deleteAccountCustomization_awsAccountId :: Lens.Lens' DeleteAccountCustomization Prelude.Text
deleteAccountCustomization_awsAccountId = Lens.lens (\DeleteAccountCustomization' {awsAccountId} -> awsAccountId) (\s@DeleteAccountCustomization' {} a -> s {awsAccountId = a} :: DeleteAccountCustomization)

instance Core.AWSRequest DeleteAccountCustomization where
  type
    AWSResponse DeleteAccountCustomization =
      DeleteAccountCustomizationResponse
  request = Request.delete defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteAccountCustomizationResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteAccountCustomization

instance Prelude.NFData DeleteAccountCustomization

instance Core.ToHeaders DeleteAccountCustomization where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteAccountCustomization where
  toPath DeleteAccountCustomization' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/customizations"
      ]

instance Core.ToQuery DeleteAccountCustomization where
  toQuery DeleteAccountCustomization' {..} =
    Prelude.mconcat ["namespace" Core.=: namespace]

-- | /See:/ 'newDeleteAccountCustomizationResponse' smart constructor.
data DeleteAccountCustomizationResponse = DeleteAccountCustomizationResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAccountCustomizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'deleteAccountCustomizationResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'status', 'deleteAccountCustomizationResponse_status' - The HTTP status of the request.
newDeleteAccountCustomizationResponse ::
  -- | 'status'
  Prelude.Int ->
  DeleteAccountCustomizationResponse
newDeleteAccountCustomizationResponse pStatus_ =
  DeleteAccountCustomizationResponse'
    { requestId =
        Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
deleteAccountCustomizationResponse_requestId :: Lens.Lens' DeleteAccountCustomizationResponse (Prelude.Maybe Prelude.Text)
deleteAccountCustomizationResponse_requestId = Lens.lens (\DeleteAccountCustomizationResponse' {requestId} -> requestId) (\s@DeleteAccountCustomizationResponse' {} a -> s {requestId = a} :: DeleteAccountCustomizationResponse)

-- | The HTTP status of the request.
deleteAccountCustomizationResponse_status :: Lens.Lens' DeleteAccountCustomizationResponse Prelude.Int
deleteAccountCustomizationResponse_status = Lens.lens (\DeleteAccountCustomizationResponse' {status} -> status) (\s@DeleteAccountCustomizationResponse' {} a -> s {status = a} :: DeleteAccountCustomizationResponse)

instance
  Prelude.NFData
    DeleteAccountCustomizationResponse
