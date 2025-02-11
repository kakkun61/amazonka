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
-- Module      : Network.AWS.AppFlow.Types.ZendeskMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.ZendeskMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector metadata specific to Zendesk.
--
-- /See:/ 'newZendeskMetadata' smart constructor.
data ZendeskMetadata = ZendeskMetadata'
  { -- | The desired authorization scope for the Zendesk account.
    oAuthScopes :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ZendeskMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'oAuthScopes', 'zendeskMetadata_oAuthScopes' - The desired authorization scope for the Zendesk account.
newZendeskMetadata ::
  ZendeskMetadata
newZendeskMetadata =
  ZendeskMetadata' {oAuthScopes = Prelude.Nothing}

-- | The desired authorization scope for the Zendesk account.
zendeskMetadata_oAuthScopes :: Lens.Lens' ZendeskMetadata (Prelude.Maybe [Prelude.Text])
zendeskMetadata_oAuthScopes = Lens.lens (\ZendeskMetadata' {oAuthScopes} -> oAuthScopes) (\s@ZendeskMetadata' {} a -> s {oAuthScopes = a} :: ZendeskMetadata) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ZendeskMetadata where
  parseJSON =
    Core.withObject
      "ZendeskMetadata"
      ( \x ->
          ZendeskMetadata'
            Prelude.<$> (x Core..:? "oAuthScopes" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ZendeskMetadata

instance Prelude.NFData ZendeskMetadata
