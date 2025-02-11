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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.CloudWatchLoggingOptionDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.CloudWatchLoggingOptionDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the Amazon CloudWatch logging option.
--
-- /See:/ 'newCloudWatchLoggingOptionDescription' smart constructor.
data CloudWatchLoggingOptionDescription = CloudWatchLoggingOptionDescription'
  { -- | The ID of the CloudWatch logging option description.
    cloudWatchLoggingOptionId :: Prelude.Maybe Prelude.Text,
    -- | The IAM ARN of the role to use to send application messages.
    --
    -- Provided for backward compatibility. Applications created with the
    -- current API version have an application-level service execution role
    -- rather than a resource-level role.
    roleARN :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the CloudWatch log to receive
    -- application messages.
    logStreamARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchLoggingOptionDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudWatchLoggingOptionId', 'cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId' - The ID of the CloudWatch logging option description.
--
-- 'roleARN', 'cloudWatchLoggingOptionDescription_roleARN' - The IAM ARN of the role to use to send application messages.
--
-- Provided for backward compatibility. Applications created with the
-- current API version have an application-level service execution role
-- rather than a resource-level role.
--
-- 'logStreamARN', 'cloudWatchLoggingOptionDescription_logStreamARN' - The Amazon Resource Name (ARN) of the CloudWatch log to receive
-- application messages.
newCloudWatchLoggingOptionDescription ::
  -- | 'logStreamARN'
  Prelude.Text ->
  CloudWatchLoggingOptionDescription
newCloudWatchLoggingOptionDescription pLogStreamARN_ =
  CloudWatchLoggingOptionDescription'
    { cloudWatchLoggingOptionId =
        Prelude.Nothing,
      roleARN = Prelude.Nothing,
      logStreamARN = pLogStreamARN_
    }

-- | The ID of the CloudWatch logging option description.
cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId :: Lens.Lens' CloudWatchLoggingOptionDescription (Prelude.Maybe Prelude.Text)
cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId = Lens.lens (\CloudWatchLoggingOptionDescription' {cloudWatchLoggingOptionId} -> cloudWatchLoggingOptionId) (\s@CloudWatchLoggingOptionDescription' {} a -> s {cloudWatchLoggingOptionId = a} :: CloudWatchLoggingOptionDescription)

-- | The IAM ARN of the role to use to send application messages.
--
-- Provided for backward compatibility. Applications created with the
-- current API version have an application-level service execution role
-- rather than a resource-level role.
cloudWatchLoggingOptionDescription_roleARN :: Lens.Lens' CloudWatchLoggingOptionDescription (Prelude.Maybe Prelude.Text)
cloudWatchLoggingOptionDescription_roleARN = Lens.lens (\CloudWatchLoggingOptionDescription' {roleARN} -> roleARN) (\s@CloudWatchLoggingOptionDescription' {} a -> s {roleARN = a} :: CloudWatchLoggingOptionDescription)

-- | The Amazon Resource Name (ARN) of the CloudWatch log to receive
-- application messages.
cloudWatchLoggingOptionDescription_logStreamARN :: Lens.Lens' CloudWatchLoggingOptionDescription Prelude.Text
cloudWatchLoggingOptionDescription_logStreamARN = Lens.lens (\CloudWatchLoggingOptionDescription' {logStreamARN} -> logStreamARN) (\s@CloudWatchLoggingOptionDescription' {} a -> s {logStreamARN = a} :: CloudWatchLoggingOptionDescription)

instance
  Core.FromJSON
    CloudWatchLoggingOptionDescription
  where
  parseJSON =
    Core.withObject
      "CloudWatchLoggingOptionDescription"
      ( \x ->
          CloudWatchLoggingOptionDescription'
            Prelude.<$> (x Core..:? "CloudWatchLoggingOptionId")
            Prelude.<*> (x Core..:? "RoleARN")
            Prelude.<*> (x Core..: "LogStreamARN")
      )

instance
  Prelude.Hashable
    CloudWatchLoggingOptionDescription

instance
  Prelude.NFData
    CloudWatchLoggingOptionDescription
