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
-- Module      : Network.AWS.S3.Types.DefaultRetention
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.DefaultRetention where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ObjectLockRetentionMode

-- | The container element for specifying the default Object Lock retention
-- settings for new objects placed in the specified bucket.
--
-- -   The @DefaultRetention@ settings require both a mode and a period.
--
-- -   The @DefaultRetention@ period can be either @Days@ or @Years@ but
--     you must select one. You cannot specify @Days@ and @Years@ at the
--     same time.
--
-- /See:/ 'newDefaultRetention' smart constructor.
data DefaultRetention = DefaultRetention'
  { -- | The number of days that you want to specify for the default retention
    -- period. Must be used with @Mode@.
    days :: Prelude.Maybe Prelude.Int,
    -- | The default Object Lock retention mode you want to apply to new objects
    -- placed in the specified bucket. Must be used with either @Days@ or
    -- @Years@.
    mode :: Prelude.Maybe ObjectLockRetentionMode,
    -- | The number of years that you want to specify for the default retention
    -- period. Must be used with @Mode@.
    years :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DefaultRetention' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'days', 'defaultRetention_days' - The number of days that you want to specify for the default retention
-- period. Must be used with @Mode@.
--
-- 'mode', 'defaultRetention_mode' - The default Object Lock retention mode you want to apply to new objects
-- placed in the specified bucket. Must be used with either @Days@ or
-- @Years@.
--
-- 'years', 'defaultRetention_years' - The number of years that you want to specify for the default retention
-- period. Must be used with @Mode@.
newDefaultRetention ::
  DefaultRetention
newDefaultRetention =
  DefaultRetention'
    { days = Prelude.Nothing,
      mode = Prelude.Nothing,
      years = Prelude.Nothing
    }

-- | The number of days that you want to specify for the default retention
-- period. Must be used with @Mode@.
defaultRetention_days :: Lens.Lens' DefaultRetention (Prelude.Maybe Prelude.Int)
defaultRetention_days = Lens.lens (\DefaultRetention' {days} -> days) (\s@DefaultRetention' {} a -> s {days = a} :: DefaultRetention)

-- | The default Object Lock retention mode you want to apply to new objects
-- placed in the specified bucket. Must be used with either @Days@ or
-- @Years@.
defaultRetention_mode :: Lens.Lens' DefaultRetention (Prelude.Maybe ObjectLockRetentionMode)
defaultRetention_mode = Lens.lens (\DefaultRetention' {mode} -> mode) (\s@DefaultRetention' {} a -> s {mode = a} :: DefaultRetention)

-- | The number of years that you want to specify for the default retention
-- period. Must be used with @Mode@.
defaultRetention_years :: Lens.Lens' DefaultRetention (Prelude.Maybe Prelude.Int)
defaultRetention_years = Lens.lens (\DefaultRetention' {years} -> years) (\s@DefaultRetention' {} a -> s {years = a} :: DefaultRetention)

instance Core.FromXML DefaultRetention where
  parseXML x =
    DefaultRetention'
      Prelude.<$> (x Core..@? "Days")
      Prelude.<*> (x Core..@? "Mode")
      Prelude.<*> (x Core..@? "Years")

instance Prelude.Hashable DefaultRetention

instance Prelude.NFData DefaultRetention

instance Core.ToXML DefaultRetention where
  toXML DefaultRetention' {..} =
    Prelude.mconcat
      [ "Days" Core.@= days,
        "Mode" Core.@= mode,
        "Years" Core.@= years
      ]
