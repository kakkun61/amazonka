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
-- Module      : Network.AWS.IoT.CreateAuditSuppression
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Device Defender audit suppression.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions CreateAuditSuppression>
-- action.
module Network.AWS.IoT.CreateAuditSuppression
  ( -- * Creating a Request
    CreateAuditSuppression (..),
    newCreateAuditSuppression,

    -- * Request Lenses
    createAuditSuppression_expirationDate,
    createAuditSuppression_suppressIndefinitely,
    createAuditSuppression_description,
    createAuditSuppression_checkName,
    createAuditSuppression_resourceIdentifier,
    createAuditSuppression_clientRequestToken,

    -- * Destructuring the Response
    CreateAuditSuppressionResponse (..),
    newCreateAuditSuppressionResponse,

    -- * Response Lenses
    createAuditSuppressionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateAuditSuppression' smart constructor.
data CreateAuditSuppression = CreateAuditSuppression'
  { -- | The epoch timestamp in seconds at which this suppression expires.
    expirationDate :: Prelude.Maybe Core.POSIX,
    -- | Indicates whether a suppression should exist indefinitely or not.
    suppressIndefinitely :: Prelude.Maybe Prelude.Bool,
    -- | The description of the audit suppression.
    description :: Prelude.Maybe Prelude.Text,
    checkName :: Prelude.Text,
    resourceIdentifier :: ResourceIdentifier,
    -- | Each audit supression must have a unique client request token. If you
    -- try to create a new audit suppression with the same token as one that
    -- already exists, an exception occurs. If you omit this value, Amazon Web
    -- Services SDKs will automatically generate a unique client request.
    clientRequestToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAuditSuppression' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expirationDate', 'createAuditSuppression_expirationDate' - The epoch timestamp in seconds at which this suppression expires.
--
-- 'suppressIndefinitely', 'createAuditSuppression_suppressIndefinitely' - Indicates whether a suppression should exist indefinitely or not.
--
-- 'description', 'createAuditSuppression_description' - The description of the audit suppression.
--
-- 'checkName', 'createAuditSuppression_checkName' - Undocumented member.
--
-- 'resourceIdentifier', 'createAuditSuppression_resourceIdentifier' - Undocumented member.
--
-- 'clientRequestToken', 'createAuditSuppression_clientRequestToken' - Each audit supression must have a unique client request token. If you
-- try to create a new audit suppression with the same token as one that
-- already exists, an exception occurs. If you omit this value, Amazon Web
-- Services SDKs will automatically generate a unique client request.
newCreateAuditSuppression ::
  -- | 'checkName'
  Prelude.Text ->
  -- | 'resourceIdentifier'
  ResourceIdentifier ->
  -- | 'clientRequestToken'
  Prelude.Text ->
  CreateAuditSuppression
newCreateAuditSuppression
  pCheckName_
  pResourceIdentifier_
  pClientRequestToken_ =
    CreateAuditSuppression'
      { expirationDate =
          Prelude.Nothing,
        suppressIndefinitely = Prelude.Nothing,
        description = Prelude.Nothing,
        checkName = pCheckName_,
        resourceIdentifier = pResourceIdentifier_,
        clientRequestToken = pClientRequestToken_
      }

-- | The epoch timestamp in seconds at which this suppression expires.
createAuditSuppression_expirationDate :: Lens.Lens' CreateAuditSuppression (Prelude.Maybe Prelude.UTCTime)
createAuditSuppression_expirationDate = Lens.lens (\CreateAuditSuppression' {expirationDate} -> expirationDate) (\s@CreateAuditSuppression' {} a -> s {expirationDate = a} :: CreateAuditSuppression) Prelude.. Lens.mapping Core._Time

-- | Indicates whether a suppression should exist indefinitely or not.
createAuditSuppression_suppressIndefinitely :: Lens.Lens' CreateAuditSuppression (Prelude.Maybe Prelude.Bool)
createAuditSuppression_suppressIndefinitely = Lens.lens (\CreateAuditSuppression' {suppressIndefinitely} -> suppressIndefinitely) (\s@CreateAuditSuppression' {} a -> s {suppressIndefinitely = a} :: CreateAuditSuppression)

-- | The description of the audit suppression.
createAuditSuppression_description :: Lens.Lens' CreateAuditSuppression (Prelude.Maybe Prelude.Text)
createAuditSuppression_description = Lens.lens (\CreateAuditSuppression' {description} -> description) (\s@CreateAuditSuppression' {} a -> s {description = a} :: CreateAuditSuppression)

-- | Undocumented member.
createAuditSuppression_checkName :: Lens.Lens' CreateAuditSuppression Prelude.Text
createAuditSuppression_checkName = Lens.lens (\CreateAuditSuppression' {checkName} -> checkName) (\s@CreateAuditSuppression' {} a -> s {checkName = a} :: CreateAuditSuppression)

-- | Undocumented member.
createAuditSuppression_resourceIdentifier :: Lens.Lens' CreateAuditSuppression ResourceIdentifier
createAuditSuppression_resourceIdentifier = Lens.lens (\CreateAuditSuppression' {resourceIdentifier} -> resourceIdentifier) (\s@CreateAuditSuppression' {} a -> s {resourceIdentifier = a} :: CreateAuditSuppression)

-- | Each audit supression must have a unique client request token. If you
-- try to create a new audit suppression with the same token as one that
-- already exists, an exception occurs. If you omit this value, Amazon Web
-- Services SDKs will automatically generate a unique client request.
createAuditSuppression_clientRequestToken :: Lens.Lens' CreateAuditSuppression Prelude.Text
createAuditSuppression_clientRequestToken = Lens.lens (\CreateAuditSuppression' {clientRequestToken} -> clientRequestToken) (\s@CreateAuditSuppression' {} a -> s {clientRequestToken = a} :: CreateAuditSuppression)

instance Core.AWSRequest CreateAuditSuppression where
  type
    AWSResponse CreateAuditSuppression =
      CreateAuditSuppressionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          CreateAuditSuppressionResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAuditSuppression

instance Prelude.NFData CreateAuditSuppression

instance Core.ToHeaders CreateAuditSuppression where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateAuditSuppression where
  toJSON CreateAuditSuppression' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("expirationDate" Core..=)
              Prelude.<$> expirationDate,
            ("suppressIndefinitely" Core..=)
              Prelude.<$> suppressIndefinitely,
            ("description" Core..=) Prelude.<$> description,
            Prelude.Just ("checkName" Core..= checkName),
            Prelude.Just
              ("resourceIdentifier" Core..= resourceIdentifier),
            Prelude.Just
              ("clientRequestToken" Core..= clientRequestToken)
          ]
      )

instance Core.ToPath CreateAuditSuppression where
  toPath = Prelude.const "/audit/suppressions/create"

instance Core.ToQuery CreateAuditSuppression where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAuditSuppressionResponse' smart constructor.
data CreateAuditSuppressionResponse = CreateAuditSuppressionResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAuditSuppressionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createAuditSuppressionResponse_httpStatus' - The response's http status code.
newCreateAuditSuppressionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAuditSuppressionResponse
newCreateAuditSuppressionResponse pHttpStatus_ =
  CreateAuditSuppressionResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
createAuditSuppressionResponse_httpStatus :: Lens.Lens' CreateAuditSuppressionResponse Prelude.Int
createAuditSuppressionResponse_httpStatus = Lens.lens (\CreateAuditSuppressionResponse' {httpStatus} -> httpStatus) (\s@CreateAuditSuppressionResponse' {} a -> s {httpStatus = a} :: CreateAuditSuppressionResponse)

instance
  Prelude.NFData
    CreateAuditSuppressionResponse
