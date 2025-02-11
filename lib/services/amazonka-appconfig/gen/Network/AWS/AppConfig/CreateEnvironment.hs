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
-- Module      : Network.AWS.AppConfig.CreateEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- For each application, you define one or more environments. An
-- environment is a logical deployment group of AppConfig targets, such as
-- applications in a @Beta@ or @Production@ environment. You can also
-- define environments for application subcomponents such as the @Web@,
-- @Mobile@ and @Back-end@ components for your application. You can
-- configure Amazon CloudWatch alarms for each environment. The system
-- monitors alarms during a configuration deployment. If an alarm is
-- triggered, the system rolls back the configuration.
module Network.AWS.AppConfig.CreateEnvironment
  ( -- * Creating a Request
    CreateEnvironment (..),
    newCreateEnvironment,

    -- * Request Lenses
    createEnvironment_monitors,
    createEnvironment_description,
    createEnvironment_tags,
    createEnvironment_applicationId,
    createEnvironment_name,

    -- * Destructuring the Response
    Environment (..),
    newEnvironment,

    -- * Response Lenses
    environment_state,
    environment_monitors,
    environment_applicationId,
    environment_name,
    environment_id,
    environment_description,
  )
where

import Network.AWS.AppConfig.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateEnvironment' smart constructor.
data CreateEnvironment = CreateEnvironment'
  { -- | Amazon CloudWatch alarms to monitor during the deployment process.
    monitors :: Prelude.Maybe [Monitor],
    -- | A description of the environment.
    description :: Prelude.Maybe Prelude.Text,
    -- | Metadata to assign to the environment. Tags help organize and categorize
    -- your AppConfig resources. Each tag consists of a key and an optional
    -- value, both of which you define.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The application ID.
    applicationId :: Prelude.Text,
    -- | A name for the environment.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'monitors', 'createEnvironment_monitors' - Amazon CloudWatch alarms to monitor during the deployment process.
--
-- 'description', 'createEnvironment_description' - A description of the environment.
--
-- 'tags', 'createEnvironment_tags' - Metadata to assign to the environment. Tags help organize and categorize
-- your AppConfig resources. Each tag consists of a key and an optional
-- value, both of which you define.
--
-- 'applicationId', 'createEnvironment_applicationId' - The application ID.
--
-- 'name', 'createEnvironment_name' - A name for the environment.
newCreateEnvironment ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  CreateEnvironment
newCreateEnvironment pApplicationId_ pName_ =
  CreateEnvironment'
    { monitors = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      applicationId = pApplicationId_,
      name = pName_
    }

-- | Amazon CloudWatch alarms to monitor during the deployment process.
createEnvironment_monitors :: Lens.Lens' CreateEnvironment (Prelude.Maybe [Monitor])
createEnvironment_monitors = Lens.lens (\CreateEnvironment' {monitors} -> monitors) (\s@CreateEnvironment' {} a -> s {monitors = a} :: CreateEnvironment) Prelude.. Lens.mapping Lens.coerced

-- | A description of the environment.
createEnvironment_description :: Lens.Lens' CreateEnvironment (Prelude.Maybe Prelude.Text)
createEnvironment_description = Lens.lens (\CreateEnvironment' {description} -> description) (\s@CreateEnvironment' {} a -> s {description = a} :: CreateEnvironment)

-- | Metadata to assign to the environment. Tags help organize and categorize
-- your AppConfig resources. Each tag consists of a key and an optional
-- value, both of which you define.
createEnvironment_tags :: Lens.Lens' CreateEnvironment (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createEnvironment_tags = Lens.lens (\CreateEnvironment' {tags} -> tags) (\s@CreateEnvironment' {} a -> s {tags = a} :: CreateEnvironment) Prelude.. Lens.mapping Lens.coerced

-- | The application ID.
createEnvironment_applicationId :: Lens.Lens' CreateEnvironment Prelude.Text
createEnvironment_applicationId = Lens.lens (\CreateEnvironment' {applicationId} -> applicationId) (\s@CreateEnvironment' {} a -> s {applicationId = a} :: CreateEnvironment)

-- | A name for the environment.
createEnvironment_name :: Lens.Lens' CreateEnvironment Prelude.Text
createEnvironment_name = Lens.lens (\CreateEnvironment' {name} -> name) (\s@CreateEnvironment' {} a -> s {name = a} :: CreateEnvironment)

instance Core.AWSRequest CreateEnvironment where
  type AWSResponse CreateEnvironment = Environment
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable CreateEnvironment

instance Prelude.NFData CreateEnvironment

instance Core.ToHeaders CreateEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateEnvironment where
  toJSON CreateEnvironment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Monitors" Core..=) Prelude.<$> monitors,
            ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("Name" Core..= name)
          ]
      )

instance Core.ToPath CreateEnvironment where
  toPath CreateEnvironment' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/environments"
      ]

instance Core.ToQuery CreateEnvironment where
  toQuery = Prelude.const Prelude.mempty
