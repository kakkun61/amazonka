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
-- Module      : Network.AWS.ServiceCatalogAppRegistry.Types.Resource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalogAppRegistry.Types.Resource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.ServiceCatalogAppRegistry.Types.ResourceIntegrations

-- | The information about the resource.
--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource'
  { -- | The Amazon resource name (ARN) of the resource.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The service integration information about the resource.
    integrations :: Prelude.Maybe ResourceIntegrations,
    -- | The time the resource was associated with the application.
    associationTime :: Prelude.Maybe Core.POSIX,
    -- | The name of the resource.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Resource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'resource_arn' - The Amazon resource name (ARN) of the resource.
--
-- 'integrations', 'resource_integrations' - The service integration information about the resource.
--
-- 'associationTime', 'resource_associationTime' - The time the resource was associated with the application.
--
-- 'name', 'resource_name' - The name of the resource.
newResource ::
  Resource
newResource =
  Resource'
    { arn = Prelude.Nothing,
      integrations = Prelude.Nothing,
      associationTime = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The Amazon resource name (ARN) of the resource.
resource_arn :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_arn = Lens.lens (\Resource' {arn} -> arn) (\s@Resource' {} a -> s {arn = a} :: Resource)

-- | The service integration information about the resource.
resource_integrations :: Lens.Lens' Resource (Prelude.Maybe ResourceIntegrations)
resource_integrations = Lens.lens (\Resource' {integrations} -> integrations) (\s@Resource' {} a -> s {integrations = a} :: Resource)

-- | The time the resource was associated with the application.
resource_associationTime :: Lens.Lens' Resource (Prelude.Maybe Prelude.UTCTime)
resource_associationTime = Lens.lens (\Resource' {associationTime} -> associationTime) (\s@Resource' {} a -> s {associationTime = a} :: Resource) Prelude.. Lens.mapping Core._Time

-- | The name of the resource.
resource_name :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_name = Lens.lens (\Resource' {name} -> name) (\s@Resource' {} a -> s {name = a} :: Resource)

instance Core.FromJSON Resource where
  parseJSON =
    Core.withObject
      "Resource"
      ( \x ->
          Resource'
            Prelude.<$> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "integrations")
            Prelude.<*> (x Core..:? "associationTime")
            Prelude.<*> (x Core..:? "name")
      )

instance Prelude.Hashable Resource

instance Prelude.NFData Resource
