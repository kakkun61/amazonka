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
-- Module      : Network.AWS.CodeGuruProfiler.Types.Match
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.Match where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The part of a profile that contains a recommendation found during
-- analysis.
--
-- /See:/ 'newMatch' smart constructor.
data Match = Match'
  { -- | The value in the profile data that exceeded the recommendation
    -- threshold.
    thresholdBreachValue :: Prelude.Maybe Prelude.Double,
    -- | The location in the profiling graph that contains a recommendation found
    -- during analysis.
    frameAddress :: Prelude.Maybe Prelude.Text,
    -- | The target frame that triggered a match.
    targetFramesIndex :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Match' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thresholdBreachValue', 'match_thresholdBreachValue' - The value in the profile data that exceeded the recommendation
-- threshold.
--
-- 'frameAddress', 'match_frameAddress' - The location in the profiling graph that contains a recommendation found
-- during analysis.
--
-- 'targetFramesIndex', 'match_targetFramesIndex' - The target frame that triggered a match.
newMatch ::
  Match
newMatch =
  Match'
    { thresholdBreachValue = Prelude.Nothing,
      frameAddress = Prelude.Nothing,
      targetFramesIndex = Prelude.Nothing
    }

-- | The value in the profile data that exceeded the recommendation
-- threshold.
match_thresholdBreachValue :: Lens.Lens' Match (Prelude.Maybe Prelude.Double)
match_thresholdBreachValue = Lens.lens (\Match' {thresholdBreachValue} -> thresholdBreachValue) (\s@Match' {} a -> s {thresholdBreachValue = a} :: Match)

-- | The location in the profiling graph that contains a recommendation found
-- during analysis.
match_frameAddress :: Lens.Lens' Match (Prelude.Maybe Prelude.Text)
match_frameAddress = Lens.lens (\Match' {frameAddress} -> frameAddress) (\s@Match' {} a -> s {frameAddress = a} :: Match)

-- | The target frame that triggered a match.
match_targetFramesIndex :: Lens.Lens' Match (Prelude.Maybe Prelude.Int)
match_targetFramesIndex = Lens.lens (\Match' {targetFramesIndex} -> targetFramesIndex) (\s@Match' {} a -> s {targetFramesIndex = a} :: Match)

instance Core.FromJSON Match where
  parseJSON =
    Core.withObject
      "Match"
      ( \x ->
          Match'
            Prelude.<$> (x Core..:? "thresholdBreachValue")
            Prelude.<*> (x Core..:? "frameAddress")
            Prelude.<*> (x Core..:? "targetFramesIndex")
      )

instance Prelude.Hashable Match

instance Prelude.NFData Match
