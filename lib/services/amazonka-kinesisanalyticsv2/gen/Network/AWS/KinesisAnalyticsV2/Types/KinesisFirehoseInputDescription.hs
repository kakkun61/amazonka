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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseInputDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseInputDescription where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the Amazon Kinesis Data Firehose delivery stream that is
-- configured as the streaming source in the application input
-- configuration.
--
-- /See:/ 'newKinesisFirehoseInputDescription' smart constructor.
data KinesisFirehoseInputDescription = KinesisFirehoseInputDescription'
  { -- | The ARN of the IAM role that Kinesis Data Analytics assumes to access
    -- the stream.
    --
    -- Provided for backward compatibility. Applications that are created with
    -- the current API version have an application-level service execution role
    -- rather than a resource-level role.
    roleARN :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the delivery stream.
    resourceARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisFirehoseInputDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleARN', 'kinesisFirehoseInputDescription_roleARN' - The ARN of the IAM role that Kinesis Data Analytics assumes to access
-- the stream.
--
-- Provided for backward compatibility. Applications that are created with
-- the current API version have an application-level service execution role
-- rather than a resource-level role.
--
-- 'resourceARN', 'kinesisFirehoseInputDescription_resourceARN' - The Amazon Resource Name (ARN) of the delivery stream.
newKinesisFirehoseInputDescription ::
  -- | 'resourceARN'
  Prelude.Text ->
  KinesisFirehoseInputDescription
newKinesisFirehoseInputDescription pResourceARN_ =
  KinesisFirehoseInputDescription'
    { roleARN =
        Prelude.Nothing,
      resourceARN = pResourceARN_
    }

-- | The ARN of the IAM role that Kinesis Data Analytics assumes to access
-- the stream.
--
-- Provided for backward compatibility. Applications that are created with
-- the current API version have an application-level service execution role
-- rather than a resource-level role.
kinesisFirehoseInputDescription_roleARN :: Lens.Lens' KinesisFirehoseInputDescription (Prelude.Maybe Prelude.Text)
kinesisFirehoseInputDescription_roleARN = Lens.lens (\KinesisFirehoseInputDescription' {roleARN} -> roleARN) (\s@KinesisFirehoseInputDescription' {} a -> s {roleARN = a} :: KinesisFirehoseInputDescription)

-- | The Amazon Resource Name (ARN) of the delivery stream.
kinesisFirehoseInputDescription_resourceARN :: Lens.Lens' KinesisFirehoseInputDescription Prelude.Text
kinesisFirehoseInputDescription_resourceARN = Lens.lens (\KinesisFirehoseInputDescription' {resourceARN} -> resourceARN) (\s@KinesisFirehoseInputDescription' {} a -> s {resourceARN = a} :: KinesisFirehoseInputDescription)

instance
  Core.FromJSON
    KinesisFirehoseInputDescription
  where
  parseJSON =
    Core.withObject
      "KinesisFirehoseInputDescription"
      ( \x ->
          KinesisFirehoseInputDescription'
            Prelude.<$> (x Core..:? "RoleARN")
            Prelude.<*> (x Core..: "ResourceARN")
      )

instance
  Prelude.Hashable
    KinesisFirehoseInputDescription

instance
  Prelude.NFData
    KinesisFirehoseInputDescription
