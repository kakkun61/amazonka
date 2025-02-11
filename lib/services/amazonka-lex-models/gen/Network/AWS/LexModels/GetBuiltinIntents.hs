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
-- Module      : Network.AWS.LexModels.GetBuiltinIntents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of built-in intents that meet the specified criteria.
--
-- This operation requires permission for the @lex:GetBuiltinIntents@
-- action.
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetBuiltinIntents
  ( -- * Creating a Request
    GetBuiltinIntents (..),
    newGetBuiltinIntents,

    -- * Request Lenses
    getBuiltinIntents_locale,
    getBuiltinIntents_nextToken,
    getBuiltinIntents_signatureContains,
    getBuiltinIntents_maxResults,

    -- * Destructuring the Response
    GetBuiltinIntentsResponse (..),
    newGetBuiltinIntentsResponse,

    -- * Response Lenses
    getBuiltinIntentsResponse_intents,
    getBuiltinIntentsResponse_nextToken,
    getBuiltinIntentsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetBuiltinIntents' smart constructor.
data GetBuiltinIntents = GetBuiltinIntents'
  { -- | A list of locales that the intent supports.
    locale :: Prelude.Maybe Locale,
    -- | A pagination token that fetches the next page of intents. If this API
    -- call is truncated, Amazon Lex returns a pagination token in the
    -- response. To fetch the next page of intents, use the pagination token in
    -- the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Substring to match in built-in intent signatures. An intent will be
    -- returned if any part of its signature matches the substring. For
    -- example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To find the
    -- signature for an intent, see
    -- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
    -- in the /Alexa Skills Kit/.
    signatureContains :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of intents to return in the response. The default is
    -- 10.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBuiltinIntents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locale', 'getBuiltinIntents_locale' - A list of locales that the intent supports.
--
-- 'nextToken', 'getBuiltinIntents_nextToken' - A pagination token that fetches the next page of intents. If this API
-- call is truncated, Amazon Lex returns a pagination token in the
-- response. To fetch the next page of intents, use the pagination token in
-- the next request.
--
-- 'signatureContains', 'getBuiltinIntents_signatureContains' - Substring to match in built-in intent signatures. An intent will be
-- returned if any part of its signature matches the substring. For
-- example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To find the
-- signature for an intent, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
-- in the /Alexa Skills Kit/.
--
-- 'maxResults', 'getBuiltinIntents_maxResults' - The maximum number of intents to return in the response. The default is
-- 10.
newGetBuiltinIntents ::
  GetBuiltinIntents
newGetBuiltinIntents =
  GetBuiltinIntents'
    { locale = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      signatureContains = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | A list of locales that the intent supports.
getBuiltinIntents_locale :: Lens.Lens' GetBuiltinIntents (Prelude.Maybe Locale)
getBuiltinIntents_locale = Lens.lens (\GetBuiltinIntents' {locale} -> locale) (\s@GetBuiltinIntents' {} a -> s {locale = a} :: GetBuiltinIntents)

-- | A pagination token that fetches the next page of intents. If this API
-- call is truncated, Amazon Lex returns a pagination token in the
-- response. To fetch the next page of intents, use the pagination token in
-- the next request.
getBuiltinIntents_nextToken :: Lens.Lens' GetBuiltinIntents (Prelude.Maybe Prelude.Text)
getBuiltinIntents_nextToken = Lens.lens (\GetBuiltinIntents' {nextToken} -> nextToken) (\s@GetBuiltinIntents' {} a -> s {nextToken = a} :: GetBuiltinIntents)

-- | Substring to match in built-in intent signatures. An intent will be
-- returned if any part of its signature matches the substring. For
-- example, \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To find the
-- signature for an intent, see
-- <https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents Standard Built-in Intents>
-- in the /Alexa Skills Kit/.
getBuiltinIntents_signatureContains :: Lens.Lens' GetBuiltinIntents (Prelude.Maybe Prelude.Text)
getBuiltinIntents_signatureContains = Lens.lens (\GetBuiltinIntents' {signatureContains} -> signatureContains) (\s@GetBuiltinIntents' {} a -> s {signatureContains = a} :: GetBuiltinIntents)

-- | The maximum number of intents to return in the response. The default is
-- 10.
getBuiltinIntents_maxResults :: Lens.Lens' GetBuiltinIntents (Prelude.Maybe Prelude.Natural)
getBuiltinIntents_maxResults = Lens.lens (\GetBuiltinIntents' {maxResults} -> maxResults) (\s@GetBuiltinIntents' {} a -> s {maxResults = a} :: GetBuiltinIntents)

instance Core.AWSPager GetBuiltinIntents where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? getBuiltinIntentsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? getBuiltinIntentsResponse_intents
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& getBuiltinIntents_nextToken
          Lens..~ rs
          Lens.^? getBuiltinIntentsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest GetBuiltinIntents where
  type
    AWSResponse GetBuiltinIntents =
      GetBuiltinIntentsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBuiltinIntentsResponse'
            Prelude.<$> (x Core..?> "intents" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetBuiltinIntents

instance Prelude.NFData GetBuiltinIntents

instance Core.ToHeaders GetBuiltinIntents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetBuiltinIntents where
  toPath = Prelude.const "/builtins/intents/"

instance Core.ToQuery GetBuiltinIntents where
  toQuery GetBuiltinIntents' {..} =
    Prelude.mconcat
      [ "locale" Core.=: locale,
        "nextToken" Core.=: nextToken,
        "signatureContains" Core.=: signatureContains,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newGetBuiltinIntentsResponse' smart constructor.
data GetBuiltinIntentsResponse = GetBuiltinIntentsResponse'
  { -- | An array of @builtinIntentMetadata@ objects, one for each intent in the
    -- response.
    intents :: Prelude.Maybe [BuiltinIntentMetadata],
    -- | A pagination token that fetches the next page of intents. If the
    -- response to this API call is truncated, Amazon Lex returns a pagination
    -- token in the response. To fetch the next page of intents, specify the
    -- pagination token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBuiltinIntentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'intents', 'getBuiltinIntentsResponse_intents' - An array of @builtinIntentMetadata@ objects, one for each intent in the
-- response.
--
-- 'nextToken', 'getBuiltinIntentsResponse_nextToken' - A pagination token that fetches the next page of intents. If the
-- response to this API call is truncated, Amazon Lex returns a pagination
-- token in the response. To fetch the next page of intents, specify the
-- pagination token in the next request.
--
-- 'httpStatus', 'getBuiltinIntentsResponse_httpStatus' - The response's http status code.
newGetBuiltinIntentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetBuiltinIntentsResponse
newGetBuiltinIntentsResponse pHttpStatus_ =
  GetBuiltinIntentsResponse'
    { intents =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of @builtinIntentMetadata@ objects, one for each intent in the
-- response.
getBuiltinIntentsResponse_intents :: Lens.Lens' GetBuiltinIntentsResponse (Prelude.Maybe [BuiltinIntentMetadata])
getBuiltinIntentsResponse_intents = Lens.lens (\GetBuiltinIntentsResponse' {intents} -> intents) (\s@GetBuiltinIntentsResponse' {} a -> s {intents = a} :: GetBuiltinIntentsResponse) Prelude.. Lens.mapping Lens.coerced

-- | A pagination token that fetches the next page of intents. If the
-- response to this API call is truncated, Amazon Lex returns a pagination
-- token in the response. To fetch the next page of intents, specify the
-- pagination token in the next request.
getBuiltinIntentsResponse_nextToken :: Lens.Lens' GetBuiltinIntentsResponse (Prelude.Maybe Prelude.Text)
getBuiltinIntentsResponse_nextToken = Lens.lens (\GetBuiltinIntentsResponse' {nextToken} -> nextToken) (\s@GetBuiltinIntentsResponse' {} a -> s {nextToken = a} :: GetBuiltinIntentsResponse)

-- | The response's http status code.
getBuiltinIntentsResponse_httpStatus :: Lens.Lens' GetBuiltinIntentsResponse Prelude.Int
getBuiltinIntentsResponse_httpStatus = Lens.lens (\GetBuiltinIntentsResponse' {httpStatus} -> httpStatus) (\s@GetBuiltinIntentsResponse' {} a -> s {httpStatus = a} :: GetBuiltinIntentsResponse)

instance Prelude.NFData GetBuiltinIntentsResponse
