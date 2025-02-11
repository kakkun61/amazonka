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
-- Module      : Network.AWS.RobOMaker.Types.LoggingConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.LoggingConfig where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The logging configuration.
--
-- /See:/ 'newLoggingConfig' smart constructor.
data LoggingConfig = LoggingConfig'
  { -- | A boolean indicating whether to record all ROS topics.
    recordAllRosTopics :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LoggingConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'recordAllRosTopics', 'loggingConfig_recordAllRosTopics' - A boolean indicating whether to record all ROS topics.
newLoggingConfig ::
  -- | 'recordAllRosTopics'
  Prelude.Bool ->
  LoggingConfig
newLoggingConfig pRecordAllRosTopics_ =
  LoggingConfig'
    { recordAllRosTopics =
        pRecordAllRosTopics_
    }

-- | A boolean indicating whether to record all ROS topics.
loggingConfig_recordAllRosTopics :: Lens.Lens' LoggingConfig Prelude.Bool
loggingConfig_recordAllRosTopics = Lens.lens (\LoggingConfig' {recordAllRosTopics} -> recordAllRosTopics) (\s@LoggingConfig' {} a -> s {recordAllRosTopics = a} :: LoggingConfig)

instance Core.FromJSON LoggingConfig where
  parseJSON =
    Core.withObject
      "LoggingConfig"
      ( \x ->
          LoggingConfig'
            Prelude.<$> (x Core..: "recordAllRosTopics")
      )

instance Prelude.Hashable LoggingConfig

instance Prelude.NFData LoggingConfig

instance Core.ToJSON LoggingConfig where
  toJSON LoggingConfig' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("recordAllRosTopics" Core..= recordAllRosTopics)
          ]
      )
