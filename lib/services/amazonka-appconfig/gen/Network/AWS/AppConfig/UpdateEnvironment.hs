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
-- Module      : Network.AWS.AppConfig.UpdateEnvironment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an environment.
module Network.AWS.AppConfig.UpdateEnvironment
  ( -- * Creating a Request
    UpdateEnvironment (..),
    newUpdateEnvironment,

    -- * Request Lenses
    updateEnvironment_monitors,
    updateEnvironment_name,
    updateEnvironment_description,
    updateEnvironment_applicationId,
    updateEnvironment_environmentId,

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

-- | /See:/ 'newUpdateEnvironment' smart constructor.
data UpdateEnvironment = UpdateEnvironment'
  { -- | Amazon CloudWatch alarms to monitor during the deployment process.
    monitors :: Prelude.Maybe [Monitor],
    -- | The name of the environment.
    name :: Prelude.Maybe Prelude.Text,
    -- | A description of the environment.
    description :: Prelude.Maybe Prelude.Text,
    -- | The application ID.
    applicationId :: Prelude.Text,
    -- | The environment ID.
    environmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateEnvironment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'monitors', 'updateEnvironment_monitors' - Amazon CloudWatch alarms to monitor during the deployment process.
--
-- 'name', 'updateEnvironment_name' - The name of the environment.
--
-- 'description', 'updateEnvironment_description' - A description of the environment.
--
-- 'applicationId', 'updateEnvironment_applicationId' - The application ID.
--
-- 'environmentId', 'updateEnvironment_environmentId' - The environment ID.
newUpdateEnvironment ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'environmentId'
  Prelude.Text ->
  UpdateEnvironment
newUpdateEnvironment pApplicationId_ pEnvironmentId_ =
  UpdateEnvironment'
    { monitors = Prelude.Nothing,
      name = Prelude.Nothing,
      description = Prelude.Nothing,
      applicationId = pApplicationId_,
      environmentId = pEnvironmentId_
    }

-- | Amazon CloudWatch alarms to monitor during the deployment process.
updateEnvironment_monitors :: Lens.Lens' UpdateEnvironment (Prelude.Maybe [Monitor])
updateEnvironment_monitors = Lens.lens (\UpdateEnvironment' {monitors} -> monitors) (\s@UpdateEnvironment' {} a -> s {monitors = a} :: UpdateEnvironment) Prelude.. Lens.mapping Lens.coerced

-- | The name of the environment.
updateEnvironment_name :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_name = Lens.lens (\UpdateEnvironment' {name} -> name) (\s@UpdateEnvironment' {} a -> s {name = a} :: UpdateEnvironment)

-- | A description of the environment.
updateEnvironment_description :: Lens.Lens' UpdateEnvironment (Prelude.Maybe Prelude.Text)
updateEnvironment_description = Lens.lens (\UpdateEnvironment' {description} -> description) (\s@UpdateEnvironment' {} a -> s {description = a} :: UpdateEnvironment)

-- | The application ID.
updateEnvironment_applicationId :: Lens.Lens' UpdateEnvironment Prelude.Text
updateEnvironment_applicationId = Lens.lens (\UpdateEnvironment' {applicationId} -> applicationId) (\s@UpdateEnvironment' {} a -> s {applicationId = a} :: UpdateEnvironment)

-- | The environment ID.
updateEnvironment_environmentId :: Lens.Lens' UpdateEnvironment Prelude.Text
updateEnvironment_environmentId = Lens.lens (\UpdateEnvironment' {environmentId} -> environmentId) (\s@UpdateEnvironment' {} a -> s {environmentId = a} :: UpdateEnvironment)

instance Core.AWSRequest UpdateEnvironment where
  type AWSResponse UpdateEnvironment = Environment
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance Prelude.Hashable UpdateEnvironment

instance Prelude.NFData UpdateEnvironment

instance Core.ToHeaders UpdateEnvironment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateEnvironment where
  toJSON UpdateEnvironment' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Monitors" Core..=) Prelude.<$> monitors,
            ("Name" Core..=) Prelude.<$> name,
            ("Description" Core..=) Prelude.<$> description
          ]
      )

instance Core.ToPath UpdateEnvironment where
  toPath UpdateEnvironment' {..} =
    Prelude.mconcat
      [ "/applications/",
        Core.toBS applicationId,
        "/environments/",
        Core.toBS environmentId
      ]

instance Core.ToQuery UpdateEnvironment where
  toQuery = Prelude.const Prelude.mempty
