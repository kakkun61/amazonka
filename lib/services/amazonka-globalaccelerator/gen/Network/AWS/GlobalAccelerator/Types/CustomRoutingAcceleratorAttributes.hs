{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.GlobalAccelerator.Types.CustomRoutingAcceleratorAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GlobalAccelerator.Types.CustomRoutingAcceleratorAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Attributes of a custom routing accelerator.
--
-- /See:/ 'newCustomRoutingAcceleratorAttributes' smart constructor.
data CustomRoutingAcceleratorAttributes = CustomRoutingAcceleratorAttributes'
  { -- | The prefix for the location in the Amazon S3 bucket for the flow logs.
    -- Attribute is required if @FlowLogsEnabled@ is @true@.
    --
    -- If you don’t specify a prefix, the flow logs are stored in the root of
    -- the bucket. If you specify slash (\/) for the S3 bucket prefix, the log
    -- file bucket folder structure will include a double slash (\/\/), like
    -- the following:
    --
    -- DOC-EXAMPLE-BUCKET\/\/AWSLogs\/aws_account_id
    flowLogsS3Prefix :: Prelude.Maybe Prelude.Text,
    -- | Indicates whether flow logs are enabled. The default value is false. If
    -- the value is true, @FlowLogsS3Bucket@ and @FlowLogsS3Prefix@ must be
    -- specified.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html Flow Logs>
    -- in the /AWS Global Accelerator Developer Guide/.
    flowLogsEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The name of the Amazon S3 bucket for the flow logs. Attribute is
    -- required if @FlowLogsEnabled@ is @true@. The bucket must exist and have
    -- a bucket policy that grants AWS Global Accelerator permission to write
    -- to the bucket.
    flowLogsS3Bucket :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomRoutingAcceleratorAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'flowLogsS3Prefix', 'customRoutingAcceleratorAttributes_flowLogsS3Prefix' - The prefix for the location in the Amazon S3 bucket for the flow logs.
-- Attribute is required if @FlowLogsEnabled@ is @true@.
--
-- If you don’t specify a prefix, the flow logs are stored in the root of
-- the bucket. If you specify slash (\/) for the S3 bucket prefix, the log
-- file bucket folder structure will include a double slash (\/\/), like
-- the following:
--
-- DOC-EXAMPLE-BUCKET\/\/AWSLogs\/aws_account_id
--
-- 'flowLogsEnabled', 'customRoutingAcceleratorAttributes_flowLogsEnabled' - Indicates whether flow logs are enabled. The default value is false. If
-- the value is true, @FlowLogsS3Bucket@ and @FlowLogsS3Prefix@ must be
-- specified.
--
-- For more information, see
-- <https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html Flow Logs>
-- in the /AWS Global Accelerator Developer Guide/.
--
-- 'flowLogsS3Bucket', 'customRoutingAcceleratorAttributes_flowLogsS3Bucket' - The name of the Amazon S3 bucket for the flow logs. Attribute is
-- required if @FlowLogsEnabled@ is @true@. The bucket must exist and have
-- a bucket policy that grants AWS Global Accelerator permission to write
-- to the bucket.
newCustomRoutingAcceleratorAttributes ::
  CustomRoutingAcceleratorAttributes
newCustomRoutingAcceleratorAttributes =
  CustomRoutingAcceleratorAttributes'
    { flowLogsS3Prefix =
        Prelude.Nothing,
      flowLogsEnabled = Prelude.Nothing,
      flowLogsS3Bucket = Prelude.Nothing
    }

-- | The prefix for the location in the Amazon S3 bucket for the flow logs.
-- Attribute is required if @FlowLogsEnabled@ is @true@.
--
-- If you don’t specify a prefix, the flow logs are stored in the root of
-- the bucket. If you specify slash (\/) for the S3 bucket prefix, the log
-- file bucket folder structure will include a double slash (\/\/), like
-- the following:
--
-- DOC-EXAMPLE-BUCKET\/\/AWSLogs\/aws_account_id
customRoutingAcceleratorAttributes_flowLogsS3Prefix :: Lens.Lens' CustomRoutingAcceleratorAttributes (Prelude.Maybe Prelude.Text)
customRoutingAcceleratorAttributes_flowLogsS3Prefix = Lens.lens (\CustomRoutingAcceleratorAttributes' {flowLogsS3Prefix} -> flowLogsS3Prefix) (\s@CustomRoutingAcceleratorAttributes' {} a -> s {flowLogsS3Prefix = a} :: CustomRoutingAcceleratorAttributes)

-- | Indicates whether flow logs are enabled. The default value is false. If
-- the value is true, @FlowLogsS3Bucket@ and @FlowLogsS3Prefix@ must be
-- specified.
--
-- For more information, see
-- <https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html Flow Logs>
-- in the /AWS Global Accelerator Developer Guide/.
customRoutingAcceleratorAttributes_flowLogsEnabled :: Lens.Lens' CustomRoutingAcceleratorAttributes (Prelude.Maybe Prelude.Bool)
customRoutingAcceleratorAttributes_flowLogsEnabled = Lens.lens (\CustomRoutingAcceleratorAttributes' {flowLogsEnabled} -> flowLogsEnabled) (\s@CustomRoutingAcceleratorAttributes' {} a -> s {flowLogsEnabled = a} :: CustomRoutingAcceleratorAttributes)

-- | The name of the Amazon S3 bucket for the flow logs. Attribute is
-- required if @FlowLogsEnabled@ is @true@. The bucket must exist and have
-- a bucket policy that grants AWS Global Accelerator permission to write
-- to the bucket.
customRoutingAcceleratorAttributes_flowLogsS3Bucket :: Lens.Lens' CustomRoutingAcceleratorAttributes (Prelude.Maybe Prelude.Text)
customRoutingAcceleratorAttributes_flowLogsS3Bucket = Lens.lens (\CustomRoutingAcceleratorAttributes' {flowLogsS3Bucket} -> flowLogsS3Bucket) (\s@CustomRoutingAcceleratorAttributes' {} a -> s {flowLogsS3Bucket = a} :: CustomRoutingAcceleratorAttributes)

instance
  Core.FromJSON
    CustomRoutingAcceleratorAttributes
  where
  parseJSON =
    Core.withObject
      "CustomRoutingAcceleratorAttributes"
      ( \x ->
          CustomRoutingAcceleratorAttributes'
            Prelude.<$> (x Core..:? "FlowLogsS3Prefix")
            Prelude.<*> (x Core..:? "FlowLogsEnabled")
            Prelude.<*> (x Core..:? "FlowLogsS3Bucket")
      )

instance
  Prelude.Hashable
    CustomRoutingAcceleratorAttributes

instance
  Prelude.NFData
    CustomRoutingAcceleratorAttributes
