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
-- Module      : Network.AWS.AppFlow.Types.ZendeskConnectorProfileProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.ZendeskConnectorProfileProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile properties required when using Zendesk.
--
-- /See:/ 'newZendeskConnectorProfileProperties' smart constructor.
data ZendeskConnectorProfileProperties = ZendeskConnectorProfileProperties'
  { -- | The location of the Zendesk resource.
    instanceUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ZendeskConnectorProfileProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceUrl', 'zendeskConnectorProfileProperties_instanceUrl' - The location of the Zendesk resource.
newZendeskConnectorProfileProperties ::
  -- | 'instanceUrl'
  Prelude.Text ->
  ZendeskConnectorProfileProperties
newZendeskConnectorProfileProperties pInstanceUrl_ =
  ZendeskConnectorProfileProperties'
    { instanceUrl =
        pInstanceUrl_
    }

-- | The location of the Zendesk resource.
zendeskConnectorProfileProperties_instanceUrl :: Lens.Lens' ZendeskConnectorProfileProperties Prelude.Text
zendeskConnectorProfileProperties_instanceUrl = Lens.lens (\ZendeskConnectorProfileProperties' {instanceUrl} -> instanceUrl) (\s@ZendeskConnectorProfileProperties' {} a -> s {instanceUrl = a} :: ZendeskConnectorProfileProperties)

instance
  Core.FromJSON
    ZendeskConnectorProfileProperties
  where
  parseJSON =
    Core.withObject
      "ZendeskConnectorProfileProperties"
      ( \x ->
          ZendeskConnectorProfileProperties'
            Prelude.<$> (x Core..: "instanceUrl")
      )

instance
  Prelude.Hashable
    ZendeskConnectorProfileProperties

instance
  Prelude.NFData
    ZendeskConnectorProfileProperties

instance
  Core.ToJSON
    ZendeskConnectorProfileProperties
  where
  toJSON ZendeskConnectorProfileProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("instanceUrl" Core..= instanceUrl)]
      )
