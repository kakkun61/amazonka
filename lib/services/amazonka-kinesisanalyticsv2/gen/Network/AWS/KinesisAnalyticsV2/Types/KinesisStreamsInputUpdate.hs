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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsInputUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsInputUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | When you update the input configuration for a SQL-based Kinesis Data
-- Analytics application, provides information about a Kinesis stream as
-- the streaming source.
--
-- /See:/ 'newKinesisStreamsInputUpdate' smart constructor.
data KinesisStreamsInputUpdate = KinesisStreamsInputUpdate'
  { -- | The Amazon Resource Name (ARN) of the input Kinesis data stream to read.
    resourceARNUpdate :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisStreamsInputUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARNUpdate', 'kinesisStreamsInputUpdate_resourceARNUpdate' - The Amazon Resource Name (ARN) of the input Kinesis data stream to read.
newKinesisStreamsInputUpdate ::
  -- | 'resourceARNUpdate'
  Prelude.Text ->
  KinesisStreamsInputUpdate
newKinesisStreamsInputUpdate pResourceARNUpdate_ =
  KinesisStreamsInputUpdate'
    { resourceARNUpdate =
        pResourceARNUpdate_
    }

-- | The Amazon Resource Name (ARN) of the input Kinesis data stream to read.
kinesisStreamsInputUpdate_resourceARNUpdate :: Lens.Lens' KinesisStreamsInputUpdate Prelude.Text
kinesisStreamsInputUpdate_resourceARNUpdate = Lens.lens (\KinesisStreamsInputUpdate' {resourceARNUpdate} -> resourceARNUpdate) (\s@KinesisStreamsInputUpdate' {} a -> s {resourceARNUpdate = a} :: KinesisStreamsInputUpdate)

instance Prelude.Hashable KinesisStreamsInputUpdate

instance Prelude.NFData KinesisStreamsInputUpdate

instance Core.ToJSON KinesisStreamsInputUpdate where
  toJSON KinesisStreamsInputUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceARNUpdate" Core..= resourceARNUpdate)
          ]
      )
