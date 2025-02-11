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
-- Module      : Network.AWS.AccessAnalyzer.CreateArchiveRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an archive rule for the specified analyzer. Archive rules
-- automatically archive new findings that meet the criteria you define
-- when you create the rule.
--
-- To learn about filter keys that you can use to create an archive rule,
-- see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html IAM Access Analyzer filter keys>
-- in the __IAM User Guide__.
module Network.AWS.AccessAnalyzer.CreateArchiveRule
  ( -- * Creating a Request
    CreateArchiveRule (..),
    newCreateArchiveRule,

    -- * Request Lenses
    createArchiveRule_clientToken,
    createArchiveRule_analyzerName,
    createArchiveRule_filter,
    createArchiveRule_ruleName,

    -- * Destructuring the Response
    CreateArchiveRuleResponse (..),
    newCreateArchiveRuleResponse,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Creates an archive rule.
--
-- /See:/ 'newCreateArchiveRule' smart constructor.
data CreateArchiveRule = CreateArchiveRule'
  { -- | A client token.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the created analyzer.
    analyzerName :: Prelude.Text,
    -- | The criteria for the rule.
    filter' :: Prelude.HashMap Prelude.Text Criterion,
    -- | The name of the rule to create.
    ruleName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateArchiveRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createArchiveRule_clientToken' - A client token.
--
-- 'analyzerName', 'createArchiveRule_analyzerName' - The name of the created analyzer.
--
-- 'filter'', 'createArchiveRule_filter' - The criteria for the rule.
--
-- 'ruleName', 'createArchiveRule_ruleName' - The name of the rule to create.
newCreateArchiveRule ::
  -- | 'analyzerName'
  Prelude.Text ->
  -- | 'ruleName'
  Prelude.Text ->
  CreateArchiveRule
newCreateArchiveRule pAnalyzerName_ pRuleName_ =
  CreateArchiveRule'
    { clientToken = Prelude.Nothing,
      analyzerName = pAnalyzerName_,
      filter' = Prelude.mempty,
      ruleName = pRuleName_
    }

-- | A client token.
createArchiveRule_clientToken :: Lens.Lens' CreateArchiveRule (Prelude.Maybe Prelude.Text)
createArchiveRule_clientToken = Lens.lens (\CreateArchiveRule' {clientToken} -> clientToken) (\s@CreateArchiveRule' {} a -> s {clientToken = a} :: CreateArchiveRule)

-- | The name of the created analyzer.
createArchiveRule_analyzerName :: Lens.Lens' CreateArchiveRule Prelude.Text
createArchiveRule_analyzerName = Lens.lens (\CreateArchiveRule' {analyzerName} -> analyzerName) (\s@CreateArchiveRule' {} a -> s {analyzerName = a} :: CreateArchiveRule)

-- | The criteria for the rule.
createArchiveRule_filter :: Lens.Lens' CreateArchiveRule (Prelude.HashMap Prelude.Text Criterion)
createArchiveRule_filter = Lens.lens (\CreateArchiveRule' {filter'} -> filter') (\s@CreateArchiveRule' {} a -> s {filter' = a} :: CreateArchiveRule) Prelude.. Lens.coerced

-- | The name of the rule to create.
createArchiveRule_ruleName :: Lens.Lens' CreateArchiveRule Prelude.Text
createArchiveRule_ruleName = Lens.lens (\CreateArchiveRule' {ruleName} -> ruleName) (\s@CreateArchiveRule' {} a -> s {ruleName = a} :: CreateArchiveRule)

instance Core.AWSRequest CreateArchiveRule where
  type
    AWSResponse CreateArchiveRule =
      CreateArchiveRuleResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull CreateArchiveRuleResponse'

instance Prelude.Hashable CreateArchiveRule

instance Prelude.NFData CreateArchiveRule

instance Core.ToHeaders CreateArchiveRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateArchiveRule where
  toJSON CreateArchiveRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            Prelude.Just ("filter" Core..= filter'),
            Prelude.Just ("ruleName" Core..= ruleName)
          ]
      )

instance Core.ToPath CreateArchiveRule where
  toPath CreateArchiveRule' {..} =
    Prelude.mconcat
      [ "/analyzer/",
        Core.toBS analyzerName,
        "/archive-rule"
      ]

instance Core.ToQuery CreateArchiveRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateArchiveRuleResponse' smart constructor.
data CreateArchiveRuleResponse = CreateArchiveRuleResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateArchiveRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newCreateArchiveRuleResponse ::
  CreateArchiveRuleResponse
newCreateArchiveRuleResponse =
  CreateArchiveRuleResponse'

instance Prelude.NFData CreateArchiveRuleResponse
