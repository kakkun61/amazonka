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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.CloudWatchLoggingOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.CloudWatchLoggingOption where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides a description of Amazon CloudWatch logging options, including
-- the log stream Amazon Resource Name (ARN).
--
-- /See:/ 'newCloudWatchLoggingOption' smart constructor.
data CloudWatchLoggingOption = CloudWatchLoggingOption'
  { -- | The ARN of the CloudWatch log to receive application messages.
    logStreamARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudWatchLoggingOption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logStreamARN', 'cloudWatchLoggingOption_logStreamARN' - The ARN of the CloudWatch log to receive application messages.
newCloudWatchLoggingOption ::
  -- | 'logStreamARN'
  Prelude.Text ->
  CloudWatchLoggingOption
newCloudWatchLoggingOption pLogStreamARN_ =
  CloudWatchLoggingOption'
    { logStreamARN =
        pLogStreamARN_
    }

-- | The ARN of the CloudWatch log to receive application messages.
cloudWatchLoggingOption_logStreamARN :: Lens.Lens' CloudWatchLoggingOption Prelude.Text
cloudWatchLoggingOption_logStreamARN = Lens.lens (\CloudWatchLoggingOption' {logStreamARN} -> logStreamARN) (\s@CloudWatchLoggingOption' {} a -> s {logStreamARN = a} :: CloudWatchLoggingOption)

instance Prelude.Hashable CloudWatchLoggingOption

instance Prelude.NFData CloudWatchLoggingOption

instance Core.ToJSON CloudWatchLoggingOption where
  toJSON CloudWatchLoggingOption' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("LogStreamARN" Core..= logStreamARN)]
      )
