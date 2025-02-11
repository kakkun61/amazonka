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
-- Module      : Network.AWS.LexModels.GetIntent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about an intent. In addition to the intent name, you
-- must specify the intent version.
--
-- This operation requires permissions to perform the @lex:GetIntent@
-- action.
module Network.AWS.LexModels.GetIntent
  ( -- * Creating a Request
    GetIntent (..),
    newGetIntent,

    -- * Request Lenses
    getIntent_name,
    getIntent_version,

    -- * Destructuring the Response
    GetIntentResponse (..),
    newGetIntentResponse,

    -- * Response Lenses
    getIntentResponse_fulfillmentActivity,
    getIntentResponse_slots,
    getIntentResponse_rejectionStatement,
    getIntentResponse_checksum,
    getIntentResponse_conclusionStatement,
    getIntentResponse_sampleUtterances,
    getIntentResponse_parentIntentSignature,
    getIntentResponse_createdDate,
    getIntentResponse_kendraConfiguration,
    getIntentResponse_name,
    getIntentResponse_version,
    getIntentResponse_inputContexts,
    getIntentResponse_followUpPrompt,
    getIntentResponse_lastUpdatedDate,
    getIntentResponse_outputContexts,
    getIntentResponse_confirmationPrompt,
    getIntentResponse_dialogCodeHook,
    getIntentResponse_description,
    getIntentResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetIntent' smart constructor.
data GetIntent = GetIntent'
  { -- | The name of the intent. The name is case sensitive.
    name :: Prelude.Text,
    -- | The version of the intent.
    version :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIntent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'getIntent_name' - The name of the intent. The name is case sensitive.
--
-- 'version', 'getIntent_version' - The version of the intent.
newGetIntent ::
  -- | 'name'
  Prelude.Text ->
  -- | 'version'
  Prelude.Text ->
  GetIntent
newGetIntent pName_ pVersion_ =
  GetIntent' {name = pName_, version = pVersion_}

-- | The name of the intent. The name is case sensitive.
getIntent_name :: Lens.Lens' GetIntent Prelude.Text
getIntent_name = Lens.lens (\GetIntent' {name} -> name) (\s@GetIntent' {} a -> s {name = a} :: GetIntent)

-- | The version of the intent.
getIntent_version :: Lens.Lens' GetIntent Prelude.Text
getIntent_version = Lens.lens (\GetIntent' {version} -> version) (\s@GetIntent' {} a -> s {version = a} :: GetIntent)

instance Core.AWSRequest GetIntent where
  type AWSResponse GetIntent = GetIntentResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetIntentResponse'
            Prelude.<$> (x Core..?> "fulfillmentActivity")
            Prelude.<*> (x Core..?> "slots" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "rejectionStatement")
            Prelude.<*> (x Core..?> "checksum")
            Prelude.<*> (x Core..?> "conclusionStatement")
            Prelude.<*> ( x Core..?> "sampleUtterances"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "parentIntentSignature")
            Prelude.<*> (x Core..?> "createdDate")
            Prelude.<*> (x Core..?> "kendraConfiguration")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "version")
            Prelude.<*> (x Core..?> "inputContexts" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "followUpPrompt")
            Prelude.<*> (x Core..?> "lastUpdatedDate")
            Prelude.<*> (x Core..?> "outputContexts" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "confirmationPrompt")
            Prelude.<*> (x Core..?> "dialogCodeHook")
            Prelude.<*> (x Core..?> "description")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetIntent

instance Prelude.NFData GetIntent

instance Core.ToHeaders GetIntent where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetIntent where
  toPath GetIntent' {..} =
    Prelude.mconcat
      [ "/intents/",
        Core.toBS name,
        "/versions/",
        Core.toBS version
      ]

instance Core.ToQuery GetIntent where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetIntentResponse' smart constructor.
data GetIntentResponse = GetIntentResponse'
  { -- | Describes how the intent is fulfilled. For more information, see
    -- PutIntent.
    fulfillmentActivity :: Prelude.Maybe FulfillmentActivity,
    -- | An array of intent slots configured for the intent.
    slots :: Prelude.Maybe [Slot],
    -- | If the user answers \"no\" to the question defined in
    -- @confirmationPrompt@, Amazon Lex responds with this statement to
    -- acknowledge that the intent was canceled.
    rejectionStatement :: Prelude.Maybe Statement,
    -- | Checksum of the intent.
    checksum :: Prelude.Maybe Prelude.Text,
    -- | After the Lambda function specified in the @fulfillmentActivity@ element
    -- fulfills the intent, Amazon Lex conveys this statement to the user.
    conclusionStatement :: Prelude.Maybe Statement,
    -- | An array of sample utterances configured for the intent.
    sampleUtterances :: Prelude.Maybe [Prelude.Text],
    -- | A unique identifier for a built-in intent.
    parentIntentSignature :: Prelude.Maybe Prelude.Text,
    -- | The date that the intent was created.
    createdDate :: Prelude.Maybe Core.POSIX,
    -- | Configuration information, if any, to connect to an Amazon Kendra index
    -- with the @AMAZON.KendraSearchIntent@ intent.
    kendraConfiguration :: Prelude.Maybe KendraConfiguration,
    -- | The name of the intent.
    name :: Prelude.Maybe Prelude.Text,
    -- | The version of the intent.
    version :: Prelude.Maybe Prelude.Text,
    -- | An array of @InputContext@ objects that lists the contexts that must be
    -- active for Amazon Lex to choose the intent in a conversation with the
    -- user.
    inputContexts :: Prelude.Maybe [InputContext],
    -- | If defined in the bot, Amazon Lex uses this prompt to solicit additional
    -- user activity after the intent is fulfilled. For more information, see
    -- PutIntent.
    followUpPrompt :: Prelude.Maybe FollowUpPrompt,
    -- | The date that the intent was updated. When you create a resource, the
    -- creation date and the last updated date are the same.
    lastUpdatedDate :: Prelude.Maybe Core.POSIX,
    -- | An array of @OutputContext@ objects that lists the contexts that the
    -- intent activates when the intent is fulfilled.
    outputContexts :: Prelude.Maybe [OutputContext],
    -- | If defined in the bot, Amazon Lex uses prompt to confirm the intent
    -- before fulfilling the user\'s request. For more information, see
    -- PutIntent.
    confirmationPrompt :: Prelude.Maybe Prompt,
    -- | If defined in the bot, Amazon Amazon Lex invokes this Lambda function
    -- for each user input. For more information, see PutIntent.
    dialogCodeHook :: Prelude.Maybe CodeHook,
    -- | A description of the intent.
    description :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIntentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fulfillmentActivity', 'getIntentResponse_fulfillmentActivity' - Describes how the intent is fulfilled. For more information, see
-- PutIntent.
--
-- 'slots', 'getIntentResponse_slots' - An array of intent slots configured for the intent.
--
-- 'rejectionStatement', 'getIntentResponse_rejectionStatement' - If the user answers \"no\" to the question defined in
-- @confirmationPrompt@, Amazon Lex responds with this statement to
-- acknowledge that the intent was canceled.
--
-- 'checksum', 'getIntentResponse_checksum' - Checksum of the intent.
--
-- 'conclusionStatement', 'getIntentResponse_conclusionStatement' - After the Lambda function specified in the @fulfillmentActivity@ element
-- fulfills the intent, Amazon Lex conveys this statement to the user.
--
-- 'sampleUtterances', 'getIntentResponse_sampleUtterances' - An array of sample utterances configured for the intent.
--
-- 'parentIntentSignature', 'getIntentResponse_parentIntentSignature' - A unique identifier for a built-in intent.
--
-- 'createdDate', 'getIntentResponse_createdDate' - The date that the intent was created.
--
-- 'kendraConfiguration', 'getIntentResponse_kendraConfiguration' - Configuration information, if any, to connect to an Amazon Kendra index
-- with the @AMAZON.KendraSearchIntent@ intent.
--
-- 'name', 'getIntentResponse_name' - The name of the intent.
--
-- 'version', 'getIntentResponse_version' - The version of the intent.
--
-- 'inputContexts', 'getIntentResponse_inputContexts' - An array of @InputContext@ objects that lists the contexts that must be
-- active for Amazon Lex to choose the intent in a conversation with the
-- user.
--
-- 'followUpPrompt', 'getIntentResponse_followUpPrompt' - If defined in the bot, Amazon Lex uses this prompt to solicit additional
-- user activity after the intent is fulfilled. For more information, see
-- PutIntent.
--
-- 'lastUpdatedDate', 'getIntentResponse_lastUpdatedDate' - The date that the intent was updated. When you create a resource, the
-- creation date and the last updated date are the same.
--
-- 'outputContexts', 'getIntentResponse_outputContexts' - An array of @OutputContext@ objects that lists the contexts that the
-- intent activates when the intent is fulfilled.
--
-- 'confirmationPrompt', 'getIntentResponse_confirmationPrompt' - If defined in the bot, Amazon Lex uses prompt to confirm the intent
-- before fulfilling the user\'s request. For more information, see
-- PutIntent.
--
-- 'dialogCodeHook', 'getIntentResponse_dialogCodeHook' - If defined in the bot, Amazon Amazon Lex invokes this Lambda function
-- for each user input. For more information, see PutIntent.
--
-- 'description', 'getIntentResponse_description' - A description of the intent.
--
-- 'httpStatus', 'getIntentResponse_httpStatus' - The response's http status code.
newGetIntentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetIntentResponse
newGetIntentResponse pHttpStatus_ =
  GetIntentResponse'
    { fulfillmentActivity =
        Prelude.Nothing,
      slots = Prelude.Nothing,
      rejectionStatement = Prelude.Nothing,
      checksum = Prelude.Nothing,
      conclusionStatement = Prelude.Nothing,
      sampleUtterances = Prelude.Nothing,
      parentIntentSignature = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      kendraConfiguration = Prelude.Nothing,
      name = Prelude.Nothing,
      version = Prelude.Nothing,
      inputContexts = Prelude.Nothing,
      followUpPrompt = Prelude.Nothing,
      lastUpdatedDate = Prelude.Nothing,
      outputContexts = Prelude.Nothing,
      confirmationPrompt = Prelude.Nothing,
      dialogCodeHook = Prelude.Nothing,
      description = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Describes how the intent is fulfilled. For more information, see
-- PutIntent.
getIntentResponse_fulfillmentActivity :: Lens.Lens' GetIntentResponse (Prelude.Maybe FulfillmentActivity)
getIntentResponse_fulfillmentActivity = Lens.lens (\GetIntentResponse' {fulfillmentActivity} -> fulfillmentActivity) (\s@GetIntentResponse' {} a -> s {fulfillmentActivity = a} :: GetIntentResponse)

-- | An array of intent slots configured for the intent.
getIntentResponse_slots :: Lens.Lens' GetIntentResponse (Prelude.Maybe [Slot])
getIntentResponse_slots = Lens.lens (\GetIntentResponse' {slots} -> slots) (\s@GetIntentResponse' {} a -> s {slots = a} :: GetIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | If the user answers \"no\" to the question defined in
-- @confirmationPrompt@, Amazon Lex responds with this statement to
-- acknowledge that the intent was canceled.
getIntentResponse_rejectionStatement :: Lens.Lens' GetIntentResponse (Prelude.Maybe Statement)
getIntentResponse_rejectionStatement = Lens.lens (\GetIntentResponse' {rejectionStatement} -> rejectionStatement) (\s@GetIntentResponse' {} a -> s {rejectionStatement = a} :: GetIntentResponse)

-- | Checksum of the intent.
getIntentResponse_checksum :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prelude.Text)
getIntentResponse_checksum = Lens.lens (\GetIntentResponse' {checksum} -> checksum) (\s@GetIntentResponse' {} a -> s {checksum = a} :: GetIntentResponse)

-- | After the Lambda function specified in the @fulfillmentActivity@ element
-- fulfills the intent, Amazon Lex conveys this statement to the user.
getIntentResponse_conclusionStatement :: Lens.Lens' GetIntentResponse (Prelude.Maybe Statement)
getIntentResponse_conclusionStatement = Lens.lens (\GetIntentResponse' {conclusionStatement} -> conclusionStatement) (\s@GetIntentResponse' {} a -> s {conclusionStatement = a} :: GetIntentResponse)

-- | An array of sample utterances configured for the intent.
getIntentResponse_sampleUtterances :: Lens.Lens' GetIntentResponse (Prelude.Maybe [Prelude.Text])
getIntentResponse_sampleUtterances = Lens.lens (\GetIntentResponse' {sampleUtterances} -> sampleUtterances) (\s@GetIntentResponse' {} a -> s {sampleUtterances = a} :: GetIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | A unique identifier for a built-in intent.
getIntentResponse_parentIntentSignature :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prelude.Text)
getIntentResponse_parentIntentSignature = Lens.lens (\GetIntentResponse' {parentIntentSignature} -> parentIntentSignature) (\s@GetIntentResponse' {} a -> s {parentIntentSignature = a} :: GetIntentResponse)

-- | The date that the intent was created.
getIntentResponse_createdDate :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prelude.UTCTime)
getIntentResponse_createdDate = Lens.lens (\GetIntentResponse' {createdDate} -> createdDate) (\s@GetIntentResponse' {} a -> s {createdDate = a} :: GetIntentResponse) Prelude.. Lens.mapping Core._Time

-- | Configuration information, if any, to connect to an Amazon Kendra index
-- with the @AMAZON.KendraSearchIntent@ intent.
getIntentResponse_kendraConfiguration :: Lens.Lens' GetIntentResponse (Prelude.Maybe KendraConfiguration)
getIntentResponse_kendraConfiguration = Lens.lens (\GetIntentResponse' {kendraConfiguration} -> kendraConfiguration) (\s@GetIntentResponse' {} a -> s {kendraConfiguration = a} :: GetIntentResponse)

-- | The name of the intent.
getIntentResponse_name :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prelude.Text)
getIntentResponse_name = Lens.lens (\GetIntentResponse' {name} -> name) (\s@GetIntentResponse' {} a -> s {name = a} :: GetIntentResponse)

-- | The version of the intent.
getIntentResponse_version :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prelude.Text)
getIntentResponse_version = Lens.lens (\GetIntentResponse' {version} -> version) (\s@GetIntentResponse' {} a -> s {version = a} :: GetIntentResponse)

