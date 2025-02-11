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
-- Module      : Network.AWS.Location.AssociateTrackerConsumer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an association between a geofence collection and a tracker
-- resource. This allows the tracker resource to communicate location data
-- to the linked geofence collection.
--
-- You can associate up to five geofence collections to each tracker
-- resource.
--
-- Currently not supported — Cross-account configurations, such as creating
-- associations between a tracker resource in one account and a geofence
-- collection in another account.
module Network.AWS.Location.AssociateTrackerConsumer
  ( -- * Creating a Request
    AssociateTrackerConsumer (..),
    newAssociateTrackerConsumer,

    -- * Request Lenses
    associateTrackerConsumer_consumerArn,
    associateTrackerConsumer_trackerName,

    -- * Destructuring the Response
    AssociateTrackerConsumerResponse (..),
    newAssociateTrackerConsumerResponse,

    -- * Response Lenses
    associateTrackerConsumerResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateTrackerConsumer' smart constructor.
data AssociateTrackerConsumer = AssociateTrackerConsumer'
  { -- | The Amazon Resource Name (ARN) for the geofence collection to be
    -- associated to tracker resource. Used when you need to specify a resource
    -- across all AWS.
    --
    -- -   Format example:
    --     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollectionConsumer@
    consumerArn :: Prelude.Text,
    -- | The name of the tracker resource to be associated with a geofence
    -- collection.
    trackerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateTrackerConsumer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'consumerArn', 'associateTrackerConsumer_consumerArn' - The Amazon Resource Name (ARN) for the geofence collection to be
-- associated to tracker resource. Used when you need to specify a resource
-- across all AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollectionConsumer@
--
-- 'trackerName', 'associateTrackerConsumer_trackerName' - The name of the tracker resource to be associated with a geofence
-- collection.
newAssociateTrackerConsumer ::
  -- | 'consumerArn'
  Prelude.Text ->
  -- | 'trackerName'
  Prelude.Text ->
  AssociateTrackerConsumer
newAssociateTrackerConsumer
  pConsumerArn_
  pTrackerName_ =
    AssociateTrackerConsumer'
      { consumerArn =
          pConsumerArn_,
        trackerName = pTrackerName_
      }

-- | The Amazon Resource Name (ARN) for the geofence collection to be
-- associated to tracker resource. Used when you need to specify a resource
-- across all AWS.
--
-- -   Format example:
--     @arn:aws:geo:region:account-id:geofence-collection\/ExampleGeofenceCollectionConsumer@
associateTrackerConsumer_consumerArn :: Lens.Lens' AssociateTrackerConsumer Prelude.Text
associateTrackerConsumer_consumerArn = Lens.lens (\AssociateTrackerConsumer' {consumerArn} -> consumerArn) (\s@AssociateTrackerConsumer' {} a -> s {consumerArn = a} :: AssociateTrackerConsumer)

-- | The name of the tracker resource to be associated with a geofence
-- collection.
associateTrackerConsumer_trackerName :: Lens.Lens' AssociateTrackerConsumer Prelude.Text
associateTrackerConsumer_trackerName = Lens.lens (\AssociateTrackerConsumer' {trackerName} -> trackerName) (\s@AssociateTrackerConsumer' {} a -> s {trackerName = a} :: AssociateTrackerConsumer)

instance Core.AWSRequest AssociateTrackerConsumer where
  type
    AWSResponse AssociateTrackerConsumer =
      AssociateTrackerConsumerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AssociateTrackerConsumerResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AssociateTrackerConsumer

instance Prelude.NFData AssociateTrackerConsumer

instance Core.ToHeaders AssociateTrackerConsumer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON AssociateTrackerConsumer where
  toJSON AssociateTrackerConsumer' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ConsumerArn" Core..= consumerArn)]
      )

instance Core.ToPath AssociateTrackerConsumer where
  toPath AssociateTrackerConsumer' {..} =
    Prelude.mconcat
      [ "/tracking/v0/trackers/",
        Core.toBS trackerName,
        "/consumers"
      ]

instance Core.ToQuery AssociateTrackerConsumer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAssociateTrackerConsumerResponse' smart constructor.
data AssociateTrackerConsumerResponse = AssociateTrackerConsumerResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AssociateTrackerConsumerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'associateTrackerConsumerResponse_httpStatus' - The response's http status code.
newAssociateTrackerConsumerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AssociateTrackerConsumerResponse
newAssociateTrackerConsumerResponse pHttpStatus_ =
  AssociateTrackerConsumerResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
associateTrackerConsumerResponse_httpStatus :: Lens.Lens' AssociateTrackerConsumerResponse Prelude.Int
associateTrackerConsumerResponse_httpStatus = Lens.lens (\AssociateTrackerConsumerResponse' {httpStatus} -> httpStatus) (\s@AssociateTrackerConsumerResponse' {} a -> s {httpStatus = a} :: AssociateTrackerConsumerResponse)

instance
  Prelude.NFData
    AssociateTrackerConsumerResponse
