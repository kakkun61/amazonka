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
-- Module      : Network.AWS.AppMesh.Types.GrpcGatewayRouteMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GrpcGatewayRouteMetadata where

import Network.AWS.AppMesh.Types.GrpcMetadataMatchMethod
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object representing the metadata of the gateway route.
--
-- /See:/ 'newGrpcGatewayRouteMetadata' smart constructor.
data GrpcGatewayRouteMetadata = GrpcGatewayRouteMetadata'
  { -- | Specify @True@ to match anything except the match criteria. The default
    -- value is @False@.
    invert :: Prelude.Maybe Prelude.Bool,
    -- | The criteria for determining a metadata match.
    match :: Prelude.Maybe GrpcMetadataMatchMethod,
    -- | A name for the gateway route metadata.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrpcGatewayRouteMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invert', 'grpcGatewayRouteMetadata_invert' - Specify @True@ to match anything except the match criteria. The default
-- value is @False@.
--
-- 'match', 'grpcGatewayRouteMetadata_match' - The criteria for determining a metadata match.
--
-- 'name', 'grpcGatewayRouteMetadata_name' - A name for the gateway route metadata.
newGrpcGatewayRouteMetadata ::
  -- | 'name'
  Prelude.Text ->
  GrpcGatewayRouteMetadata
newGrpcGatewayRouteMetadata pName_ =
  GrpcGatewayRouteMetadata'
    { invert = Prelude.Nothing,
      match = Prelude.Nothing,
      name = pName_
    }

-- | Specify @True@ to match anything except the match criteria. The default
-- value is @False@.
grpcGatewayRouteMetadata_invert :: Lens.Lens' GrpcGatewayRouteMetadata (Prelude.Maybe Prelude.Bool)
grpcGatewayRouteMetadata_invert = Lens.lens (\GrpcGatewayRouteMetadata' {invert} -> invert) (\s@GrpcGatewayRouteMetadata' {} a -> s {invert = a} :: GrpcGatewayRouteMetadata)

-- | The criteria for determining a metadata match.
grpcGatewayRouteMetadata_match :: Lens.Lens' GrpcGatewayRouteMetadata (Prelude.Maybe GrpcMetadataMatchMethod)
grpcGatewayRouteMetadata_match = Lens.lens (\GrpcGatewayRouteMetadata' {match} -> match) (\s@GrpcGatewayRouteMetadata' {} a -> s {match = a} :: GrpcGatewayRouteMetadata)

-- | A name for the gateway route metadata.
grpcGatewayRouteMetadata_name :: Lens.Lens' GrpcGatewayRouteMetadata Prelude.Text
grpcGatewayRouteMetadata_name = Lens.lens (\GrpcGatewayRouteMetadata' {name} -> name) (\s@GrpcGatewayRouteMetadata' {} a -> s {name = a} :: GrpcGatewayRouteMetadata)

instance Core.FromJSON GrpcGatewayRouteMetadata where
  parseJSON =
    Core.withObject
      "GrpcGatewayRouteMetadata"
      ( \x ->
          GrpcGatewayRouteMetadata'
            Prelude.<$> (x Core..:? "invert")
            Prelude.<*> (x Core..:? "match")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable GrpcGatewayRouteMetadata

instance Prelude.NFData GrpcGatewayRouteMetadata

instance Core.ToJSON GrpcGatewayRouteMetadata where
  toJSON GrpcGatewayRouteMetadata' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("invert" Core..=) Prelude.<$> invert,
            ("match" Core..=) Prelude.<$> match,
            Prelude.Just ("name" Core..= name)
          ]
      )
