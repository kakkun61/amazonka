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
-- Module      : Network.AWS.Chime.Types.CreateAttendeeRequestItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.CreateAttendeeRequestItem where

import Network.AWS.Chime.Types.Tag
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The Amazon Chime SDK attendee fields to create, used with the
-- BatchCreateAttendee action.
--
-- /See:/ 'newCreateAttendeeRequestItem' smart constructor.
data CreateAttendeeRequestItem = CreateAttendeeRequestItem'
  { -- | The tag key-value pairs.
    tags :: Prelude.Maybe (Prelude.NonEmpty Tag),
    -- | The Amazon Chime SDK external user ID. An idempotency token. Links the
    -- attendee to an identity managed by a builder application.
    externalUserId :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAttendeeRequestItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createAttendeeRequestItem_tags' - The tag key-value pairs.
--
-- 'externalUserId', 'createAttendeeRequestItem_externalUserId' - The Amazon Chime SDK external user ID. An idempotency token. Links the
-- attendee to an identity managed by a builder application.
newCreateAttendeeRequestItem ::
  -- | 'externalUserId'
  Prelude.Text ->
  CreateAttendeeRequestItem
newCreateAttendeeRequestItem pExternalUserId_ =
  CreateAttendeeRequestItem'
    { tags = Prelude.Nothing,
      externalUserId =
        Core._Sensitive Lens.# pExternalUserId_
    }

-- | The tag key-value pairs.
createAttendeeRequestItem_tags :: Lens.Lens' CreateAttendeeRequestItem (Prelude.Maybe (Prelude.NonEmpty Tag))
createAttendeeRequestItem_tags = Lens.lens (\CreateAttendeeRequestItem' {tags} -> tags) (\s@CreateAttendeeRequestItem' {} a -> s {tags = a} :: CreateAttendeeRequestItem) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Chime SDK external user ID. An idempotency token. Links the
-- attendee to an identity managed by a builder application.
createAttendeeRequestItem_externalUserId :: Lens.Lens' CreateAttendeeRequestItem Prelude.Text
createAttendeeRequestItem_externalUserId = Lens.lens (\CreateAttendeeRequestItem' {externalUserId} -> externalUserId) (\s@CreateAttendeeRequestItem' {} a -> s {externalUserId = a} :: CreateAttendeeRequestItem) Prelude.. Core._Sensitive

instance Prelude.Hashable CreateAttendeeRequestItem

instance Prelude.NFData CreateAttendeeRequestItem

instance Core.ToJSON CreateAttendeeRequestItem where
  toJSON CreateAttendeeRequestItem' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ("ExternalUserId" Core..= externalUserId)
          ]
      )
