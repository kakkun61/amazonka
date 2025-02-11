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
-- Module      : Network.AWS.AppFlow.Types.ServiceNowConnectorProfileProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.ServiceNowConnectorProfileProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile properties required when using
-- ServiceNow.
--
-- /See:/ 'newServiceNowConnectorProfileProperties' smart constructor.
data ServiceNowConnectorProfileProperties = ServiceNowConnectorProfileProperties'
  { -- | The location of the ServiceNow resource.
    instanceUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ServiceNowConnectorProfileProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceUrl', 'serviceNowConnectorProfileProperties_instanceUrl' - The location of the ServiceNow resource.
newServiceNowConnectorProfileProperties ::
  -- | 'instanceUrl'
  Prelude.Text ->
  ServiceNowConnectorProfileProperties
newServiceNowConnectorProfileProperties pInstanceUrl_ =
  ServiceNowConnectorProfileProperties'
    { instanceUrl =
        pInstanceUrl_
    }

-- | The location of the ServiceNow resource.
serviceNowConnectorProfileProperties_instanceUrl :: Lens.Lens' ServiceNowConnectorProfileProperties Prelude.Text
serviceNowConnectorProfileProperties_instanceUrl = Lens.lens (\ServiceNowConnectorProfileProperties' {instanceUrl} -> instanceUrl) (\s@ServiceNowConnectorProfileProperties' {} a -> s {instanceUrl = a} :: ServiceNowConnectorProfileProperties)

instance
  Core.FromJSON
    ServiceNowConnectorProfileProperties
  where
  parseJSON =
    Core.withObject
      "ServiceNowConnectorProfileProperties"
      ( \x ->
          ServiceNowConnectorProfileProperties'
            Prelude.<$> (x Core..: "instanceUrl")
      )

instance
  Prelude.Hashable
    ServiceNowConnectorProfileProperties

instance
  Prelude.NFData
    ServiceNowConnectorProfileProperties

instance
  Core.ToJSON
    ServiceNowConnectorProfileProperties
  where
  toJSON ServiceNowConnectorProfileProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("instanceUrl" Core..= instanceUrl)]
      )
