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
-- Module      : Network.AWS.Connect.ListPhoneNumbers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about the phone numbers for the specified Amazon
-- Connect instance.
--
-- For more information about phone numbers, see
-- <https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html Set Up Phone Numbers for Your Contact Center>
-- in the /Amazon Connect Administrator Guide/.
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListPhoneNumbers
  ( -- * Creating a Request
    ListPhoneNumbers (..),
    newListPhoneNumbers,

    -- * Request Lenses
    listPhoneNumbers_phoneNumberTypes,
    listPhoneNumbers_phoneNumberCountryCodes,
    listPhoneNumbers_nextToken,
    listPhoneNumbers_maxResults,
    listPhoneNumbers_instanceId,

    -- * Destructuring the Response
    ListPhoneNumbersResponse (..),
    newListPhoneNumbersResponse,

    -- * Response Lenses
    listPhoneNumbersResponse_phoneNumberSummaryList,
    listPhoneNumbersResponse_nextToken,
    listPhoneNumbersResponse_httpStatus,
  )
where

import Network.AWS.Connect.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListPhoneNumbers' smart constructor.
data ListPhoneNumbers = ListPhoneNumbers'
  { -- | The type of phone number.
    phoneNumberTypes :: Prelude.Maybe [PhoneNumberType],
    -- | The ISO country code.
    phoneNumberCountryCodes :: Prelude.Maybe [PhoneNumberCountryCode],
    -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumbers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberTypes', 'listPhoneNumbers_phoneNumberTypes' - The type of phone number.
--
-- 'phoneNumberCountryCodes', 'listPhoneNumbers_phoneNumberCountryCodes' - The ISO country code.
--
-- 'nextToken', 'listPhoneNumbers_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'maxResults', 'listPhoneNumbers_maxResults' - The maximum number of results to return per page.
--
-- 'instanceId', 'listPhoneNumbers_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
newListPhoneNumbers ::
  -- | 'instanceId'
  Prelude.Text ->
  ListPhoneNumbers
newListPhoneNumbers pInstanceId_ =
  ListPhoneNumbers'
    { phoneNumberTypes =
        Prelude.Nothing,
      phoneNumberCountryCodes = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The type of phone number.
listPhoneNumbers_phoneNumberTypes :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe [PhoneNumberType])
listPhoneNumbers_phoneNumberTypes = Lens.lens (\ListPhoneNumbers' {phoneNumberTypes} -> phoneNumberTypes) (\s@ListPhoneNumbers' {} a -> s {phoneNumberTypes = a} :: ListPhoneNumbers) Prelude.. Lens.mapping Lens.coerced

-- | The ISO country code.
listPhoneNumbers_phoneNumberCountryCodes :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe [PhoneNumberCountryCode])
listPhoneNumbers_phoneNumberCountryCodes = Lens.lens (\ListPhoneNumbers' {phoneNumberCountryCodes} -> phoneNumberCountryCodes) (\s@ListPhoneNumbers' {} a -> s {phoneNumberCountryCodes = a} :: ListPhoneNumbers) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listPhoneNumbers_nextToken :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Text)
listPhoneNumbers_nextToken = Lens.lens (\ListPhoneNumbers' {nextToken} -> nextToken) (\s@ListPhoneNumbers' {} a -> s {nextToken = a} :: ListPhoneNumbers)

-- | The maximum number of results to return per page.
listPhoneNumbers_maxResults :: Lens.Lens' ListPhoneNumbers (Prelude.Maybe Prelude.Natural)
listPhoneNumbers_maxResults = Lens.lens (\ListPhoneNumbers' {maxResults} -> maxResults) (\s@ListPhoneNumbers' {} a -> s {maxResults = a} :: ListPhoneNumbers)

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
listPhoneNumbers_instanceId :: Lens.Lens' ListPhoneNumbers Prelude.Text
listPhoneNumbers_instanceId = Lens.lens (\ListPhoneNumbers' {instanceId} -> instanceId) (\s@ListPhoneNumbers' {} a -> s {instanceId = a} :: ListPhoneNumbers)

instance Core.AWSPager ListPhoneNumbers where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listPhoneNumbersResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listPhoneNumbersResponse_phoneNumberSummaryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listPhoneNumbers_nextToken
          Lens..~ rs
          Lens.^? listPhoneNumbersResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListPhoneNumbers where
  type
    AWSResponse ListPhoneNumbers =
      ListPhoneNumbersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPhoneNumbersResponse'
            Prelude.<$> ( x Core..?> "PhoneNumberSummaryList"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPhoneNumbers

instance Prelude.NFData ListPhoneNumbers

instance Core.ToHeaders ListPhoneNumbers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListPhoneNumbers where
  toPath ListPhoneNumbers' {..} =
    Prelude.mconcat
      ["/phone-numbers-summary/", Core.toBS instanceId]

instance Core.ToQuery ListPhoneNumbers where
  toQuery ListPhoneNumbers' {..} =
    Prelude.mconcat
      [ "phoneNumberTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> phoneNumberTypes
            ),
        "phoneNumberCountryCodes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> phoneNumberCountryCodes
            ),
        "nextToken" Core.=: nextToken,
        "maxResults" Core.=: maxResults
      ]

-- | /See:/ 'newListPhoneNumbersResponse' smart constructor.
data ListPhoneNumbersResponse = ListPhoneNumbersResponse'
  { -- | Information about the phone numbers.
    phoneNumberSummaryList :: Prelude.Maybe [PhoneNumberSummary],
    -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumbersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberSummaryList', 'listPhoneNumbersResponse_phoneNumberSummaryList' - Information about the phone numbers.
--
-- 'nextToken', 'listPhoneNumbersResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'httpStatus', 'listPhoneNumbersResponse_httpStatus' - The response's http status code.
newListPhoneNumbersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPhoneNumbersResponse
newListPhoneNumbersResponse pHttpStatus_ =
  ListPhoneNumbersResponse'
    { phoneNumberSummaryList =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the phone numbers.
listPhoneNumbersResponse_phoneNumberSummaryList :: Lens.Lens' ListPhoneNumbersResponse (Prelude.Maybe [PhoneNumberSummary])
listPhoneNumbersResponse_phoneNumberSummaryList = Lens.lens (\ListPhoneNumbersResponse' {phoneNumberSummaryList} -> phoneNumberSummaryList) (\s@ListPhoneNumbersResponse' {} a -> s {phoneNumberSummaryList = a} :: ListPhoneNumbersResponse) Prelude.. Lens.mapping Lens.coerced

-- | If there are additional results, this is the token for the next set of
-- results.
listPhoneNumbersResponse_nextToken :: Lens.Lens' ListPhoneNumbersResponse (Prelude.Maybe Prelude.Text)
listPhoneNumbersResponse_nextToken = Lens.lens (\ListPhoneNumbersResponse' {nextToken} -> nextToken) (\s@ListPhoneNumbersResponse' {} a -> s {nextToken = a} :: ListPhoneNumbersResponse)

-- | The response's http status code.
listPhoneNumbersResponse_httpStatus :: Lens.Lens' ListPhoneNumbersResponse Prelude.Int
listPhoneNumbersResponse_httpStatus = Lens.lens (\ListPhoneNumbersResponse' {httpStatus} -> httpStatus) (\s@ListPhoneNumbersResponse' {} a -> s {httpStatus = a} :: ListPhoneNumbersResponse)

instance Prelude.NFData ListPhoneNumbersResponse
