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
-- Module      : Network.AWS.LakeFormation.Types.LFTagKeyResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LakeFormation.Types.LFTagKeyResource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure containing a tag key and values for a resource.
--
-- /See:/ 'newLFTagKeyResource' smart constructor.
data LFTagKeyResource = LFTagKeyResource'
  { -- | The identifier for the Data Catalog. By default, the account ID. The
    -- Data Catalog is the persistent metadata store. It contains database
    -- definitions, table definitions, and other control information to manage
    -- your AWS Lake Formation environment.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The key-name for the tag.
    tagKey :: Prelude.Text,
    -- | A list of possible values an attribute can take.
    tagValues :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LFTagKeyResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'lFTagKeyResource_catalogId' - The identifier for the Data Catalog. By default, the account ID. The
-- Data Catalog is the persistent metadata store. It contains database
-- definitions, table definitions, and other control information to manage
-- your AWS Lake Formation environment.
--
-- 'tagKey', 'lFTagKeyResource_tagKey' - The key-name for the tag.
--
-- 'tagValues', 'lFTagKeyResource_tagValues' - A list of possible values an attribute can take.
newLFTagKeyResource ::
  -- | 'tagKey'
  Prelude.Text ->
  -- | 'tagValues'
  Prelude.NonEmpty Prelude.Text ->
  LFTagKeyResource
newLFTagKeyResource pTagKey_ pTagValues_ =
  LFTagKeyResource'
    { catalogId = Prelude.Nothing,
      tagKey = pTagKey_,
      tagValues = Lens.coerced Lens.# pTagValues_
    }

-- | The identifier for the Data Catalog. By default, the account ID. The
-- Data Catalog is the persistent metadata store. It contains database
-- definitions, table definitions, and other control information to manage
-- your AWS Lake Formation environment.
lFTagKeyResource_catalogId :: Lens.Lens' LFTagKeyResource (Prelude.Maybe Prelude.Text)
lFTagKeyResource_catalogId = Lens.lens (\LFTagKeyResource' {catalogId} -> catalogId) (\s@LFTagKeyResource' {} a -> s {catalogId = a} :: LFTagKeyResource)

-- | The key-name for the tag.
lFTagKeyResource_tagKey :: Lens.Lens' LFTagKeyResource Prelude.Text
lFTagKeyResource_tagKey = Lens.lens (\LFTagKeyResource' {tagKey} -> tagKey) (\s@LFTagKeyResource' {} a -> s {tagKey = a} :: LFTagKeyResource)

-- | A list of possible values an attribute can take.
lFTagKeyResource_tagValues :: Lens.Lens' LFTagKeyResource (Prelude.NonEmpty Prelude.Text)
lFTagKeyResource_tagValues = Lens.lens (\LFTagKeyResource' {tagValues} -> tagValues) (\s@LFTagKeyResource' {} a -> s {tagValues = a} :: LFTagKeyResource) Prelude.. Lens.coerced

instance Core.FromJSON LFTagKeyResource where
  parseJSON =
    Core.withObject
      "LFTagKeyResource"
      ( \x ->
          LFTagKeyResource'
            Prelude.<$> (x Core..:? "CatalogId")
            Prelude.<*> (x Core..: "TagKey")
            Prelude.<*> (x Core..: "TagValues")
      )

instance Prelude.Hashable LFTagKeyResource

instance Prelude.NFData LFTagKeyResource

instance Core.ToJSON LFTagKeyResource where
  toJSON LFTagKeyResource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CatalogId" Core..=) Prelude.<$> catalogId,
            Prelude.Just ("TagKey" Core..= tagKey),
            Prelude.Just ("TagValues" Core..= tagValues)
          ]
      )
