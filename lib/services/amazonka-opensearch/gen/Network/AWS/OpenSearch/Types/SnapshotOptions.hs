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
-- Module      : Network.AWS.OpenSearch.Types.SnapshotOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.SnapshotOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The time, in UTC format, when the service takes a daily automated
-- snapshot of the specified domain. Default is @0@ hours.
--
-- /See:/ 'newSnapshotOptions' smart constructor.
data SnapshotOptions = SnapshotOptions'
  { -- | The time, in UTC format, when the service takes a daily automated
    -- snapshot of the specified domain. Default is @0@ hours.
    automatedSnapshotStartHour :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnapshotOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'automatedSnapshotStartHour', 'snapshotOptions_automatedSnapshotStartHour' - The time, in UTC format, when the service takes a daily automated
-- snapshot of the specified domain. Default is @0@ hours.
newSnapshotOptions ::
  SnapshotOptions
newSnapshotOptions =
  SnapshotOptions'
    { automatedSnapshotStartHour =
        Prelude.Nothing
    }

-- | The time, in UTC format, when the service takes a daily automated
-- snapshot of the specified domain. Default is @0@ hours.
snapshotOptions_automatedSnapshotStartHour :: Lens.Lens' SnapshotOptions (Prelude.Maybe Prelude.Int)
snapshotOptions_automatedSnapshotStartHour = Lens.lens (\SnapshotOptions' {automatedSnapshotStartHour} -> automatedSnapshotStartHour) (\s@SnapshotOptions' {} a -> s {automatedSnapshotStartHour = a} :: SnapshotOptions)

instance Core.FromJSON SnapshotOptions where
  parseJSON =
    Core.withObject
      "SnapshotOptions"
      ( \x ->
          SnapshotOptions'
            Prelude.<$> (x Core..:? "AutomatedSnapshotStartHour")
      )

instance Prelude.Hashable SnapshotOptions

instance Prelude.NFData SnapshotOptions

instance Core.ToJSON SnapshotOptions where
  toJSON SnapshotOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AutomatedSnapshotStartHour" Core..=)
              Prelude.<$> automatedSnapshotStartHour
          ]
      )
