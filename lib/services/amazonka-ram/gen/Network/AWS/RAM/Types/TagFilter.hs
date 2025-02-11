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
-- Module      : Network.AWS.RAM.Types.TagFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RAM.Types.TagFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Used to filter information based on tags.
--
-- /See:/ 'newTagFilter' smart constructor.
data TagFilter = TagFilter'
  { -- | The tag values.
    tagValues :: Prelude.Maybe [Prelude.Text],
    -- | The tag key.
    tagKey :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TagFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagValues', 'tagFilter_tagValues' - The tag values.
--
-- 'tagKey', 'tagFilter_tagKey' - The tag key.
newTagFilter ::
  TagFilter
newTagFilter =
  TagFilter'
    { tagValues = Prelude.Nothing,
      tagKey = Prelude.Nothing
    }

-- | The tag values.
tagFilter_tagValues :: Lens.Lens' TagFilter (Prelude.Maybe [Prelude.Text])
tagFilter_tagValues = Lens.lens (\TagFilter' {tagValues} -> tagValues) (\s@TagFilter' {} a -> s {tagValues = a} :: TagFilter) Prelude.. Lens.mapping Lens.coerced

-- | The tag key.
tagFilter_tagKey :: Lens.Lens' TagFilter (Prelude.Maybe Prelude.Text)
tagFilter_tagKey = Lens.lens (\TagFilter' {tagKey} -> tagKey) (\s@TagFilter' {} a -> s {tagKey = a} :: TagFilter)

instance Prelude.Hashable TagFilter

instance Prelude.NFData TagFilter

instance Core.ToJSON TagFilter where
  toJSON TagFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("tagValues" Core..=) Prelude.<$> tagValues,
            ("tagKey" Core..=) Prelude.<$> tagKey
          ]
      )
