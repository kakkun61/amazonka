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
-- Module      : Network.AWS.SageMaker.CreateDeviceFleet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a device fleet.
module Network.AWS.SageMaker.CreateDeviceFleet
  ( -- * Creating a Request
    CreateDeviceFleet (..),
    newCreateDeviceFleet,

    -- * Request Lenses
    createDeviceFleet_enableIotRoleAlias,
    createDeviceFleet_description,
    createDeviceFleet_tags,
    createDeviceFleet_roleArn,
    createDeviceFleet_deviceFleetName,
    createDeviceFleet_outputConfig,

    -- * Destructuring the Response
    CreateDeviceFleetResponse (..),
    newCreateDeviceFleetResponse,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newCreateDeviceFleet' smart constructor.
data CreateDeviceFleet = CreateDeviceFleet'
  { -- | Whether to create an Amazon Web Services IoT Role Alias during device
    -- fleet creation. The name of the role alias generated will match this
    -- pattern: \"SageMakerEdge-{DeviceFleetName}\".
    --
    -- For example, if your device fleet is called \"demo-fleet\", the name of
    -- the role alias will be \"SageMakerEdge-demo-fleet\".
    enableIotRoleAlias :: Prelude.Maybe Prelude.Bool,
    -- | A description of the fleet.
    description :: Prelude.Maybe Prelude.Text,
    -- | Creates tags for the specified fleet.
    tags :: Prelude.Maybe [Tag],
    -- | The Amazon Resource Name (ARN) that has access to Amazon Web Services
    -- Internet of Things (IoT).
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the fleet that the device belongs to.
    deviceFleetName :: Prelude.Text,
    -- | The output configuration for storing sample data collected by the fleet.
    outputConfig :: EdgeOutputConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDeviceFleet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'enableIotRoleAlias', 'createDeviceFleet_enableIotRoleAlias' - Whether to create an Amazon Web Services IoT Role Alias during device
-- fleet creation. The name of the role alias generated will match this
-- pattern: \"SageMakerEdge-{DeviceFleetName}\".
--
-- For example, if your device fleet is called \"demo-fleet\", the name of
-- the role alias will be \"SageMakerEdge-demo-fleet\".
--
-- 'description', 'createDeviceFleet_description' - A description of the fleet.
--
-- 'tags', 'createDeviceFleet_tags' - Creates tags for the specified fleet.
--
-- 'roleArn', 'createDeviceFleet_roleArn' - The Amazon Resource Name (ARN) that has access to Amazon Web Services
-- Internet of Things (IoT).
--
-- 'deviceFleetName', 'createDeviceFleet_deviceFleetName' - The name of the fleet that the device belongs to.
--
-- 'outputConfig', 'createDeviceFleet_outputConfig' - The output configuration for storing sample data collected by the fleet.
newCreateDeviceFleet ::
  -- | 'deviceFleetName'
  Prelude.Text ->
  -- | 'outputConfig'
  EdgeOutputConfig ->
  CreateDeviceFleet
newCreateDeviceFleet pDeviceFleetName_ pOutputConfig_ =
  CreateDeviceFleet'
    { enableIotRoleAlias =
        Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      deviceFleetName = pDeviceFleetName_,
      outputConfig = pOutputConfig_
    }

-- | Whether to create an Amazon Web Services IoT Role Alias during device
-- fleet creation. The name of the role alias generated will match this
-- pattern: \"SageMakerEdge-{DeviceFleetName}\".
--
-- For example, if your device fleet is called \"demo-fleet\", the name of
-- the role alias will be \"SageMakerEdge-demo-fleet\".
createDeviceFleet_enableIotRoleAlias :: Lens.Lens' CreateDeviceFleet (Prelude.Maybe Prelude.Bool)
createDeviceFleet_enableIotRoleAlias = Lens.lens (\CreateDeviceFleet' {enableIotRoleAlias} -> enableIotRoleAlias) (\s@CreateDeviceFleet' {} a -> s {enableIotRoleAlias = a} :: CreateDeviceFleet)

-- | A description of the fleet.
createDeviceFleet_description :: Lens.Lens' CreateDeviceFleet (Prelude.Maybe Prelude.Text)
createDeviceFleet_description = Lens.lens (\CreateDeviceFleet' {description} -> description) (\s@CreateDeviceFleet' {} a -> s {description = a} :: CreateDeviceFleet)

-- | Creates tags for the specified fleet.
createDeviceFleet_tags :: Lens.Lens' CreateDeviceFleet (Prelude.Maybe [Tag])
createDeviceFleet_tags = Lens.lens (\CreateDeviceFleet' {tags} -> tags) (\s@CreateDeviceFleet' {} a -> s {tags = a} :: CreateDeviceFleet) Prelude.. Lens.mapping Lens.coerced

-- | The Amazon Resource Name (ARN) that has access to Amazon Web Services
-- Internet of Things (IoT).
createDeviceFleet_roleArn :: Lens.Lens' CreateDeviceFleet (Prelude.Maybe Prelude.Text)
createDeviceFleet_roleArn = Lens.lens (\CreateDeviceFleet' {roleArn} -> roleArn) (\s@CreateDeviceFleet' {} a -> s {roleArn = a} :: CreateDeviceFleet)

-- | The name of the fleet that the device belongs to.
createDeviceFleet_deviceFleetName :: Lens.Lens' CreateDeviceFleet Prelude.Text
createDeviceFleet_deviceFleetName = Lens.lens (\CreateDeviceFleet' {deviceFleetName} -> deviceFleetName) (\s@CreateDeviceFleet' {} a -> s {deviceFleetName = a} :: CreateDeviceFleet)

-- | The output configuration for storing sample data collected by the fleet.
createDeviceFleet_outputConfig :: Lens.Lens' CreateDeviceFleet EdgeOutputConfig
createDeviceFleet_outputConfig = Lens.lens (\CreateDeviceFleet' {outputConfig} -> outputConfig) (\s@CreateDeviceFleet' {} a -> s {outputConfig = a} :: CreateDeviceFleet)

instance Core.AWSRequest CreateDeviceFleet where
  type
    AWSResponse CreateDeviceFleet =
      CreateDeviceFleetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull CreateDeviceFleetResponse'

instance Prelude.Hashable CreateDeviceFleet

instance Prelude.NFData CreateDeviceFleet

instance Core.ToHeaders CreateDeviceFleet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "SageMaker.CreateDeviceFleet" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateDeviceFleet where
  toJSON CreateDeviceFleet' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EnableIotRoleAlias" Core..=)
              Prelude.<$> enableIotRoleAlias,
            ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            ("RoleArn" Core..=) Prelude.<$> roleArn,
            Prelude.Just
              ("DeviceFleetName" Core..= deviceFleetName),
            Prelude.Just ("OutputConfig" Core..= outputConfig)
          ]
      )

instance Core.ToPath CreateDeviceFleet where
  toPath = Prelude.const "/"

instance Core.ToQuery CreateDeviceFleet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateDeviceFleetResponse' smart constructor.
data CreateDeviceFleetResponse = CreateDeviceFleetResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateDeviceFleetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newCreateDeviceFleetResponse ::
  CreateDeviceFleetResponse
newCreateDeviceFleetResponse =
  CreateDeviceFleetResponse'

instance Prelude.NFData CreateDeviceFleetResponse
