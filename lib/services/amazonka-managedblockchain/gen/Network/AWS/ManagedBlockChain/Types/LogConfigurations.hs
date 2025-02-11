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
-- Module      : Network.AWS.ManagedBlockChain.Types.LogConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ManagedBlockChain.Types.LogConfigurations where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.ManagedBlockChain.Types.LogConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | A collection of log configurations.
--
-- /See:/ 'newLogConfigurations' smart constructor.
data LogConfigurations = LogConfigurations'
  { -- | Parameters for publishing logs to Amazon CloudWatch Logs.
    cloudwatch :: Prelude.Maybe LogConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LogConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cloudwatch', 'logConfigurations_cloudwatch' - Parameters for publishing logs to Amazon CloudWatch Logs.
newLogConfigurations ::
  LogConfigurations
newLogConfigurations =
  LogConfigurations' {cloudwatch = Prelude.Nothing}

-- | Parameters for publishing logs to Amazon CloudWatch Logs.
logConfigurations_cloudwatch :: Lens.Lens' LogConfigurations (Prelude.Maybe LogConfiguration)
logConfigurations_cloudwatch = Lens.lens (\LogConfigurations' {cloudwatch} -> cloudwatch) (\s@LogConfigurations' {} a -> s {cloudwatch = a} :: LogConfigurations)

instance Core.FromJSON LogConfigurations where
  parseJSON =
    Core.withObject
      "LogConfigurations"
      ( \x ->
          LogConfigurations'
            Prelude.<$> (x Core..:? "Cloudwatch")
      )

instance Prelude.Hashable LogConfigurations

instance Prelude.NFData LogConfigurations

instance Core.ToJSON LogConfigurations where
  toJSON LogConfigurations' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Cloudwatch" Core..=) Prelude.<$> cloudwatch]
      )
