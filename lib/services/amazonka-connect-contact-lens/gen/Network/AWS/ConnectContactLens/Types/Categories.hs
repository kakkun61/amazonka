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
-- Module      : Network.AWS.ConnectContactLens.Types.Categories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ConnectContactLens.Types.Categories where

import Network.AWS.ConnectContactLens.Types.CategoryDetails
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides the category rules that are used to automatically categorize
-- contacts based on uttered keywords and phrases.
--
-- /See:/ 'newCategories' smart constructor.
data Categories = Categories'
  { -- | The category rules that have been matched in the analyzed segment.
    matchedCategories :: [Prelude.Text],
    -- | The category rule that was matched and when it occurred in the
    -- transcript.
    matchedDetails :: Prelude.HashMap Prelude.Text CategoryDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Categories' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'matchedCategories', 'categories_matchedCategories' - The category rules that have been matched in the analyzed segment.
--
-- 'matchedDetails', 'categories_matchedDetails' - The category rule that was matched and when it occurred in the
-- transcript.
newCategories ::
  Categories
newCategories =
  Categories'
    { matchedCategories = Prelude.mempty,
      matchedDetails = Prelude.mempty
    }

-- | The category rules that have been matched in the analyzed segment.
categories_matchedCategories :: Lens.Lens' Categories [Prelude.Text]
categories_matchedCategories = Lens.lens (\Categories' {matchedCategories} -> matchedCategories) (\s@Categories' {} a -> s {matchedCategories = a} :: Categories) Prelude.. Lens.coerced

-- | The category rule that was matched and when it occurred in the
-- transcript.
categories_matchedDetails :: Lens.Lens' Categories (Prelude.HashMap Prelude.Text CategoryDetails)
categories_matchedDetails = Lens.lens (\Categories' {matchedDetails} -> matchedDetails) (\s@Categories' {} a -> s {matchedDetails = a} :: Categories) Prelude.. Lens.coerced

instance Core.FromJSON Categories where
  parseJSON =
    Core.withObject
      "Categories"
      ( \x ->
          Categories'
            Prelude.<$> ( x Core..:? "MatchedCategories"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> ( x Core..:? "MatchedDetails"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable Categories

instance Prelude.NFData Categories
