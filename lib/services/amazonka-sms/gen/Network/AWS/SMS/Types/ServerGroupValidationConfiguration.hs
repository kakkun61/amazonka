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
-- Module      : Network.AWS.SMS.Types.ServerGroupValidationConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerGroupValidationConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SMS.Types.ServerValidationConfiguration

-- | Configuration for validating an instance.
--
-- /See:/ 'newServerGroupValidationConfiguration' smart constructor.
data ServerGroupValidationConfiguration = ServerGroupValidationConfiguration'
  { -- | The validation configuration.
    serverValidationConfigurations :: Prelude.Maybe [ServerValidationConfiguration],
    -- | The ID of the server group.
    serverGroupId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServerGroupValidationConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serverValidationConfigurations', 'serverGroupValidationConfiguration_serverValidationConfigurations' - The validation configuration.
--
-- 'serverGroupId', 'serverGroupValidationConfiguration_serverGroupId' - The ID of the server group.
newServerGroupValidationConfiguration ::
  ServerGroupValidationConfiguration
newServerGroupValidationConfiguration =
  ServerGroupValidationConfiguration'
    { serverValidationConfigurations =
        Prelude.Nothing,
      serverGroupId = Prelude.Nothing
    }

-- | The validation configuration.
serverGroupValidationConfiguration_serverValidationConfigurations :: Lens.Lens' ServerGroupValidationConfiguration (Prelude.Maybe [ServerValidationConfiguration])
serverGroupValidationConfiguration_serverValidationConfigurations = Lens.lens (\ServerGroupValidationConfiguration' {serverValidationConfigurations} -> serverValidationConfigurations) (\s@ServerGroupValidationConfiguration' {} a -> s {serverValidationConfigurations = a} :: ServerGroupValidationConfiguration) Prelude.. Lens.mapping Lens.coerced

-- | The ID of the server group.
serverGroupValidationConfiguration_serverGroupId :: Lens.Lens' ServerGroupValidationConfiguration (Prelude.Maybe Prelude.Text)
serverGroupValidationConfiguration_serverGroupId = Lens.lens (\ServerGroupValidationConfiguration' {serverGroupId} -> serverGroupId) (\s@ServerGroupValidationConfiguration' {} a -> s {serverGroupId = a} :: ServerGroupValidationConfiguration)

instance
  Core.FromJSON
    ServerGroupValidationConfiguration
  where
  parseJSON =
    Core.withObject
      "ServerGroupValidationConfiguration"
      ( \x ->
          ServerGroupValidationConfiguration'
            Prelude.<$> ( x Core..:? "serverValidationConfigurations"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "serverGroupId")
      )

instance
  Prelude.Hashable
    ServerGroupValidationConfiguration

instance
  Prelude.NFData
    ServerGroupValidationConfiguration

instance
  Core.ToJSON
    ServerGroupValidationConfiguration
  where
  toJSON ServerGroupValidationConfiguration' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("serverValidationConfigurations" Core..=)
              Prelude.<$> serverValidationConfigurations,
            ("serverGroupId" Core..=) Prelude.<$> serverGroupId
          ]
      )
