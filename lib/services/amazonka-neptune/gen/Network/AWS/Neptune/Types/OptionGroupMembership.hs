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
-- Module      : Network.AWS.Neptune.Types.OptionGroupMembership
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Neptune.Types.OptionGroupMembership where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Not supported by Neptune.
--
-- /See:/ 'newOptionGroupMembership' smart constructor.
data OptionGroupMembership = OptionGroupMembership'
  { -- | Not supported by Neptune.
    status :: Prelude.Maybe Prelude.Text,
    -- | Not supported by Neptune.
    optionGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'OptionGroupMembership' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'optionGroupMembership_status' - Not supported by Neptune.
--
-- 'optionGroupName', 'optionGroupMembership_optionGroupName' - Not supported by Neptune.
newOptionGroupMembership ::
  OptionGroupMembership
newOptionGroupMembership =
  OptionGroupMembership'
    { status = Prelude.Nothing,
      optionGroupName = Prelude.Nothing
    }

-- | Not supported by Neptune.
optionGroupMembership_status :: Lens.Lens' OptionGroupMembership (Prelude.Maybe Prelude.Text)
optionGroupMembership_status = Lens.lens (\OptionGroupMembership' {status} -> status) (\s@OptionGroupMembership' {} a -> s {status = a} :: OptionGroupMembership)

-- | Not supported by Neptune.
optionGroupMembership_optionGroupName :: Lens.Lens' OptionGroupMembership (Prelude.Maybe Prelude.Text)
optionGroupMembership_optionGroupName = Lens.lens (\OptionGroupMembership' {optionGroupName} -> optionGroupName) (\s@OptionGroupMembership' {} a -> s {optionGroupName = a} :: OptionGroupMembership)

instance Core.FromXML OptionGroupMembership where
  parseXML x =
    OptionGroupMembership'
      Prelude.<$> (x Core..@? "Status")
      Prelude.<*> (x Core..@? "OptionGroupName")

instance Prelude.Hashable OptionGroupMembership

instance Prelude.NFData OptionGroupMembership
