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
-- Module      : Network.AWS.AppFlow.Types.MarketoConnectorProfileProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.MarketoConnectorProfileProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile properties required when using Marketo.
--
-- /See:/ 'newMarketoConnectorProfileProperties' smart constructor.
data MarketoConnectorProfileProperties = MarketoConnectorProfileProperties'
  { -- | The location of the Marketo resource.
    instanceUrl :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MarketoConnectorProfileProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceUrl', 'marketoConnectorProfileProperties_instanceUrl' - The location of the Marketo resource.
newMarketoConnectorProfileProperties ::
  -- | 'instanceUrl'
  Prelude.Text ->
  MarketoConnectorProfileProperties
newMarketoConnectorProfileProperties pInstanceUrl_ =
  MarketoConnectorProfileProperties'
    { instanceUrl =
        pInstanceUrl_
    }

-- | The location of the Marketo resource.
marketoConnectorProfileProperties_instanceUrl :: Lens.Lens' MarketoConnectorProfileProperties Prelude.Text
marketoConnectorProfileProperties_instanceUrl = Lens.lens (\MarketoConnectorProfileProperties' {instanceUrl} -> instanceUrl) (\s@MarketoConnectorProfileProperties' {} a -> s {instanceUrl = a} :: MarketoConnectorProfileProperties)

instance
  Core.FromJSON
    MarketoConnectorProfileProperties
  where
  parseJSON =
    Core.withObject
      "MarketoConnectorProfileProperties"
      ( \x ->
          MarketoConnectorProfileProperties'
            Prelude.<$> (x Core..: "instanceUrl")
      )

instance
  Prelude.Hashable
    MarketoConnectorProfileProperties

instance
  Prelude.NFData
    MarketoConnectorProfileProperties

instance
  Core.ToJSON
    MarketoConnectorProfileProperties
  where
  toJSON MarketoConnectorProfileProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("instanceUrl" Core..= instanceUrl)]
      )
