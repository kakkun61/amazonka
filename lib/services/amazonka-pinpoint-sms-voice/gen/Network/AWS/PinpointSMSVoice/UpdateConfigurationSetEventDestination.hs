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
-- Module      : Network.AWS.PinpointSMSVoice.UpdateConfigurationSetEventDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an event destination in a configuration set. An event destination
-- is a location that you publish information about your voice calls to.
-- For example, you can log an event to an Amazon CloudWatch destination
-- when a call fails.
module Network.AWS.PinpointSMSVoice.UpdateConfigurationSetEventDestination
  ( -- * Creating a Request
    UpdateConfigurationSetEventDestination (..),
    newUpdateConfigurationSetEventDestination,

    -- * Request Lenses
    updateConfigurationSetEventDestination_eventDestination,
    updateConfigurationSetEventDestination_eventDestinationName,
    updateConfigurationSetEventDestination_configurationSetName,

    -- * Destructuring the Response
    UpdateConfigurationSetEventDestinationResponse (..),
    newUpdateConfigurationSetEventDestinationResponse,

    -- * Response Lenses
    updateConfigurationSetEventDestinationResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.PinpointSMSVoice.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | UpdateConfigurationSetEventDestinationRequest
--
-- /See:/ 'newUpdateConfigurationSetEventDestination' smart constructor.
data UpdateConfigurationSetEventDestination = UpdateConfigurationSetEventDestination'
  { eventDestination :: Prelude.Maybe EventDestinationDefinition,
    -- | EventDestinationName
    eventDestinationName :: Prelude.Text,
    -- | ConfigurationSetName
    configurationSetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConfigurationSetEventDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventDestination', 'updateConfigurationSetEventDestination_eventDestination' - Undocumented member.
--
-- 'eventDestinationName', 'updateConfigurationSetEventDestination_eventDestinationName' - EventDestinationName
--
-- 'configurationSetName', 'updateConfigurationSetEventDestination_configurationSetName' - ConfigurationSetName
newUpdateConfigurationSetEventDestination ::
  -- | 'eventDestinationName'
  Prelude.Text ->
  -- | 'configurationSetName'
  Prelude.Text ->
  UpdateConfigurationSetEventDestination
newUpdateConfigurationSetEventDestination
  pEventDestinationName_
  pConfigurationSetName_ =
    UpdateConfigurationSetEventDestination'
      { eventDestination =
          Prelude.Nothing,
        eventDestinationName =
          pEventDestinationName_,
        configurationSetName =
          pConfigurationSetName_
      }

-- | Undocumented member.
updateConfigurationSetEventDestination_eventDestination :: Lens.Lens' UpdateConfigurationSetEventDestination (Prelude.Maybe EventDestinationDefinition)
updateConfigurationSetEventDestination_eventDestination = Lens.lens (\UpdateConfigurationSetEventDestination' {eventDestination} -> eventDestination) (\s@UpdateConfigurationSetEventDestination' {} a -> s {eventDestination = a} :: UpdateConfigurationSetEventDestination)

-- | EventDestinationName
updateConfigurationSetEventDestination_eventDestinationName :: Lens.Lens' UpdateConfigurationSetEventDestination Prelude.Text
updateConfigurationSetEventDestination_eventDestinationName = Lens.lens (\UpdateConfigurationSetEventDestination' {eventDestinationName} -> eventDestinationName) (\s@UpdateConfigurationSetEventDestination' {} a -> s {eventDestinationName = a} :: UpdateConfigurationSetEventDestination)

-- | ConfigurationSetName
updateConfigurationSetEventDestination_configurationSetName :: Lens.Lens' UpdateConfigurationSetEventDestination Prelude.Text
updateConfigurationSetEventDestination_configurationSetName = Lens.lens (\UpdateConfigurationSetEventDestination' {configurationSetName} -> configurationSetName) (\s@UpdateConfigurationSetEventDestination' {} a -> s {configurationSetName = a} :: UpdateConfigurationSetEventDestination)

instance
  Core.AWSRequest
    UpdateConfigurationSetEventDestination
  where
  type
    AWSResponse
      UpdateConfigurationSetEventDestination =
      UpdateConfigurationSetEventDestinationResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          UpdateConfigurationSetEventDestinationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    UpdateConfigurationSetEventDestination

instance
  Prelude.NFData
    UpdateConfigurationSetEventDestination

instance
  Core.ToHeaders
    UpdateConfigurationSetEventDestination
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    UpdateConfigurationSetEventDestination
  where
  toJSON UpdateConfigurationSetEventDestination' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EventDestination" Core..=)
              Prelude.<$> eventDestination
          ]
      )

instance
  Core.ToPath
    UpdateConfigurationSetEventDestination
  where
  toPath UpdateConfigurationSetEventDestination' {..} =
    Prelude.mconcat
      [ "/v1/sms-voice/configuration-sets/",
        Core.toBS configurationSetName,
        "/event-destinations/",
        Core.toBS eventDestinationName
      ]

instance
  Core.ToQuery
    UpdateConfigurationSetEventDestination
  where
  toQuery = Prelude.const Prelude.mempty

-- | An empty object that indicates that the event destination was updated
-- successfully.
--
-- /See:/ 'newUpdateConfigurationSetEventDestinationResponse' smart constructor.
data UpdateConfigurationSetEventDestinationResponse = UpdateConfigurationSetEventDestinationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateConfigurationSetEventDestinationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateConfigurationSetEventDestinationResponse_httpStatus' - The response's http status code.
newUpdateConfigurationSetEventDestinationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateConfigurationSetEventDestinationResponse
newUpdateConfigurationSetEventDestinationResponse
  pHttpStatus_ =
    UpdateConfigurationSetEventDestinationResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
updateConfigurationSetEventDestinationResponse_httpStatus :: Lens.Lens' UpdateConfigurationSetEventDestinationResponse Prelude.Int
updateConfigurationSetEventDestinationResponse_httpStatus = Lens.lens (\UpdateConfigurationSetEventDestinationResponse' {httpStatus} -> httpStatus) (\s@UpdateConfigurationSetEventDestinationResponse' {} a -> s {httpStatus = a} :: UpdateConfigurationSetEventDestinationResponse)

instance
  Prelude.NFData
    UpdateConfigurationSetEventDestinationResponse
