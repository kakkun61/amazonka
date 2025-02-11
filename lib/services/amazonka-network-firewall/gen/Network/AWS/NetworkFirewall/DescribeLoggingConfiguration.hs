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
-- Module      : Network.AWS.NetworkFirewall.DescribeLoggingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the logging configuration for the specified firewall.
module Network.AWS.NetworkFirewall.DescribeLoggingConfiguration
  ( -- * Creating a Request
    DescribeLoggingConfiguration (..),
    newDescribeLoggingConfiguration,

    -- * Request Lenses
    describeLoggingConfiguration_firewallArn,
    describeLoggingConfiguration_firewallName,

    -- * Destructuring the Response
    DescribeLoggingConfigurationResponse (..),
    newDescribeLoggingConfigurationResponse,

    -- * Response Lenses
    describeLoggingConfigurationResponse_firewallArn,
    describeLoggingConfigurationResponse_loggingConfiguration,
    describeLoggingConfigurationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.NetworkFirewall.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLoggingConfiguration' smart constructor.
data DescribeLoggingConfiguration = DescribeLoggingConfiguration'
  { -- | The Amazon Resource Name (ARN) of the firewall.
    --
    -- You must specify the ARN or the name, and you can specify both.
    firewallArn :: Prelude.Maybe Prelude.Text,
    -- | The descriptive name of the firewall. You can\'t change the name of a
    -- firewall after you create it.
    --
    -- You must specify the ARN or the name, and you can specify both.
    firewallName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoggingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallArn', 'describeLoggingConfiguration_firewallArn' - The Amazon Resource Name (ARN) of the firewall.
--
-- You must specify the ARN or the name, and you can specify both.
--
-- 'firewallName', 'describeLoggingConfiguration_firewallName' - The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
--
-- You must specify the ARN or the name, and you can specify both.
newDescribeLoggingConfiguration ::
  DescribeLoggingConfiguration
newDescribeLoggingConfiguration =
  DescribeLoggingConfiguration'
    { firewallArn =
        Prelude.Nothing,
      firewallName = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the firewall.
--
-- You must specify the ARN or the name, and you can specify both.
describeLoggingConfiguration_firewallArn :: Lens.Lens' DescribeLoggingConfiguration (Prelude.Maybe Prelude.Text)
describeLoggingConfiguration_firewallArn = Lens.lens (\DescribeLoggingConfiguration' {firewallArn} -> firewallArn) (\s@DescribeLoggingConfiguration' {} a -> s {firewallArn = a} :: DescribeLoggingConfiguration)

-- | The descriptive name of the firewall. You can\'t change the name of a
-- firewall after you create it.
--
-- You must specify the ARN or the name, and you can specify both.
describeLoggingConfiguration_firewallName :: Lens.Lens' DescribeLoggingConfiguration (Prelude.Maybe Prelude.Text)
describeLoggingConfiguration_firewallName = Lens.lens (\DescribeLoggingConfiguration' {firewallName} -> firewallName) (\s@DescribeLoggingConfiguration' {} a -> s {firewallName = a} :: DescribeLoggingConfiguration)

instance Core.AWSRequest DescribeLoggingConfiguration where
  type
    AWSResponse DescribeLoggingConfiguration =
      DescribeLoggingConfigurationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeLoggingConfigurationResponse'
            Prelude.<$> (x Core..?> "FirewallArn")
            Prelude.<*> (x Core..?> "LoggingConfiguration")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeLoggingConfiguration

instance Prelude.NFData DescribeLoggingConfiguration

instance Core.ToHeaders DescribeLoggingConfiguration where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "NetworkFirewall_20201112.DescribeLoggingConfiguration" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeLoggingConfiguration where
  toJSON DescribeLoggingConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("FirewallArn" Core..=) Prelude.<$> firewallArn,
            ("FirewallName" Core..=) Prelude.<$> firewallName
          ]
      )

instance Core.ToPath DescribeLoggingConfiguration where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeLoggingConfiguration where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeLoggingConfigurationResponse' smart constructor.
data DescribeLoggingConfigurationResponse = DescribeLoggingConfigurationResponse'
  { -- | The Amazon Resource Name (ARN) of the firewall.
    firewallArn :: Prelude.Maybe Prelude.Text,
    loggingConfiguration :: Prelude.Maybe LoggingConfiguration,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLoggingConfigurationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'firewallArn', 'describeLoggingConfigurationResponse_firewallArn' - The Amazon Resource Name (ARN) of the firewall.
--
-- 'loggingConfiguration', 'describeLoggingConfigurationResponse_loggingConfiguration' - Undocumented member.
--
-- 'httpStatus', 'describeLoggingConfigurationResponse_httpStatus' - The response's http status code.
newDescribeLoggingConfigurationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLoggingConfigurationResponse
newDescribeLoggingConfigurationResponse pHttpStatus_ =
  DescribeLoggingConfigurationResponse'
    { firewallArn =
        Prelude.Nothing,
      loggingConfiguration =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the firewall.
describeLoggingConfigurationResponse_firewallArn :: Lens.Lens' DescribeLoggingConfigurationResponse (Prelude.Maybe Prelude.Text)
describeLoggingConfigurationResponse_firewallArn = Lens.lens (\DescribeLoggingConfigurationResponse' {firewallArn} -> firewallArn) (\s@DescribeLoggingConfigurationResponse' {} a -> s {firewallArn = a} :: DescribeLoggingConfigurationResponse)

-- | Undocumented member.
describeLoggingConfigurationResponse_loggingConfiguration :: Lens.Lens' DescribeLoggingConfigurationResponse (Prelude.Maybe LoggingConfiguration)
describeLoggingConfigurationResponse_loggingConfiguration = Lens.lens (\DescribeLoggingConfigurationResponse' {loggingConfiguration} -> loggingConfiguration) (\s@DescribeLoggingConfigurationResponse' {} a -> s {loggingConfiguration = a} :: DescribeLoggingConfigurationResponse)

-- | The response's http status code.
describeLoggingConfigurationResponse_httpStatus :: Lens.Lens' DescribeLoggingConfigurationResponse Prelude.Int
describeLoggingConfigurationResponse_httpStatus = Lens.lens (\DescribeLoggingConfigurationResponse' {httpStatus} -> httpStatus) (\s@DescribeLoggingConfigurationResponse' {} a -> s {httpStatus = a} :: DescribeLoggingConfigurationResponse)

instance
  Prelude.NFData
    DescribeLoggingConfigurationResponse
