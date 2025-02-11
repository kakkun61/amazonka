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
-- Module      : Network.AWS.MemoryDb.Types.ShardConfigurationRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MemoryDb.Types.ShardConfigurationRequest where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A request to configure the sharding properties of a cluster
--
-- /See:/ 'newShardConfigurationRequest' smart constructor.
data ShardConfigurationRequest = ShardConfigurationRequest'
  { -- | The number of shards in the cluster
    shardCount :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ShardConfigurationRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'shardCount', 'shardConfigurationRequest_shardCount' - The number of shards in the cluster
newShardConfigurationRequest ::
  ShardConfigurationRequest
newShardConfigurationRequest =
  ShardConfigurationRequest'
    { shardCount =
        Prelude.Nothing
    }

-- | The number of shards in the cluster
shardConfigurationRequest_shardCount :: Lens.Lens' ShardConfigurationRequest (Prelude.Maybe Prelude.Int)
shardConfigurationRequest_shardCount = Lens.lens (\ShardConfigurationRequest' {shardCount} -> shardCount) (\s@ShardConfigurationRequest' {} a -> s {shardCount = a} :: ShardConfigurationRequest)

instance Prelude.Hashable ShardConfigurationRequest

instance Prelude.NFData ShardConfigurationRequest

instance Core.ToJSON ShardConfigurationRequest where
  toJSON ShardConfigurationRequest' {..} =
    Core.object
      ( Prelude.catMaybes
          [("ShardCount" Core..=) Prelude.<$> shardCount]
      )
