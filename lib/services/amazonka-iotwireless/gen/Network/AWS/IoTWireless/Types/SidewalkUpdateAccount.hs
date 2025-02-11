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
-- Module      : Network.AWS.IoTWireless.Types.SidewalkUpdateAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTWireless.Types.SidewalkUpdateAccount where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Sidewalk update.
--
-- /See:/ 'newSidewalkUpdateAccount' smart constructor.
data SidewalkUpdateAccount = SidewalkUpdateAccount'
  { -- | The new Sidewalk application server private key.
    appServerPrivateKey :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SidewalkUpdateAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appServerPrivateKey', 'sidewalkUpdateAccount_appServerPrivateKey' - The new Sidewalk application server private key.
newSidewalkUpdateAccount ::
  SidewalkUpdateAccount
newSidewalkUpdateAccount =
  SidewalkUpdateAccount'
    { appServerPrivateKey =
        Prelude.Nothing
    }

-- | The new Sidewalk application server private key.
sidewalkUpdateAccount_appServerPrivateKey :: Lens.Lens' SidewalkUpdateAccount (Prelude.Maybe Prelude.Text)
sidewalkUpdateAccount_appServerPrivateKey = Lens.lens (\SidewalkUpdateAccount' {appServerPrivateKey} -> appServerPrivateKey) (\s@SidewalkUpdateAccount' {} a -> s {appServerPrivateKey = a} :: SidewalkUpdateAccount) Prelude.. Lens.mapping Core._Sensitive

instance Prelude.Hashable SidewalkUpdateAccount

instance Prelude.NFData SidewalkUpdateAccount

instance Core.ToJSON SidewalkUpdateAccount where
  toJSON SidewalkUpdateAccount' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AppServerPrivateKey" Core..=)
              Prelude.<$> appServerPrivateKey
          ]
      )
