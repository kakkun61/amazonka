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
-- Module      : Network.AWS.CodeGuruProfiler.Types.TimestampStructure
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.TimestampStructure where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A data type that contains a @Timestamp@ object. This is specified using
-- the ISO 8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
-- millisecond past June 1, 2020 1:15:02 PM UTC.
--
-- /See:/ 'newTimestampStructure' smart constructor.
data TimestampStructure = TimestampStructure'
  { -- | A @Timestamp@. This is specified using the ISO 8601 format. For example,
    -- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    -- 1:15:02 PM UTC.
    value :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TimestampStructure' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'timestampStructure_value' - A @Timestamp@. This is specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
newTimestampStructure ::
  -- | 'value'
  Prelude.UTCTime ->
  TimestampStructure
newTimestampStructure pValue_ =
  TimestampStructure'
    { value =
        Core._Time Lens.# pValue_
    }

-- | A @Timestamp@. This is specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
timestampStructure_value :: Lens.Lens' TimestampStructure Prelude.UTCTime
timestampStructure_value = Lens.lens (\TimestampStructure' {value} -> value) (\s@TimestampStructure' {} a -> s {value = a} :: TimestampStructure) Prelude.. Core._Time

instance Core.FromJSON TimestampStructure where
  parseJSON =
    Core.withObject
      "TimestampStructure"
      ( \x ->
          TimestampStructure' Prelude.<$> (x Core..: "value")
      )

instance Prelude.Hashable TimestampStructure

instance Prelude.NFData TimestampStructure
