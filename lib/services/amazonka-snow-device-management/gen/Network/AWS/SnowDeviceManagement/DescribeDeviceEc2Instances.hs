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
-- Module      : Network.AWS.SnowDeviceManagement.DescribeDeviceEc2Instances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the current state of the Amazon EC2 instances. The output is
-- similar to @describeDevice@, but the results are sourced from the device
-- cache in the Amazon Web Services Cloud and include a subset of the
-- available fields.
module Network.AWS.SnowDeviceManagement.DescribeDeviceEc2Instances
  ( -- * Creating a Request
    DescribeDeviceEc2Instances (..),
    newDescribeDeviceEc2Instances,

    -- * Request Lenses
    describeDeviceEc2Instances_instanceIds,
    describeDeviceEc2Instances_managedDeviceId,

    -- * Destructuring the Response
    DescribeDeviceEc2InstancesResponse (..),
    newDescribeDeviceEc2InstancesResponse,

    -- * Response Lenses
    describeDeviceEc2InstancesResponse_instances,
    describeDeviceEc2InstancesResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SnowDeviceManagement.Types

-- | /See:/ 'newDescribeDeviceEc2Instances' smart constructor.
data DescribeDeviceEc2Instances = DescribeDeviceEc2Instances'
  { -- | A list of instance IDs associated with the managed device.
    instanceIds :: [Prelude.Text],
    -- | The ID of the managed device.
    managedDeviceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDeviceEc2Instances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceIds', 'describeDeviceEc2Instances_instanceIds' - A list of instance IDs associated with the managed device.
--
-- 'managedDeviceId', 'describeDeviceEc2Instances_managedDeviceId' - The ID of the managed device.
newDescribeDeviceEc2Instances ::
  -- | 'managedDeviceId'
  Prelude.Text ->
  DescribeDeviceEc2Instances
newDescribeDeviceEc2Instances pManagedDeviceId_ =
  DescribeDeviceEc2Instances'
    { instanceIds =
        Prelude.mempty,
      managedDeviceId = pManagedDeviceId_
    }

-- | A list of instance IDs associated with the managed device.
describeDeviceEc2Instances_instanceIds :: Lens.Lens' DescribeDeviceEc2Instances [Prelude.Text]
describeDeviceEc2Instances_instanceIds = Lens.lens (\DescribeDeviceEc2Instances' {instanceIds} -> instanceIds) (\s@DescribeDeviceEc2Instances' {} a -> s {instanceIds = a} :: DescribeDeviceEc2Instances) Prelude.. Lens.coerced

-- | The ID of the managed device.
describeDeviceEc2Instances_managedDeviceId :: Lens.Lens' DescribeDeviceEc2Instances Prelude.Text
describeDeviceEc2Instances_managedDeviceId = Lens.lens (\DescribeDeviceEc2Instances' {managedDeviceId} -> managedDeviceId) (\s@DescribeDeviceEc2Instances' {} a -> s {managedDeviceId = a} :: DescribeDeviceEc2Instances)

instance Core.AWSRequest DescribeDeviceEc2Instances where
  type
    AWSResponse DescribeDeviceEc2Instances =
      DescribeDeviceEc2InstancesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDeviceEc2InstancesResponse'
            Prelude.<$> (x Core..?> "instances" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDeviceEc2Instances

instance Prelude.NFData DescribeDeviceEc2Instances

instance Core.ToHeaders DescribeDeviceEc2Instances where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeDeviceEc2Instances where
  toJSON DescribeDeviceEc2Instances' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("instanceIds" Core..= instanceIds)]
      )

instance Core.ToPath DescribeDeviceEc2Instances where
  toPath DescribeDeviceEc2Instances' {..} =
    Prelude.mconcat
      [ "/managed-device/",
        Core.toBS managedDeviceId,
        "/resources/ec2/describe"
      ]

instance Core.ToQuery DescribeDeviceEc2Instances where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDeviceEc2InstancesResponse' smart constructor.
data DescribeDeviceEc2InstancesResponse = DescribeDeviceEc2InstancesResponse'
  { -- | A list of structures containing information about each instance.
    instances :: Prelude.Maybe [InstanceSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDeviceEc2InstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instances', 'describeDeviceEc2InstancesResponse_instances' - A list of structures containing information about each instance.
--
-- 'httpStatus', 'describeDeviceEc2InstancesResponse_httpStatus' - The response's http status code.
newDescribeDeviceEc2InstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDeviceEc2InstancesResponse
newDescribeDeviceEc2InstancesResponse pHttpStatus_ =
  DescribeDeviceEc2InstancesResponse'
    { instances =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of structures containing information about each instance.
describeDeviceEc2InstancesResponse_instances :: Lens.Lens' DescribeDeviceEc2InstancesResponse (Prelude.Maybe [InstanceSummary])
describeDeviceEc2InstancesResponse_instances = Lens.lens (\DescribeDeviceEc2InstancesResponse' {instances} -> instances) (\s@DescribeDeviceEc2InstancesResponse' {} a -> s {instances = a} :: DescribeDeviceEc2InstancesResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeDeviceEc2InstancesResponse_httpStatus :: Lens.Lens' DescribeDeviceEc2InstancesResponse Prelude.Int
describeDeviceEc2InstancesResponse_httpStatus = Lens.lens (\DescribeDeviceEc2InstancesResponse' {httpStatus} -> httpStatus) (\s@DescribeDeviceEc2InstancesResponse' {} a -> s {httpStatus = a} :: DescribeDeviceEc2InstancesResponse)

instance
  Prelude.NFData
    DescribeDeviceEc2InstancesResponse
