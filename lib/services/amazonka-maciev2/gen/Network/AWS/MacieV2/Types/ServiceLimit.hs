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
-- Module      : Network.AWS.MacieV2.Types.ServiceLimit
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.ServiceLimit where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.Unit
import qualified Network.AWS.Prelude as Prelude

-- | Specifies a current quota for an Amazon Macie account.
--
-- /See:/ 'newServiceLimit' smart constructor.
data ServiceLimit = ServiceLimit'
  { -- | Specifies whether the account has met the quota that corresponds to the
    -- metric specified by the UsageByAccount.type field in the response.
    isServiceLimited :: Prelude.Maybe Prelude.Bool,
    -- | The value for the metric specified by the UsageByAccount.type field in
    -- the response.
    value :: Prelude.Maybe Prelude.Integer,
    -- | The unit of measurement for the value specified by the value field.
    unit :: Prelude.Maybe Unit
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceLimit' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isServiceLimited', 'serviceLimit_isServiceLimited' - Specifies whether the account has met the quota that corresponds to the
-- metric specified by the UsageByAccount.type field in the response.
--
-- 'value', 'serviceLimit_value' - The value for the metric specified by the UsageByAccount.type field in
-- the response.
--
-- 'unit', 'serviceLimit_unit' - The unit of measurement for the value specified by the value field.
newServiceLimit ::
  ServiceLimit
newServiceLimit =
  ServiceLimit'
    { isServiceLimited = Prelude.Nothing,
      value = Prelude.Nothing,
      unit = Prelude.Nothing
    }

-- | Specifies whether the account has met the quota that corresponds to the
-- metric specified by the UsageByAccount.type field in the response.
serviceLimit_isServiceLimited :: Lens.Lens' ServiceLimit (Prelude.Maybe Prelude.Bool)
serviceLimit_isServiceLimited = Lens.lens (\ServiceLimit' {isServiceLimited} -> isServiceLimited) (\s@ServiceLimit' {} a -> s {isServiceLimited = a} :: ServiceLimit)

-- | The value for the metric specified by the UsageByAccount.type field in
-- the response.
serviceLimit_value :: Lens.Lens' ServiceLimit (Prelude.Maybe Prelude.Integer)
serviceLimit_value = Lens.lens (\ServiceLimit' {value} -> value) (\s@ServiceLimit' {} a -> s {value = a} :: ServiceLimit)

-- | The unit of measurement for the value specified by the value field.
serviceLimit_unit :: Lens.Lens' ServiceLimit (Prelude.Maybe Unit)
serviceLimit_unit = Lens.lens (\ServiceLimit' {unit} -> unit) (\s@ServiceLimit' {} a -> s {unit = a} :: ServiceLimit)

instance Core.FromJSON ServiceLimit where
  parseJSON =
    Core.withObject
      "ServiceLimit"
      ( \x ->
          ServiceLimit'
            Prelude.<$> (x Core..:? "isServiceLimited")
            Prelude.<*> (x Core..:? "value")
            Prelude.<*> (x Core..:? "unit")
      )

instance Prelude.Hashable ServiceLimit

instance Prelude.NFData ServiceLimit
