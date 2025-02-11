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
-- Module      : Network.AWS.QuickSight.Types.SessionTag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.SessionTag where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The key-value pair used for the row-level security tags feature.
--
-- /See:/ 'newSessionTag' smart constructor.
data SessionTag = SessionTag'
  { -- | The key for the tag.
    key :: Prelude.Text,
    -- | The value that you want to assign the tag.
    value :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SessionTag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'sessionTag_key' - The key for the tag.
--
-- 'value', 'sessionTag_value' - The value that you want to assign the tag.
newSessionTag ::
  -- | 'key'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  SessionTag
newSessionTag pKey_ pValue_ =
  SessionTag'
    { key = pKey_,
      value = Core._Sensitive Lens.# pValue_
    }

-- | The key for the tag.
sessionTag_key :: Lens.Lens' SessionTag Prelude.Text
sessionTag_key = Lens.lens (\SessionTag' {key} -> key) (\s@SessionTag' {} a -> s {key = a} :: SessionTag)

-- | The value that you want to assign the tag.
sessionTag_value :: Lens.Lens' SessionTag Prelude.Text
sessionTag_value = Lens.lens (\SessionTag' {value} -> value) (\s@SessionTag' {} a -> s {value = a} :: SessionTag) Prelude.. Core._Sensitive

instance Prelude.Hashable SessionTag

instance Prelude.NFData SessionTag

instance Core.ToJSON SessionTag where
  toJSON SessionTag' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Key" Core..= key),
            Prelude.Just ("Value" Core..= value)
          ]
      )
