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
-- Module      : Network.AWS.AppMesh.Types.EgressFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.EgressFilter where

import Network.AWS.AppMesh.Types.EgressFilterType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the egress filter rules for a service mesh.
--
-- /See:/ 'newEgressFilter' smart constructor.
data EgressFilter = EgressFilter'
  { -- | The egress filter type. By default, the type is @DROP_ALL@, which allows
    -- egress only from virtual nodes to other defined resources in the service
    -- mesh (and any traffic to @*.amazonaws.com@ for Amazon Web Services API
    -- calls). You can set the egress filter type to @ALLOW_ALL@ to allow
    -- egress to any endpoint inside or outside of the service mesh.
    type' :: EgressFilterType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EgressFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'egressFilter_type' - The egress filter type. By default, the type is @DROP_ALL@, which allows
-- egress only from virtual nodes to other defined resources in the service
-- mesh (and any traffic to @*.amazonaws.com@ for Amazon Web Services API
-- calls). You can set the egress filter type to @ALLOW_ALL@ to allow
-- egress to any endpoint inside or outside of the service mesh.
newEgressFilter ::
  -- | 'type''
  EgressFilterType ->
  EgressFilter
newEgressFilter pType_ =
  EgressFilter' {type' = pType_}

-- | The egress filter type. By default, the type is @DROP_ALL@, which allows
-- egress only from virtual nodes to other defined resources in the service
-- mesh (and any traffic to @*.amazonaws.com@ for Amazon Web Services API
-- calls). You can set the egress filter type to @ALLOW_ALL@ to allow
-- egress to any endpoint inside or outside of the service mesh.
egressFilter_type :: Lens.Lens' EgressFilter EgressFilterType
egressFilter_type = Lens.lens (\EgressFilter' {type'} -> type') (\s@EgressFilter' {} a -> s {type' = a} :: EgressFilter)

instance Core.FromJSON EgressFilter where
  parseJSON =
    Core.withObject
      "EgressFilter"
      (\x -> EgressFilter' Prelude.<$> (x Core..: "type"))

instance Prelude.Hashable EgressFilter

instance Prelude.NFData EgressFilter

instance Core.ToJSON EgressFilter where
  toJSON EgressFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("type" Core..= type')]
      )
