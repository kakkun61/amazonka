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
-- Module      : Network.AWS.MediaConnect.Types.VpcInterfaceAttachment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConnect.Types.VpcInterfaceAttachment where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The settings for attaching a VPC interface to an output.
--
-- /See:/ 'newVpcInterfaceAttachment' smart constructor.
data VpcInterfaceAttachment = VpcInterfaceAttachment'
  { -- | The name of the VPC interface to use for this output.
    vpcInterfaceName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'VpcInterfaceAttachment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'vpcInterfaceName', 'vpcInterfaceAttachment_vpcInterfaceName' - The name of the VPC interface to use for this output.
newVpcInterfaceAttachment ::
  VpcInterfaceAttachment
newVpcInterfaceAttachment =
  VpcInterfaceAttachment'
    { vpcInterfaceName =
        Prelude.Nothing
    }

-- | The name of the VPC interface to use for this output.
vpcInterfaceAttachment_vpcInterfaceName :: Lens.Lens' VpcInterfaceAttachment (Prelude.Maybe Prelude.Text)
vpcInterfaceAttachment_vpcInterfaceName = Lens.lens (\VpcInterfaceAttachment' {vpcInterfaceName} -> vpcInterfaceName) (\s@VpcInterfaceAttachment' {} a -> s {vpcInterfaceName = a} :: VpcInterfaceAttachment)

instance Core.FromJSON VpcInterfaceAttachment where
  parseJSON =
    Core.withObject
      "VpcInterfaceAttachment"
      ( \x ->
          VpcInterfaceAttachment'
            Prelude.<$> (x Core..:? "vpcInterfaceName")
      )

instance Prelude.Hashable VpcInterfaceAttachment

instance Prelude.NFData VpcInterfaceAttachment

instance Core.ToJSON VpcInterfaceAttachment where
  toJSON VpcInterfaceAttachment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("vpcInterfaceName" Core..=)
              Prelude.<$> vpcInterfaceName
          ]
      )
