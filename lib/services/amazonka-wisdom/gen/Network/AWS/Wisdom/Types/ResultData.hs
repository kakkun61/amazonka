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
-- Module      : Network.AWS.Wisdom.Types.ResultData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Wisdom.Types.ResultData where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Wisdom.Types.Document

-- | Information about the result.
--
-- /See:/ 'newResultData' smart constructor.
data ResultData = ResultData'
  { -- | The relevance score of the results.
    relevanceScore :: Prelude.Maybe Prelude.Double,
    -- | The document.
    document :: Document,
    -- | The identifier of the result data.
    resultId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResultData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'relevanceScore', 'resultData_relevanceScore' - The relevance score of the results.
--
-- 'document', 'resultData_document' - The document.
--
-- 'resultId', 'resultData_resultId' - The identifier of the result data.
newResultData ::
  -- | 'document'
  Document ->
  -- | 'resultId'
  Prelude.Text ->
  ResultData
newResultData pDocument_ pResultId_ =
  ResultData'
    { relevanceScore = Prelude.Nothing,
      document = pDocument_,
      resultId = pResultId_
    }

-- | The relevance score of the results.
resultData_relevanceScore :: Lens.Lens' ResultData (Prelude.Maybe Prelude.Double)
resultData_relevanceScore = Lens.lens (\ResultData' {relevanceScore} -> relevanceScore) (\s@ResultData' {} a -> s {relevanceScore = a} :: ResultData)

-- | The document.
resultData_document :: Lens.Lens' ResultData Document
resultData_document = Lens.lens (\ResultData' {document} -> document) (\s@ResultData' {} a -> s {document = a} :: ResultData)

-- | The identifier of the result data.
resultData_resultId :: Lens.Lens' ResultData Prelude.Text
resultData_resultId = Lens.lens (\ResultData' {resultId} -> resultId) (\s@ResultData' {} a -> s {resultId = a} :: ResultData)

instance Core.FromJSON ResultData where
  parseJSON =
    Core.withObject
      "ResultData"
      ( \x ->
          ResultData'
            Prelude.<$> (x Core..:? "relevanceScore")
            Prelude.<*> (x Core..: "document")
            Prelude.<*> (x Core..: "resultId")
      )

instance Prelude.Hashable ResultData

instance Prelude.NFData ResultData
