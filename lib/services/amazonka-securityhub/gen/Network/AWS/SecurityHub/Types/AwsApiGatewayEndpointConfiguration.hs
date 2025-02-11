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
-- Module      : Network.AWS.SecurityHub.Types.AwsApiGatewayEndpointConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsApiGatewayEndpointConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the endpoints for the API.
--
-- /See:/ 'newAwsApiGatewayEndpointConfiguration' smart constructor.
data AwsApiGatewayEndpointConfiguration = AwsApiGatewayEndpointConfiguration'
  { -- | A list of endpoint types for the REST API.
    --
    -- For an edge-optimized API, the endpoint type is @EDGE@. For a Regional
    -- API, the endpoint type is @REGIONAL@. For a private API, the endpoint
    -- type is @PRIVATE@.
    types :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsApiGatewayEndpointConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'types', 'awsApiGatewayEndpointConfiguration_types' - A list of endpoint types for the REST API.
--
-- For an edge-optimized API, the endpoint type is @EDGE@. For a Regional
-- API, the endpoint type is @REGIONAL@. For a private API, the endpoint
-- type is @PRIVATE@.
newAwsApiGatewayEndpointConfiguration ::
  AwsApiGatewayEndpointConfiguration
newAwsApiGatewayEndpointConfiguration =
  AwsApiGatewayEndpointConfiguration'
    { types =
        Prelude.Nothing
    }

-- | A list of endpoint types for the REST API.
--
-- For an edge-optimized API, the endpoint type is @EDGE@. For a Regional
-- API, the endpoint type is @REGIONAL@. For a private API, the endpoint
-- type is @PRIVATE@.
awsApiGatewayEndpointConfiguration_types :: Lens.Lens' AwsApiGatewayEndpointConfiguration (Prelude.Maybe [Prelude.Text])
awsApiGatewayEndpointConfiguration_types = Lens.lens (\AwsApiGatewayEndpointConfiguration' {types} -> types) (\s@AwsApiGatewayEndpointConfiguration' {} a -> s {types = a} :: AwsApiGatewayEndpointConfiguration) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    AwsApiGatewayEndpointConfiguration
  where
  parseJSON =
    Core.withObject
      "AwsApiGatewayEndpointConfiguration"
      ( \x ->
          AwsApiGatewayEndpointConfiguration'
            Prelude.<$> (x Core..:? "Types" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    AwsApiGatewayEndpointConfiguration

instance
  Prelude.NFData
    AwsApiGatewayEndpointConfiguration

instance
  Core.ToJSON
    AwsApiGatewayEndpointConfiguration
  where
  toJSON AwsApiGatewayEndpointConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Types" Core..=) Prelude.<$> types]
      )
