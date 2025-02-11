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
-- Module      : Network.AWS.AccessAnalyzer.StartResourceScan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Immediately starts a scan of the policies applied to the specified
-- resource.
module Network.AWS.AccessAnalyzer.StartResourceScan
  ( -- * Creating a Request
    StartResourceScan (..),
    newStartResourceScan,

    -- * Request Lenses
    startResourceScan_analyzerArn,
    startResourceScan_resourceArn,

    -- * Destructuring the Response
    StartResourceScanResponse (..),
    newStartResourceScanResponse,
  )
where

import Network.AWS.AccessAnalyzer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Starts a scan of the policies applied to the specified resource.
--
-- /See:/ 'newStartResourceScan' smart constructor.
data StartResourceScan = StartResourceScan'
  { -- | The
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
    -- to use to scan the policies applied to the specified resource.
    analyzerArn :: Prelude.Text,
    -- | The ARN of the resource to scan.
    resourceArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartResourceScan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'analyzerArn', 'startResourceScan_analyzerArn' - The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- to use to scan the policies applied to the specified resource.
--
-- 'resourceArn', 'startResourceScan_resourceArn' - The ARN of the resource to scan.
newStartResourceScan ::
  -- | 'analyzerArn'
  Prelude.Text ->
  -- | 'resourceArn'
  Prelude.Text ->
  StartResourceScan
newStartResourceScan pAnalyzerArn_ pResourceArn_ =
  StartResourceScan'
    { analyzerArn = pAnalyzerArn_,
      resourceArn = pResourceArn_
    }

-- | The
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources ARN of the analyzer>
-- to use to scan the policies applied to the specified resource.
startResourceScan_analyzerArn :: Lens.Lens' StartResourceScan Prelude.Text
startResourceScan_analyzerArn = Lens.lens (\StartResourceScan' {analyzerArn} -> analyzerArn) (\s@StartResourceScan' {} a -> s {analyzerArn = a} :: StartResourceScan)

-- | The ARN of the resource to scan.
startResourceScan_resourceArn :: Lens.Lens' StartResourceScan Prelude.Text
startResourceScan_resourceArn = Lens.lens (\StartResourceScan' {resourceArn} -> resourceArn) (\s@StartResourceScan' {} a -> s {resourceArn = a} :: StartResourceScan)

instance Core.AWSRequest StartResourceScan where
  type
    AWSResponse StartResourceScan =
      StartResourceScanResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull StartResourceScanResponse'

instance Prelude.Hashable StartResourceScan

instance Prelude.NFData StartResourceScan

instance Core.ToHeaders StartResourceScan where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON StartResourceScan where
  toJSON StartResourceScan' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("analyzerArn" Core..= analyzerArn),
            Prelude.Just ("resourceArn" Core..= resourceArn)
          ]
      )

instance Core.ToPath StartResourceScan where
  toPath = Prelude.const "/resource/scan"

instance Core.ToQuery StartResourceScan where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newStartResourceScanResponse' smart constructor.
data StartResourceScanResponse = StartResourceScanResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StartResourceScanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newStartResourceScanResponse ::
  StartResourceScanResponse
newStartResourceScanResponse =
  StartResourceScanResponse'

instance Prelude.NFData StartResourceScanResponse
