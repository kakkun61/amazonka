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
-- Module      : Network.AWS.AppMesh.Types.GrpcRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.GrpcRoute where

import Network.AWS.AppMesh.Types.GrpcRetryPolicy
import Network.AWS.AppMesh.Types.GrpcRouteAction
import Network.AWS.AppMesh.Types.GrpcRouteMatch
import Network.AWS.AppMesh.Types.GrpcTimeout
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents a gRPC route type.
--
-- /See:/ 'newGrpcRoute' smart constructor.
data GrpcRoute = GrpcRoute'
  { -- | An object that represents a retry policy.
    retryPolicy :: Prelude.Maybe GrpcRetryPolicy,
    -- | An object that represents types of timeouts.
    timeout :: Prelude.Maybe GrpcTimeout,
    -- | An object that represents the action to take if a match is determined.
    action :: GrpcRouteAction,
    -- | An object that represents the criteria for determining a request match.
    match :: GrpcRouteMatch
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GrpcRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'retryPolicy', 'grpcRoute_retryPolicy' - An object that represents a retry policy.
--
-- 'timeout', 'grpcRoute_timeout' - An object that represents types of timeouts.
--
-- 'action', 'grpcRoute_action' - An object that represents the action to take if a match is determined.
--
-- 'match', 'grpcRoute_match' - An object that represents the criteria for determining a request match.
newGrpcRoute ::
  -- | 'action'
  GrpcRouteAction ->
  -- | 'match'
  GrpcRouteMatch ->
  GrpcRoute
newGrpcRoute pAction_ pMatch_ =
  GrpcRoute'
    { retryPolicy = Prelude.Nothing,
      timeout = Prelude.Nothing,
      action = pAction_,
      match = pMatch_
    }

-- | An object that represents a retry policy.
grpcRoute_retryPolicy :: Lens.Lens' GrpcRoute (Prelude.Maybe GrpcRetryPolicy)
grpcRoute_retryPolicy = Lens.lens (\GrpcRoute' {retryPolicy} -> retryPolicy) (\s@GrpcRoute' {} a -> s {retryPolicy = a} :: GrpcRoute)

-- | An object that represents types of timeouts.
grpcRoute_timeout :: Lens.Lens' GrpcRoute (Prelude.Maybe GrpcTimeout)
grpcRoute_timeout = Lens.lens (\GrpcRoute' {timeout} -> timeout) (\s@GrpcRoute' {} a -> s {timeout = a} :: GrpcRoute)

-- | An object that represents the action to take if a match is determined.
grpcRoute_action :: Lens.Lens' GrpcRoute GrpcRouteAction
grpcRoute_action = Lens.lens (\GrpcRoute' {action} -> action) (\s@GrpcRoute' {} a -> s {action = a} :: GrpcRoute)

-- | An object that represents the criteria for determining a request match.
grpcRoute_match :: Lens.Lens' GrpcRoute GrpcRouteMatch
grpcRoute_match = Lens.lens (\GrpcRoute' {match} -> match) (\s@GrpcRoute' {} a -> s {match = a} :: GrpcRoute)

instance Core.FromJSON GrpcRoute where
  parseJSON =
    Core.withObject
      "GrpcRoute"
      ( \x ->
          GrpcRoute'
            Prelude.<$> (x Core..:? "retryPolicy")
            Prelude.<*> (x Core..:? "timeout")
            Prelude.<*> (x Core..: "action")
            Prelude.<*> (x Core..: "match")
      )

instance Prelude.Hashable GrpcRoute

instance Prelude.NFData GrpcRoute

instance Core.ToJSON GrpcRoute where
  toJSON GrpcRoute' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("retryPolicy" Core..=) Prelude.<$> retryPolicy,
            ("timeout" Core..=) Prelude.<$> timeout,
            Prelude.Just ("action" Core..= action),
            Prelude.Just ("match" Core..= match)
          ]
      )
