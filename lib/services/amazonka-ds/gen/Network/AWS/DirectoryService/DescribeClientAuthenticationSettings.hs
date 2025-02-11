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
-- Module      : Network.AWS.DirectoryService.DescribeClientAuthenticationSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the type of client authentication for the
-- specified directory, if the type is specified. If no type is specified,
-- information about all client authentication types that are supported for
-- the specified directory is retrieved. Currently, only @SmartCard@ is
-- supported.
module Network.AWS.DirectoryService.DescribeClientAuthenticationSettings
  ( -- * Creating a Request
    DescribeClientAuthenticationSettings (..),
    newDescribeClientAuthenticationSettings,

    -- * Request Lenses
    describeClientAuthenticationSettings_nextToken,
    describeClientAuthenticationSettings_limit,
    describeClientAuthenticationSettings_type,
    describeClientAuthenticationSettings_directoryId,

    -- * Destructuring the Response
    DescribeClientAuthenticationSettingsResponse (..),
    newDescribeClientAuthenticationSettingsResponse,

    -- * Response Lenses
    describeClientAuthenticationSettingsResponse_nextToken,
    describeClientAuthenticationSettingsResponse_clientAuthenticationSettingsInfo,
    describeClientAuthenticationSettingsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectoryService.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeClientAuthenticationSettings' smart constructor.
data DescribeClientAuthenticationSettings = DescribeClientAuthenticationSettings'
  { -- | The /DescribeClientAuthenticationSettingsResult.NextToken/ value from a
    -- previous call to DescribeClientAuthenticationSettings. Pass null if this
    -- is the first call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to return. If this value is zero, the
    -- maximum number of items is specified by the limitations of the
    -- operation.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The type of client authentication for which to retrieve information. If
    -- no type is specified, a list of all client authentication types that are
    -- supported for the specified directory is retrieved.
    type' :: Prelude.Maybe ClientAuthenticationType,
    -- | The identifier of the directory for which to retrieve information.
    directoryId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeClientAuthenticationSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeClientAuthenticationSettings_nextToken' - The /DescribeClientAuthenticationSettingsResult.NextToken/ value from a
-- previous call to DescribeClientAuthenticationSettings. Pass null if this
-- is the first call.
--
-- 'limit', 'describeClientAuthenticationSettings_limit' - The maximum number of items to return. If this value is zero, the
-- maximum number of items is specified by the limitations of the
-- operation.
--
-- 'type'', 'describeClientAuthenticationSettings_type' - The type of client authentication for which to retrieve information. If
-- no type is specified, a list of all client authentication types that are
-- supported for the specified directory is retrieved.
--
-- 'directoryId', 'describeClientAuthenticationSettings_directoryId' - The identifier of the directory for which to retrieve information.
newDescribeClientAuthenticationSettings ::
  -- | 'directoryId'
  Prelude.Text ->
  DescribeClientAuthenticationSettings
newDescribeClientAuthenticationSettings pDirectoryId_ =
  DescribeClientAuthenticationSettings'
    { nextToken =
        Prelude.Nothing,
      limit = Prelude.Nothing,
      type' = Prelude.Nothing,
      directoryId = pDirectoryId_
    }

-- | The /DescribeClientAuthenticationSettingsResult.NextToken/ value from a
-- previous call to DescribeClientAuthenticationSettings. Pass null if this
-- is the first call.
describeClientAuthenticationSettings_nextToken :: Lens.Lens' DescribeClientAuthenticationSettings (Prelude.Maybe Prelude.Text)
describeClientAuthenticationSettings_nextToken = Lens.lens (\DescribeClientAuthenticationSettings' {nextToken} -> nextToken) (\s@DescribeClientAuthenticationSettings' {} a -> s {nextToken = a} :: DescribeClientAuthenticationSettings)

-- | The maximum number of items to return. If this value is zero, the
-- maximum number of items is specified by the limitations of the
-- operation.
describeClientAuthenticationSettings_limit :: Lens.Lens' DescribeClientAuthenticationSettings (Prelude.Maybe Prelude.Natural)
describeClientAuthenticationSettings_limit = Lens.lens (\DescribeClientAuthenticationSettings' {limit} -> limit) (\s@DescribeClientAuthenticationSettings' {} a -> s {limit = a} :: DescribeClientAuthenticationSettings)

-- | The type of client authentication for which to retrieve information. If
-- no type is specified, a list of all client authentication types that are
-- supported for the specified directory is retrieved.
describeClientAuthenticationSettings_type :: Lens.Lens' DescribeClientAuthenticationSettings (Prelude.Maybe ClientAuthenticationType)
describeClientAuthenticationSettings_type = Lens.lens (\DescribeClientAuthenticationSettings' {type'} -> type') (\s@DescribeClientAuthenticationSettings' {} a -> s {type' = a} :: DescribeClientAuthenticationSettings)

-- | The identifier of the directory for which to retrieve information.
describeClientAuthenticationSettings_directoryId :: Lens.Lens' DescribeClientAuthenticationSettings Prelude.Text
describeClientAuthenticationSettings_directoryId = Lens.lens (\DescribeClientAuthenticationSettings' {directoryId} -> directoryId) (\s@DescribeClientAuthenticationSettings' {} a -> s {directoryId = a} :: DescribeClientAuthenticationSettings)

instance
  Core.AWSRequest
    DescribeClientAuthenticationSettings
  where
  type
    AWSResponse DescribeClientAuthenticationSettings =
      DescribeClientAuthenticationSettingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeClientAuthenticationSettingsResponse'
            Prelude.<$> (x Core..?> "NextToken")
              Prelude.<*> ( x Core..?> "ClientAuthenticationSettingsInfo"
                              Core..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeClientAuthenticationSettings

instance
  Prelude.NFData
    DescribeClientAuthenticationSettings

instance
  Core.ToHeaders
    DescribeClientAuthenticationSettings
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "DirectoryService_20150416.DescribeClientAuthenticationSettings" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    DescribeClientAuthenticationSettings
  where
  toJSON DescribeClientAuthenticationSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("Limit" Core..=) Prelude.<$> limit,
            ("Type" Core..=) Prelude.<$> type',
            Prelude.Just ("DirectoryId" Core..= directoryId)
          ]
      )

instance
  Core.ToPath
    DescribeClientAuthenticationSettings
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    DescribeClientAuthenticationSettings
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeClientAuthenticationSettingsResponse' smart constructor.
data DescribeClientAuthenticationSettingsResponse = DescribeClientAuthenticationSettingsResponse'
  { -- | The next token used to retrieve the client authentication settings if
    -- the number of setting types exceeds page limit and there is another
    -- page.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the type of client authentication for the specified
    -- directory. The following information is retrieved: The date and time
    -- when the status of the client authentication type was last updated,
    -- whether the client authentication type is enabled or disabled, and the
    -- type of client authentication.
    clientAuthenticationSettingsInfo :: Prelude.Maybe [ClientAuthenticationSettingInfo],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeClientAuthenticationSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeClientAuthenticationSettingsResponse_nextToken' - The next token used to retrieve the client authentication settings if
-- the number of setting types exceeds page limit and there is another
-- page.
--
-- 'clientAuthenticationSettingsInfo', 'describeClientAuthenticationSettingsResponse_clientAuthenticationSettingsInfo' - Information about the type of client authentication for the specified
-- directory. The following information is retrieved: The date and time
-- when the status of the client authentication type was last updated,
-- whether the client authentication type is enabled or disabled, and the
-- type of client authentication.
--
-- 'httpStatus', 'describeClientAuthenticationSettingsResponse_httpStatus' - The response's http status code.
newDescribeClientAuthenticationSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeClientAuthenticationSettingsResponse
newDescribeClientAuthenticationSettingsResponse
  pHttpStatus_ =
    DescribeClientAuthenticationSettingsResponse'
      { nextToken =
          Prelude.Nothing,
        clientAuthenticationSettingsInfo =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The next token used to retrieve the client authentication settings if
-- the number of setting types exceeds page limit and there is another
-- page.
describeClientAuthenticationSettingsResponse_nextToken :: Lens.Lens' DescribeClientAuthenticationSettingsResponse (Prelude.Maybe Prelude.Text)
describeClientAuthenticationSettingsResponse_nextToken = Lens.lens (\DescribeClientAuthenticationSettingsResponse' {nextToken} -> nextToken) (\s@DescribeClientAuthenticationSettingsResponse' {} a -> s {nextToken = a} :: DescribeClientAuthenticationSettingsResponse)

-- | Information about the type of client authentication for the specified
-- directory. The following information is retrieved: The date and time
-- when the status of the client authentication type was last updated,
-- whether the client authentication type is enabled or disabled, and the
-- type of client authentication.
describeClientAuthenticationSettingsResponse_clientAuthenticationSettingsInfo :: Lens.Lens' DescribeClientAuthenticationSettingsResponse (Prelude.Maybe [ClientAuthenticationSettingInfo])
describeClientAuthenticationSettingsResponse_clientAuthenticationSettingsInfo = Lens.lens (\DescribeClientAuthenticationSettingsResponse' {clientAuthenticationSettingsInfo} -> clientAuthenticationSettingsInfo) (\s@DescribeClientAuthenticationSettingsResponse' {} a -> s {clientAuthenticationSettingsInfo = a} :: DescribeClientAuthenticationSettingsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeClientAuthenticationSettingsResponse_httpStatus :: Lens.Lens' DescribeClientAuthenticationSettingsResponse Prelude.Int
describeClientAuthenticationSettingsResponse_httpStatus = Lens.lens (\DescribeClientAuthenticationSettingsResponse' {httpStatus} -> httpStatus) (\s@DescribeClientAuthenticationSettingsResponse' {} a -> s {httpStatus = a} :: DescribeClientAuthenticationSettingsResponse)

instance
  Prelude.NFData
    DescribeClientAuthenticationSettingsResponse
