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
-- Module      : Network.AWS.AppFlow.Types.TrendmicroConnectorProfileCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.TrendmicroConnectorProfileCredentials where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile credentials required when using Trend
-- Micro.
--
-- /See:/ 'newTrendmicroConnectorProfileCredentials' smart constructor.
data TrendmicroConnectorProfileCredentials = TrendmicroConnectorProfileCredentials'
  { -- | The Secret Access Key portion of the credentials.
    apiSecretKey :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TrendmicroConnectorProfileCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiSecretKey', 'trendmicroConnectorProfileCredentials_apiSecretKey' - The Secret Access Key portion of the credentials.
newTrendmicroConnectorProfileCredentials ::
  -- | 'apiSecretKey'
  Prelude.Text ->
  TrendmicroConnectorProfileCredentials
newTrendmicroConnectorProfileCredentials
  pApiSecretKey_ =
    TrendmicroConnectorProfileCredentials'
      { apiSecretKey =
          Core._Sensitive
            Lens.# pApiSecretKey_
      }

-- | The Secret Access Key portion of the credentials.
trendmicroConnectorProfileCredentials_apiSecretKey :: Lens.Lens' TrendmicroConnectorProfileCredentials Prelude.Text
trendmicroConnectorProfileCredentials_apiSecretKey = Lens.lens (\TrendmicroConnectorProfileCredentials' {apiSecretKey} -> apiSecretKey) (\s@TrendmicroConnectorProfileCredentials' {} a -> s {apiSecretKey = a} :: TrendmicroConnectorProfileCredentials) Prelude.. Core._Sensitive

instance
  Prelude.Hashable
    TrendmicroConnectorProfileCredentials

instance
  Prelude.NFData
    TrendmicroConnectorProfileCredentials

instance
  Core.ToJSON
    TrendmicroConnectorProfileCredentials
  where
  toJSON TrendmicroConnectorProfileCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("apiSecretKey" Core..= apiSecretKey)]
      )
