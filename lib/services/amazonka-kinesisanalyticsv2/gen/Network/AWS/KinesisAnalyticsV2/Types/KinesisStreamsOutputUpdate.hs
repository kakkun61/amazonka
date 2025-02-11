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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsOutputUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsOutputUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | When you update a SQL-based Kinesis Data Analytics application\'s output
-- configuration using the UpdateApplication operation, provides
-- information about a Kinesis data stream that is configured as the
-- destination.
--
-- /See:/ 'newKinesisStreamsOutputUpdate' smart constructor.
data KinesisStreamsOutputUpdate = KinesisStreamsOutputUpdate'
  { -- | The Amazon Resource Name (ARN) of the Kinesis data stream where you want
    -- to write the output.
    resourceARNUpdate :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisStreamsOutputUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARNUpdate', 'kinesisStreamsOutputUpdate_resourceARNUpdate' - The Amazon Resource Name (ARN) of the Kinesis data stream where you want
-- to write the output.
newKinesisStreamsOutputUpdate ::
  -- | 'resourceARNUpdate'
  Prelude.Text ->
  KinesisStreamsOutputUpdate
newKinesisStreamsOutputUpdate pResourceARNUpdate_ =
  KinesisStreamsOutputUpdate'
    { resourceARNUpdate =
        pResourceARNUpdate_
    }

-- | The Amazon Resource Name (ARN) of the Kinesis data stream where you want
-- to write the output.
kinesisStreamsOutputUpdate_resourceARNUpdate :: Lens.Lens' KinesisStreamsOutputUpdate Prelude.Text
kinesisStreamsOutputUpdate_resourceARNUpdate = Lens.lens (\KinesisStreamsOutputUpdate' {resourceARNUpdate} -> resourceARNUpdate) (\s@KinesisStreamsOutputUpdate' {} a -> s {resourceARNUpdate = a} :: KinesisStreamsOutputUpdate)

instance Prelude.Hashable KinesisStreamsOutputUpdate

instance Prelude.NFData KinesisStreamsOutputUpdate

instance Core.ToJSON KinesisStreamsOutputUpdate where
  toJSON KinesisStreamsOutputUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceARNUpdate" Core..= resourceARNUpdate)
          ]
      )