-- | An array of @InputContext@ objects that lists the contexts that must be
-- active for Amazon Lex to choose the intent in a conversation with the
-- user.
getIntentResponse_inputContexts :: Lens.Lens' GetIntentResponse (Prelude.Maybe [InputContext])
getIntentResponse_inputContexts = Lens.lens (\GetIntentResponse' {inputContexts} -> inputContexts) (\s@GetIntentResponse' {} a -> s {inputContexts = a} :: GetIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | If defined in the bot, Amazon Lex uses this prompt to solicit additional
-- user activity after the intent is fulfilled. For more information, see
-- PutIntent.
getIntentResponse_followUpPrompt :: Lens.Lens' GetIntentResponse (Prelude.Maybe FollowUpPrompt)
getIntentResponse_followUpPrompt = Lens.lens (\GetIntentResponse' {followUpPrompt} -> followUpPrompt) (\s@GetIntentResponse' {} a -> s {followUpPrompt = a} :: GetIntentResponse)

-- | The date that the intent was updated. When you create a resource, the
-- creation date and the last updated date are the same.
getIntentResponse_lastUpdatedDate :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prelude.UTCTime)
getIntentResponse_lastUpdatedDate = Lens.lens (\GetIntentResponse' {lastUpdatedDate} -> lastUpdatedDate) (\s@GetIntentResponse' {} a -> s {lastUpdatedDate = a} :: GetIntentResponse) Prelude.. Lens.mapping Core._Time

