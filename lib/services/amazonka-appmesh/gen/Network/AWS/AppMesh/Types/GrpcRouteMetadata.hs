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
-- Module      : Network.AWS.AppMesh.Types.GrpcRouteMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GrpcRouteMetadata where

import Network.AWS.AppMesh.Types.GrpcRouteMetadataMatchMethod
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the match metadata for the route.
--
-- /See:/ 'newGrpcRouteMetadata' smart constructor.
data GrpcRouteMetadata = GrpcRouteMetadata'
  { -- | Specify @True@ to match anything except the match criteria. The default
    -- value is @False@.
    invert :: Prelude.Maybe Prelude.Bool,
    -- | An object that represents the data to match from the request.
    match :: Prelude.Maybe GrpcRouteMetadataMatchMethod,
    -- | The name of the route.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrpcRouteMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invert', 'grpcRouteMetadata_invert' - Specify @True@ to match anything except the match criteria. The default
-- value is @False@.
--
-- 'match', 'grpcRouteMetadata_match' - An object that represents the data to match from the request.
--
-- 'name', 'grpcRouteMetadata_name' - The name of the route.
newGrpcRouteMetadata ::
  -- | 'name'
  Prelude.Text ->
  GrpcRouteMetadata
newGrpcRouteMetadata pName_ =
  GrpcRouteMetadata'
    { invert = Prelude.Nothing,
      match = Prelude.Nothing,
      name = pName_
    }

-- | Specify @True@ to match anything except the match criteria. The default
-- value is @False@.
grpcRouteMetadata_invert :: Lens.Lens' GrpcRouteMetadata (Prelude.Maybe Prelude.Bool)
grpcRouteMetadata_invert = Lens.lens (\GrpcRouteMetadata' {invert} -> invert) (\s@GrpcRouteMetadata' {} a -> s {invert = a} :: GrpcRouteMetadata)

-- | An object that represents the data to match from the request.
grpcRouteMetadata_match :: Lens.Lens' GrpcRouteMetadata (Prelude.Maybe GrpcRouteMetadataMatchMethod)
grpcRouteMetadata_match = Lens.lens (\GrpcRouteMetadata' {match} -> match) (\s@GrpcRouteMetadata' {} a -> s {match = a} :: GrpcRouteMetadata)

-- | The name of the route.
grpcRouteMetadata_name :: Lens.Lens' GrpcRouteMetadata Prelude.Text
grpcRouteMetadata_name = Lens.lens (\GrpcRouteMetadata' {name} -> name) (\s@GrpcRouteMetadata' {} a -> s {name = a} :: GrpcRouteMetadata)

instance Core.FromJSON GrpcRouteMetadata where
  parseJSON =
    Core.withObject
      "GrpcRouteMetadata"
      ( \x ->
          GrpcRouteMetadata'
            Prelude.<$> (x Core..:? "invert")
            Prelude.<*> (x Core..:? "match")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable GrpcRouteMetadata

instance Prelude.NFData GrpcRouteMetadata

instance Core.ToJSON GrpcRouteMetadata where
  toJSON GrpcRouteMetadata' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("invert" Core..=) Prelude.<$> invert,
            ("match" Core..=) Prelude.<$> match,
            Prelude.Just ("name" Core..= name)
          ]
      )
