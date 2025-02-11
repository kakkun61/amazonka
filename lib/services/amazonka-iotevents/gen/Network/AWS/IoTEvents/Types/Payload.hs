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
-- Module      : Network.AWS.IoTEvents.Types.Payload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTEvents.Types.Payload where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTEvents.Types.PayloadType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information needed to configure the payload.
--
-- By default, AWS IoT Events generates a standard payload in JSON for any
-- action. This action payload contains all attribute-value pairs that have
-- the information about the detector model instance and the event
-- triggered the action. To configure the action payload, you can use
-- @contentExpression@.
--
-- /See:/ 'newPayload' smart constructor.
data Payload = Payload'
  { -- | The content of the payload. You can use a string expression that
    -- includes quoted strings (@\'\<string>\'@), variables
    -- (@$variable.\<variable-name>@), input values
    -- (@$input.\<input-name>.\<path-to-datum>@), string concatenations, and
    -- quoted strings that contain @${}@ as the content. The recommended
    -- maximum size of a content expression is 1 KB.
    contentExpression :: Prelude.Text,
    -- | The value of the payload type can be either @STRING@ or @JSON@.
    type' :: PayloadType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Payload' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentExpression', 'payload_contentExpression' - The content of the payload. You can use a string expression that
-- includes quoted strings (@\'\<string>\'@), variables
-- (@$variable.\<variable-name>@), input values
-- (@$input.\<input-name>.\<path-to-datum>@), string concatenations, and
-- quoted strings that contain @${}@ as the content. The recommended
-- maximum size of a content expression is 1 KB.
--
-- 'type'', 'payload_type' - The value of the payload type can be either @STRING@ or @JSON@.
newPayload ::
  -- | 'contentExpression'
  Prelude.Text ->
  -- | 'type''
  PayloadType ->
  Payload
newPayload pContentExpression_ pType_ =
  Payload'
    { contentExpression = pContentExpression_,
      type' = pType_
    }

-- | The content of the payload. You can use a string expression that
-- includes quoted strings (@\'\<string>\'@), variables
-- (@$variable.\<variable-name>@), input values
-- (@$input.\<input-name>.\<path-to-datum>@), string concatenations, and
-- quoted strings that contain @${}@ as the content. The recommended
-- maximum size of a content expression is 1 KB.
payload_contentExpression :: Lens.Lens' Payload Prelude.Text
payload_contentExpression = Lens.lens (\Payload' {contentExpression} -> contentExpression) (\s@Payload' {} a -> s {contentExpression = a} :: Payload)

-- | The value of the payload type can be either @STRING@ or @JSON@.
payload_type :: Lens.Lens' Payload PayloadType
payload_type = Lens.lens (\Payload' {type'} -> type') (\s@Payload' {} a -> s {type' = a} :: Payload)

instance Core.FromJSON Payload where
  parseJSON =
    Core.withObject
      "Payload"
      ( \x ->
          Payload'
            Prelude.<$> (x Core..: "contentExpression")
            Prelude.<*> (x Core..: "type")
      )

instance Prelude.Hashable Payload

instance Prelude.NFData Payload

instance Core.ToJSON Payload where
  toJSON Payload' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("contentExpression" Core..= contentExpression),
            Prelude.Just ("type" Core..= type')
          ]
      )
