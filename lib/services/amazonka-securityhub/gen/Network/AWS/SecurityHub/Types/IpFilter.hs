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
-- Module      : Network.AWS.SecurityHub.Types.IpFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.IpFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The IP filter for querying findings.
--
-- /See:/ 'newIpFilter' smart constructor.
data IpFilter = IpFilter'
  { -- | A finding\'s CIDR value.
    cidr :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'IpFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'cidr', 'ipFilter_cidr' - A finding\'s CIDR value.
newIpFilter ::
  IpFilter
newIpFilter = IpFilter' {cidr = Prelude.Nothing}

-- | A finding\'s CIDR value.
ipFilter_cidr :: Lens.Lens' IpFilter (Prelude.Maybe Prelude.Text)
ipFilter_cidr = Lens.lens (\IpFilter' {cidr} -> cidr) (\s@IpFilter' {} a -> s {cidr = a} :: IpFilter)

instance Core.FromJSON IpFilter where
  parseJSON =
    Core.withObject
      "IpFilter"
      (\x -> IpFilter' Prelude.<$> (x Core..:? "Cidr"))

instance Prelude.Hashable IpFilter

instance Prelude.NFData IpFilter

instance Core.ToJSON IpFilter where
  toJSON IpFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Cidr" Core..=) Prelude.<$> cidr]
      )
