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
-- Module      : Network.AWS.AccessAnalyzer.GetArchiveRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about an archive rule.
--
-- To learn about filter keys that you can use to create an archive rule,
-- see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html IAM Access Analyzer filter keys>
-- in the __IAM User Guide__.
module Network.AWS.AccessAnalyzer.GetArchiveRule
  ( -- * Creating a Request
    GetArchiveRule (..),
    newGetArchiveRule,

    -- * Request Lenses
    getArchiveRule_analyzerName,
    getArchiveRule_ruleName,

    -- * Destructuring the Response
    GetArchiveRuleResponse (..),
    newGetArchiveRuleResponse,

    -- * Response Lenses
    getArchiveRuleResponse_httpStatus,
    getArchiveRuleResponse_archiveRule,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Retrieves an archive rule.
--
-- /See:/ 'newGetArchiveRule' smart constructor.
data GetArchiveRule = GetArchiveRule'
  { -- | The name of the analyzer to retrieve rules from.
    analyzerName :: Prelude.Text,
    -- | The name of the rule to retrieve.
    ruleName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetArchiveRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'analyzerName', 'getArchiveRule_analyzerName' - The name of the analyzer to retrieve rules from.
--
-- 'ruleName', 'getArchiveRule_ruleName' - The name of the rule to retrieve.
newGetArchiveRule ::
  -- | 'analyzerName'
  Prelude.Text ->
  -- | 'ruleName'
  Prelude.Text ->
  GetArchiveRule
newGetArchiveRule pAnalyzerName_ pRuleName_ =
  GetArchiveRule'
    { analyzerName = pAnalyzerName_,
      ruleName = pRuleName_
    }

-- | The name of the analyzer to retrieve rules from.
getArchiveRule_analyzerName :: Lens.Lens' GetArchiveRule Prelude.Text
getArchiveRule_analyzerName = Lens.lens (\GetArchiveRule' {analyzerName} -> analyzerName) (\s@GetArchiveRule' {} a -> s {analyzerName = a} :: GetArchiveRule)

-- | The name of the rule to retrieve.
getArchiveRule_ruleName :: Lens.Lens' GetArchiveRule Prelude.Text
getArchiveRule_ruleName = Lens.lens (\GetArchiveRule' {ruleName} -> ruleName) (\s@GetArchiveRule' {} a -> s {ruleName = a} :: GetArchiveRule)

instance Core.AWSRequest GetArchiveRule where
  type
    AWSResponse GetArchiveRule =
      GetArchiveRuleResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetArchiveRuleResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "archiveRule")
      )

instance Prelude.Hashable GetArchiveRule

instance Prelude.NFData GetArchiveRule

instance Core.ToHeaders GetArchiveRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetArchiveRule where
  toPath GetArchiveRule' {..} =
    Prelude.mconcat
      [ "/analyzer/",
        Core.toBS analyzerName,
        "/archive-rule/",
        Core.toBS ruleName
      ]

instance Core.ToQuery GetArchiveRule where
  toQuery = Prelude.const Prelude.mempty

-- | The response to the request.
--
-- /See:/ 'newGetArchiveRuleResponse' smart constructor.
data GetArchiveRuleResponse = GetArchiveRuleResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    archiveRule :: ArchiveRuleSummary
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetArchiveRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getArchiveRuleResponse_httpStatus' - The response's http status code.
--
-- 'archiveRule', 'getArchiveRuleResponse_archiveRule' - Undocumented member.
newGetArchiveRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'archiveRule'
  ArchiveRuleSummary ->
  GetArchiveRuleResponse
newGetArchiveRuleResponse pHttpStatus_ pArchiveRule_ =
  GetArchiveRuleResponse'
    { httpStatus = pHttpStatus_,
      archiveRule = pArchiveRule_
    }

-- | The response's http status code.
getArchiveRuleResponse_httpStatus :: Lens.Lens' GetArchiveRuleResponse Prelude.Int
getArchiveRuleResponse_httpStatus = Lens.lens (\GetArchiveRuleResponse' {httpStatus} -> httpStatus) (\s@GetArchiveRuleResponse' {} a -> s {httpStatus = a} :: GetArchiveRuleResponse)

-- | Undocumented member.
getArchiveRuleResponse_archiveRule :: Lens.Lens' GetArchiveRuleResponse ArchiveRuleSummary
getArchiveRuleResponse_archiveRule = Lens.lens (\GetArchiveRuleResponse' {archiveRule} -> archiveRule) (\s@GetArchiveRuleResponse' {} a -> s {archiveRule = a} :: GetArchiveRuleResponse)

instance Prelude.NFData GetArchiveRuleResponse
