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
-- Module      : Network.AWS.AppMesh.Types.MatchRange
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.MatchRange where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the range of values to match on. The first
-- character of the range is included in the range, though the last
-- character is not. For example, if the range specified were 1-100, only
-- values 1-99 would be matched.
--
-- /See:/ 'newMatchRange' smart constructor.
data MatchRange = MatchRange'
  { -- | The end of the range.
    end :: Prelude.Integer,
    -- | The start of the range.
    start :: Prelude.Integer
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MatchRange' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'end', 'matchRange_end' - The end of the range.
--
-- 'start', 'matchRange_start' - The start of the range.
newMatchRange ::
  -- | 'end'
  Prelude.Integer ->
  -- | 'start'
  Prelude.Integer ->
  MatchRange
newMatchRange pEnd_ pStart_ =
  MatchRange' {end = pEnd_, start = pStart_}

-- | The end of the range.
matchRange_end :: Lens.Lens' MatchRange Prelude.Integer
matchRange_end = Lens.lens (\MatchRange' {end} -> end) (\s@MatchRange' {} a -> s {end = a} :: MatchRange)

-- | The start of the range.
matchRange_start :: Lens.Lens' MatchRange Prelude.Integer
matchRange_start = Lens.lens (\MatchRange' {start} -> start) (\s@MatchRange' {} a -> s {start = a} :: MatchRange)

instance Core.FromJSON MatchRange where
  parseJSON =
    Core.withObject
      "MatchRange"
      ( \x ->
          MatchRange'
            Prelude.<$> (x Core..: "end") Prelude.<*> (x Core..: "start")
      )

instance Prelude.Hashable MatchRange

instance Prelude.NFData MatchRange

instance Core.ToJSON MatchRange where
  toJSON MatchRange' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("end" Core..= end),
            Prelude.Just ("start" Core..= start)
          ]
      )
