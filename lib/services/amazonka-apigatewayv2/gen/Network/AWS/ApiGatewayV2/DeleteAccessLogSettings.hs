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
-- Module      : Network.AWS.ApiGatewayV2.DeleteAccessLogSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the AccessLogSettings for a Stage. To disable access logging for
-- a Stage, delete its AccessLogSettings.
module Network.AWS.ApiGatewayV2.DeleteAccessLogSettings
  ( -- * Creating a Request
    DeleteAccessLogSettings (..),
    newDeleteAccessLogSettings,

    -- * Request Lenses
    deleteAccessLogSettings_stageName,
    deleteAccessLogSettings_apiId,

    -- * Destructuring the Response
    DeleteAccessLogSettingsResponse (..),
    newDeleteAccessLogSettingsResponse,
  )
where

import Network.AWS.ApiGatewayV2.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteAccessLogSettings' smart constructor.
data DeleteAccessLogSettings = DeleteAccessLogSettings'
  { -- | The stage name. Stage names can only contain alphanumeric characters,
    -- hyphens, and underscores. Maximum length is 128 characters.
    stageName :: Prelude.Text,
    -- | The API identifier.
    apiId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAccessLogSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stageName', 'deleteAccessLogSettings_stageName' - The stage name. Stage names can only contain alphanumeric characters,
-- hyphens, and underscores. Maximum length is 128 characters.
--
-- 'apiId', 'deleteAccessLogSettings_apiId' - The API identifier.
newDeleteAccessLogSettings ::
  -- | 'stageName'
  Prelude.Text ->
  -- | 'apiId'
  Prelude.Text ->
  DeleteAccessLogSettings
newDeleteAccessLogSettings pStageName_ pApiId_ =
  DeleteAccessLogSettings'
    { stageName = pStageName_,
      apiId = pApiId_
    }

-- | The stage name. Stage names can only contain alphanumeric characters,
-- hyphens, and underscores. Maximum length is 128 characters.
deleteAccessLogSettings_stageName :: Lens.Lens' DeleteAccessLogSettings Prelude.Text
deleteAccessLogSettings_stageName = Lens.lens (\DeleteAccessLogSettings' {stageName} -> stageName) (\s@DeleteAccessLogSettings' {} a -> s {stageName = a} :: DeleteAccessLogSettings)

-- | The API identifier.
deleteAccessLogSettings_apiId :: Lens.Lens' DeleteAccessLogSettings Prelude.Text
deleteAccessLogSettings_apiId = Lens.lens (\DeleteAccessLogSettings' {apiId} -> apiId) (\s@DeleteAccessLogSettings' {} a -> s {apiId = a} :: DeleteAccessLogSettings)

instance Core.AWSRequest DeleteAccessLogSettings where
  type
    AWSResponse DeleteAccessLogSettings =
      DeleteAccessLogSettingsResponse
  request = Request.delete defaultService
  response =
    Response.receiveNull
      DeleteAccessLogSettingsResponse'

instance Prelude.Hashable DeleteAccessLogSettings

instance Prelude.NFData DeleteAccessLogSettings

instance Core.ToHeaders DeleteAccessLogSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteAccessLogSettings where
  toPath DeleteAccessLogSettings' {..} =
    Prelude.mconcat
      [ "/v2/apis/",
        Core.toBS apiId,
        "/stages/",
        Core.toBS stageName,
        "/accesslogsettings"
      ]

instance Core.ToQuery DeleteAccessLogSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteAccessLogSettingsResponse' smart constructor.
data DeleteAccessLogSettingsResponse = DeleteAccessLogSettingsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteAccessLogSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteAccessLogSettingsResponse ::
  DeleteAccessLogSettingsResponse
newDeleteAccessLogSettingsResponse =
  DeleteAccessLogSettingsResponse'

instance
  Prelude.NFData
    DeleteAccessLogSettingsResponse
