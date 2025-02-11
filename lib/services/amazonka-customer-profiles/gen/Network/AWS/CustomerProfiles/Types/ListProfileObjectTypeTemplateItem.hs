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
-- Module      : Network.AWS.CustomerProfiles.Types.ListProfileObjectTypeTemplateItem
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CustomerProfiles.Types.ListProfileObjectTypeTemplateItem where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A ProfileObjectTypeTemplate in a list of ProfileObjectTypeTemplates.
--
-- /See:/ 'newListProfileObjectTypeTemplateItem' smart constructor.
data ListProfileObjectTypeTemplateItem = ListProfileObjectTypeTemplateItem'
  { -- | The name of the source of the object template.
    sourceName :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the object template.
    templateId :: Prelude.Maybe Prelude.Text,
    -- | The source of the object template.
    sourceObject :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListProfileObjectTypeTemplateItem' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceName', 'listProfileObjectTypeTemplateItem_sourceName' - The name of the source of the object template.
--
-- 'templateId', 'listProfileObjectTypeTemplateItem_templateId' - A unique identifier for the object template.
--
-- 'sourceObject', 'listProfileObjectTypeTemplateItem_sourceObject' - The source of the object template.
newListProfileObjectTypeTemplateItem ::
  ListProfileObjectTypeTemplateItem
newListProfileObjectTypeTemplateItem =
  ListProfileObjectTypeTemplateItem'
    { sourceName =
        Prelude.Nothing,
      templateId = Prelude.Nothing,
      sourceObject = Prelude.Nothing
    }

-- | The name of the source of the object template.
listProfileObjectTypeTemplateItem_sourceName :: Lens.Lens' ListProfileObjectTypeTemplateItem (Prelude.Maybe Prelude.Text)
listProfileObjectTypeTemplateItem_sourceName = Lens.lens (\ListProfileObjectTypeTemplateItem' {sourceName} -> sourceName) (\s@ListProfileObjectTypeTemplateItem' {} a -> s {sourceName = a} :: ListProfileObjectTypeTemplateItem)

-- | A unique identifier for the object template.
listProfileObjectTypeTemplateItem_templateId :: Lens.Lens' ListProfileObjectTypeTemplateItem (Prelude.Maybe Prelude.Text)
listProfileObjectTypeTemplateItem_templateId = Lens.lens (\ListProfileObjectTypeTemplateItem' {templateId} -> templateId) (\s@ListProfileObjectTypeTemplateItem' {} a -> s {templateId = a} :: ListProfileObjectTypeTemplateItem)

-- | The source of the object template.
listProfileObjectTypeTemplateItem_sourceObject :: Lens.Lens' ListProfileObjectTypeTemplateItem (Prelude.Maybe Prelude.Text)
listProfileObjectTypeTemplateItem_sourceObject = Lens.lens (\ListProfileObjectTypeTemplateItem' {sourceObject} -> sourceObject) (\s@ListProfileObjectTypeTemplateItem' {} a -> s {sourceObject = a} :: ListProfileObjectTypeTemplateItem)

instance
  Core.FromJSON
    ListProfileObjectTypeTemplateItem
  where
  parseJSON =
    Core.withObject
      "ListProfileObjectTypeTemplateItem"
      ( \x ->
          ListProfileObjectTypeTemplateItem'
            Prelude.<$> (x Core..:? "SourceName")
            Prelude.<*> (x Core..:? "TemplateId")
            Prelude.<*> (x Core..:? "SourceObject")
      )

instance
  Prelude.Hashable
    ListProfileObjectTypeTemplateItem

instance
  Prelude.NFData
    ListProfileObjectTypeTemplateItem
