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
-- Module      : Network.AWS.AccessAnalyzer.ApplyArchiveRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retroactively applies the archive rule to existing findings that meet
-- the archive rule criteria.
module Network.AWS.AccessAnalyzer.ApplyArchiveRule
  ( -- * Creating a Request
    ApplyArchiveRule (..),
    newApplyArchiveRule,

    -- * Request Lenses
    applyArchiveRule_clientToken,
    applyArchiveRule_analyzerArn,
    applyArchiveRule_ruleName,

    -- * Destructuring the Response
    ApplyArchiveRuleResponse (..),
    newApplyArchiveRuleResponse,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Retroactively applies an archive rule.
--
-- /See:/ 'newApplyArchiveRule' smart constructor.
data ApplyArchiveRule = ApplyArchiveRule'
  { -- | A client token.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon resource name (ARN) of the analyzer.
    analyzerArn :: Prelude.Text,
    -- | The name of the rule to apply.
    ruleName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplyArchiveRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'applyArchiveRule_clientToken' - A client token.
--
-- 'analyzerArn', 'applyArchiveRule_analyzerArn' - The Amazon resource name (ARN) of the analyzer.
--
-- 'ruleName', 'applyArchiveRule_ruleName' - The name of the rule to apply.
newApplyArchiveRule ::
  -- | 'analyzerArn'
  Prelude.Text ->
  -- | 'ruleName'
  Prelude.Text ->
  ApplyArchiveRule
newApplyArchiveRule pAnalyzerArn_ pRuleName_ =
  ApplyArchiveRule'
    { clientToken = Prelude.Nothing,
      analyzerArn = pAnalyzerArn_,
      ruleName = pRuleName_
    }

-- | A client token.
applyArchiveRule_clientToken :: Lens.Lens' ApplyArchiveRule (Prelude.Maybe Prelude.Text)
applyArchiveRule_clientToken = Lens.lens (\ApplyArchiveRule' {clientToken} -> clientToken) (\s@ApplyArchiveRule' {} a -> s {clientToken = a} :: ApplyArchiveRule)

-- | The Amazon resource name (ARN) of the analyzer.
applyArchiveRule_analyzerArn :: Lens.Lens' ApplyArchiveRule Prelude.Text
applyArchiveRule_analyzerArn = Lens.lens (\ApplyArchiveRule' {analyzerArn} -> analyzerArn) (\s@ApplyArchiveRule' {} a -> s {analyzerArn = a} :: ApplyArchiveRule)

-- | The name of the rule to apply.
applyArchiveRule_ruleName :: Lens.Lens' ApplyArchiveRule Prelude.Text
applyArchiveRule_ruleName = Lens.lens (\ApplyArchiveRule' {ruleName} -> ruleName) (\s@ApplyArchiveRule' {} a -> s {ruleName = a} :: ApplyArchiveRule)

instance Core.AWSRequest ApplyArchiveRule where
  type
    AWSResponse ApplyArchiveRule =
      ApplyArchiveRuleResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull ApplyArchiveRuleResponse'

instance Prelude.Hashable ApplyArchiveRule

instance Prelude.NFData ApplyArchiveRule

instance Core.ToHeaders ApplyArchiveRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ApplyArchiveRule where
  toJSON ApplyArchiveRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("analyzerArn" Core..= analyzerArn),
            Prelude.Just ("ruleName" Core..= ruleName)
          ]
      )

instance Core.ToPath ApplyArchiveRule where
  toPath = Prelude.const "/archive-rule"

instance Core.ToQuery ApplyArchiveRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newApplyArchiveRuleResponse' smart constructor.
data ApplyArchiveRuleResponse = ApplyArchiveRuleResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplyArchiveRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newApplyArchiveRuleResponse ::
  ApplyArchiveRuleResponse
newApplyArchiveRuleResponse =
  ApplyArchiveRuleResponse'

instance Prelude.NFData ApplyArchiveRuleResponse
