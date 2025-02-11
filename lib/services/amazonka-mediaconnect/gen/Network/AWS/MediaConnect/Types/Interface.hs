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
-- Module      : Network.AWS.MediaConnect.Types.Interface
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.Interface where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The VPC interface that is used for the media stream associated with the
-- source or output.
--
-- /See:/ 'newInterface' smart constructor.
data Interface = Interface'
  { -- | The name of the VPC interface.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Interface' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'interface_name' - The name of the VPC interface.
newInterface ::
  -- | 'name'
  Prelude.Text ->
  Interface
newInterface pName_ = Interface' {name = pName_}

-- | The name of the VPC interface.
interface_name :: Lens.Lens' Interface Prelude.Text
interface_name = Lens.lens (\Interface' {name} -> name) (\s@Interface' {} a -> s {name = a} :: Interface)

instance Core.FromJSON Interface where
  parseJSON =
    Core.withObject
      "Interface"
      (\x -> Interface' Prelude.<$> (x Core..: "name"))

instance Prelude.Hashable Interface

instance Prelude.NFData Interface
