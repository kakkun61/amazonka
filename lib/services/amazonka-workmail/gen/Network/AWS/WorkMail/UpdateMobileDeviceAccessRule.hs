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
-- Module      : Network.AWS.WorkMail.UpdateMobileDeviceAccessRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a mobile device access rule for the specified Amazon WorkMail
-- organization.
module Network.AWS.WorkMail.UpdateMobileDeviceAccessRule
  ( -- * Creating a Request
    UpdateMobileDeviceAccessRule (..),
    newUpdateMobileDeviceAccessRule,

    -- * Request Lenses
    updateMobileDeviceAccessRule_deviceUserAgents,
    updateMobileDeviceAccessRule_deviceTypes,
    updateMobileDeviceAccessRule_notDeviceTypes,
    updateMobileDeviceAccessRule_notDeviceOperatingSystems,
    updateMobileDeviceAccessRule_deviceModels,
    updateMobileDeviceAccessRule_deviceOperatingSystems,
    updateMobileDeviceAccessRule_description,
    updateMobileDeviceAccessRule_notDeviceUserAgents,
    updateMobileDeviceAccessRule_notDeviceModels,
    updateMobileDeviceAccessRule_organizationId,
    updateMobileDeviceAccessRule_mobileDeviceAccessRuleId,
    updateMobileDeviceAccessRule_name,
    updateMobileDeviceAccessRule_effect,

    -- * Destructuring the Response
    UpdateMobileDeviceAccessRuleResponse (..),
    newUpdateMobileDeviceAccessRuleResponse,

    -- * Response Lenses
    updateMobileDeviceAccessRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkMail.Types

-- | /See:/ 'newUpdateMobileDeviceAccessRule' smart constructor.
data UpdateMobileDeviceAccessRule = UpdateMobileDeviceAccessRule'
  { -- | User agents that the updated rule will match.
    deviceUserAgents :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device types that the updated rule will match.
    deviceTypes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device types that the updated rule __will not__ match. All other device
    -- types will match.
    notDeviceTypes :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device operating systems that the updated rule __will not__ match. All
    -- other device operating systems will match.
    notDeviceOperatingSystems :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device models that the updated rule will match.
    deviceModels :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device operating systems that the updated rule will match.
    deviceOperatingSystems :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The updated rule description.
    description :: Prelude.Maybe Prelude.Text,
    -- | User agents that the updated rule __will not__ match. All other user
    -- agents will match.
    notDeviceUserAgents :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | Device models that the updated rule __will not__ match. All other device
    -- models will match.
    notDeviceModels :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The Amazon WorkMail organization under which the rule will be updated.
    organizationId :: Prelude.Text,
    -- | The identifier of the rule to be updated.
    mobileDeviceAccessRuleId :: Prelude.Text,
    -- | The updated rule name.
    name :: Prelude.Text,
    -- | The effect of the rule when it matches. Allowed values are @ALLOW@ or
    -- @DENY@.
    effect :: MobileDeviceAccessRuleEffect
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateMobileDeviceAccessRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deviceUserAgents', 'updateMobileDeviceAccessRule_deviceUserAgents' - User agents that the updated rule will match.
--
-- 'deviceTypes', 'updateMobileDeviceAccessRule_deviceTypes' - Device types that the updated rule will match.
--
-- 'notDeviceTypes', 'updateMobileDeviceAccessRule_notDeviceTypes' - Device types that the updated rule __will not__ match. All other device
-- types will match.
--
-- 'notDeviceOperatingSystems', 'updateMobileDeviceAccessRule_notDeviceOperatingSystems' - Device operating systems that the updated rule __will not__ match. All
-- other device operating systems will match.
--
-- 'deviceModels', 'updateMobileDeviceAccessRule_deviceModels' - Device models that the updated rule will match.
--
-- 'deviceOperatingSystems', 'updateMobileDeviceAccessRule_deviceOperatingSystems' - Device operating systems that the updated rule will match.
--
-- 'description', 'updateMobileDeviceAccessRule_description' - The updated rule description.
--
-- 'notDeviceUserAgents', 'updateMobileDeviceAccessRule_notDeviceUserAgents' - User agents that the updated rule __will not__ match. All other user
-- agents will match.
--
-- 'notDeviceModels', 'updateMobileDeviceAccessRule_notDeviceModels' - Device models that the updated rule __will not__ match. All other device
-- models will match.
--
-- 'organizationId', 'updateMobileDeviceAccessRule_organizationId' - The Amazon WorkMail organization under which the rule will be updated.
--
-- 'mobileDeviceAccessRuleId', 'updateMobileDeviceAccessRule_mobileDeviceAccessRuleId' - The identifier of the rule to be updated.
--
-- 'name', 'updateMobileDeviceAccessRule_name' - The updated rule name.
--
-- 'effect', 'updateMobileDeviceAccessRule_effect' - The effect of the rule when it matches. Allowed values are @ALLOW@ or
-- @DENY@.
newUpdateMobileDeviceAccessRule ::
  -- | 'organizationId'
  Prelude.Text ->
  -- | 'mobileDeviceAccessRuleId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'effect'
  MobileDeviceAccessRuleEffect ->
  UpdateMobileDeviceAccessRule
newUpdateMobileDeviceAccessRule
  pOrganizationId_
  pMobileDeviceAccessRuleId_
  pName_
  pEffect_ =
    UpdateMobileDeviceAccessRule'
      { deviceUserAgents =
          Prelude.Nothing,
        deviceTypes = Prelude.Nothing,
        notDeviceTypes = Prelude.Nothing,
        notDeviceOperatingSystems = Prelude.Nothing,
        deviceModels = Prelude.Nothing,
        deviceOperatingSystems = Prelude.Nothing,
        description = Prelude.Nothing,
        notDeviceUserAgents = Prelude.Nothing,
        notDeviceModels = Prelude.Nothing,
        organizationId = pOrganizationId_,
        mobileDeviceAccessRuleId =
          pMobileDeviceAccessRuleId_,
        name = pName_,
        effect = pEffect_
      }

-- | User agents that the updated rule will match.
updateMobileDeviceAccessRule_deviceUserAgents :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_deviceUserAgents = Lens.lens (\UpdateMobileDeviceAccessRule' {deviceUserAgents} -> deviceUserAgents) (\s@UpdateMobileDeviceAccessRule' {} a -> s {deviceUserAgents = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device types that the updated rule will match.
updateMobileDeviceAccessRule_deviceTypes :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_deviceTypes = Lens.lens (\UpdateMobileDeviceAccessRule' {deviceTypes} -> deviceTypes) (\s@UpdateMobileDeviceAccessRule' {} a -> s {deviceTypes = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device types that the updated rule __will not__ match. All other device
-- types will match.
updateMobileDeviceAccessRule_notDeviceTypes :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_notDeviceTypes = Lens.lens (\UpdateMobileDeviceAccessRule' {notDeviceTypes} -> notDeviceTypes) (\s@UpdateMobileDeviceAccessRule' {} a -> s {notDeviceTypes = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device operating systems that the updated rule __will not__ match. All
-- other device operating systems will match.
updateMobileDeviceAccessRule_notDeviceOperatingSystems :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_notDeviceOperatingSystems = Lens.lens (\UpdateMobileDeviceAccessRule' {notDeviceOperatingSystems} -> notDeviceOperatingSystems) (\s@UpdateMobileDeviceAccessRule' {} a -> s {notDeviceOperatingSystems = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device models that the updated rule will match.
updateMobileDeviceAccessRule_deviceModels :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_deviceModels = Lens.lens (\UpdateMobileDeviceAccessRule' {deviceModels} -> deviceModels) (\s@UpdateMobileDeviceAccessRule' {} a -> s {deviceModels = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device operating systems that the updated rule will match.
updateMobileDeviceAccessRule_deviceOperatingSystems :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_deviceOperatingSystems = Lens.lens (\UpdateMobileDeviceAccessRule' {deviceOperatingSystems} -> deviceOperatingSystems) (\s@UpdateMobileDeviceAccessRule' {} a -> s {deviceOperatingSystems = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | The updated rule description.
updateMobileDeviceAccessRule_description :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe Prelude.Text)
updateMobileDeviceAccessRule_description = Lens.lens (\UpdateMobileDeviceAccessRule' {description} -> description) (\s@UpdateMobileDeviceAccessRule' {} a -> s {description = a} :: UpdateMobileDeviceAccessRule)

-- | User agents that the updated rule __will not__ match. All other user
-- agents will match.
updateMobileDeviceAccessRule_notDeviceUserAgents :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_notDeviceUserAgents = Lens.lens (\UpdateMobileDeviceAccessRule' {notDeviceUserAgents} -> notDeviceUserAgents) (\s@UpdateMobileDeviceAccessRule' {} a -> s {notDeviceUserAgents = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | Device models that the updated rule __will not__ match. All other device
-- models will match.
updateMobileDeviceAccessRule_notDeviceModels :: Lens.Lens' UpdateMobileDeviceAccessRule (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateMobileDeviceAccessRule_notDeviceModels = Lens.lens (\UpdateMobileDeviceAccessRule' {notDeviceModels} -> notDeviceModels) (\s@UpdateMobileDeviceAccessRule' {} a -> s {notDeviceModels = a} :: UpdateMobileDeviceAccessRule) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon WorkMail organization under which the rule will be updated.
updateMobileDeviceAccessRule_organizationId :: Lens.Lens' UpdateMobileDeviceAccessRule Prelude.Text
updateMobileDeviceAccessRule_organizationId = Lens.lens (\UpdateMobileDeviceAccessRule' {organizationId} -> organizationId) (\s@UpdateMobileDeviceAccessRule' {} a -> s {organizationId = a} :: UpdateMobileDeviceAccessRule)

-- | The identifier of the rule to be updated.
updateMobileDeviceAccessRule_mobileDeviceAccessRuleId :: Lens.Lens' UpdateMobileDeviceAccessRule Prelude.Text
updateMobileDeviceAccessRule_mobileDeviceAccessRuleId = Lens.lens (\UpdateMobileDeviceAccessRule' {mobileDeviceAccessRuleId} -> mobileDeviceAccessRuleId) (\s@UpdateMobileDeviceAccessRule' {} a -> s {mobileDeviceAccessRuleId = a} :: UpdateMobileDeviceAccessRule)

-- | The updated rule name.
updateMobileDeviceAccessRule_name :: Lens.Lens' UpdateMobileDeviceAccessRule Prelude.Text
updateMobileDeviceAccessRule_name = Lens.lens (\UpdateMobileDeviceAccessRule' {name} -> name) (\s@UpdateMobileDeviceAccessRule' {} a -> s {name = a} :: UpdateMobileDeviceAccessRule)

-- | The effect of the rule when it matches. Allowed values are @ALLOW@ or
-- @DENY@.
updateMobileDeviceAccessRule_effect :: Lens.Lens' UpdateMobileDeviceAccessRule MobileDeviceAccessRuleEffect
updateMobileDeviceAccessRule_effect = Lens.lens (\UpdateMobileDeviceAccessRule' {effect} -> effect) (\s@UpdateMobileDeviceAccessRule' {} a -> s {effect = a} :: UpdateMobileDeviceAccessRule)

instance Core.AWSRequest UpdateMobileDeviceAccessRule where
  type
    AWSResponse UpdateMobileDeviceAccessRule =
      UpdateMobileDeviceAccessRuleResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateMobileDeviceAccessRuleResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateMobileDeviceAccessRule

instance Prelude.NFData UpdateMobileDeviceAccessRule

instance Core.ToHeaders UpdateMobileDeviceAccessRule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "WorkMailService.UpdateMobileDeviceAccessRule" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateMobileDeviceAccessRule where
  toJSON UpdateMobileDeviceAccessRule' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DeviceUserAgents" Core..=)
              Prelude.<$> deviceUserAgents,
            ("DeviceTypes" Core..=) Prelude.<$> deviceTypes,
            ("NotDeviceTypes" Core..=)
              Prelude.<$> notDeviceTypes,
            ("NotDeviceOperatingSystems" Core..=)
              Prelude.<$> notDeviceOperatingSystems,
            ("DeviceModels" Core..=) Prelude.<$> deviceModels,
            ("DeviceOperatingSystems" Core..=)
              Prelude.<$> deviceOperatingSystems,
            ("Description" Core..=) Prelude.<$> description,
            ("NotDeviceUserAgents" Core..=)
              Prelude.<$> notDeviceUserAgents,
            ("NotDeviceModels" Core..=)
              Prelude.<$> notDeviceModels,
            Prelude.Just
              ("OrganizationId" Core..= organizationId),
            Prelude.Just
              ( "MobileDeviceAccessRuleId"
                  Core..= mobileDeviceAccessRuleId
              ),
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("Effect" Core..= effect)
          ]
      )

instance Core.ToPath UpdateMobileDeviceAccessRule where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateMobileDeviceAccessRule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateMobileDeviceAccessRuleResponse' smart constructor.
data UpdateMobileDeviceAccessRuleResponse = UpdateMobileDeviceAccessRuleResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateMobileDeviceAccessRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateMobileDeviceAccessRuleResponse_httpStatus' - The response's http status code.
newUpdateMobileDeviceAccessRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateMobileDeviceAccessRuleResponse
newUpdateMobileDeviceAccessRuleResponse pHttpStatus_ =
  UpdateMobileDeviceAccessRuleResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
updateMobileDeviceAccessRuleResponse_httpStatus :: Lens.Lens' UpdateMobileDeviceAccessRuleResponse Prelude.Int
updateMobileDeviceAccessRuleResponse_httpStatus = Lens.lens (\UpdateMobileDeviceAccessRuleResponse' {httpStatus} -> httpStatus) (\s@UpdateMobileDeviceAccessRuleResponse' {} a -> s {httpStatus = a} :: UpdateMobileDeviceAccessRuleResponse)

instance
  Prelude.NFData
    UpdateMobileDeviceAccessRuleResponse
