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
-- Module      : Network.AWS.Chime.CreateSipMediaApplicationCall
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an outbound call to a phone number from the phone number
-- specified in the request, and it invokes the endpoint of the specified
-- @sipMediaApplicationId@.
module Network.AWS.Chime.CreateSipMediaApplicationCall
  ( -- * Creating a Request
    CreateSipMediaApplicationCall (..),
    newCreateSipMediaApplicationCall,

    -- * Request Lenses
    createSipMediaApplicationCall_sipHeaders,
    createSipMediaApplicationCall_fromPhoneNumber,
    createSipMediaApplicationCall_toPhoneNumber,
    createSipMediaApplicationCall_sipMediaApplicationId,

    -- * Destructuring the Response
    CreateSipMediaApplicationCallResponse (..),
    newCreateSipMediaApplicationCallResponse,

    -- * Response Lenses
    createSipMediaApplicationCallResponse_sipMediaApplicationCall,
    createSipMediaApplicationCallResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateSipMediaApplicationCall' smart constructor.
data CreateSipMediaApplicationCall = CreateSipMediaApplicationCall'
  { -- | The SIP headers added to an outbound call leg.
    sipHeaders :: Prelude.Maybe (Prelude.HashMap Prelude.Text (Core.Sensitive Prelude.Text)),
    -- | The phone number that a user calls from. This is a phone number in your
    -- Amazon Chime phone number inventory.
    fromPhoneNumber :: Core.Sensitive Prelude.Text,
    -- | The phone number that the service should call.
    toPhoneNumber :: Core.Sensitive Prelude.Text,
    -- | The ID of the SIP media application.
    sipMediaApplicationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSipMediaApplicationCall' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipHeaders', 'createSipMediaApplicationCall_sipHeaders' - The SIP headers added to an outbound call leg.
--
-- 'fromPhoneNumber', 'createSipMediaApplicationCall_fromPhoneNumber' - The phone number that a user calls from. This is a phone number in your
-- Amazon Chime phone number inventory.
--
-- 'toPhoneNumber', 'createSipMediaApplicationCall_toPhoneNumber' - The phone number that the service should call.
--
-- 'sipMediaApplicationId', 'createSipMediaApplicationCall_sipMediaApplicationId' - The ID of the SIP media application.
newCreateSipMediaApplicationCall ::
  -- | 'fromPhoneNumber'
  Prelude.Text ->
  -- | 'toPhoneNumber'
  Prelude.Text ->
  -- | 'sipMediaApplicationId'
  Prelude.Text ->
  CreateSipMediaApplicationCall
newCreateSipMediaApplicationCall
  pFromPhoneNumber_
  pToPhoneNumber_
  pSipMediaApplicationId_ =
    CreateSipMediaApplicationCall'
      { sipHeaders =
          Prelude.Nothing,
        fromPhoneNumber =
          Core._Sensitive Lens.# pFromPhoneNumber_,
        toPhoneNumber =
          Core._Sensitive Lens.# pToPhoneNumber_,
        sipMediaApplicationId =
          pSipMediaApplicationId_
      }

-- | The SIP headers added to an outbound call leg.
createSipMediaApplicationCall_sipHeaders :: Lens.Lens' CreateSipMediaApplicationCall (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createSipMediaApplicationCall_sipHeaders = Lens.lens (\CreateSipMediaApplicationCall' {sipHeaders} -> sipHeaders) (\s@CreateSipMediaApplicationCall' {} a -> s {sipHeaders = a} :: CreateSipMediaApplicationCall) Prelude.. Lens.mapping Lens.coerced

-- | The phone number that a user calls from. This is a phone number in your
-- Amazon Chime phone number inventory.
createSipMediaApplicationCall_fromPhoneNumber :: Lens.Lens' CreateSipMediaApplicationCall Prelude.Text
createSipMediaApplicationCall_fromPhoneNumber = Lens.lens (\CreateSipMediaApplicationCall' {fromPhoneNumber} -> fromPhoneNumber) (\s@CreateSipMediaApplicationCall' {} a -> s {fromPhoneNumber = a} :: CreateSipMediaApplicationCall) Prelude.. Core._Sensitive

-- | The phone number that the service should call.
createSipMediaApplicationCall_toPhoneNumber :: Lens.Lens' CreateSipMediaApplicationCall Prelude.Text
createSipMediaApplicationCall_toPhoneNumber = Lens.lens (\CreateSipMediaApplicationCall' {toPhoneNumber} -> toPhoneNumber) (\s@CreateSipMediaApplicationCall' {} a -> s {toPhoneNumber = a} :: CreateSipMediaApplicationCall) Prelude.. Core._Sensitive

-- | The ID of the SIP media application.
createSipMediaApplicationCall_sipMediaApplicationId :: Lens.Lens' CreateSipMediaApplicationCall Prelude.Text
createSipMediaApplicationCall_sipMediaApplicationId = Lens.lens (\CreateSipMediaApplicationCall' {sipMediaApplicationId} -> sipMediaApplicationId) (\s@CreateSipMediaApplicationCall' {} a -> s {sipMediaApplicationId = a} :: CreateSipMediaApplicationCall)

instance
  Core.AWSRequest
    CreateSipMediaApplicationCall
  where
  type
    AWSResponse CreateSipMediaApplicationCall =
      CreateSipMediaApplicationCallResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateSipMediaApplicationCallResponse'
            Prelude.<$> (x Core..?> "SipMediaApplicationCall")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateSipMediaApplicationCall

instance Prelude.NFData CreateSipMediaApplicationCall

instance Core.ToHeaders CreateSipMediaApplicationCall where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON CreateSipMediaApplicationCall where
  toJSON CreateSipMediaApplicationCall' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("SipHeaders" Core..=) Prelude.<$> sipHeaders,
            Prelude.Just
              ("FromPhoneNumber" Core..= fromPhoneNumber),
            Prelude.Just
              ("ToPhoneNumber" Core..= toPhoneNumber)
          ]
      )

