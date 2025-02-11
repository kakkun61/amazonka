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
-- Module      : Network.AWS.MacieV2.Types.DailySchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.DailySchedule where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Specifies that a classification job runs once a day, every day. This is
-- an empty object.
--
-- /See:/ 'newDailySchedule' smart constructor.
data DailySchedule = DailySchedule'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DailySchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDailySchedule ::
  DailySchedule
newDailySchedule = DailySchedule'

instance Core.FromJSON DailySchedule where
  parseJSON =
    Core.withObject
      "DailySchedule"
      (\x -> Prelude.pure DailySchedule')

instance Prelude.Hashable DailySchedule

instance Prelude.NFData DailySchedule

instance Core.ToJSON DailySchedule where
  toJSON = Prelude.const (Core.Object Prelude.mempty)
