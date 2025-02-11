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
-- Module      : Network.AWS.Textract.Types.Warning
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Textract.Types.Warning where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A warning about an issue that occurred during asynchronous text analysis
-- (StartDocumentAnalysis) or asynchronous document text detection
-- (StartDocumentTextDetection).
--
-- /See:/ 'newWarning' smart constructor.
data Warning = Warning'
  { -- | A list of the pages that the warning applies to.
    pages :: Prelude.Maybe [Prelude.Natural],
    -- | The error code for the warning.
    errorCode :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Warning' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pages', 'warning_pages' - A list of the pages that the warning applies to.
--
-- 'errorCode', 'warning_errorCode' - The error code for the warning.
newWarning ::
  Warning
newWarning =
  Warning'
    { pages = Prelude.Nothing,
      errorCode = Prelude.Nothing
    }

-- | A list of the pages that the warning applies to.
warning_pages :: Lens.Lens' Warning (Prelude.Maybe [Prelude.Natural])
warning_pages = Lens.lens (\Warning' {pages} -> pages) (\s@Warning' {} a -> s {pages = a} :: Warning) Prelude.. Lens.mapping Lens.coerced

-- | The error code for the warning.
warning_errorCode :: Lens.Lens' Warning (Prelude.Maybe Prelude.Text)
warning_errorCode = Lens.lens (\Warning' {errorCode} -> errorCode) (\s@Warning' {} a -> s {errorCode = a} :: Warning)

instance Core.FromJSON Warning where
  parseJSON =
    Core.withObject
      "Warning"
      ( \x ->
          Warning'
            Prelude.<$> (x Core..:? "Pages" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "ErrorCode")
      )

instance Prelude.Hashable Warning

instance Prelude.NFData Warning
