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
-- Module      : Network.AWS.CodeStarNotifications.Subscribe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an association between a notification rule and an SNS topic so
-- that the associated target can receive notifications when the events
-- described in the rule are triggered.
module Network.AWS.CodeStarNotifications.Subscribe
  ( -- * Creating a Request
    Subscribe (..),
    newSubscribe,

    -- * Request Lenses
    subscribe_clientRequestToken,
    subscribe_arn,
    subscribe_target,

    -- * Destructuring the Response
    SubscribeResponse (..),
    newSubscribeResponse,

    -- * Response Lenses
    subscribeResponse_arn,
    subscribeResponse_httpStatus,
  )
where

import Network.AWS.CodeStarNotifications.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSubscribe' smart constructor.
data Subscribe = Subscribe'
  { -- | An enumeration token that, when provided in a request, returns the next
    -- batch of the results.
    clientRequestToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the notification rule for which you
    -- want to create the association.
    arn :: Prelude.Text,
    target :: Target
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Subscribe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientRequestToken', 'subscribe_clientRequestToken' - An enumeration token that, when provided in a request, returns the next
-- batch of the results.
--
-- 'arn', 'subscribe_arn' - The Amazon Resource Name (ARN) of the notification rule for which you
-- want to create the association.
--
-- 'target', 'subscribe_target' - Undocumented member.
newSubscribe ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'target'
  Target ->
  Subscribe
newSubscribe pArn_ pTarget_ =
  Subscribe'
    { clientRequestToken = Prelude.Nothing,
      arn = pArn_,
      target = pTarget_
    }

-- | An enumeration token that, when provided in a request, returns the next
-- batch of the results.
subscribe_clientRequestToken :: Lens.Lens' Subscribe (Prelude.Maybe Prelude.Text)
subscribe_clientRequestToken = Lens.lens (\Subscribe' {clientRequestToken} -> clientRequestToken) (\s@Subscribe' {} a -> s {clientRequestToken = a} :: Subscribe)

-- | The Amazon Resource Name (ARN) of the notification rule for which you
-- want to create the association.
subscribe_arn :: Lens.Lens' Subscribe Prelude.Text
subscribe_arn = Lens.lens (\Subscribe' {arn} -> arn) (\s@Subscribe' {} a -> s {arn = a} :: Subscribe)

-- | Undocumented member.
subscribe_target :: Lens.Lens' Subscribe Target
subscribe_target = Lens.lens (\Subscribe' {target} -> target) (\s@Subscribe' {} a -> s {target = a} :: Subscribe)

instance Core.AWSRequest Subscribe where
  type AWSResponse Subscribe = SubscribeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SubscribeResponse'
            Prelude.<$> (x Core..?> "Arn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable Subscribe

instance Prelude.NFData Subscribe

instance Core.ToHeaders Subscribe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON Subscribe where
  toJSON Subscribe' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ClientRequestToken" Core..=)
              Prelude.<$> clientRequestToken,
            Prelude.Just ("Arn" Core..= arn),
            Prelude.Just ("Target" Core..= target)
          ]
      )

instance Core.ToPath Subscribe where
  toPath = Prelude.const "/subscribe"

instance Core.ToQuery Subscribe where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSubscribeResponse' smart constructor.
data SubscribeResponse = SubscribeResponse'
  { -- | The Amazon Resource Name (ARN) of the notification rule for which you
    -- have created assocations.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubscribeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'subscribeResponse_arn' - The Amazon Resource Name (ARN) of the notification rule for which you
-- have created assocations.
--
-- 'httpStatus', 'subscribeResponse_httpStatus' - The response's http status code.
newSubscribeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  SubscribeResponse
newSubscribeResponse pHttpStatus_ =
  SubscribeResponse'
    { arn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the notification rule for which you
-- have created assocations.
subscribeResponse_arn :: Lens.Lens' SubscribeResponse (Prelude.Maybe Prelude.Text)
subscribeResponse_arn = Lens.lens (\SubscribeResponse' {arn} -> arn) (\s@SubscribeResponse' {} a -> s {arn = a} :: SubscribeResponse)

-- | The response's http status code.
subscribeResponse_httpStatus :: Lens.Lens' SubscribeResponse Prelude.Int
subscribeResponse_httpStatus = Lens.lens (\SubscribeResponse' {httpStatus} -> httpStatus) (\s@SubscribeResponse' {} a -> s {httpStatus = a} :: SubscribeResponse)

instance Prelude.NFData SubscribeResponse
