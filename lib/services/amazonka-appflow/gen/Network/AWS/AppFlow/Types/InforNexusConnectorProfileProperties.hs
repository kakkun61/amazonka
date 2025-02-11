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
-- Module      : Network.AWS.AppFlow.Types.InforNexusConnectorProfileProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.InforNexusConnectorProfileProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile properties required by Infor Nexus.
--
-- /See:/ 'newInforNexusConnectorProfileProperties' smart constructor.
data InforNexusConnectorProfileProperties = InforNexusConnectorProfileProperties'
  { -- | The location of the Infor Nexus resource.
    instanceUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InforNexusConnectorProfileProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceUrl', 'inforNexusConnectorProfileProperties_instanceUrl' - The location of the Infor Nexus resource.
newInforNexusConnectorProfileProperties ::
  -- | 'instanceUrl'
  Prelude.Text ->
  InforNexusConnectorProfileProperties
newInforNexusConnectorProfileProperties pInstanceUrl_ =
  InforNexusConnectorProfileProperties'
    { instanceUrl =
        pInstanceUrl_
    }

-- | The location of the Infor Nexus resource.
inforNexusConnectorProfileProperties_instanceUrl :: Lens.Lens' InforNexusConnectorProfileProperties Prelude.Text
inforNexusConnectorProfileProperties_instanceUrl = Lens.lens (\InforNexusConnectorProfileProperties' {instanceUrl} -> instanceUrl) (\s@InforNexusConnectorProfileProperties' {} a -> s {instanceUrl = a} :: InforNexusConnectorProfileProperties)

instance
  Core.FromJSON
    InforNexusConnectorProfileProperties
  where
  parseJSON =
    Core.withObject
      "InforNexusConnectorProfileProperties"
      ( \x ->
          InforNexusConnectorProfileProperties'
            Prelude.<$> (x Core..: "instanceUrl")
      )

instance
  Prelude.Hashable
    InforNexusConnectorProfileProperties

instance
  Prelude.NFData
    InforNexusConnectorProfileProperties

instance
  Core.ToJSON
    InforNexusConnectorProfileProperties
  where
  toJSON InforNexusConnectorProfileProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("instanceUrl" Core..= instanceUrl)]
      )
