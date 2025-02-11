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
-- Module      : Network.AWS.Chime.ListPhoneNumberOrders
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the phone number orders for the administrator\'s Amazon Chime
-- account.
module Network.AWS.Chime.ListPhoneNumberOrders
  ( -- * Creating a Request
    ListPhoneNumberOrders (..),
    newListPhoneNumberOrders,

    -- * Request Lenses
    listPhoneNumberOrders_nextToken,
    listPhoneNumberOrders_maxResults,

    -- * Destructuring the Response
    ListPhoneNumberOrdersResponse (..),
    newListPhoneNumberOrdersResponse,

    -- * Response Lenses
    listPhoneNumberOrdersResponse_phoneNumberOrders,
    listPhoneNumberOrdersResponse_nextToken,
    listPhoneNumberOrdersResponse_httpStatus,
  )
where

import Network.AWS.Chime.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListPhoneNumberOrders' smart constructor.
data ListPhoneNumberOrders = ListPhoneNumberOrders'
  { -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in a single call.
    maxResults :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumberOrders' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPhoneNumberOrders_nextToken' - The token to use to retrieve the next page of results.
--
-- 'maxResults', 'listPhoneNumberOrders_maxResults' - The maximum number of results to return in a single call.
newListPhoneNumberOrders ::
  ListPhoneNumberOrders
newListPhoneNumberOrders =
  ListPhoneNumberOrders'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The token to use to retrieve the next page of results.
listPhoneNumberOrders_nextToken :: Lens.Lens' ListPhoneNumberOrders (Prelude.Maybe Prelude.Text)
listPhoneNumberOrders_nextToken = Lens.lens (\ListPhoneNumberOrders' {nextToken} -> nextToken) (\s@ListPhoneNumberOrders' {} a -> s {nextToken = a} :: ListPhoneNumberOrders)

-- | The maximum number of results to return in a single call.
listPhoneNumberOrders_maxResults :: Lens.Lens' ListPhoneNumberOrders (Prelude.Maybe Prelude.Natural)
listPhoneNumberOrders_maxResults = Lens.lens (\ListPhoneNumberOrders' {maxResults} -> maxResults) (\s@ListPhoneNumberOrders' {} a -> s {maxResults = a} :: ListPhoneNumberOrders)

instance Core.AWSRequest ListPhoneNumberOrders where
  type
    AWSResponse ListPhoneNumberOrders =
      ListPhoneNumberOrdersResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPhoneNumberOrdersResponse'
            Prelude.<$> ( x Core..?> "PhoneNumberOrders"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPhoneNumberOrders

instance Prelude.NFData ListPhoneNumberOrders

instance Core.ToHeaders ListPhoneNumberOrders where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ListPhoneNumberOrders where
  toPath = Prelude.const "/phone-number-orders"

instance Core.ToQuery ListPhoneNumberOrders where
  toQuery ListPhoneNumberOrders' {..} =
    Prelude.mconcat
      [ "next-token" Core.=: nextToken,
        "max-results" Core.=: maxResults
      ]

-- | /See:/ 'newListPhoneNumberOrdersResponse' smart constructor.
data ListPhoneNumberOrdersResponse = ListPhoneNumberOrdersResponse'
  { -- | The phone number order details.
    phoneNumberOrders :: Prelude.Maybe [PhoneNumberOrder],
    -- | The token to use to retrieve the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListPhoneNumberOrdersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'phoneNumberOrders', 'listPhoneNumberOrdersResponse_phoneNumberOrders' - The phone number order details.
--
-- 'nextToken', 'listPhoneNumberOrdersResponse_nextToken' - The token to use to retrieve the next page of results.
--
-- 'httpStatus', 'listPhoneNumberOrdersResponse_httpStatus' - The response's http status code.
newListPhoneNumberOrdersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPhoneNumberOrdersResponse
newListPhoneNumberOrdersResponse pHttpStatus_ =
  ListPhoneNumberOrdersResponse'
    { phoneNumberOrders =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The phone number order details.
listPhoneNumberOrdersResponse_phoneNumberOrders :: Lens.Lens' ListPhoneNumberOrdersResponse (Prelude.Maybe [PhoneNumberOrder])
listPhoneNumberOrdersResponse_phoneNumberOrders = Lens.lens (\ListPhoneNumberOrdersResponse' {phoneNumberOrders} -> phoneNumberOrders) (\s@ListPhoneNumberOrdersResponse' {} a -> s {phoneNumberOrders = a} :: ListPhoneNumberOrdersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token to use to retrieve the next page of results.
listPhoneNumberOrdersResponse_nextToken :: Lens.Lens' ListPhoneNumberOrdersResponse (Prelude.Maybe Prelude.Text)
listPhoneNumberOrdersResponse_nextToken = Lens.lens (\ListPhoneNumberOrdersResponse' {nextToken} -> nextToken) (\s@ListPhoneNumberOrdersResponse' {} a -> s {nextToken = a} :: ListPhoneNumberOrdersResponse)

-- | The response's http status code.
listPhoneNumberOrdersResponse_httpStatus :: Lens.Lens' ListPhoneNumberOrdersResponse Prelude.Int
listPhoneNumberOrdersResponse_httpStatus = Lens.lens (\ListPhoneNumberOrdersResponse' {httpStatus} -> httpStatus) (\s@ListPhoneNumberOrdersResponse' {} a -> s {httpStatus = a} :: ListPhoneNumberOrdersResponse)

instance Prelude.NFData ListPhoneNumberOrdersResponse
