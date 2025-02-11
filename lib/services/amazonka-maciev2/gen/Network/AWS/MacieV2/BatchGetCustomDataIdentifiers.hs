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
-- Module      : Network.AWS.MacieV2.BatchGetCustomDataIdentifiers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about one or more custom data identifiers.
module Network.AWS.MacieV2.BatchGetCustomDataIdentifiers
  ( -- * Creating a Request
    BatchGetCustomDataIdentifiers (..),
    newBatchGetCustomDataIdentifiers,

    -- * Request Lenses
    batchGetCustomDataIdentifiers_ids,

    -- * Destructuring the Response
    BatchGetCustomDataIdentifiersResponse (..),
    newBatchGetCustomDataIdentifiersResponse,

    -- * Response Lenses
    batchGetCustomDataIdentifiersResponse_notFoundIdentifierIds,
    batchGetCustomDataIdentifiersResponse_customDataIdentifiers,
    batchGetCustomDataIdentifiersResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchGetCustomDataIdentifiers' smart constructor.
data BatchGetCustomDataIdentifiers = BatchGetCustomDataIdentifiers'
  { -- | An array of custom data identifier IDs, one for each custom data
    -- identifier to retrieve information about.
    ids :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetCustomDataIdentifiers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ids', 'batchGetCustomDataIdentifiers_ids' - An array of custom data identifier IDs, one for each custom data
-- identifier to retrieve information about.
newBatchGetCustomDataIdentifiers ::
  BatchGetCustomDataIdentifiers
newBatchGetCustomDataIdentifiers =
  BatchGetCustomDataIdentifiers'
    { ids =
        Prelude.Nothing
    }

-- | An array of custom data identifier IDs, one for each custom data
-- identifier to retrieve information about.
batchGetCustomDataIdentifiers_ids :: Lens.Lens' BatchGetCustomDataIdentifiers (Prelude.Maybe [Prelude.Text])
batchGetCustomDataIdentifiers_ids = Lens.lens (\BatchGetCustomDataIdentifiers' {ids} -> ids) (\s@BatchGetCustomDataIdentifiers' {} a -> s {ids = a} :: BatchGetCustomDataIdentifiers) Prelude.. Lens.mapping Lens.coerced

instance
  Core.AWSRequest
    BatchGetCustomDataIdentifiers
  where
  type
    AWSResponse BatchGetCustomDataIdentifiers =
      BatchGetCustomDataIdentifiersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetCustomDataIdentifiersResponse'
            Prelude.<$> ( x Core..?> "notFoundIdentifierIds"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Core..?> "customDataIdentifiers"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    BatchGetCustomDataIdentifiers

instance Prelude.NFData BatchGetCustomDataIdentifiers

instance Core.ToHeaders BatchGetCustomDataIdentifiers where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchGetCustomDataIdentifiers where
  toJSON BatchGetCustomDataIdentifiers' {..} =
    Core.object
      (Prelude.catMaybes [("ids" Core..=) Prelude.<$> ids])

instance Core.ToPath BatchGetCustomDataIdentifiers where
  toPath = Prelude.const "/custom-data-identifiers/get"

instance Core.ToQuery BatchGetCustomDataIdentifiers where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchGetCustomDataIdentifiersResponse' smart constructor.
data BatchGetCustomDataIdentifiersResponse = BatchGetCustomDataIdentifiersResponse'
  { -- | An array of custom data identifier IDs, one for each custom data
    -- identifier that was specified in the request but doesn\'t correlate to
    -- an existing custom data identifier.
    notFoundIdentifierIds :: Prelude.Maybe [Prelude.Text],
    -- | An array of objects, one for each custom data identifier that meets the
    -- criteria specified in the request.
    customDataIdentifiers :: Prelude.Maybe [BatchGetCustomDataIdentifierSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetCustomDataIdentifiersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notFoundIdentifierIds', 'batchGetCustomDataIdentifiersResponse_notFoundIdentifierIds' - An array of custom data identifier IDs, one for each custom data
-- identifier that was specified in the request but doesn\'t correlate to
-- an existing custom data identifier.
--
-- 'customDataIdentifiers', 'batchGetCustomDataIdentifiersResponse_customDataIdentifiers' - An array of objects, one for each custom data identifier that meets the
-- criteria specified in the request.
--
-- 'httpStatus', 'batchGetCustomDataIdentifiersResponse_httpStatus' - The response's http status code.
newBatchGetCustomDataIdentifiersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchGetCustomDataIdentifiersResponse
newBatchGetCustomDataIdentifiersResponse pHttpStatus_ =
  BatchGetCustomDataIdentifiersResponse'
    { notFoundIdentifierIds =
        Prelude.Nothing,
      customDataIdentifiers =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of custom data identifier IDs, one for each custom data
-- identifier that was specified in the request but doesn\'t correlate to
-- an existing custom data identifier.
batchGetCustomDataIdentifiersResponse_notFoundIdentifierIds :: Lens.Lens' BatchGetCustomDataIdentifiersResponse (Prelude.Maybe [Prelude.Text])
batchGetCustomDataIdentifiersResponse_notFoundIdentifierIds = Lens.lens (\BatchGetCustomDataIdentifiersResponse' {notFoundIdentifierIds} -> notFoundIdentifierIds) (\s@BatchGetCustomDataIdentifiersResponse' {} a -> s {notFoundIdentifierIds = a} :: BatchGetCustomDataIdentifiersResponse) Prelude.. Lens.mapping Lens.coerced

-- | An array of objects, one for each custom data identifier that meets the
-- criteria specified in the request.
batchGetCustomDataIdentifiersResponse_customDataIdentifiers :: Lens.Lens' BatchGetCustomDataIdentifiersResponse (Prelude.Maybe [BatchGetCustomDataIdentifierSummary])
batchGetCustomDataIdentifiersResponse_customDataIdentifiers = Lens.lens (\BatchGetCustomDataIdentifiersResponse' {customDataIdentifiers} -> customDataIdentifiers) (\s@BatchGetCustomDataIdentifiersResponse' {} a -> s {customDataIdentifiers = a} :: BatchGetCustomDataIdentifiersResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchGetCustomDataIdentifiersResponse_httpStatus :: Lens.Lens' BatchGetCustomDataIdentifiersResponse Prelude.Int
batchGetCustomDataIdentifiersResponse_httpStatus = Lens.lens (\BatchGetCustomDataIdentifiersResponse' {httpStatus} -> httpStatus) (\s@BatchGetCustomDataIdentifiersResponse' {} a -> s {httpStatus = a} :: BatchGetCustomDataIdentifiersResponse)

instance
  Prelude.NFData
    BatchGetCustomDataIdentifiersResponse
