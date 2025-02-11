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
-- Module      : Network.AWS.ApplicationInsights.Types.Tag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationInsights.Types.Tag where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that defines the tags associated with an application. A /tag/
-- is a label that you optionally define and associate with an application.
-- Tags can help you categorize and manage resources in different ways,
-- such as by purpose, owner, environment, or other criteria.
--
-- Each tag consists of a required /tag key/ and an associated /tag value/,
-- both of which you define. A tag key is a general label that acts as a
-- category for a more specific tag value. A tag value acts as a descriptor
-- within a tag key. A tag key can contain as many as 128 characters. A tag
-- value can contain as many as 256 characters. The characters can be
-- Unicode letters, digits, white space, or one of the following symbols: _
-- . : \/ = + -. The following additional restrictions apply to tags:
--
-- -   Tag keys and values are case sensitive.
--
-- -   For each associated resource, each tag key must be unique and it can
--     have only one value.
--
-- -   The @aws:@ prefix is reserved for use by AWS; you can’t use it in
--     any tag keys or values that you define. In addition, you can\'t edit
--     or remove tag keys or values that use this prefix.
--
-- /See:/ 'newTag' smart constructor.
data Tag = Tag'
  { -- | One part of a key-value pair that defines a tag. The maximum length of a
    -- tag key is 128 characters. The minimum length is 1 character.
    key :: Prelude.Text,
    -- | The optional part of a key-value pair that defines a tag. The maximum
    -- length of a tag value is 256 characters. The minimum length is 0
    -- characters. If you don\'t want an application to have a specific tag
    -- value, don\'t specify a value for this parameter.
    value :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Tag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'key', 'tag_key' - One part of a key-value pair that defines a tag. The maximum length of a
-- tag key is 128 characters. The minimum length is 1 character.
--
-- 'value', 'tag_value' - The optional part of a key-value pair that defines a tag. The maximum
-- length of a tag value is 256 characters. The minimum length is 0
-- characters. If you don\'t want an application to have a specific tag
-- value, don\'t specify a value for this parameter.
newTag ::
  -- | 'key'
  Prelude.Text ->
  -- | 'value'
  Prelude.Text ->
  Tag
newTag pKey_ pValue_ =
  Tag' {key = pKey_, value = pValue_}

-- | One part of a key-value pair that defines a tag. The maximum length of a
-- tag key is 128 characters. The minimum length is 1 character.
tag_key :: Lens.Lens' Tag Prelude.Text
tag_key = Lens.lens (\Tag' {key} -> key) (\s@Tag' {} a -> s {key = a} :: Tag)

-- | The optional part of a key-value pair that defines a tag. The maximum
-- length of a tag value is 256 characters. The minimum length is 0
-- characters. If you don\'t want an application to have a specific tag
-- value, don\'t specify a value for this parameter.
tag_value :: Lens.Lens' Tag Prelude.Text
tag_value = Lens.lens (\Tag' {value} -> value) (\s@Tag' {} a -> s {value = a} :: Tag)

instance Core.FromJSON Tag where
  parseJSON =
    Core.withObject
      "Tag"
      ( \x ->
          Tag'
            Prelude.<$> (x Core..: "Key") Prelude.<*> (x Core..: "Value")
      )

instance Prelude.Hashable Tag

instance Prelude.NFData Tag

instance Core.ToJSON Tag where
  toJSON Tag' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Key" Core..= key),
            Prelude.Just ("Value" Core..= value)
          ]
      )