-- | An array of @OutputContext@ objects that lists the contexts that the
-- intent activates when the intent is fulfilled.
getIntentResponse_outputContexts :: Lens.Lens' GetIntentResponse (Prelude.Maybe [OutputContext])
getIntentResponse_outputContexts = Lens.lens (\GetIntentResponse' {outputContexts} -> outputContexts) (\s@GetIntentResponse' {} a -> s {outputContexts = a} :: GetIntentResponse) Prelude.. Lens.mapping Lens.coerced

-- | If defined in the bot, Amazon Lex uses prompt to confirm the intent
-- before fulfilling the user\'s request. For more information, see
-- PutIntent.
getIntentResponse_confirmationPrompt :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prompt)
getIntentResponse_confirmationPrompt = Lens.lens (\GetIntentResponse' {confirmationPrompt} -> confirmationPrompt) (\s@GetIntentResponse' {} a -> s {confirmationPrompt = a} :: GetIntentResponse)

-- | If defined in the bot, Amazon Amazon Lex invokes this Lambda function
-- for each user input. For more information, see PutIntent.
getIntentResponse_dialogCodeHook :: Lens.Lens' GetIntentResponse (Prelude.Maybe CodeHook)
getIntentResponse_dialogCodeHook = Lens.lens (\GetIntentResponse' {dialogCodeHook} -> dialogCodeHook) (\s@GetIntentResponse' {} a -> s {dialogCodeHook = a} :: GetIntentResponse)

-- | A description of the intent.
getIntentResponse_description :: Lens.Lens' GetIntentResponse (Prelude.Maybe Prelude.Text)
getIntentResponse_description = Lens.lens (\GetIntentResponse' {description} -> description) (\s@GetIntentResponse' {} a -> s {description = a} :: GetIntentResponse)

-- | The response's http status code.
getIntentResponse_httpStatus :: Lens.Lens' GetIntentResponse Prelude.Int
getIntentResponse_httpStatus = Lens.lens (\GetIntentResponse' {httpStatus} -> httpStatus) (\s@GetIntentResponse' {} a -> s {httpStatus = a} :: GetIntentResponse)

instance Prelude.NFData GetIntentResponse
