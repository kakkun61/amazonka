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
-- Module      : Network.AWS.Macie.AssociateS3Resources
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates specified S3 resources with Amazon Macie Classic for
-- monitoring and data classification. If memberAccountId isn\'t specified,
-- the action associates specified S3 resources with Macie Classic for the
-- current Macie Classic administrator account. If memberAccountId is
-- specified, the action associates specified S3 resources with Macie
-- Classic for the specified member account.
module Network.AWS.Macie.AssociateS3Resources
  ( -- * Creating a Request
    AssociateS3Resources (..),
    newAssociateS3Resources,

    -- * Request Lenses
    associateS3Resources_memberAccountId,
    associateS3Resources_s3Resources,

    -- * Destructuring the Response
    AssociateS3ResourcesResponse (..),
    newAssociateS3ResourcesResponse,

    -- * Response Lenses
    associateS3ResourcesResponse_failedS3Resources,
    associateS3ResourcesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Macie.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateS3Resources' smart constructor.
data AssociateS3Resources = AssociateS3Resources'
  { -- | The ID of the Amazon Macie Classic member account whose resources you
    -- want to associate with Macie Classic.
    memberAccountId :: Prelude.Maybe Prelude.Text,
    -- | The S3 resources that you want to associate with Amazon Macie Classic
    -- for monitoring and data classification.
    s3Resources :: [S3ResourceClassification]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateS3Resources' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'memberAccountId', 'associateS3Resources_memberAccountId' - The ID of the Amazon Macie Classic member account whose resources you
-- want to associate with Macie Classic.
--
-- 's3Resources', 'associateS3Resources_s3Resources' - The S3 resources that you want to associate with Amazon Macie Classic
-- for monitoring and data classification.
newAssociateS3Resources ::
  AssociateS3Resources
newAssociateS3Resources =
  AssociateS3Resources'
    { memberAccountId =
        Prelude.Nothing,
      s3Resources = Prelude.mempty
    }

-- | The ID of the Amazon Macie Classic member account whose resources you
-- want to associate with Macie Classic.
associateS3Resources_memberAccountId :: Lens.Lens' AssociateS3Resources (Prelude.Maybe Prelude.Text)
associateS3Resources_memberAccountId = Lens.lens (\AssociateS3Resources' {memberAccountId} -> memberAccountId) (\s@AssociateS3Resources' {} a -> s {memberAccountId = a} :: AssociateS3Resources)

-- | The S3 resources that you want to associate with Amazon Macie Classic
-- for monitoring and data classification.
associateS3Resources_s3Resources :: Lens.Lens' AssociateS3Resources [S3ResourceClassification]
associateS3Resources_s3Resources = Lens.lens (\AssociateS3Resources' {s3Resources} -> s3Resources) (\s@AssociateS3Resources' {} a -> s {s3Resources = a} :: AssociateS3Resources) Prelude.. Lens.coerced

instance Core.AWSRequest AssociateS3Resources where
  type
    AWSResponse AssociateS3Resources =
      AssociateS3ResourcesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AssociateS3ResourcesResponse'
            Prelude.<$> ( x Core..?> "failedS3Resources"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AssociateS3Resources

instance Prelude.NFData AssociateS3Resources

instance Core.ToHeaders AssociateS3Resources where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "MacieService.AssociateS3Resources" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateS3Resources where
  toJSON AssociateS3Resources' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("memberAccountId" Core..=)
              Prelude.<$> memberAccountId,
            Prelude.Just ("s3Resources" Core..= s3Resources)
          ]
      )

instance Core.ToPath AssociateS3Resources where
  toPath = Prelude.const "/"

instance Core.ToQuery AssociateS3Resources where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateS3ResourcesResponse' smart constructor.
data AssociateS3ResourcesResponse = AssociateS3ResourcesResponse'
  { -- | S3 resources that couldn\'t be associated with Amazon Macie Classic. An
    -- error code and an error message are provided for each failed item.
    failedS3Resources :: Prelude.Maybe [FailedS3Resource],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateS3ResourcesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failedS3Resources', 'associateS3ResourcesResponse_failedS3Resources' - S3 resources that couldn\'t be associated with Amazon Macie Classic. An
-- error code and an error message are provided for each failed item.
--
-- 'httpStatus', 'associateS3ResourcesResponse_httpStatus' - The response's http status code.
newAssociateS3ResourcesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateS3ResourcesResponse
newAssociateS3ResourcesResponse pHttpStatus_ =
  AssociateS3ResourcesResponse'
    { failedS3Resources =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | S3 resources that couldn\'t be associated with Amazon Macie Classic. An
-- error code and an error message are provided for each failed item.
associateS3ResourcesResponse_failedS3Resources :: Lens.Lens' AssociateS3ResourcesResponse (Prelude.Maybe [FailedS3Resource])
associateS3ResourcesResponse_failedS3Resources = Lens.lens (\AssociateS3ResourcesResponse' {failedS3Resources} -> failedS3Resources) (\s@AssociateS3ResourcesResponse' {} a -> s {failedS3Resources = a} :: AssociateS3ResourcesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
associateS3ResourcesResponse_httpStatus :: Lens.Lens' AssociateS3ResourcesResponse Prelude.Int
associateS3ResourcesResponse_httpStatus = Lens.lens (\AssociateS3ResourcesResponse' {httpStatus} -> httpStatus) (\s@AssociateS3ResourcesResponse' {} a -> s {httpStatus = a} :: AssociateS3ResourcesResponse)

instance Prelude.NFData AssociateS3ResourcesResponse
