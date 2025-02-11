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
-- Module      : Network.AWS.Neptune.Types.CloudwatchLogsExportConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Neptune.Types.CloudwatchLogsExportConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The configuration setting for the log types to be enabled for export to
-- CloudWatch Logs for a specific DB instance or DB cluster.
--
-- The @EnableLogTypes@ and @DisableLogTypes@ arrays determine which logs
-- will be exported (or not exported) to CloudWatch Logs.
--
-- /See:/ 'newCloudwatchLogsExportConfiguration' smart constructor.
data CloudwatchLogsExportConfiguration = CloudwatchLogsExportConfiguration'
  { -- | The list of log types to disable.
    disableLogTypes :: Prelude.Maybe [Prelude.Text],
    -- | The list of log types to enable.
    enableLogTypes :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudwatchLogsExportConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'disableLogTypes', 'cloudwatchLogsExportConfiguration_disableLogTypes' - The list of log types to disable.
--
-- 'enableLogTypes', 'cloudwatchLogsExportConfiguration_enableLogTypes' - The list of log types to enable.
newCloudwatchLogsExportConfiguration ::
  CloudwatchLogsExportConfiguration
newCloudwatchLogsExportConfiguration =
  CloudwatchLogsExportConfiguration'
    { disableLogTypes =
        Prelude.Nothing,
      enableLogTypes = Prelude.Nothing
    }

-- | The list of log types to disable.
cloudwatchLogsExportConfiguration_disableLogTypes :: Lens.Lens' CloudwatchLogsExportConfiguration (Prelude.Maybe [Prelude.Text])
cloudwatchLogsExportConfiguration_disableLogTypes = Lens.lens (\CloudwatchLogsExportConfiguration' {disableLogTypes} -> disableLogTypes) (\s@CloudwatchLogsExportConfiguration' {} a -> s {disableLogTypes = a} :: CloudwatchLogsExportConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The list of log types to enable.
cloudwatchLogsExportConfiguration_enableLogTypes :: Lens.Lens' CloudwatchLogsExportConfiguration (Prelude.Maybe [Prelude.Text])
cloudwatchLogsExportConfiguration_enableLogTypes = Lens.lens (\CloudwatchLogsExportConfiguration' {enableLogTypes} -> enableLogTypes) (\s@CloudwatchLogsExportConfiguration' {} a -> s {enableLogTypes = a} :: CloudwatchLogsExportConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Prelude.Hashable
    CloudwatchLogsExportConfiguration

instance
  Prelude.NFData
    CloudwatchLogsExportConfiguration

instance
  Core.ToQuery
    CloudwatchLogsExportConfiguration
  where
  toQuery CloudwatchLogsExportConfiguration' {..} =
    Prelude.mconcat
      [ "DisableLogTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> disableLogTypes
            ),
        "EnableLogTypes"
          Core.=: Core.toQuery
            ( Core.toQueryList "member"
                Prelude.<$> enableLogTypes
            )
      ]
