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
-- Module      : Network.AWS.AppFlow.Types.ZendeskSourceProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.ZendeskSourceProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The properties that are applied when using Zendesk as a flow source.
--
-- /See:/ 'newZendeskSourceProperties' smart constructor.
data ZendeskSourceProperties = ZendeskSourceProperties'
  { -- | The object specified in the Zendesk flow source.
    object' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ZendeskSourceProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'object'', 'zendeskSourceProperties_object' - The object specified in the Zendesk flow source.
newZendeskSourceProperties ::
  -- | 'object''
  Prelude.Text ->
  ZendeskSourceProperties
newZendeskSourceProperties pObject_ =
  ZendeskSourceProperties' {object' = pObject_}

-- | The object specified in the Zendesk flow source.
zendeskSourceProperties_object :: Lens.Lens' ZendeskSourceProperties Prelude.Text
zendeskSourceProperties_object = Lens.lens (\ZendeskSourceProperties' {object'} -> object') (\s@ZendeskSourceProperties' {} a -> s {object' = a} :: ZendeskSourceProperties)

instance Core.FromJSON ZendeskSourceProperties where
  parseJSON =
    Core.withObject
      "ZendeskSourceProperties"
      ( \x ->
          ZendeskSourceProperties'
            Prelude.<$> (x Core..: "object")
      )

instance Prelude.Hashable ZendeskSourceProperties

instance Prelude.NFData ZendeskSourceProperties

instance Core.ToJSON ZendeskSourceProperties where
  toJSON ZendeskSourceProperties' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("object" Core..= object')]
      )
