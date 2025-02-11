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
-- Module      : Network.AWS.SecurityHub.Types.IcmpTypeCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.IcmpTypeCode where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An Internet Control Message Protocol (ICMP) type and code.
--
-- /See:/ 'newIcmpTypeCode' smart constructor.
data IcmpTypeCode = IcmpTypeCode'
  { -- | The ICMP code for which to deny or allow access. To deny or allow all
    -- codes, use the value -1.
    code :: Prelude.Maybe Prelude.Int,
    -- | The ICMP type for which to deny or allow access. To deny or allow all
    -- types, use the value -1.
    type' :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IcmpTypeCode' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'code', 'icmpTypeCode_code' - The ICMP code for which to deny or allow access. To deny or allow all
-- codes, use the value -1.
--
-- 'type'', 'icmpTypeCode_type' - The ICMP type for which to deny or allow access. To deny or allow all
-- types, use the value -1.
newIcmpTypeCode ::
  IcmpTypeCode
newIcmpTypeCode =
  IcmpTypeCode'
    { code = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The ICMP code for which to deny or allow access. To deny or allow all
-- codes, use the value -1.
icmpTypeCode_code :: Lens.Lens' IcmpTypeCode (Prelude.Maybe Prelude.Int)
icmpTypeCode_code = Lens.lens (\IcmpTypeCode' {code} -> code) (\s@IcmpTypeCode' {} a -> s {code = a} :: IcmpTypeCode)

-- | The ICMP type for which to deny or allow access. To deny or allow all
-- types, use the value -1.
icmpTypeCode_type :: Lens.Lens' IcmpTypeCode (Prelude.Maybe Prelude.Int)
icmpTypeCode_type = Lens.lens (\IcmpTypeCode' {type'} -> type') (\s@IcmpTypeCode' {} a -> s {type' = a} :: IcmpTypeCode)

instance Core.FromJSON IcmpTypeCode where
  parseJSON =
    Core.withObject
      "IcmpTypeCode"
      ( \x ->
          IcmpTypeCode'
            Prelude.<$> (x Core..:? "Code") Prelude.<*> (x Core..:? "Type")
      )

instance Prelude.Hashable IcmpTypeCode

instance Prelude.NFData IcmpTypeCode

instance Core.ToJSON IcmpTypeCode where
  toJSON IcmpTypeCode' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Code" Core..=) Prelude.<$> code,
            ("Type" Core..=) Prelude.<$> type'
          ]
      )
