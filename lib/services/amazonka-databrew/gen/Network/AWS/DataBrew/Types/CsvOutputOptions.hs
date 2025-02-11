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
-- Module      : Network.AWS.DataBrew.Types.CsvOutputOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataBrew.Types.CsvOutputOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a set of options that define how DataBrew will write a
-- comma-separated value (CSV) file.
--
-- /See:/ 'newCsvOutputOptions' smart constructor.
data CsvOutputOptions = CsvOutputOptions'
  { -- | A single character that specifies the delimiter used to create CSV job
    -- output.
    delimiter :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CsvOutputOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'delimiter', 'csvOutputOptions_delimiter' - A single character that specifies the delimiter used to create CSV job
-- output.
newCsvOutputOptions ::
  CsvOutputOptions
newCsvOutputOptions =
  CsvOutputOptions' {delimiter = Prelude.Nothing}

-- | A single character that specifies the delimiter used to create CSV job
-- output.
csvOutputOptions_delimiter :: Lens.Lens' CsvOutputOptions (Prelude.Maybe Prelude.Text)
csvOutputOptions_delimiter = Lens.lens (\CsvOutputOptions' {delimiter} -> delimiter) (\s@CsvOutputOptions' {} a -> s {delimiter = a} :: CsvOutputOptions)

instance Core.FromJSON CsvOutputOptions where
  parseJSON =
    Core.withObject
      "CsvOutputOptions"
      ( \x ->
          CsvOutputOptions'
            Prelude.<$> (x Core..:? "Delimiter")
      )

instance Prelude.Hashable CsvOutputOptions

instance Prelude.NFData CsvOutputOptions

instance Core.ToJSON CsvOutputOptions where
  toJSON CsvOutputOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [("Delimiter" Core..=) Prelude.<$> delimiter]
      )
