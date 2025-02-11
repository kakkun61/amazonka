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
-- Module      : Network.AWS.AppFlow.Types.SingularConnectorProfileCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.SingularConnectorProfileCredentials where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile credentials required when using Singular.
--
-- /See:/ 'newSingularConnectorProfileCredentials' smart constructor.
data SingularConnectorProfileCredentials = SingularConnectorProfileCredentials'
  { -- | A unique alphanumeric identifier used to authenticate a user, developer,
    -- or calling program to your API.
    apiKey :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SingularConnectorProfileCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'apiKey', 'singularConnectorProfileCredentials_apiKey' - A unique alphanumeric identifier used to authenticate a user, developer,
-- or calling program to your API.
newSingularConnectorProfileCredentials ::
  -- | 'apiKey'
  Prelude.Text ->
  SingularConnectorProfileCredentials
newSingularConnectorProfileCredentials pApiKey_ =
  SingularConnectorProfileCredentials'
    { apiKey =
        pApiKey_
    }

-- | A unique alphanumeric identifier used to authenticate a user, developer,
-- or calling program to your API.
singularConnectorProfileCredentials_apiKey :: Lens.Lens' SingularConnectorProfileCredentials Prelude.Text
singularConnectorProfileCredentials_apiKey = Lens.lens (\SingularConnectorProfileCredentials' {apiKey} -> apiKey) (\s@SingularConnectorProfileCredentials' {} a -> s {apiKey = a} :: SingularConnectorProfileCredentials)

instance
  Prelude.Hashable
    SingularConnectorProfileCredentials

instance
  Prelude.NFData
    SingularConnectorProfileCredentials

instance
  Core.ToJSON
    SingularConnectorProfileCredentials
  where
  toJSON SingularConnectorProfileCredentials' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("apiKey" Core..= apiKey)]
      )
