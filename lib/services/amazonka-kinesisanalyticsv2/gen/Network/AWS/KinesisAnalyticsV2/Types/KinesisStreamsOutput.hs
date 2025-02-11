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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsOutput where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | When you configure a SQL-based Kinesis Data Analytics application\'s
-- output, identifies a Kinesis data stream as the destination. You provide
-- the stream Amazon Resource Name (ARN).
--
-- /See:/ 'newKinesisStreamsOutput' smart constructor.
data KinesisStreamsOutput = KinesisStreamsOutput'
  { -- | The ARN of the destination Kinesis data stream to write to.
    resourceARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisStreamsOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARN', 'kinesisStreamsOutput_resourceARN' - The ARN of the destination Kinesis data stream to write to.
newKinesisStreamsOutput ::
  -- | 'resourceARN'
  Prelude.Text ->
  KinesisStreamsOutput
newKinesisStreamsOutput pResourceARN_ =
  KinesisStreamsOutput' {resourceARN = pResourceARN_}

-- | The ARN of the destination Kinesis data stream to write to.
kinesisStreamsOutput_resourceARN :: Lens.Lens' KinesisStreamsOutput Prelude.Text
kinesisStreamsOutput_resourceARN = Lens.lens (\KinesisStreamsOutput' {resourceARN} -> resourceARN) (\s@KinesisStreamsOutput' {} a -> s {resourceARN = a} :: KinesisStreamsOutput)

instance Prelude.Hashable KinesisStreamsOutput

instance Prelude.NFData KinesisStreamsOutput

instance Core.ToJSON KinesisStreamsOutput where
  toJSON KinesisStreamsOutput' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ResourceARN" Core..= resourceARN)]
      )
