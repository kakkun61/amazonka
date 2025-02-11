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
-- Module      : Network.AWS.IoTWireless.ResetResourceLogLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the log-level override, if any, for a specific resource-ID and
-- resource-type. It can be used for a wireless device or a wireless
-- gateway.
module Network.AWS.IoTWireless.ResetResourceLogLevel
  ( -- * Creating a Request
    ResetResourceLogLevel (..),
    newResetResourceLogLevel,

    -- * Request Lenses
    resetResourceLogLevel_resourceIdentifier,
    resetResourceLogLevel_resourceType,

    -- * Destructuring the Response
    ResetResourceLogLevelResponse (..),
    newResetResourceLogLevelResponse,

    -- * Response Lenses
    resetResourceLogLevelResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTWireless.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newResetResourceLogLevel' smart constructor.
data ResetResourceLogLevel = ResetResourceLogLevel'
  { resourceIdentifier :: Prelude.Text,
    -- | The type of the resource, which can be @WirelessDevice@ or
    -- @WirelessGateway@.
    resourceType :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetResourceLogLevel' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceIdentifier', 'resetResourceLogLevel_resourceIdentifier' - Undocumented member.
--
-- 'resourceType', 'resetResourceLogLevel_resourceType' - The type of the resource, which can be @WirelessDevice@ or
-- @WirelessGateway@.
newResetResourceLogLevel ::
  -- | 'resourceIdentifier'
  Prelude.Text ->
  -- | 'resourceType'
  Prelude.Text ->
  ResetResourceLogLevel
newResetResourceLogLevel
  pResourceIdentifier_
  pResourceType_ =
    ResetResourceLogLevel'
      { resourceIdentifier =
          pResourceIdentifier_,
        resourceType = pResourceType_
      }

-- | Undocumented member.
resetResourceLogLevel_resourceIdentifier :: Lens.Lens' ResetResourceLogLevel Prelude.Text
resetResourceLogLevel_resourceIdentifier = Lens.lens (\ResetResourceLogLevel' {resourceIdentifier} -> resourceIdentifier) (\s@ResetResourceLogLevel' {} a -> s {resourceIdentifier = a} :: ResetResourceLogLevel)

-- | The type of the resource, which can be @WirelessDevice@ or
-- @WirelessGateway@.
resetResourceLogLevel_resourceType :: Lens.Lens' ResetResourceLogLevel Prelude.Text
resetResourceLogLevel_resourceType = Lens.lens (\ResetResourceLogLevel' {resourceType} -> resourceType) (\s@ResetResourceLogLevel' {} a -> s {resourceType = a} :: ResetResourceLogLevel)

instance Core.AWSRequest ResetResourceLogLevel where
  type
    AWSResponse ResetResourceLogLevel =
      ResetResourceLogLevelResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          ResetResourceLogLevelResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ResetResourceLogLevel

instance Prelude.NFData ResetResourceLogLevel

instance Core.ToHeaders ResetResourceLogLevel where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath ResetResourceLogLevel where
  toPath ResetResourceLogLevel' {..} =
    Prelude.mconcat
      ["/log-levels/", Core.toBS resourceIdentifier]

instance Core.ToQuery ResetResourceLogLevel where
  toQuery ResetResourceLogLevel' {..} =
    Prelude.mconcat
      ["resourceType" Core.=: resourceType]

-- | /See:/ 'newResetResourceLogLevelResponse' smart constructor.
data ResetResourceLogLevelResponse = ResetResourceLogLevelResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResetResourceLogLevelResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'resetResourceLogLevelResponse_httpStatus' - The response's http status code.
newResetResourceLogLevelResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ResetResourceLogLevelResponse
newResetResourceLogLevelResponse pHttpStatus_ =
  ResetResourceLogLevelResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
resetResourceLogLevelResponse_httpStatus :: Lens.Lens' ResetResourceLogLevelResponse Prelude.Int
resetResourceLogLevelResponse_httpStatus = Lens.lens (\ResetResourceLogLevelResponse' {httpStatus} -> httpStatus) (\s@ResetResourceLogLevelResponse' {} a -> s {httpStatus = a} :: ResetResourceLogLevelResponse)

instance Prelude.NFData ResetResourceLogLevelResponse
