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
-- Module      : Network.AWS.CodeStarNotifications.Unsubscribe
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an association between a notification rule and an Amazon SNS
-- topic so that subscribers to that topic stop receiving notifications
-- when the events described in the rule are triggered.
module Network.AWS.CodeStarNotifications.Unsubscribe
  ( -- * Creating a Request
    Unsubscribe (..),
    newUnsubscribe,

    -- * Request Lenses
    unsubscribe_arn,
    unsubscribe_targetAddress,

    -- * Destructuring the Response
    UnsubscribeResponse (..),
    newUnsubscribeResponse,

    -- * Response Lenses
    unsubscribeResponse_httpStatus,
    unsubscribeResponse_arn,
  )
where

import Network.AWS.CodeStarNotifications.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUnsubscribe' smart constructor.
data Unsubscribe = Unsubscribe'
  { -- | The Amazon Resource Name (ARN) of the notification rule.
    arn :: Prelude.Text,
    -- | The ARN of the SNS topic to unsubscribe from the notification rule.
    targetAddress :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Unsubscribe' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'unsubscribe_arn' - The Amazon Resource Name (ARN) of the notification rule.
--
-- 'targetAddress', 'unsubscribe_targetAddress' - The ARN of the SNS topic to unsubscribe from the notification rule.
newUnsubscribe ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'targetAddress'
  Prelude.Text ->
  Unsubscribe
newUnsubscribe pArn_ pTargetAddress_ =
  Unsubscribe'
    { arn = pArn_,
      targetAddress =
        Core._Sensitive Lens.# pTargetAddress_
    }

-- | The Amazon Resource Name (ARN) of the notification rule.
unsubscribe_arn :: Lens.Lens' Unsubscribe Prelude.Text
unsubscribe_arn = Lens.lens (\Unsubscribe' {arn} -> arn) (\s@Unsubscribe' {} a -> s {arn = a} :: Unsubscribe)

-- | The ARN of the SNS topic to unsubscribe from the notification rule.
unsubscribe_targetAddress :: Lens.Lens' Unsubscribe Prelude.Text
unsubscribe_targetAddress = Lens.lens (\Unsubscribe' {targetAddress} -> targetAddress) (\s@Unsubscribe' {} a -> s {targetAddress = a} :: Unsubscribe) Prelude.. Core._Sensitive

instance Core.AWSRequest Unsubscribe where
  type AWSResponse Unsubscribe = UnsubscribeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UnsubscribeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Arn")
      )

instance Prelude.Hashable Unsubscribe

instance Prelude.NFData Unsubscribe

instance Core.ToHeaders Unsubscribe where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON Unsubscribe where
  toJSON Unsubscribe' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Arn" Core..= arn),
            Prelude.Just
              ("TargetAddress" Core..= targetAddress)
          ]
      )

instance Core.ToPath Unsubscribe where
  toPath = Prelude.const "/unsubscribe"

instance Core.ToQuery Unsubscribe where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUnsubscribeResponse' smart constructor.
data UnsubscribeResponse = UnsubscribeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The Amazon Resource Name (ARN) of the the notification rule from which
    -- you have removed a subscription.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UnsubscribeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'unsubscribeResponse_httpStatus' - The response's http status code.
--
-- 'arn', 'unsubscribeResponse_arn' - The Amazon Resource Name (ARN) of the the notification rule from which
-- you have removed a subscription.
newUnsubscribeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'arn'
  Prelude.Text ->
  UnsubscribeResponse
newUnsubscribeResponse pHttpStatus_ pArn_ =
  UnsubscribeResponse'
    { httpStatus = pHttpStatus_,
      arn = pArn_
    }

-- | The response's http status code.
unsubscribeResponse_httpStatus :: Lens.Lens' UnsubscribeResponse Prelude.Int
unsubscribeResponse_httpStatus = Lens.lens (\UnsubscribeResponse' {httpStatus} -> httpStatus) (\s@UnsubscribeResponse' {} a -> s {httpStatus = a} :: UnsubscribeResponse)

-- | The Amazon Resource Name (ARN) of the the notification rule from which
-- you have removed a subscription.
unsubscribeResponse_arn :: Lens.Lens' UnsubscribeResponse Prelude.Text
unsubscribeResponse_arn = Lens.lens (\UnsubscribeResponse' {arn} -> arn) (\s@UnsubscribeResponse' {} a -> s {arn = a} :: UnsubscribeResponse)

instance Prelude.NFData UnsubscribeResponse
