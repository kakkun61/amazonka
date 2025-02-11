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
-- Module      : Network.AWS.WorkMail.DescribeInboundDmarcSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the settings in a DMARC policy for a specified organization.
module Network.AWS.WorkMail.DescribeInboundDmarcSettings
  ( -- * Creating a Request
    DescribeInboundDmarcSettings (..),
    newDescribeInboundDmarcSettings,

    -- * Request Lenses
    describeInboundDmarcSettings_organizationId,

    -- * Destructuring the Response
    DescribeInboundDmarcSettingsResponse (..),
    newDescribeInboundDmarcSettingsResponse,

    -- * Response Lenses
    describeInboundDmarcSettingsResponse_enforced,
    describeInboundDmarcSettingsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'newDescribeInboundDmarcSettings' smart constructor.
data DescribeInboundDmarcSettings = DescribeInboundDmarcSettings'
  { -- | Lists the ID of the given organization.
    organizationId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInboundDmarcSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'organizationId', 'describeInboundDmarcSettings_organizationId' - Lists the ID of the given organization.
newDescribeInboundDmarcSettings ::
  -- | 'organizationId'
  Prelude.Text ->
  DescribeInboundDmarcSettings
newDescribeInboundDmarcSettings pOrganizationId_ =
  DescribeInboundDmarcSettings'
    { organizationId =
        pOrganizationId_
    }

-- | Lists the ID of the given organization.
describeInboundDmarcSettings_organizationId :: Lens.Lens' DescribeInboundDmarcSettings Prelude.Text
describeInboundDmarcSettings_organizationId = Lens.lens (\DescribeInboundDmarcSettings' {organizationId} -> organizationId) (\s@DescribeInboundDmarcSettings' {} a -> s {organizationId = a} :: DescribeInboundDmarcSettings)

instance Core.AWSRequest DescribeInboundDmarcSettings where
  type
    AWSResponse DescribeInboundDmarcSettings =
      DescribeInboundDmarcSettingsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeInboundDmarcSettingsResponse'
            Prelude.<$> (x Core..?> "Enforced")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeInboundDmarcSettings

instance Prelude.NFData DescribeInboundDmarcSettings

instance Core.ToHeaders DescribeInboundDmarcSettings where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.DescribeInboundDmarcSettings" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DescribeInboundDmarcSettings where
  toJSON DescribeInboundDmarcSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("OrganizationId" Core..= organizationId)
          ]
      )

instance Core.ToPath DescribeInboundDmarcSettings where
  toPath = Prelude.const "/"

instance Core.ToQuery DescribeInboundDmarcSettings where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeInboundDmarcSettingsResponse' smart constructor.
data DescribeInboundDmarcSettingsResponse = DescribeInboundDmarcSettingsResponse'
  { -- | Lists the enforcement setting of the applied policy.
    enforced :: Prelude.Maybe Prelude.Bool,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeInboundDmarcSettingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enforced', 'describeInboundDmarcSettingsResponse_enforced' - Lists the enforcement setting of the applied policy.
--
-- 'httpStatus', 'describeInboundDmarcSettingsResponse_httpStatus' - The response's http status code.
newDescribeInboundDmarcSettingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeInboundDmarcSettingsResponse
newDescribeInboundDmarcSettingsResponse pHttpStatus_ =
  DescribeInboundDmarcSettingsResponse'
    { enforced =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Lists the enforcement setting of the applied policy.
describeInboundDmarcSettingsResponse_enforced :: Lens.Lens' DescribeInboundDmarcSettingsResponse (Prelude.Maybe Prelude.Bool)
describeInboundDmarcSettingsResponse_enforced = Lens.lens (\DescribeInboundDmarcSettingsResponse' {enforced} -> enforced) (\s@DescribeInboundDmarcSettingsResponse' {} a -> s {enforced = a} :: DescribeInboundDmarcSettingsResponse)

-- | The response's http status code.
describeInboundDmarcSettingsResponse_httpStatus :: Lens.Lens' DescribeInboundDmarcSettingsResponse Prelude.Int
describeInboundDmarcSettingsResponse_httpStatus = Lens.lens (\DescribeInboundDmarcSettingsResponse' {httpStatus} -> httpStatus) (\s@DescribeInboundDmarcSettingsResponse' {} a -> s {httpStatus = a} :: DescribeInboundDmarcSettingsResponse)

instance
  Prelude.NFData
    DescribeInboundDmarcSettingsResponse
