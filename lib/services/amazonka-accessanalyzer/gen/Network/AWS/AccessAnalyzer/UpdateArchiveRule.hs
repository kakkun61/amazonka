{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AccessAnalyzer.UpdateArchiveRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the criteria and values for the specified archive rule.
module Network.AWS.AccessAnalyzer.UpdateArchiveRule
  ( -- * Creating a Request
    UpdateArchiveRule (..),
    newUpdateArchiveRule,

    -- * Request Lenses
    updateArchiveRule_clientToken,
    updateArchiveRule_analyzerName,
    updateArchiveRule_filter,
    updateArchiveRule_ruleName,

    -- * Destructuring the Response
    UpdateArchiveRuleResponse (..),
    newUpdateArchiveRuleResponse,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Updates the specified archive rule.
--
-- /See:/ 'newUpdateArchiveRule' smart constructor.
data UpdateArchiveRule = UpdateArchiveRule'
  { -- | A client token.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the analyzer to update the archive rules for.
    analyzerName :: Prelude.Text,
    -- | A filter to match for the rules to update. Only rules that match the
    -- filter are updated.
    filter' :: Prelude.HashMap Prelude.Text Criterion,
    -- | The name of the rule to update.
    ruleName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateArchiveRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateArchiveRule_clientToken' - A client token.
--
-- 'analyzerName', 'updateArchiveRule_analyzerName' - The name of the analyzer to update the archive rules for.
--
-- 'filter'', 'updateArchiveRule_filter' - A filter to match for the rules to update. Only rules that match the
-- filter are updated.
--
-- 'ruleName', 'updateArchiveRule_ruleName' - The name of the rule to update.
newUpdateArchiveRule ::
  -- | 'analyzerName'
  Prelude.Text ->
  -- | 'ruleName'
  Prelude.Text ->
  UpdateArchiveRule
newUpdateArchiveRule pAnalyzerName_ pRuleName_ =
  UpdateArchiveRule'
    { clientToken = Prelude.Nothing,
      analyzerName = pAnalyzerName_,
      filter' = Prelude.mempty,
      ruleName = pRuleName_
    }

-- | A client token.
updateArchiveRule_clientToken :: Lens.Lens' UpdateArchiveRule (Prelude.Maybe Prelude.Text)
updateArchiveRule_clientToken = Lens.lens (\UpdateArchiveRule' {clientToken} -> clientToken) (\s@UpdateArchiveRule' {} a -> s {clientToken = a} :: UpdateArchiveRule)

-- | The name of the analyzer to update the archive rules for.
updateArchiveRule_analyzerName :: Lens.Lens' UpdateArchiveRule Prelude.Text
updateArchiveRule_analyzerName = Lens.lens (\UpdateArchiveRule' {analyzerName} -> analyzerName) (\s@UpdateArchiveRule' {} a -> s {analyzerName = a} :: UpdateArchiveRule)

-- | A filter to match for the rules to update. Only rules that match the
-- filter are updated.
updateArchiveRule_filter :: Lens.Lens' UpdateArchiveRule (Prelude.HashMap Prelude.Text Criterion)
updateArchiveRule_filter = Lens.lens (\UpdateArchiveRule' {filter'} -> filter') (\s@UpdateArchiveRule' {} a -> s {filter' = a} :: UpdateArchiveRule) Prelude.. Lens.coerced

-- | The name of the rule to update.
updateArchiveRule_ruleName :: Lens.Lens' UpdateArchiveRule Prelude.Text
updateArchiveRule_ruleName = Lens.lens (\UpdateArchiveRule' {ruleName} -> ruleName) (\s@UpdateArchiveRule' {} a -> s {ruleName = a} :: UpdateArchiveRule)

instance Core.AWSRequest UpdateArchiveRule where
  type
    AWSResponse UpdateArchiveRule =
      UpdateArchiveRuleResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull UpdateArchiveRuleResponse'

instance Prelude.Hashable UpdateArchiveRule

instance Prelude.NFData UpdateArchiveRule

instance Core.ToHeaders UpdateArchiveRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateArchiveRule where
  toJSON UpdateArchiveRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("filter" Core..= filter')
          ]
      )

instance Core.ToPath UpdateArchiveRule where
  toPath UpdateArchiveRule' {..} =
    Prelude.mconcat
      [ "/analyzer/",
        Core.toBS analyzerName,
        "/archive-rule/",
        Core.toBS ruleName
      ]

instance Core.ToQuery UpdateArchiveRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateArchiveRuleResponse' smart constructor.
data UpdateArchiveRuleResponse = UpdateArchiveRuleResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateArchiveRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateArchiveRuleResponse ::
  UpdateArchiveRuleResponse
newUpdateArchiveRuleResponse =
  UpdateArchiveRuleResponse'

instance Prelude.NFData UpdateArchiveRuleResponse
