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
-- Module      : Network.AWS.QuickSight.DescribeThemeAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the alias for a theme.
module Network.AWS.QuickSight.DescribeThemeAlias
  ( -- * Creating a Request
    DescribeThemeAlias (..),
    newDescribeThemeAlias,

    -- * Request Lenses
    describeThemeAlias_awsAccountId,
    describeThemeAlias_themeId,
    describeThemeAlias_aliasName,

    -- * Destructuring the Response
    DescribeThemeAliasResponse (..),
    newDescribeThemeAliasResponse,

    -- * Response Lenses
    describeThemeAliasResponse_requestId,
    describeThemeAliasResponse_themeAlias,
    describeThemeAliasResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeThemeAlias' smart constructor.
data DescribeThemeAlias = DescribeThemeAlias'
  { -- | The ID of the Amazon Web Services account that contains the theme alias
    -- that you\'re describing.
    awsAccountId :: Prelude.Text,
    -- | The ID for the theme.
    themeId :: Prelude.Text,
    -- | The name of the theme alias that you want to describe.
    aliasName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThemeAlias' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'describeThemeAlias_awsAccountId' - The ID of the Amazon Web Services account that contains the theme alias
-- that you\'re describing.
--
-- 'themeId', 'describeThemeAlias_themeId' - The ID for the theme.
--
-- 'aliasName', 'describeThemeAlias_aliasName' - The name of the theme alias that you want to describe.
newDescribeThemeAlias ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'themeId'
  Prelude.Text ->
  -- | 'aliasName'
  Prelude.Text ->
  DescribeThemeAlias
newDescribeThemeAlias
  pAwsAccountId_
  pThemeId_
  pAliasName_ =
    DescribeThemeAlias'
      { awsAccountId = pAwsAccountId_,
        themeId = pThemeId_,
        aliasName = pAliasName_
      }

-- | The ID of the Amazon Web Services account that contains the theme alias
-- that you\'re describing.
describeThemeAlias_awsAccountId :: Lens.Lens' DescribeThemeAlias Prelude.Text
describeThemeAlias_awsAccountId = Lens.lens (\DescribeThemeAlias' {awsAccountId} -> awsAccountId) (\s@DescribeThemeAlias' {} a -> s {awsAccountId = a} :: DescribeThemeAlias)

-- | The ID for the theme.
describeThemeAlias_themeId :: Lens.Lens' DescribeThemeAlias Prelude.Text
describeThemeAlias_themeId = Lens.lens (\DescribeThemeAlias' {themeId} -> themeId) (\s@DescribeThemeAlias' {} a -> s {themeId = a} :: DescribeThemeAlias)

-- | The name of the theme alias that you want to describe.
describeThemeAlias_aliasName :: Lens.Lens' DescribeThemeAlias Prelude.Text
describeThemeAlias_aliasName = Lens.lens (\DescribeThemeAlias' {aliasName} -> aliasName) (\s@DescribeThemeAlias' {} a -> s {aliasName = a} :: DescribeThemeAlias)

instance Core.AWSRequest DescribeThemeAlias where
  type
    AWSResponse DescribeThemeAlias =
      DescribeThemeAliasResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeThemeAliasResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "ThemeAlias")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeThemeAlias

instance Prelude.NFData DescribeThemeAlias

instance Core.ToHeaders DescribeThemeAlias where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeThemeAlias where
  toPath DescribeThemeAlias' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/themes/",
        Core.toBS themeId,
        "/aliases/",
        Core.toBS aliasName
      ]

instance Core.ToQuery DescribeThemeAlias where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeThemeAliasResponse' smart constructor.
data DescribeThemeAliasResponse = DescribeThemeAliasResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Information about the theme alias.
    themeAlias :: Prelude.Maybe ThemeAlias,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeThemeAliasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'describeThemeAliasResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'themeAlias', 'describeThemeAliasResponse_themeAlias' - Information about the theme alias.
--
-- 'status', 'describeThemeAliasResponse_status' - The HTTP status of the request.
newDescribeThemeAliasResponse ::
  -- | 'status'
  Prelude.Int ->
  DescribeThemeAliasResponse
newDescribeThemeAliasResponse pStatus_ =
  DescribeThemeAliasResponse'
    { requestId =
        Prelude.Nothing,
      themeAlias = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
describeThemeAliasResponse_requestId :: Lens.Lens' DescribeThemeAliasResponse (Prelude.Maybe Prelude.Text)
describeThemeAliasResponse_requestId = Lens.lens (\DescribeThemeAliasResponse' {requestId} -> requestId) (\s@DescribeThemeAliasResponse' {} a -> s {requestId = a} :: DescribeThemeAliasResponse)

-- | Information about the theme alias.
describeThemeAliasResponse_themeAlias :: Lens.Lens' DescribeThemeAliasResponse (Prelude.Maybe ThemeAlias)
describeThemeAliasResponse_themeAlias = Lens.lens (\DescribeThemeAliasResponse' {themeAlias} -> themeAlias) (\s@DescribeThemeAliasResponse' {} a -> s {themeAlias = a} :: DescribeThemeAliasResponse)

-- | The HTTP status of the request.
describeThemeAliasResponse_status :: Lens.Lens' DescribeThemeAliasResponse Prelude.Int
describeThemeAliasResponse_status = Lens.lens (\DescribeThemeAliasResponse' {status} -> status) (\s@DescribeThemeAliasResponse' {} a -> s {status = a} :: DescribeThemeAliasResponse)

instance Prelude.NFData DescribeThemeAliasResponse