instance Core.ToPath CreateSipMediaApplicationCall where
  toPath CreateSipMediaApplicationCall' {..} =
    Prelude.mconcat
      [ "/sip-media-applications/",
        Core.toBS sipMediaApplicationId,
        "/calls"
      ]

instance Core.ToQuery CreateSipMediaApplicationCall where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateSipMediaApplicationCallResponse' smart constructor.
data CreateSipMediaApplicationCallResponse = CreateSipMediaApplicationCallResponse'
  { -- | The actual call.
    sipMediaApplicationCall :: Prelude.Maybe SipMediaApplicationCall,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateSipMediaApplicationCallResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sipMediaApplicationCall', 'createSipMediaApplicationCallResponse_sipMediaApplicationCall' - The actual call.
--
-- 'httpStatus', 'createSipMediaApplicationCallResponse_httpStatus' - The response's http status code.
newCreateSipMediaApplicationCallResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateSipMediaApplicationCallResponse
newCreateSipMediaApplicationCallResponse pHttpStatus_ =
  CreateSipMediaApplicationCallResponse'
    { sipMediaApplicationCall =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The actual call.
createSipMediaApplicationCallResponse_sipMediaApplicationCall :: Lens.Lens' CreateSipMediaApplicationCallResponse (Prelude.Maybe SipMediaApplicationCall)
createSipMediaApplicationCallResponse_sipMediaApplicationCall = Lens.lens (\CreateSipMediaApplicationCallResponse' {sipMediaApplicationCall} -> sipMediaApplicationCall) (\s@CreateSipMediaApplicationCallResponse' {} a -> s {sipMediaApplicationCall = a} :: CreateSipMediaApplicationCallResponse)

-- | The response's http status code.
createSipMediaApplicationCallResponse_httpStatus :: Lens.Lens' CreateSipMediaApplicationCallResponse Prelude.Int
createSipMediaApplicationCallResponse_httpStatus = Lens.lens (\CreateSipMediaApplicationCallResponse' {httpStatus} -> httpStatus) (\s@CreateSipMediaApplicationCallResponse' {} a -> s {httpStatus = a} :: CreateSipMediaApplicationCallResponse)

instance
  Prelude.NFData
    CreateSipMediaApplicationCallResponse
