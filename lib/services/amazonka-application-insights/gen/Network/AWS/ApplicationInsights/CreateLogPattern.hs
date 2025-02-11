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
-- Module      : Network.AWS.ApplicationInsights.CreateLogPattern
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an log pattern to a @LogPatternSet@.
module Network.AWS.ApplicationInsights.CreateLogPattern
  ( -- * Creating a Request
    CreateLogPattern (..),
    newCreateLogPattern,

    -- * Request Lenses
    createLogPattern_resourceGroupName,
    createLogPattern_patternSetName,
    createLogPattern_patternName,
    createLogPattern_pattern,
    createLogPattern_rank,

    -- * Destructuring the Response
    CreateLogPatternResponse (..),
    newCreateLogPatternResponse,

    -- * Response Lenses
    createLogPatternResponse_logPattern,
    createLogPatternResponse_resourceGroupName,
    createLogPatternResponse_httpStatus,
  )
where

import Network.AWS.ApplicationInsights.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateLogPattern' smart constructor.
data CreateLogPattern = CreateLogPattern'
  { -- | The name of the resource group.
    resourceGroupName :: Prelude.Text,
    -- | The name of the log pattern set.
    patternSetName :: Prelude.Text,
    -- | The name of the log pattern.
    patternName :: Prelude.Text,
    -- | The log pattern. The pattern must be DFA compatible. Patterns that
    -- utilize forward lookahead or backreference constructions are not
    -- supported.
    pattern' :: Prelude.Text,
    -- | Rank of the log pattern. Must be a value between @1@ and @1,000,000@.
    -- The patterns are sorted by rank, so we recommend that you set your
    -- highest priority patterns with the lowest rank. A pattern of rank @1@
    -- will be the first to get matched to a log line. A pattern of rank
    -- @1,000,000@ will be last to get matched. When you configure custom log
    -- patterns from the console, a @Low@ severity pattern translates to a
    -- @750,000@ rank. A @Medium@ severity pattern translates to a @500,000@
    -- rank. And a @High@ severity pattern translates to a @250,000@ rank. Rank
    -- values less than @1@ or greater than @1,000,000@ are reserved for
    -- AWS-provided patterns.
    rank :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLogPattern' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceGroupName', 'createLogPattern_resourceGroupName' - The name of the resource group.
--
-- 'patternSetName', 'createLogPattern_patternSetName' - The name of the log pattern set.
--
-- 'patternName', 'createLogPattern_patternName' - The name of the log pattern.
--
-- 'pattern'', 'createLogPattern_pattern' - The log pattern. The pattern must be DFA compatible. Patterns that
-- utilize forward lookahead or backreference constructions are not
-- supported.
--
-- 'rank', 'createLogPattern_rank' - Rank of the log pattern. Must be a value between @1@ and @1,000,000@.
-- The patterns are sorted by rank, so we recommend that you set your
-- highest priority patterns with the lowest rank. A pattern of rank @1@
-- will be the first to get matched to a log line. A pattern of rank
-- @1,000,000@ will be last to get matched. When you configure custom log
-- patterns from the console, a @Low@ severity pattern translates to a
-- @750,000@ rank. A @Medium@ severity pattern translates to a @500,000@
-- rank. And a @High@ severity pattern translates to a @250,000@ rank. Rank
-- values less than @1@ or greater than @1,000,000@ are reserved for
-- AWS-provided patterns.
newCreateLogPattern ::
  -- | 'resourceGroupName'
  Prelude.Text ->
  -- | 'patternSetName'
  Prelude.Text ->
  -- | 'patternName'
  Prelude.Text ->
  -- | 'pattern''
  Prelude.Text ->
  -- | 'rank'
  Prelude.Int ->
  CreateLogPattern
newCreateLogPattern
  pResourceGroupName_
  pPatternSetName_
  pPatternName_
  pPattern_
  pRank_ =
    CreateLogPattern'
      { resourceGroupName =
          pResourceGroupName_,
        patternSetName = pPatternSetName_,
        patternName = pPatternName_,
        pattern' = pPattern_,
        rank = pRank_
      }

-- | The name of the resource group.
createLogPattern_resourceGroupName :: Lens.Lens' CreateLogPattern Prelude.Text
createLogPattern_resourceGroupName = Lens.lens (\CreateLogPattern' {resourceGroupName} -> resourceGroupName) (\s@CreateLogPattern' {} a -> s {resourceGroupName = a} :: CreateLogPattern)

-- | The name of the log pattern set.
createLogPattern_patternSetName :: Lens.Lens' CreateLogPattern Prelude.Text
createLogPattern_patternSetName = Lens.lens (\CreateLogPattern' {patternSetName} -> patternSetName) (\s@CreateLogPattern' {} a -> s {patternSetName = a} :: CreateLogPattern)

-- | The name of the log pattern.
createLogPattern_patternName :: Lens.Lens' CreateLogPattern Prelude.Text
createLogPattern_patternName = Lens.lens (\CreateLogPattern' {patternName} -> patternName) (\s@CreateLogPattern' {} a -> s {patternName = a} :: CreateLogPattern)

-- | The log pattern. The pattern must be DFA compatible. Patterns that
-- utilize forward lookahead or backreference constructions are not
-- supported.
createLogPattern_pattern :: Lens.Lens' CreateLogPattern Prelude.Text
createLogPattern_pattern = Lens.lens (\CreateLogPattern' {pattern'} -> pattern') (\s@CreateLogPattern' {} a -> s {pattern' = a} :: CreateLogPattern)

-- | Rank of the log pattern. Must be a value between @1@ and @1,000,000@.
-- The patterns are sorted by rank, so we recommend that you set your
-- highest priority patterns with the lowest rank. A pattern of rank @1@
-- will be the first to get matched to a log line. A pattern of rank
-- @1,000,000@ will be last to get matched. When you configure custom log
-- patterns from the console, a @Low@ severity pattern translates to a
-- @750,000@ rank. A @Medium@ severity pattern translates to a @500,000@
-- rank. And a @High@ severity pattern translates to a @250,000@ rank. Rank
-- values less than @1@ or greater than @1,000,000@ are reserved for
-- AWS-provided patterns.
createLogPattern_rank :: Lens.Lens' CreateLogPattern Prelude.Int
createLogPattern_rank = Lens.lens (\CreateLogPattern' {rank} -> rank) (\s@CreateLogPattern' {} a -> s {rank = a} :: CreateLogPattern)

instance Core.AWSRequest CreateLogPattern where
  type
    AWSResponse CreateLogPattern =
      CreateLogPatternResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateLogPatternResponse'
            Prelude.<$> (x Core..?> "LogPattern")
            Prelude.<*> (x Core..?> "ResourceGroupName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateLogPattern

instance Prelude.NFData CreateLogPattern

instance Core.ToHeaders CreateLogPattern where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.CreateLogPattern" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateLogPattern where
  toJSON CreateLogPattern' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceGroupName" Core..= resourceGroupName),
            Prelude.Just
              ("PatternSetName" Core..= patternSetName),
            Prelude.Just ("PatternName" Core..= patternName),
            Prelude.Just ("Pattern" Core..= pattern'),
            Prelude.Just ("Rank" Core..= rank)
          ]
      )

instance Core.ToPath CreateLogPattern where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateLogPattern where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateLogPatternResponse' smart constructor.
data CreateLogPatternResponse = CreateLogPatternResponse'
  { -- | The successfully created log pattern.
    logPattern :: Prelude.Maybe LogPattern,
    -- | The name of the resource group.
    resourceGroupName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateLogPatternResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logPattern', 'createLogPatternResponse_logPattern' - The successfully created log pattern.
--
-- 'resourceGroupName', 'createLogPatternResponse_resourceGroupName' - The name of the resource group.
--
-- 'httpStatus', 'createLogPatternResponse_httpStatus' - The response's http status code.
newCreateLogPatternResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateLogPatternResponse
newCreateLogPatternResponse pHttpStatus_ =
  CreateLogPatternResponse'
    { logPattern =
        Prelude.Nothing,
      resourceGroupName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The successfully created log pattern.
createLogPatternResponse_logPattern :: Lens.Lens' CreateLogPatternResponse (Prelude.Maybe LogPattern)
createLogPatternResponse_logPattern = Lens.lens (\CreateLogPatternResponse' {logPattern} -> logPattern) (\s@CreateLogPatternResponse' {} a -> s {logPattern = a} :: CreateLogPatternResponse)

-- | The name of the resource group.
createLogPatternResponse_resourceGroupName :: Lens.Lens' CreateLogPatternResponse (Prelude.Maybe Prelude.Text)
createLogPatternResponse_resourceGroupName = Lens.lens (\CreateLogPatternResponse' {resourceGroupName} -> resourceGroupName) (\s@CreateLogPatternResponse' {} a -> s {resourceGroupName = a} :: CreateLogPatternResponse)

-- | The response's http status code.
createLogPatternResponse_httpStatus :: Lens.Lens' CreateLogPatternResponse Prelude.Int
createLogPatternResponse_httpStatus = Lens.lens (\CreateLogPatternResponse' {httpStatus} -> httpStatus) (\s@CreateLogPatternResponse' {} a -> s {httpStatus = a} :: CreateLogPatternResponse)

instance Prelude.NFData CreateLogPatternResponse
