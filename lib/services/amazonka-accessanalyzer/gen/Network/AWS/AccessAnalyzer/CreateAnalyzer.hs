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
-- Module      : Network.AWS.AccessAnalyzer.CreateAnalyzer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an analyzer for your account.
module Network.AWS.AccessAnalyzer.CreateAnalyzer
  ( -- * Creating a Request
    CreateAnalyzer (..),
    newCreateAnalyzer,

    -- * Request Lenses
    createAnalyzer_clientToken,
    createAnalyzer_archiveRules,
    createAnalyzer_tags,
    createAnalyzer_analyzerName,
    createAnalyzer_type,

    -- * Destructuring the Response
    CreateAnalyzerResponse (..),
    newCreateAnalyzerResponse,

    -- * Response Lenses
    createAnalyzerResponse_arn,
    createAnalyzerResponse_httpStatus,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Creates an analyzer.
--
-- /See:/ 'newCreateAnalyzer' smart constructor.
data CreateAnalyzer = CreateAnalyzer'
  { -- | A client token.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the archive rules to add for the analyzer. Archive rules
    -- automatically archive findings that meet the criteria you define for the
    -- rule.
    archiveRules :: Prelude.Maybe [InlineArchiveRule],
    -- | The tags to apply to the analyzer.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The name of the analyzer to create.
    analyzerName :: Prelude.Text,
    -- | The type of analyzer to create. Only ACCOUNT and ORGANIZATION analyzers
    -- are supported. You can create only one analyzer per account per Region.
    -- You can create up to 5 analyzers per organization per Region.
    type' :: Type
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAnalyzer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createAnalyzer_clientToken' - A client token.
--
-- 'archiveRules', 'createAnalyzer_archiveRules' - Specifies the archive rules to add for the analyzer. Archive rules
-- automatically archive findings that meet the criteria you define for the
-- rule.
--
-- 'tags', 'createAnalyzer_tags' - The tags to apply to the analyzer.
--
-- 'analyzerName', 'createAnalyzer_analyzerName' - The name of the analyzer to create.
--
-- 'type'', 'createAnalyzer_type' - The type of analyzer to create. Only ACCOUNT and ORGANIZATION analyzers
-- are supported. You can create only one analyzer per account per Region.
-- You can create up to 5 analyzers per organization per Region.
newCreateAnalyzer ::
  -- | 'analyzerName'
  Prelude.Text ->
  -- | 'type''
  Type ->
  CreateAnalyzer
newCreateAnalyzer pAnalyzerName_ pType_ =
  CreateAnalyzer'
    { clientToken = Prelude.Nothing,
      archiveRules = Prelude.Nothing,
      tags = Prelude.Nothing,
      analyzerName = pAnalyzerName_,
      type' = pType_
    }

-- | A client token.
createAnalyzer_clientToken :: Lens.Lens' CreateAnalyzer (Prelude.Maybe Prelude.Text)
createAnalyzer_clientToken = Lens.lens (\CreateAnalyzer' {clientToken} -> clientToken) (\s@CreateAnalyzer' {} a -> s {clientToken = a} :: CreateAnalyzer)

-- | Specifies the archive rules to add for the analyzer. Archive rules
-- automatically archive findings that meet the criteria you define for the
-- rule.
createAnalyzer_archiveRules :: Lens.Lens' CreateAnalyzer (Prelude.Maybe [InlineArchiveRule])
createAnalyzer_archiveRules = Lens.lens (\CreateAnalyzer' {archiveRules} -> archiveRules) (\s@CreateAnalyzer' {} a -> s {archiveRules = a} :: CreateAnalyzer) Prelude.. Lens.mapping Lens.coerced

-- | The tags to apply to the analyzer.
createAnalyzer_tags :: Lens.Lens' CreateAnalyzer (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAnalyzer_tags = Lens.lens (\CreateAnalyzer' {tags} -> tags) (\s@CreateAnalyzer' {} a -> s {tags = a} :: CreateAnalyzer) Prelude.. Lens.mapping Lens.coerced

-- | The name of the analyzer to create.
createAnalyzer_analyzerName :: Lens.Lens' CreateAnalyzer Prelude.Text
createAnalyzer_analyzerName = Lens.lens (\CreateAnalyzer' {analyzerName} -> analyzerName) (\s@CreateAnalyzer' {} a -> s {analyzerName = a} :: CreateAnalyzer)

-- | The type of analyzer to create. Only ACCOUNT and ORGANIZATION analyzers
-- are supported. You can create only one analyzer per account per Region.
-- You can create up to 5 analyzers per organization per Region.
createAnalyzer_type :: Lens.Lens' CreateAnalyzer Type
createAnalyzer_type = Lens.lens (\CreateAnalyzer' {type'} -> type') (\s@CreateAnalyzer' {} a -> s {type' = a} :: CreateAnalyzer)

instance Core.AWSRequest CreateAnalyzer where
  type
    AWSResponse CreateAnalyzer =
      CreateAnalyzerResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAnalyzerResponse'
            Prelude.<$> (x Core..?> "arn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAnalyzer

instance Prelude.NFData CreateAnalyzer

instance Core.ToHeaders CreateAnalyzer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAnalyzer where
  toJSON CreateAnalyzer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("archiveRules" Core..=) Prelude.<$> archiveRules,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("analyzerName" Core..= analyzerName),
            Prelude.Just ("type" Core..= type')
          ]
      )

instance Core.ToPath CreateAnalyzer where
  toPath = Prelude.const "/analyzer"

instance Core.ToQuery CreateAnalyzer where
  toQuery = Prelude.const Prelude.mempty

-- | The response to the request to create an analyzer.
--
-- /See:/ 'newCreateAnalyzerResponse' smart constructor.
data CreateAnalyzerResponse = CreateAnalyzerResponse'
  { -- | The ARN of the analyzer that was created by the request.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAnalyzerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'createAnalyzerResponse_arn' - The ARN of the analyzer that was created by the request.
--
-- 'httpStatus', 'createAnalyzerResponse_httpStatus' - The response's http status code.
newCreateAnalyzerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAnalyzerResponse
newCreateAnalyzerResponse pHttpStatus_ =
  CreateAnalyzerResponse'
    { arn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ARN of the analyzer that was created by the request.
createAnalyzerResponse_arn :: Lens.Lens' CreateAnalyzerResponse (Prelude.Maybe Prelude.Text)
createAnalyzerResponse_arn = Lens.lens (\CreateAnalyzerResponse' {arn} -> arn) (\s@CreateAnalyzerResponse' {} a -> s {arn = a} :: CreateAnalyzerResponse)

-- | The response's http status code.
createAnalyzerResponse_httpStatus :: Lens.Lens' CreateAnalyzerResponse Prelude.Int
createAnalyzerResponse_httpStatus = Lens.lens (\CreateAnalyzerResponse' {httpStatus} -> httpStatus) (\s@CreateAnalyzerResponse' {} a -> s {httpStatus = a} :: CreateAnalyzerResponse)

instance Prelude.NFData CreateAnalyzerResponse
