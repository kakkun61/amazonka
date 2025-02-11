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
-- Module      : Network.AWS.ApplicationInsights.DescribeLogPattern
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describe a specific log pattern from a @LogPatternSet@.
module Network.AWS.ApplicationInsights.DescribeLogPattern
  ( -- * Creating a Request
    DescribeLogPattern (..),
    newDescribeLogPattern,

    -- * Request Lenses
    describeLogPattern_resourceGroupName,
    describeLogPattern_patternSetName,
    describeLogPattern_patternName,

    -- * Destructuring the Response
    DescribeLogPatternResponse (..),
    newDescribeLogPatternResponse,

    -- * Response Lenses
    describeLogPatternResponse_logPattern,
    describeLogPatternResponse_resourceGroupName,
    describeLogPatternResponse_httpStatus,
  )
where

import Network.AWS.ApplicationInsights.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeLogPattern' smart constructor.
data DescribeLogPattern = DescribeLogPattern'
  { -- | The name of the resource group.
    resourceGroupName :: Prelude.Text,
    -- | The name of the log pattern set.
    patternSetName :: Prelude.Text,
    -- | The name of the log pattern.
    patternName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLogPattern' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceGroupName', 'describeLogPattern_resourceGroupName' - The name of the resource group.
--
-- 'patternSetName', 'describeLogPattern_patternSetName' - The name of the log pattern set.
--
-- 'patternName', 'describeLogPattern_patternName' - The name of the log pattern.
newDescribeLogPattern ::
  -- | 'resourceGroupName'
  Prelude.Text ->
  -- | 'patternSetName'
  Prelude.Text ->
  -- | 'patternName'
  Prelude.Text ->
  DescribeLogPattern
newDescribeLogPattern
  pResourceGroupName_
  pPatternSetName_
  pPatternName_ =
    DescribeLogPattern'
      { resourceGroupName =
          pResourceGroupName_,
        patternSetName = pPatternSetName_,
        patternName = pPatternName_
      }

-- | The name of the resource group.
describeLogPattern_resourceGroupName :: Lens.Lens' DescribeLogPattern Prelude.Text
describeLogPattern_resourceGroupName = Lens.lens (\DescribeLogPattern' {resourceGroupName} -> resourceGroupName) (\s@DescribeLogPattern' {} a -> s {resourceGroupName = a} :: DescribeLogPattern)

-- | The name of the log pattern set.
describeLogPattern_patternSetName :: Lens.Lens' DescribeLogPattern Prelude.Text
describeLogPattern_patternSetName = Lens.lens (\DescribeLogPattern' {patternSetName} -> patternSetName) (\s@DescribeLogPattern' {} a -> s {patternSetName = a} :: DescribeLogPattern)

-- | The name of the log pattern.
describeLogPattern_patternName :: Lens.Lens' DescribeLogPattern Prelude.Text
describeLogPattern_patternName = Lens.lens (\DescribeLogPattern' {patternName} -> patternName) (\s@DescribeLogPattern' {} a -> s {patternName = a} :: DescribeLogPattern)

instance Core.AWSRequest DescribeLogPattern where
  type
    AWSResponse DescribeLogPattern =
      DescribeLogPatternResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeLogPatternResponse'
            Prelude.<$> (x Core..?> "LogPattern")
            Prelude.<*> (x Core..?> "ResourceGroupName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeLogPattern

instance Prelude.NFData DescribeLogPattern

instance Core.ToHeaders DescribeLogPattern where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "EC2WindowsBarleyService.DescribeLogPattern" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeLogPattern where
  toJSON DescribeLogPattern' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ResourceGroupName" Core..= resourceGroupName),
            Prelude.Just
              ("PatternSetName" Core..= patternSetName),
            Prelude.Just ("PatternName" Core..= patternName)
          ]
      )

instance Core.ToPath DescribeLogPattern where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeLogPattern where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeLogPatternResponse' smart constructor.
data DescribeLogPatternResponse = DescribeLogPatternResponse'
  { -- | The successfully created log pattern.
    logPattern :: Prelude.Maybe LogPattern,
    -- | The name of the resource group.
    resourceGroupName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeLogPatternResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'logPattern', 'describeLogPatternResponse_logPattern' - The successfully created log pattern.
--
-- 'resourceGroupName', 'describeLogPatternResponse_resourceGroupName' - The name of the resource group.
--
-- 'httpStatus', 'describeLogPatternResponse_httpStatus' - The response's http status code.
newDescribeLogPatternResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeLogPatternResponse
newDescribeLogPatternResponse pHttpStatus_ =
  DescribeLogPatternResponse'
    { logPattern =
        Prelude.Nothing,
      resourceGroupName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The successfully created log pattern.
describeLogPatternResponse_logPattern :: Lens.Lens' DescribeLogPatternResponse (Prelude.Maybe LogPattern)
describeLogPatternResponse_logPattern = Lens.lens (\DescribeLogPatternResponse' {logPattern} -> logPattern) (\s@DescribeLogPatternResponse' {} a -> s {logPattern = a} :: DescribeLogPatternResponse)

-- | The name of the resource group.
describeLogPatternResponse_resourceGroupName :: Lens.Lens' DescribeLogPatternResponse (Prelude.Maybe Prelude.Text)
describeLogPatternResponse_resourceGroupName = Lens.lens (\DescribeLogPatternResponse' {resourceGroupName} -> resourceGroupName) (\s@DescribeLogPatternResponse' {} a -> s {resourceGroupName = a} :: DescribeLogPatternResponse)

-- | The response's http status code.
describeLogPatternResponse_httpStatus :: Lens.Lens' DescribeLogPatternResponse Prelude.Int
describeLogPatternResponse_httpStatus = Lens.lens (\DescribeLogPatternResponse' {httpStatus} -> httpStatus) (\s@DescribeLogPatternResponse' {} a -> s {httpStatus = a} :: DescribeLogPatternResponse)

instance Prelude.NFData DescribeLogPatternResponse
