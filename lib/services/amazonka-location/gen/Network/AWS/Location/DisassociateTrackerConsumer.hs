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
-- Module      : Network.AWS.Location.DisassociateTrackerConsumer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the association between a tracker resource and a geofence
-- collection.
--
-- Once you unlink a tracker resource from a geofence collection, the
-- tracker positions will no longer be automatically evaluated against
-- geofences.
module Network.AWS.Location.DisassociateTrackerConsumer
  ( -- * Creating a Request
    DisassociateTrackerConsumer (..),
    newDisassociateTrackerConsumer,

    -- * Request Lenses
    disassociateTrackerConsumer_consumerArn,
    disassociateTrackerConsumer_trackerName,

    -- * Destructuring the Response
    DisassociateTrackerConsumerResponse (..),
    newDisassociateTrackerConsumerResponse,

    -- * Response Lenses
    disassociateTrackerConsumerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDisassociateTrackerConsumer' smart constructor.
data DisassociateTrackerConsumer = DisassociateTrackerConsumer'
  { -- | The Amazon Resource Name (ARN) for the geofence collection to be
    -- disassociated from the tracker resource. Used when you need to specify a
    -- resource across all AWS.
    --
    -- -   Format example:
    --     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollectionConsumer@
    consumerArn :: Prelude.Text,
    -- | The name of the tracker resource to be dissociated from the consumer.
    trackerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateTrackerConsumer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'consumerArn', 'disassociateTrackerConsumer_consumerArn' - The Amazon Resource Name (ARN) for the geofence collection to be
-- disassociated from the tracker resource. Used when you need to specify a
-- resource across all AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollectionConsumer@
--
-- 'trackerName', 'disassociateTrackerConsumer_trackerName' - The name of the tracker resource to be dissociated from the consumer.
newDisassociateTrackerConsumer ::
  -- | 'consumerArn'
  Prelude.Text ->
  -- | 'trackerName'
  Prelude.Text ->
  DisassociateTrackerConsumer
newDisassociateTrackerConsumer
  pConsumerArn_
  pTrackerName_ =
    DisassociateTrackerConsumer'
      { consumerArn =
          pConsumerArn_,
        trackerName = pTrackerName_
      }

-- | The Amazon Resource Name (ARN) for the geofence collection to be
-- disassociated from the tracker resource. Used when you need to specify a
-- resource across all AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollectionConsumer@
disassociateTrackerConsumer_consumerArn :: Lens.Lens' DisassociateTrackerConsumer Prelude.Text
disassociateTrackerConsumer_consumerArn = Lens.lens (\DisassociateTrackerConsumer' {consumerArn} -> consumerArn) (\s@DisassociateTrackerConsumer' {} a -> s {consumerArn = a} :: DisassociateTrackerConsumer)

-- | The name of the tracker resource to be dissociated from the consumer.
disassociateTrackerConsumer_trackerName :: Lens.Lens' DisassociateTrackerConsumer Prelude.Text
disassociateTrackerConsumer_trackerName = Lens.lens (\DisassociateTrackerConsumer' {trackerName} -> trackerName) (\s@DisassociateTrackerConsumer' {} a -> s {trackerName = a} :: DisassociateTrackerConsumer)

instance Core.AWSRequest DisassociateTrackerConsumer where
  type
    AWSResponse DisassociateTrackerConsumer =
      DisassociateTrackerConsumerResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DisassociateTrackerConsumerResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DisassociateTrackerConsumer

instance Prelude.NFData DisassociateTrackerConsumer

instance Core.ToHeaders DisassociateTrackerConsumer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DisassociateTrackerConsumer where
  toPath DisassociateTrackerConsumer' {..} =
    Prelude.mconcat
      [ "/tracking/v0/trackers/",
        Core.toBS trackerName,
        "/consumers/",
        Core.toBS consumerArn
      ]

instance Core.ToQuery DisassociateTrackerConsumer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDisassociateTrackerConsumerResponse' smart constructor.
data DisassociateTrackerConsumerResponse = DisassociateTrackerConsumerResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DisassociateTrackerConsumerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'disassociateTrackerConsumerResponse_httpStatus' - The response's http status code.
newDisassociateTrackerConsumerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DisassociateTrackerConsumerResponse
newDisassociateTrackerConsumerResponse pHttpStatus_ =
  DisassociateTrackerConsumerResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
disassociateTrackerConsumerResponse_httpStatus :: Lens.Lens' DisassociateTrackerConsumerResponse Prelude.Int
disassociateTrackerConsumerResponse_httpStatus = Lens.lens (\DisassociateTrackerConsumerResponse' {httpStatus} -> httpStatus) (\s@DisassociateTrackerConsumerResponse' {} a -> s {httpStatus = a} :: DisassociateTrackerConsumerResponse)

instance
  Prelude.NFData
    DisassociateTrackerConsumerResponse
