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
-- Module      : Network.AWS.SSOAdmin.DescribeInstanceAccessControlAttributeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the list of Amazon Web Services SSO identity store attributes
-- that have been configured to work with attributes-based access control
-- (ABAC) for the specified Amazon Web Services SSO instance. This will not
-- return attributes configured and sent by an external identity provider.
-- For more information about ABAC, see
-- </singlesignon/latest/userguide/abac.html Attribute-Based Access Control>
-- in the /Amazon Web Services SSO User Guide/.
module Network.AWS.SSOAdmin.DescribeInstanceAccessControlAttributeConfiguration
  ( -- * Creating a Request
    DescribeInstanceAccessControlAttributeConfiguration (..),
    newDescribeInstanceAccessControlAttributeConfiguration,

    -- * Request Lenses
    describeInstanceAccessControlAttributeConfiguration_instanceArn,

    -- * Destructuring the Response
    DescribeInstanceAccessControlAttributeConfigurationResponse (..),
    newDescribeInstanceAccessControlAttributeConfigurationResponse,

    -- * Response Lenses
    describeInstanceAccessControlAttributeConfigurationResponse_status,
    describeInstanceAccessControlAttributeConfigurationResponse_instanceAccessControlAttributeConfiguration,
    describeInstanceAccessControlAttributeConfigurationResponse_statusReason,
    describeInstanceAccessControlAttributeConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSOAdmin.Types

-- | /See:/ 'newDescribeInstanceAccessControlAttributeConfiguration' smart constructor.
data DescribeInstanceAccessControlAttributeConfiguration = DescribeInstanceAccessControlAttributeConfiguration'
  { -- | The ARN of the SSO instance under which the operation will be executed.
    instanceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInstanceAccessControlAttributeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceArn', 'describeInstanceAccessControlAttributeConfiguration_instanceArn' - The ARN of the SSO instance under which the operation will be executed.
newDescribeInstanceAccessControlAttributeConfiguration ::
  -- | 'instanceArn'
  Prelude.Text ->
  DescribeInstanceAccessControlAttributeConfiguration
newDescribeInstanceAccessControlAttributeConfiguration
  pInstanceArn_ =
    DescribeInstanceAccessControlAttributeConfiguration'
      { instanceArn =
          pInstanceArn_
      }

-- | The ARN of the SSO instance under which the operation will be executed.
describeInstanceAccessControlAttributeConfiguration_instanceArn :: Lens.Lens' DescribeInstanceAccessControlAttributeConfiguration Prelude.Text
describeInstanceAccessControlAttributeConfiguration_instanceArn = Lens.lens (\DescribeInstanceAccessControlAttributeConfiguration' {instanceArn} -> instanceArn) (\s@DescribeInstanceAccessControlAttributeConfiguration' {} a -> s {instanceArn = a} :: DescribeInstanceAccessControlAttributeConfiguration)

instance
  Core.AWSRequest
    DescribeInstanceAccessControlAttributeConfiguration
  where
  type
    AWSResponse
      DescribeInstanceAccessControlAttributeConfiguration =
      DescribeInstanceAccessControlAttributeConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeInstanceAccessControlAttributeConfigurationResponse'
            Prelude.<$> (x Core..?> "Status")
              Prelude.<*> ( x
                              Core..?> "InstanceAccessControlAttributeConfiguration"
                          )
              Prelude.<*> (x Core..?> "StatusReason")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeInstanceAccessControlAttributeConfiguration

instance
  Prelude.NFData
    DescribeInstanceAccessControlAttributeConfiguration

instance
  Core.ToHeaders
    DescribeInstanceAccessControlAttributeConfiguration
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SWBExternalService.DescribeInstanceAccessControlAttributeConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeInstanceAccessControlAttributeConfiguration
  where
  toJSON
    DescribeInstanceAccessControlAttributeConfiguration' {..} =
      Core.object
        ( Prelude.catMaybes
            [Prelude.Just ("InstanceArn" Core..= instanceArn)]
        )

instance
  Core.ToPath
    DescribeInstanceAccessControlAttributeConfiguration
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeInstanceAccessControlAttributeConfiguration
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeInstanceAccessControlAttributeConfigurationResponse' smart constructor.
data DescribeInstanceAccessControlAttributeConfigurationResponse = DescribeInstanceAccessControlAttributeConfigurationResponse'
  { -- | The status of the attribute configuration process.
    status :: Prelude.Maybe InstanceAccessControlAttributeConfigurationStatus,
    -- | Gets the list of Amazon Web Services SSO identity store attributes that
    -- have been added to your ABAC configuration.
    instanceAccessControlAttributeConfiguration :: Prelude.Maybe InstanceAccessControlAttributeConfiguration,
    -- | Provides more details about the current status of the specified
    -- attribute.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInstanceAccessControlAttributeConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'describeInstanceAccessControlAttributeConfigurationResponse_status' - The status of the attribute configuration process.
--
-- 'instanceAccessControlAttributeConfiguration', 'describeInstanceAccessControlAttributeConfigurationResponse_instanceAccessControlAttributeConfiguration' - Gets the list of Amazon Web Services SSO identity store attributes that
-- have been added to your ABAC configuration.
--
-- 'statusReason', 'describeInstanceAccessControlAttributeConfigurationResponse_statusReason' - Provides more details about the current status of the specified
-- attribute.
--
-- 'httpStatus', 'describeInstanceAccessControlAttributeConfigurationResponse_httpStatus' - The response's http status code.
newDescribeInstanceAccessControlAttributeConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeInstanceAccessControlAttributeConfigurationResponse
newDescribeInstanceAccessControlAttributeConfigurationResponse
  pHttpStatus_ =
    DescribeInstanceAccessControlAttributeConfigurationResponse'
      { status =
          Prelude.Nothing,
        instanceAccessControlAttributeConfiguration =
          Prelude.Nothing,
        statusReason =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | The status of the attribute configuration process.
describeInstanceAccessControlAttributeConfigurationResponse_status :: Lens.Lens' DescribeInstanceAccessControlAttributeConfigurationResponse (Prelude.Maybe InstanceAccessControlAttributeConfigurationStatus)
describeInstanceAccessControlAttributeConfigurationResponse_status = Lens.lens (\DescribeInstanceAccessControlAttributeConfigurationResponse' {status} -> status) (\s@DescribeInstanceAccessControlAttributeConfigurationResponse' {} a -> s {status = a} :: DescribeInstanceAccessControlAttributeConfigurationResponse)

-- | Gets the list of Amazon Web Services SSO identity store attributes that
-- have been added to your ABAC configuration.
describeInstanceAccessControlAttributeConfigurationResponse_instanceAccessControlAttributeConfiguration :: Lens.Lens' DescribeInstanceAccessControlAttributeConfigurationResponse (Prelude.Maybe InstanceAccessControlAttributeConfiguration)
describeInstanceAccessControlAttributeConfigurationResponse_instanceAccessControlAttributeConfiguration = Lens.lens (\DescribeInstanceAccessControlAttributeConfigurationResponse' {instanceAccessControlAttributeConfiguration} -> instanceAccessControlAttributeConfiguration) (\s@DescribeInstanceAccessControlAttributeConfigurationResponse' {} a -> s {instanceAccessControlAttributeConfiguration = a} :: DescribeInstanceAccessControlAttributeConfigurationResponse)

-- | Provides more details about the current status of the specified
-- attribute.
describeInstanceAccessControlAttributeConfigurationResponse_statusReason :: Lens.Lens' DescribeInstanceAccessControlAttributeConfigurationResponse (Prelude.Maybe Prelude.Text)
describeInstanceAccessControlAttributeConfigurationResponse_statusReason = Lens.lens (\DescribeInstanceAccessControlAttributeConfigurationResponse' {statusReason} -> statusReason) (\s@DescribeInstanceAccessControlAttributeConfigurationResponse' {} a -> s {statusReason = a} :: DescribeInstanceAccessControlAttributeConfigurationResponse)

-- | The response's http status code.
describeInstanceAccessControlAttributeConfigurationResponse_httpStatus :: Lens.Lens' DescribeInstanceAccessControlAttributeConfigurationResponse Prelude.Int
describeInstanceAccessControlAttributeConfigurationResponse_httpStatus = Lens.lens (\DescribeInstanceAccessControlAttributeConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeInstanceAccessControlAttributeConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeInstanceAccessControlAttributeConfigurationResponse)

instance
  Prelude.NFData
    DescribeInstanceAccessControlAttributeConfigurationResponse
