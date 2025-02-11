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
-- Module      : Network.AWS.CodeGuruProfiler.Types.ProfileTime
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.ProfileTime where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the start time of a profile.
--
-- /See:/ 'newProfileTime' smart constructor.
data ProfileTime = ProfileTime'
  { -- | The start time of a profile. It is specified using the ISO 8601 format.
    -- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
    -- 1, 2020 1:15:02 PM UTC.
    start :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProfileTime' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'start', 'profileTime_start' - The start time of a profile. It is specified using the ISO 8601 format.
-- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
-- 1, 2020 1:15:02 PM UTC.
newProfileTime ::
  ProfileTime
newProfileTime =
  ProfileTime' {start = Prelude.Nothing}

-- | The start time of a profile. It is specified using the ISO 8601 format.
-- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
-- 1, 2020 1:15:02 PM UTC.
profileTime_start :: Lens.Lens' ProfileTime (Prelude.Maybe Prelude.UTCTime)
profileTime_start = Lens.lens (\ProfileTime' {start} -> start) (\s@ProfileTime' {} a -> s {start = a} :: ProfileTime) Prelude.. Lens.mapping Core._Time

instance Core.FromJSON ProfileTime where
  parseJSON =
    Core.withObject
      "ProfileTime"
      ( \x ->
          ProfileTime' Prelude.<$> (x Core..:? "start")
      )

instance Prelude.Hashable ProfileTime

instance Prelude.NFData ProfileTime
