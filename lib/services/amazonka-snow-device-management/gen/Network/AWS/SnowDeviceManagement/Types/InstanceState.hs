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
-- Module      : Network.AWS.SnowDeviceManagement.Types.InstanceState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SnowDeviceManagement.Types.InstanceState where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SnowDeviceManagement.Types.InstanceStateName

-- | The description of the current state of an instance.
--
-- /See:/ 'newInstanceState' smart constructor.
data InstanceState = InstanceState'
  { -- | The current state of the instance.
    name :: Prelude.Maybe InstanceStateName,
    -- | The state of the instance as a 16-bit unsigned integer.
    --
    -- The high byte is all of the bits between 2^8 and (2^16)-1, which equals
    -- decimal values between 256 and 65,535. These numerical values are used
    -- for internal purposes and should be ignored.
    --
    -- The low byte is all of the bits between 2^0 and (2^8)-1, which equals
    -- decimal values between 0 and 255.
    --
    -- The valid values for the instance state code are all in the range of the
    -- low byte. These values are:
    --
    -- -   @0@ : @pending@
    --
    -- -   @16@ : @running@
    --
    -- -   @32@ : @shutting-down@
    --
    -- -   @48@ : @terminated@
    --
    -- -   @64@ : @stopping@
    --
    -- -   @80@ : @stopped@
    --
    -- You can ignore the high byte value by zeroing out all of the bits above
    -- 2^8 or 256 in decimal.
    code :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'instanceState_name' - The current state of the instance.
--
-- 'code', 'instanceState_code' - The state of the instance as a 16-bit unsigned integer.
--
-- The high byte is all of the bits between 2^8 and (2^16)-1, which equals
-- decimal values between 256 and 65,535. These numerical values are used
-- for internal purposes and should be ignored.
--
-- The low byte is all of the bits between 2^0 and (2^8)-1, which equals
-- decimal values between 0 and 255.
--
-- The valid values for the instance state code are all in the range of the
-- low byte. These values are:
--
-- -   @0@ : @pending@
--
-- -   @16@ : @running@
--
-- -   @32@ : @shutting-down@
--
-- -   @48@ : @terminated@
--
-- -   @64@ : @stopping@
--
-- -   @80@ : @stopped@
--
-- You can ignore the high byte value by zeroing out all of the bits above
-- 2^8 or 256 in decimal.
newInstanceState ::
  InstanceState
newInstanceState =
  InstanceState'
    { name = Prelude.Nothing,
      code = Prelude.Nothing
    }

-- | The current state of the instance.
instanceState_name :: Lens.Lens' InstanceState (Prelude.Maybe InstanceStateName)
instanceState_name = Lens.lens (\InstanceState' {name} -> name) (\s@InstanceState' {} a -> s {name = a} :: InstanceState)

-- | The state of the instance as a 16-bit unsigned integer.
--
-- The high byte is all of the bits between 2^8 and (2^16)-1, which equals
-- decimal values between 256 and 65,535. These numerical values are used
-- for internal purposes and should be ignored.
--
-- The low byte is all of the bits between 2^0 and (2^8)-1, which equals
-- decimal values between 0 and 255.
--
-- The valid values for the instance state code are all in the range of the
-- low byte. These values are:
--
-- -   @0@ : @pending@
--
-- -   @16@ : @running@
--
-- -   @32@ : @shutting-down@
--
-- -   @48@ : @terminated@
--
-- -   @64@ : @stopping@
--
-- -   @80@ : @stopped@
--
-- You can ignore the high byte value by zeroing out all of the bits above
-- 2^8 or 256 in decimal.
instanceState_code :: Lens.Lens' InstanceState (Prelude.Maybe Prelude.Int)
instanceState_code = Lens.lens (\InstanceState' {code} -> code) (\s@InstanceState' {} a -> s {code = a} :: InstanceState)

instance Core.FromJSON InstanceState where
  parseJSON =
    Core.withObject
      "InstanceState"
      ( \x ->
          InstanceState'
            Prelude.<$> (x Core..:? "name") Prelude.<*> (x Core..:? "code")
      )

instance Prelude.Hashable InstanceState

instance Prelude.NFData InstanceState
