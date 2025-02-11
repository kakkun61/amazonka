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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseInputUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseInputUpdate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | For a SQL-based Kinesis Data Analytics application, when updating
-- application input configuration, provides information about a Kinesis
-- Data Firehose delivery stream as the streaming source.
--
-- /See:/ 'newKinesisFirehoseInputUpdate' smart constructor.
data KinesisFirehoseInputUpdate = KinesisFirehoseInputUpdate'
  { -- | The Amazon Resource Name (ARN) of the input delivery stream to read.
    resourceARNUpdate :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KinesisFirehoseInputUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARNUpdate', 'kinesisFirehoseInputUpdate_resourceARNUpdate' - The Amazon Resource Name (ARN) of the input delivery stream to read.
newKinesisFirehoseInputUpdate ::
  -- | 'resourceARNUpdate'
  Prelude.Text ->
  KinesisFirehoseInputUpdate
newKinesisFirehoseInputUpdate pResourceARNUpdate_ =
  KinesisFirehoseInputUpdate'
    { resourceARNUpdate =
        pResourceARNUpdate_
    }

-- | The Amazon Resource Name (ARN) of the input delivery stream to read.
kinesisFirehoseInputUpdate_resourceARNUpdate :: Lens.Lens' KinesisFirehoseInputUpdate Prelude.Text
kinesisFirehoseInputUpdate_resourceARNUpdate = Lens.lens (\KinesisFirehoseInputUpdate' {resourceARNUpdate} -> resourceARNUpdate) (\s@KinesisFirehoseInputUpdate' {} a -> s {resourceARNUpdate = a} :: KinesisFirehoseInputUpdate)

instance Prelude.Hashable KinesisFirehoseInputUpdate

instance Prelude.NFData KinesisFirehoseInputUpdate

instance Core.ToJSON KinesisFirehoseInputUpdate where
  toJSON KinesisFirehoseInputUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceARNUpdate" Core..= resourceARNUpdate)
          ]
      )
