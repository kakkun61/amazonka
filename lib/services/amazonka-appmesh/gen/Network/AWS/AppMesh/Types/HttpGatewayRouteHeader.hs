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
-- Module      : Network.AWS.AppMesh.Types.HttpGatewayRouteHeader
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.HttpGatewayRouteHeader where

import Network.AWS.AppMesh.Types.HeaderMatchMethod
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the HTTP header in the gateway route.
--
-- /See:/ 'newHttpGatewayRouteHeader' smart constructor.
data HttpGatewayRouteHeader = HttpGatewayRouteHeader'
  { -- | Specify @True@ to match anything except the match criteria. The default
    -- value is @False@.
    invert :: Prelude.Maybe Prelude.Bool,
    match :: Prelude.Maybe HeaderMatchMethod,
    -- | A name for the HTTP header in the gateway route that will be matched on.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HttpGatewayRouteHeader' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invert', 'httpGatewayRouteHeader_invert' - Specify @True@ to match anything except the match criteria. The default
-- value is @False@.
--
-- 'match', 'httpGatewayRouteHeader_match' - Undocumented member.
--
-- 'name', 'httpGatewayRouteHeader_name' - A name for the HTTP header in the gateway route that will be matched on.
newHttpGatewayRouteHeader ::
  -- | 'name'
  Prelude.Text ->
  HttpGatewayRouteHeader
newHttpGatewayRouteHeader pName_ =
  HttpGatewayRouteHeader'
    { invert = Prelude.Nothing,
      match = Prelude.Nothing,
      name = pName_
    }

-- | Specify @True@ to match anything except the match criteria. The default
-- value is @False@.
httpGatewayRouteHeader_invert :: Lens.Lens' HttpGatewayRouteHeader (Prelude.Maybe Prelude.Bool)
httpGatewayRouteHeader_invert = Lens.lens (\HttpGatewayRouteHeader' {invert} -> invert) (\s@HttpGatewayRouteHeader' {} a -> s {invert = a} :: HttpGatewayRouteHeader)

-- | Undocumented member.
httpGatewayRouteHeader_match :: Lens.Lens' HttpGatewayRouteHeader (Prelude.Maybe HeaderMatchMethod)
httpGatewayRouteHeader_match = Lens.lens (\HttpGatewayRouteHeader' {match} -> match) (\s@HttpGatewayRouteHeader' {} a -> s {match = a} :: HttpGatewayRouteHeader)

-- | A name for the HTTP header in the gateway route that will be matched on.
httpGatewayRouteHeader_name :: Lens.Lens' HttpGatewayRouteHeader Prelude.Text
httpGatewayRouteHeader_name = Lens.lens (\HttpGatewayRouteHeader' {name} -> name) (\s@HttpGatewayRouteHeader' {} a -> s {name = a} :: HttpGatewayRouteHeader)

instance Core.FromJSON HttpGatewayRouteHeader where
  parseJSON =
    Core.withObject
      "HttpGatewayRouteHeader"
      ( \x ->
          HttpGatewayRouteHeader'
            Prelude.<$> (x Core..:? "invert")
            Prelude.<*> (x Core..:? "match")
            Prelude.<*> (x Core..: "name")
      )

instance Prelude.Hashable HttpGatewayRouteHeader

instance Prelude.NFData HttpGatewayRouteHeader

instance Core.ToJSON HttpGatewayRouteHeader where
  toJSON HttpGatewayRouteHeader' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("invert" Core..=) Prelude.<$> invert,
            ("match" Core..=) Prelude.<$> match,
            Prelude.Just ("name" Core..= name)
          ]
      )
