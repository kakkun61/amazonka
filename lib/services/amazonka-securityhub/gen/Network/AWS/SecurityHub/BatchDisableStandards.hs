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
-- Module      : Network.AWS.SecurityHub.BatchDisableStandards
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the standards specified by the provided
-- @StandardsSubscriptionArns@.
--
-- For more information, see
-- <https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards.html Security Standards>
-- section of the /Security Hub User Guide/.
module Network.AWS.SecurityHub.BatchDisableStandards
  ( -- * Creating a Request
    BatchDisableStandards (..),
    newBatchDisableStandards,

    -- * Request Lenses
    batchDisableStandards_standardsSubscriptionArns,

    -- * Destructuring the Response
    BatchDisableStandardsResponse (..),
    newBatchDisableStandardsResponse,

    -- * Response Lenses
    batchDisableStandardsResponse_standardsSubscriptions,
    batchDisableStandardsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecurityHub.Types

-- | /See:/ 'newBatchDisableStandards' smart constructor.
data BatchDisableStandards = BatchDisableStandards'
  { -- | The ARNs of the standards subscriptions to disable.
    standardsSubscriptionArns :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDisableStandards' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'standardsSubscriptionArns', 'batchDisableStandards_standardsSubscriptionArns' - The ARNs of the standards subscriptions to disable.
newBatchDisableStandards ::
  -- | 'standardsSubscriptionArns'
  Prelude.NonEmpty Prelude.Text ->
  BatchDisableStandards
newBatchDisableStandards pStandardsSubscriptionArns_ =
  BatchDisableStandards'
    { standardsSubscriptionArns =
        Lens.coerced Lens.# pStandardsSubscriptionArns_
    }

-- | The ARNs of the standards subscriptions to disable.
batchDisableStandards_standardsSubscriptionArns :: Lens.Lens' BatchDisableStandards (Prelude.NonEmpty Prelude.Text)
batchDisableStandards_standardsSubscriptionArns = Lens.lens (\BatchDisableStandards' {standardsSubscriptionArns} -> standardsSubscriptionArns) (\s@BatchDisableStandards' {} a -> s {standardsSubscriptionArns = a} :: BatchDisableStandards) Prelude.. Lens.coerced

instance Core.AWSRequest BatchDisableStandards where
  type
    AWSResponse BatchDisableStandards =
      BatchDisableStandardsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDisableStandardsResponse'
            Prelude.<$> ( x Core..?> "StandardsSubscriptions"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchDisableStandards

instance Prelude.NFData BatchDisableStandards

instance Core.ToHeaders BatchDisableStandards where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDisableStandards where
  toJSON BatchDisableStandards' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "StandardsSubscriptionArns"
                  Core..= standardsSubscriptionArns
              )
          ]
      )

instance Core.ToPath BatchDisableStandards where
  toPath = Prelude.const "/standards/deregister"

instance Core.ToQuery BatchDisableStandards where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDisableStandardsResponse' smart constructor.
data BatchDisableStandardsResponse = BatchDisableStandardsResponse'
  { -- | The details of the standards subscriptions that were disabled.
    standardsSubscriptions :: Prelude.Maybe [StandardsSubscription],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDisableStandardsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'standardsSubscriptions', 'batchDisableStandardsResponse_standardsSubscriptions' - The details of the standards subscriptions that were disabled.
--
-- 'httpStatus', 'batchDisableStandardsResponse_httpStatus' - The response's http status code.
newBatchDisableStandardsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDisableStandardsResponse
newBatchDisableStandardsResponse pHttpStatus_ =
  BatchDisableStandardsResponse'
    { standardsSubscriptions =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The details of the standards subscriptions that were disabled.
batchDisableStandardsResponse_standardsSubscriptions :: Lens.Lens' BatchDisableStandardsResponse (Prelude.Maybe [StandardsSubscription])
batchDisableStandardsResponse_standardsSubscriptions = Lens.lens (\BatchDisableStandardsResponse' {standardsSubscriptions} -> standardsSubscriptions) (\s@BatchDisableStandardsResponse' {} a -> s {standardsSubscriptions = a} :: BatchDisableStandardsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDisableStandardsResponse_httpStatus :: Lens.Lens' BatchDisableStandardsResponse Prelude.Int
batchDisableStandardsResponse_httpStatus = Lens.lens (\BatchDisableStandardsResponse' {httpStatus} -> httpStatus) (\s@BatchDisableStandardsResponse' {} a -> s {httpStatus = a} :: BatchDisableStandardsResponse)

instance Prelude.NFData BatchDisableStandardsResponse
