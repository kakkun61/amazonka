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
-- Module      : Network.AWS.QuickSight.UpdateThemeAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an alias of a theme.
module Network.AWS.QuickSight.UpdateThemeAlias
  ( -- * Creating a Request
    UpdateThemeAlias (..),
    newUpdateThemeAlias,

    -- * Request Lenses
    updateThemeAlias_awsAccountId,
    updateThemeAlias_themeId,
    updateThemeAlias_aliasName,
    updateThemeAlias_themeVersionNumber,

    -- * Destructuring the Response
    UpdateThemeAliasResponse (..),
    newUpdateThemeAliasResponse,

    -- * Response Lenses
    updateThemeAliasResponse_requestId,
    updateThemeAliasResponse_themeAlias,
    updateThemeAliasResponse_status,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateThemeAlias' smart constructor.
data UpdateThemeAlias = UpdateThemeAlias'
  { -- | The ID of the Amazon Web Services account that contains the theme alias
    -- that you\'re updating.
    awsAccountId :: Prelude.Text,
    -- | The ID for the theme.
    themeId :: Prelude.Text,
    -- | The name of the theme alias that you want to update.
    aliasName :: Prelude.Text,
    -- | The version number of the theme that the alias should reference.
    themeVersionNumber :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateThemeAlias' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'awsAccountId', 'updateThemeAlias_awsAccountId' - The ID of the Amazon Web Services account that contains the theme alias
-- that you\'re updating.
--
-- 'themeId', 'updateThemeAlias_themeId' - The ID for the theme.
--
-- 'aliasName', 'updateThemeAlias_aliasName' - The name of the theme alias that you want to update.
--
-- 'themeVersionNumber', 'updateThemeAlias_themeVersionNumber' - The version number of the theme that the alias should reference.
newUpdateThemeAlias ::
  -- | 'awsAccountId'
  Prelude.Text ->
  -- | 'themeId'
  Prelude.Text ->
  -- | 'aliasName'
  Prelude.Text ->
  -- | 'themeVersionNumber'
  Prelude.Natural ->
  UpdateThemeAlias
newUpdateThemeAlias
  pAwsAccountId_
  pThemeId_
  pAliasName_
  pThemeVersionNumber_ =
    UpdateThemeAlias'
      { awsAccountId = pAwsAccountId_,
        themeId = pThemeId_,
        aliasName = pAliasName_,
        themeVersionNumber = pThemeVersionNumber_
      }

-- | The ID of the Amazon Web Services account that contains the theme alias
-- that you\'re updating.
updateThemeAlias_awsAccountId :: Lens.Lens' UpdateThemeAlias Prelude.Text
updateThemeAlias_awsAccountId = Lens.lens (\UpdateThemeAlias' {awsAccountId} -> awsAccountId) (\s@UpdateThemeAlias' {} a -> s {awsAccountId = a} :: UpdateThemeAlias)

-- | The ID for the theme.
updateThemeAlias_themeId :: Lens.Lens' UpdateThemeAlias Prelude.Text
updateThemeAlias_themeId = Lens.lens (\UpdateThemeAlias' {themeId} -> themeId) (\s@UpdateThemeAlias' {} a -> s {themeId = a} :: UpdateThemeAlias)

-- | The name of the theme alias that you want to update.
updateThemeAlias_aliasName :: Lens.Lens' UpdateThemeAlias Prelude.Text
updateThemeAlias_aliasName = Lens.lens (\UpdateThemeAlias' {aliasName} -> aliasName) (\s@UpdateThemeAlias' {} a -> s {aliasName = a} :: UpdateThemeAlias)

-- | The version number of the theme that the alias should reference.
updateThemeAlias_themeVersionNumber :: Lens.Lens' UpdateThemeAlias Prelude.Natural
updateThemeAlias_themeVersionNumber = Lens.lens (\UpdateThemeAlias' {themeVersionNumber} -> themeVersionNumber) (\s@UpdateThemeAlias' {} a -> s {themeVersionNumber = a} :: UpdateThemeAlias)

instance Core.AWSRequest UpdateThemeAlias where
  type
    AWSResponse UpdateThemeAlias =
      UpdateThemeAliasResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateThemeAliasResponse'
            Prelude.<$> (x Core..?> "RequestId")
            Prelude.<*> (x Core..?> "ThemeAlias")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateThemeAlias

instance Prelude.NFData UpdateThemeAlias

instance Core.ToHeaders UpdateThemeAlias where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateThemeAlias where
  toJSON UpdateThemeAlias' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ThemeVersionNumber" Core..= themeVersionNumber)
          ]
      )

instance Core.ToPath UpdateThemeAlias where
  toPath UpdateThemeAlias' {..} =
    Prelude.mconcat
      [ "/accounts/",
        Core.toBS awsAccountId,
        "/themes/",
        Core.toBS themeId,
        "/aliases/",
        Core.toBS aliasName
      ]

instance Core.ToQuery UpdateThemeAlias where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateThemeAliasResponse' smart constructor.
data UpdateThemeAliasResponse = UpdateThemeAliasResponse'
  { -- | The Amazon Web Services request ID for this operation.
    requestId :: Prelude.Maybe Prelude.Text,
    -- | Information about the theme alias.
    themeAlias :: Prelude.Maybe ThemeAlias,
    -- | The HTTP status of the request.
    status :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateThemeAliasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'requestId', 'updateThemeAliasResponse_requestId' - The Amazon Web Services request ID for this operation.
--
-- 'themeAlias', 'updateThemeAliasResponse_themeAlias' - Information about the theme alias.
--
-- 'status', 'updateThemeAliasResponse_status' - The HTTP status of the request.
newUpdateThemeAliasResponse ::
  -- | 'status'
  Prelude.Int ->
  UpdateThemeAliasResponse
newUpdateThemeAliasResponse pStatus_ =
  UpdateThemeAliasResponse'
    { requestId =
        Prelude.Nothing,
      themeAlias = Prelude.Nothing,
      status = pStatus_
    }

-- | The Amazon Web Services request ID for this operation.
updateThemeAliasResponse_requestId :: Lens.Lens' UpdateThemeAliasResponse (Prelude.Maybe Prelude.Text)
updateThemeAliasResponse_requestId = Lens.lens (\UpdateThemeAliasResponse' {requestId} -> requestId) (\s@UpdateThemeAliasResponse' {} a -> s {requestId = a} :: UpdateThemeAliasResponse)

-- | Information about the theme alias.
updateThemeAliasResponse_themeAlias :: Lens.Lens' UpdateThemeAliasResponse (Prelude.Maybe ThemeAlias)
updateThemeAliasResponse_themeAlias = Lens.lens (\UpdateThemeAliasResponse' {themeAlias} -> themeAlias) (\s@UpdateThemeAliasResponse' {} a -> s {themeAlias = a} :: UpdateThemeAliasResponse)

-- | The HTTP status of the request.
updateThemeAliasResponse_status :: Lens.Lens' UpdateThemeAliasResponse Prelude.Int
updateThemeAliasResponse_status = Lens.lens (\UpdateThemeAliasResponse' {status} -> status) (\s@UpdateThemeAliasResponse' {} a -> s {status = a} :: UpdateThemeAliasResponse)

instance Prelude.NFData UpdateThemeAliasResponse
