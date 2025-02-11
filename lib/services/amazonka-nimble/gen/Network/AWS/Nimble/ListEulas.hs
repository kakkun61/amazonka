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
-- Module      : Network.AWS.Nimble.ListEulas
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List Eulas.
--
-- This operation returns paginated results.
module Network.AWS.Nimble.ListEulas
  ( -- * Creating a Request
    ListEulas (..),
    newListEulas,

    -- * Request Lenses
    listEulas_nextToken,
    listEulas_eulaIds,

    -- * Destructuring the Response
    ListEulasResponse (..),
    newListEulasResponse,

    -- * Response Lenses
    listEulasResponse_eulas,
    listEulasResponse_nextToken,
    listEulasResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Nimble.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListEulas' smart constructor.
data ListEulas = ListEulas'
  { -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A collection of EULA IDs.
    eulaIds :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEulas' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listEulas_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'eulaIds', 'listEulas_eulaIds' - A collection of EULA IDs.
newListEulas ::
  ListEulas
newListEulas =
  ListEulas'
    { nextToken = Prelude.Nothing,
      eulaIds = Prelude.Nothing
    }

-- | The token for the next set of results, or null if there are no more
-- results.
listEulas_nextToken :: Lens.Lens' ListEulas (Prelude.Maybe Prelude.Text)
listEulas_nextToken = Lens.lens (\ListEulas' {nextToken} -> nextToken) (\s@ListEulas' {} a -> s {nextToken = a} :: ListEulas)

-- | A collection of EULA IDs.
listEulas_eulaIds :: Lens.Lens' ListEulas (Prelude.Maybe [Prelude.Text])
listEulas_eulaIds = Lens.lens (\ListEulas' {eulaIds} -> eulaIds) (\s@ListEulas' {} a -> s {eulaIds = a} :: ListEulas) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSPager ListEulas where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listEulasResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listEulasResponse_eulas Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listEulas_nextToken
          Lens..~ rs
          Lens.^? listEulasResponse_nextToken Prelude.. Lens._Just

instance Core.AWSRequest ListEulas where
  type AWSResponse ListEulas = ListEulasResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListEulasResponse'
            Prelude.<$> (x Core..?> "eulas" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListEulas

instance Prelude.NFData ListEulas

instance Core.ToHeaders ListEulas where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath ListEulas where
  toPath = Prelude.const "/2020-08-01/eulas"

instance Core.ToQuery ListEulas where
  toQuery ListEulas' {..} =
    Prelude.mconcat
      [ "nextToken" Core.=: nextToken,
        "eulaIds"
          Core.=: Core.toQuery
            (Core.toQueryList "member" Prelude.<$> eulaIds)
      ]

-- | /See:/ 'newListEulasResponse' smart constructor.
data ListEulasResponse = ListEulasResponse'
  { -- | A collection of EULA resources.
    eulas :: Prelude.Maybe [Eula],
    -- | The token for the next set of results, or null if there are no more
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListEulasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eulas', 'listEulasResponse_eulas' - A collection of EULA resources.
--
-- 'nextToken', 'listEulasResponse_nextToken' - The token for the next set of results, or null if there are no more
-- results.
--
-- 'httpStatus', 'listEulasResponse_httpStatus' - The response's http status code.
newListEulasResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListEulasResponse
newListEulasResponse pHttpStatus_ =
  ListEulasResponse'
    { eulas = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A collection of EULA resources.
listEulasResponse_eulas :: Lens.Lens' ListEulasResponse (Prelude.Maybe [Eula])
listEulasResponse_eulas = Lens.lens (\ListEulasResponse' {eulas} -> eulas) (\s@ListEulasResponse' {} a -> s {eulas = a} :: ListEulasResponse) Prelude.. Lens.mapping Lens.coerced

-- | The token for the next set of results, or null if there are no more
-- results.
listEulasResponse_nextToken :: Lens.Lens' ListEulasResponse (Prelude.Maybe Prelude.Text)
listEulasResponse_nextToken = Lens.lens (\ListEulasResponse' {nextToken} -> nextToken) (\s@ListEulasResponse' {} a -> s {nextToken = a} :: ListEulasResponse)

-- | The response's http status code.
listEulasResponse_httpStatus :: Lens.Lens' ListEulasResponse Prelude.Int
listEulasResponse_httpStatus = Lens.lens (\ListEulasResponse' {httpStatus} -> httpStatus) (\s@ListEulasResponse' {} a -> s {httpStatus = a} :: ListEulasResponse)

instance Prelude.NFData ListEulasResponse
