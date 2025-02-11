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
-- Module      : Network.AWS.Forecast.DeleteForecast
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a forecast created using the CreateForecast operation. You can
-- delete only forecasts that have a status of @ACTIVE@ or @CREATE_FAILED@.
-- To get the status, use the DescribeForecast operation.
--
-- You can\'t delete a forecast while it is being exported. After a
-- forecast is deleted, you can no longer query the forecast.
module Network.AWS.Forecast.DeleteForecast
  ( -- * Creating a Request
    DeleteForecast (..),
    newDeleteForecast,

    -- * Request Lenses
    deleteForecast_forecastArn,

    -- * Destructuring the Response
    DeleteForecastResponse (..),
    newDeleteForecastResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.Forecast.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteForecast' smart constructor.
data DeleteForecast = DeleteForecast'
  { -- | The Amazon Resource Name (ARN) of the forecast to delete.
    forecastArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteForecast' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forecastArn', 'deleteForecast_forecastArn' - The Amazon Resource Name (ARN) of the forecast to delete.
newDeleteForecast ::
  -- | 'forecastArn'
  Prelude.Text ->
  DeleteForecast
newDeleteForecast pForecastArn_ =
  DeleteForecast' {forecastArn = pForecastArn_}

-- | The Amazon Resource Name (ARN) of the forecast to delete.
deleteForecast_forecastArn :: Lens.Lens' DeleteForecast Prelude.Text
deleteForecast_forecastArn = Lens.lens (\DeleteForecast' {forecastArn} -> forecastArn) (\s@DeleteForecast' {} a -> s {forecastArn = a} :: DeleteForecast)

instance Core.AWSRequest DeleteForecast where
  type
    AWSResponse DeleteForecast =
      DeleteForecastResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull DeleteForecastResponse'

instance Prelude.Hashable DeleteForecast

instance Prelude.NFData DeleteForecast

instance Core.ToHeaders DeleteForecast where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "AmazonForecast.DeleteForecast" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON DeleteForecast where
  toJSON DeleteForecast' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ForecastArn" Core..= forecastArn)]
      )

instance Core.ToPath DeleteForecast where
  toPath = Prelude.const "/"

instance Core.ToQuery DeleteForecast where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteForecastResponse' smart constructor.
data DeleteForecastResponse = DeleteForecastResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteForecastResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteForecastResponse ::
  DeleteForecastResponse
newDeleteForecastResponse = DeleteForecastResponse'

instance Prelude.NFData DeleteForecastResponse
