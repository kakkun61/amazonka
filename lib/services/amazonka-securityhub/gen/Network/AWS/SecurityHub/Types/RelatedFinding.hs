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
-- Module      : Network.AWS.SecurityHub.Types.RelatedFinding
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.RelatedFinding where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details about a related finding.
--
-- /See:/ 'newRelatedFinding' smart constructor.
data RelatedFinding = RelatedFinding'
  { -- | The ARN of the product that generated a related finding.
    productArn :: Prelude.Text,
    -- | The product-generated identifier for a related finding.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RelatedFinding' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'productArn', 'relatedFinding_productArn' - The ARN of the product that generated a related finding.
--
-- 'id', 'relatedFinding_id' - The product-generated identifier for a related finding.
newRelatedFinding ::
  -- | 'productArn'
  Prelude.Text ->
  -- | 'id'
  Prelude.Text ->
  RelatedFinding
newRelatedFinding pProductArn_ pId_ =
  RelatedFinding'
    { productArn = pProductArn_,
      id = pId_
    }

-- | The ARN of the product that generated a related finding.
relatedFinding_productArn :: Lens.Lens' RelatedFinding Prelude.Text
relatedFinding_productArn = Lens.lens (\RelatedFinding' {productArn} -> productArn) (\s@RelatedFinding' {} a -> s {productArn = a} :: RelatedFinding)

-- | The product-generated identifier for a related finding.
relatedFinding_id :: Lens.Lens' RelatedFinding Prelude.Text
relatedFinding_id = Lens.lens (\RelatedFinding' {id} -> id) (\s@RelatedFinding' {} a -> s {id = a} :: RelatedFinding)

instance Core.FromJSON RelatedFinding where
  parseJSON =
    Core.withObject
      "RelatedFinding"
      ( \x ->
          RelatedFinding'
            Prelude.<$> (x Core..: "ProductArn")
            Prelude.<*> (x Core..: "Id")
      )

instance Prelude.Hashable RelatedFinding

instance Prelude.NFData RelatedFinding

instance Core.ToJSON RelatedFinding where
  toJSON RelatedFinding' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ProductArn" Core..= productArn),
            Prelude.Just ("Id" Core..= id)
          ]
      )
