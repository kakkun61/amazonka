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
-- Module      : Network.AWS.GlobalAccelerator.UpdateAccelerator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an accelerator.
--
-- Global Accelerator is a global service that supports endpoints in
-- multiple AWS Regions but you must specify the US West (Oregon) Region to
-- create or update accelerators.
module Network.AWS.GlobalAccelerator.UpdateAccelerator
  ( -- * Creating a Request
    UpdateAccelerator (..),
    newUpdateAccelerator,

    -- * Request Lenses
    updateAccelerator_enabled,
    updateAccelerator_ipAddressType,
    updateAccelerator_name,
    updateAccelerator_acceleratorArn,

    -- * Destructuring the Response
    UpdateAcceleratorResponse (..),
    newUpdateAcceleratorResponse,

    -- * Response Lenses
    updateAcceleratorResponse_accelerator,
    updateAcceleratorResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.GlobalAccelerator.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateAccelerator' smart constructor.
data UpdateAccelerator = UpdateAccelerator'
  { -- | Indicates whether an accelerator is enabled. The value is true or false.
    -- The default value is true.
    --
    -- If the value is set to true, the accelerator cannot be deleted. If set
    -- to false, the accelerator can be deleted.
    enabled :: Prelude.Maybe Prelude.Bool,
    -- | The IP address type, which must be IPv4.
    ipAddressType :: Prelude.Maybe IpAddressType,
    -- | The name of the accelerator. The name can have a maximum of 32
    -- characters, must contain only alphanumeric characters or hyphens (-),
    -- and must not begin or end with a hyphen.
    name :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the accelerator to update.
    acceleratorArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAccelerator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enabled', 'updateAccelerator_enabled' - Indicates whether an accelerator is enabled. The value is true or false.
-- The default value is true.
--
-- If the value is set to true, the accelerator cannot be deleted. If set
-- to false, the accelerator can be deleted.
--
-- 'ipAddressType', 'updateAccelerator_ipAddressType' - The IP address type, which must be IPv4.
--
-- 'name', 'updateAccelerator_name' - The name of the accelerator. The name can have a maximum of 32
-- characters, must contain only alphanumeric characters or hyphens (-),
-- and must not begin or end with a hyphen.
--
-- 'acceleratorArn', 'updateAccelerator_acceleratorArn' - The Amazon Resource Name (ARN) of the accelerator to update.
newUpdateAccelerator ::
  -- | 'acceleratorArn'
  Prelude.Text ->
  UpdateAccelerator
newUpdateAccelerator pAcceleratorArn_ =
  UpdateAccelerator'
    { enabled = Prelude.Nothing,
      ipAddressType = Prelude.Nothing,
      name = Prelude.Nothing,
      acceleratorArn = pAcceleratorArn_
    }

-- | Indicates whether an accelerator is enabled. The value is true or false.
-- The default value is true.
--
-- If the value is set to true, the accelerator cannot be deleted. If set
-- to false, the accelerator can be deleted.
updateAccelerator_enabled :: Lens.Lens' UpdateAccelerator (Prelude.Maybe Prelude.Bool)
updateAccelerator_enabled = Lens.lens (\UpdateAccelerator' {enabled} -> enabled) (\s@UpdateAccelerator' {} a -> s {enabled = a} :: UpdateAccelerator)

-- | The IP address type, which must be IPv4.
updateAccelerator_ipAddressType :: Lens.Lens' UpdateAccelerator (Prelude.Maybe IpAddressType)
updateAccelerator_ipAddressType = Lens.lens (\UpdateAccelerator' {ipAddressType} -> ipAddressType) (\s@UpdateAccelerator' {} a -> s {ipAddressType = a} :: UpdateAccelerator)

-- | The name of the accelerator. The name can have a maximum of 32
-- characters, must contain only alphanumeric characters or hyphens (-),
-- and must not begin or end with a hyphen.
updateAccelerator_name :: Lens.Lens' UpdateAccelerator (Prelude.Maybe Prelude.Text)
updateAccelerator_name = Lens.lens (\UpdateAccelerator' {name} -> name) (\s@UpdateAccelerator' {} a -> s {name = a} :: UpdateAccelerator)

-- | The Amazon Resource Name (ARN) of the accelerator to update.
updateAccelerator_acceleratorArn :: Lens.Lens' UpdateAccelerator Prelude.Text
updateAccelerator_acceleratorArn = Lens.lens (\UpdateAccelerator' {acceleratorArn} -> acceleratorArn) (\s@UpdateAccelerator' {} a -> s {acceleratorArn = a} :: UpdateAccelerator)

instance Core.AWSRequest UpdateAccelerator where
  type
    AWSResponse UpdateAccelerator =
      UpdateAcceleratorResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateAcceleratorResponse'
            Prelude.<$> (x Core..?> "Accelerator")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateAccelerator

instance Prelude.NFData UpdateAccelerator

instance Core.ToHeaders UpdateAccelerator where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "GlobalAccelerator_V20180706.UpdateAccelerator" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateAccelerator where
  toJSON UpdateAccelerator' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Enabled" Core..=) Prelude.<$> enabled,
            ("IpAddressType" Core..=) Prelude.<$> ipAddressType,
            ("Name" Core..=) Prelude.<$> name,
            Prelude.Just
              ("AcceleratorArn" Core..= acceleratorArn)
          ]
      )

instance Core.ToPath UpdateAccelerator where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateAccelerator where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateAcceleratorResponse' smart constructor.
data UpdateAcceleratorResponse = UpdateAcceleratorResponse'
  { -- | Information about the updated accelerator.
    accelerator :: Prelude.Maybe Accelerator,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateAcceleratorResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accelerator', 'updateAcceleratorResponse_accelerator' - Information about the updated accelerator.
--
-- 'httpStatus', 'updateAcceleratorResponse_httpStatus' - The response's http status code.
newUpdateAcceleratorResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateAcceleratorResponse
newUpdateAcceleratorResponse pHttpStatus_ =
  UpdateAcceleratorResponse'
    { accelerator =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the updated accelerator.
updateAcceleratorResponse_accelerator :: Lens.Lens' UpdateAcceleratorResponse (Prelude.Maybe Accelerator)
updateAcceleratorResponse_accelerator = Lens.lens (\UpdateAcceleratorResponse' {accelerator} -> accelerator) (\s@UpdateAcceleratorResponse' {} a -> s {accelerator = a} :: UpdateAcceleratorResponse)

-- | The response's http status code.
updateAcceleratorResponse_httpStatus :: Lens.Lens' UpdateAcceleratorResponse Prelude.Int
updateAcceleratorResponse_httpStatus = Lens.lens (\UpdateAcceleratorResponse' {httpStatus} -> httpStatus) (\s@UpdateAcceleratorResponse' {} a -> s {httpStatus = a} :: UpdateAcceleratorResponse)

instance Prelude.NFData UpdateAcceleratorResponse
