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
-- Module      : Network.AWS.AppRunner.DescribeAutoScalingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a full description of an App Runner automatic scaling
-- configuration resource.
module Network.AWS.AppRunner.DescribeAutoScalingConfiguration
  ( -- * Creating a Request
    DescribeAutoScalingConfiguration (..),
    newDescribeAutoScalingConfiguration,

    -- * Request Lenses
    describeAutoScalingConfiguration_autoScalingConfigurationArn,

    -- * Destructuring the Response
    DescribeAutoScalingConfigurationResponse (..),
    newDescribeAutoScalingConfigurationResponse,

    -- * Response Lenses
    describeAutoScalingConfigurationResponse_httpStatus,
    describeAutoScalingConfigurationResponse_autoScalingConfiguration,
  )
where

import Network.AWS.AppRunner.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeAutoScalingConfiguration' smart constructor.
data DescribeAutoScalingConfiguration = DescribeAutoScalingConfiguration'
  { -- | The Amazon Resource Name (ARN) of the App Runner auto scaling
    -- configuration that you want a description for.
    --
    -- The ARN can be a full auto scaling configuration ARN, or a partial ARN
    -- ending with either @...\/name @ or @...\/name\/revision @. If a revision
    -- isn\'t specified, the latest active revision is described.
    autoScalingConfigurationArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAutoScalingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoScalingConfigurationArn', 'describeAutoScalingConfiguration_autoScalingConfigurationArn' - The Amazon Resource Name (ARN) of the App Runner auto scaling
-- configuration that you want a description for.
--
-- The ARN can be a full auto scaling configuration ARN, or a partial ARN
-- ending with either @...\/name @ or @...\/name\/revision @. If a revision
-- isn\'t specified, the latest active revision is described.
newDescribeAutoScalingConfiguration ::
  -- | 'autoScalingConfigurationArn'
  Prelude.Text ->
  DescribeAutoScalingConfiguration
newDescribeAutoScalingConfiguration
  pAutoScalingConfigurationArn_ =
    DescribeAutoScalingConfiguration'
      { autoScalingConfigurationArn =
          pAutoScalingConfigurationArn_
      }

-- | The Amazon Resource Name (ARN) of the App Runner auto scaling
-- configuration that you want a description for.
--
-- The ARN can be a full auto scaling configuration ARN, or a partial ARN
-- ending with either @...\/name @ or @...\/name\/revision @. If a revision
-- isn\'t specified, the latest active revision is described.
describeAutoScalingConfiguration_autoScalingConfigurationArn :: Lens.Lens' DescribeAutoScalingConfiguration Prelude.Text
describeAutoScalingConfiguration_autoScalingConfigurationArn = Lens.lens (\DescribeAutoScalingConfiguration' {autoScalingConfigurationArn} -> autoScalingConfigurationArn) (\s@DescribeAutoScalingConfiguration' {} a -> s {autoScalingConfigurationArn = a} :: DescribeAutoScalingConfiguration)

instance
  Core.AWSRequest
    DescribeAutoScalingConfiguration
  where
  type
    AWSResponse DescribeAutoScalingConfiguration =
      DescribeAutoScalingConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeAutoScalingConfigurationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "AutoScalingConfiguration")
      )

instance
  Prelude.Hashable
    DescribeAutoScalingConfiguration

instance
  Prelude.NFData
    DescribeAutoScalingConfiguration

instance
  Core.ToHeaders
    DescribeAutoScalingConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AppRunner.DescribeAutoScalingConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeAutoScalingConfiguration where
  toJSON DescribeAutoScalingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "AutoScalingConfigurationArn"
                  Core..= autoScalingConfigurationArn
              )
          ]
      )

instance Core.ToPath DescribeAutoScalingConfiguration where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeAutoScalingConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeAutoScalingConfigurationResponse' smart constructor.
data DescribeAutoScalingConfigurationResponse = DescribeAutoScalingConfigurationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A full description of the App Runner auto scaling configuration that you
    -- specified in this request.
    autoScalingConfiguration :: AutoScalingConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeAutoScalingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeAutoScalingConfigurationResponse_httpStatus' - The response's http status code.
--
-- 'autoScalingConfiguration', 'describeAutoScalingConfigurationResponse_autoScalingConfiguration' - A full description of the App Runner auto scaling configuration that you
-- specified in this request.
newDescribeAutoScalingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'autoScalingConfiguration'
  AutoScalingConfiguration ->
  DescribeAutoScalingConfigurationResponse
newDescribeAutoScalingConfigurationResponse
  pHttpStatus_
  pAutoScalingConfiguration_ =
    DescribeAutoScalingConfigurationResponse'
      { httpStatus =
          pHttpStatus_,
        autoScalingConfiguration =
          pAutoScalingConfiguration_
      }

-- | The response's http status code.
describeAutoScalingConfigurationResponse_httpStatus :: Lens.Lens' DescribeAutoScalingConfigurationResponse Prelude.Int
describeAutoScalingConfigurationResponse_httpStatus = Lens.lens (\DescribeAutoScalingConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeAutoScalingConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeAutoScalingConfigurationResponse)

-- | A full description of the App Runner auto scaling configuration that you
-- specified in this request.
describeAutoScalingConfigurationResponse_autoScalingConfiguration :: Lens.Lens' DescribeAutoScalingConfigurationResponse AutoScalingConfiguration
describeAutoScalingConfigurationResponse_autoScalingConfiguration = Lens.lens (\DescribeAutoScalingConfigurationResponse' {autoScalingConfiguration} -> autoScalingConfiguration) (\s@DescribeAutoScalingConfigurationResponse' {} a -> s {autoScalingConfiguration = a} :: DescribeAutoScalingConfigurationResponse)

instance
  Prelude.NFData
    DescribeAutoScalingConfigurationResponse
