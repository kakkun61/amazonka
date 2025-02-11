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
-- Module      : Network.AWS.QuickSight.Types.AnonymousUserDashboardEmbeddingConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.AnonymousUserDashboardEmbeddingConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the dashboard that you want to embed.
--
-- /See:/ 'newAnonymousUserDashboardEmbeddingConfiguration' smart constructor.
data AnonymousUserDashboardEmbeddingConfiguration = AnonymousUserDashboardEmbeddingConfiguration'
  { -- | The dashboard ID for the dashboard that you want the user to see first.
    -- This ID is included in the output URL. When the URL in response is
    -- accessed, Amazon QuickSight renders this dashboard.
    --
    -- The Amazon Resource Name (ARN) of this dashboard must be included in the
    -- @AuthorizedResourceArns@ parameter. Otherwise, the request will fail
    -- with @InvalidParameterValueException@.
    initialDashboardId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AnonymousUserDashboardEmbeddingConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'initialDashboardId', 'anonymousUserDashboardEmbeddingConfiguration_initialDashboardId' - The dashboard ID for the dashboard that you want the user to see first.
-- This ID is included in the output URL. When the URL in response is
-- accessed, Amazon QuickSight renders this dashboard.
--
-- The Amazon Resource Name (ARN) of this dashboard must be included in the
-- @AuthorizedResourceArns@ parameter. Otherwise, the request will fail
-- with @InvalidParameterValueException@.
newAnonymousUserDashboardEmbeddingConfiguration ::
  -- | 'initialDashboardId'
  Prelude.Text ->
  AnonymousUserDashboardEmbeddingConfiguration
newAnonymousUserDashboardEmbeddingConfiguration
  pInitialDashboardId_ =
    AnonymousUserDashboardEmbeddingConfiguration'
      { initialDashboardId =
          pInitialDashboardId_
      }

-- | The dashboard ID for the dashboard that you want the user to see first.
-- This ID is included in the output URL. When the URL in response is
-- accessed, Amazon QuickSight renders this dashboard.
--
-- The Amazon Resource Name (ARN) of this dashboard must be included in the
-- @AuthorizedResourceArns@ parameter. Otherwise, the request will fail
-- with @InvalidParameterValueException@.
anonymousUserDashboardEmbeddingConfiguration_initialDashboardId :: Lens.Lens' AnonymousUserDashboardEmbeddingConfiguration Prelude.Text
anonymousUserDashboardEmbeddingConfiguration_initialDashboardId = Lens.lens (\AnonymousUserDashboardEmbeddingConfiguration' {initialDashboardId} -> initialDashboardId) (\s@AnonymousUserDashboardEmbeddingConfiguration' {} a -> s {initialDashboardId = a} :: AnonymousUserDashboardEmbeddingConfiguration)

instance
  Prelude.Hashable
    AnonymousUserDashboardEmbeddingConfiguration

instance
  Prelude.NFData
    AnonymousUserDashboardEmbeddingConfiguration

instance
  Core.ToJSON
    AnonymousUserDashboardEmbeddingConfiguration
  where
  toJSON
    AnonymousUserDashboardEmbeddingConfiguration' {..} =
      Core.object
        ( Prelude.catMaybes
            [ Prelude.Just
                ("InitialDashboardId" Core..= initialDashboardId)
            ]
        )
