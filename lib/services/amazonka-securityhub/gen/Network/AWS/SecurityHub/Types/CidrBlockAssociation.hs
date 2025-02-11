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
-- Module      : Network.AWS.SecurityHub.Types.CidrBlockAssociation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.CidrBlockAssociation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An IPv4 CIDR block association.
--
-- /See:/ 'newCidrBlockAssociation' smart constructor.
data CidrBlockAssociation = CidrBlockAssociation'
  { -- | The association ID for the IPv4 CIDR block.
    associationId :: Prelude.Maybe Prelude.Text,
    -- | Information about the state of the IPv4 CIDR block.
    cidrBlockState :: Prelude.Maybe Prelude.Text,
    -- | The IPv4 CIDR block.
    cidrBlock :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CidrBlockAssociation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'associationId', 'cidrBlockAssociation_associationId' - The association ID for the IPv4 CIDR block.
--
-- 'cidrBlockState', 'cidrBlockAssociation_cidrBlockState' - Information about the state of the IPv4 CIDR block.
--
-- 'cidrBlock', 'cidrBlockAssociation_cidrBlock' - The IPv4 CIDR block.
newCidrBlockAssociation ::
  CidrBlockAssociation
newCidrBlockAssociation =
  CidrBlockAssociation'
    { associationId =
        Prelude.Nothing,
      cidrBlockState = Prelude.Nothing,
      cidrBlock = Prelude.Nothing
    }

-- | The association ID for the IPv4 CIDR block.
cidrBlockAssociation_associationId :: Lens.Lens' CidrBlockAssociation (Prelude.Maybe Prelude.Text)
cidrBlockAssociation_associationId = Lens.lens (\CidrBlockAssociation' {associationId} -> associationId) (\s@CidrBlockAssociation' {} a -> s {associationId = a} :: CidrBlockAssociation)

-- | Information about the state of the IPv4 CIDR block.
cidrBlockAssociation_cidrBlockState :: Lens.Lens' CidrBlockAssociation (Prelude.Maybe Prelude.Text)
cidrBlockAssociation_cidrBlockState = Lens.lens (\CidrBlockAssociation' {cidrBlockState} -> cidrBlockState) (\s@CidrBlockAssociation' {} a -> s {cidrBlockState = a} :: CidrBlockAssociation)

-- | The IPv4 CIDR block.
cidrBlockAssociation_cidrBlock :: Lens.Lens' CidrBlockAssociation (Prelude.Maybe Prelude.Text)
cidrBlockAssociation_cidrBlock = Lens.lens (\CidrBlockAssociation' {cidrBlock} -> cidrBlock) (\s@CidrBlockAssociation' {} a -> s {cidrBlock = a} :: CidrBlockAssociation)

instance Core.FromJSON CidrBlockAssociation where
  parseJSON =
    Core.withObject
      "CidrBlockAssociation"
      ( \x ->
          CidrBlockAssociation'
            Prelude.<$> (x Core..:? "AssociationId")
            Prelude.<*> (x Core..:? "CidrBlockState")
            Prelude.<*> (x Core..:? "CidrBlock")
      )

instance Prelude.Hashable CidrBlockAssociation

instance Prelude.NFData CidrBlockAssociation

instance Core.ToJSON CidrBlockAssociation where
  toJSON CidrBlockAssociation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AssociationId" Core..=) Prelude.<$> associationId,
            ("CidrBlockState" Core..=)
              Prelude.<$> cidrBlockState,
            ("CidrBlock" Core..=) Prelude.<$> cidrBlock
          ]
      )
