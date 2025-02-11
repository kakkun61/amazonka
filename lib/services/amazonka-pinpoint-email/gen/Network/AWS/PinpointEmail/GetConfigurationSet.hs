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
-- Module      : Network.AWS.PinpointEmail.GetConfigurationSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get information about an existing configuration set, including the
-- dedicated IP pool that it\'s associated with, whether or not it\'s
-- enabled for sending email, and more.
--
-- In Amazon Pinpoint, /configuration sets/ are groups of rules that you
-- can apply to the emails you send. You apply a configuration set to an
-- email by including a reference to the configuration set in the headers
-- of the email. When you apply a configuration set to an email, all of the
-- rules in that configuration set are applied to the email.
module Network.AWS.PinpointEmail.GetConfigurationSet
  ( -- * Creating a Request
    GetConfigurationSet (..),
    newGetConfigurationSet,

    -- * Request Lenses
    getConfigurationSet_configurationSetName,

    -- * Destructuring the Response
    GetConfigurationSetResponse (..),
    newGetConfigurationSetResponse,

    -- * Response Lenses
    getConfigurationSetResponse_sendingOptions,
    getConfigurationSetResponse_configurationSetName,
    getConfigurationSetResponse_deliveryOptions,
    getConfigurationSetResponse_trackingOptions,
    getConfigurationSetResponse_reputationOptions,
    getConfigurationSetResponse_tags,
    getConfigurationSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.PinpointEmail.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request to obtain information about a configuration set.
--
-- /See:/ 'newGetConfigurationSet' smart constructor.
data GetConfigurationSet = GetConfigurationSet'
  { -- | The name of the configuration set that you want to obtain more
    -- information about.
    configurationSetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetConfigurationSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationSetName', 'getConfigurationSet_configurationSetName' - The name of the configuration set that you want to obtain more
-- information about.
newGetConfigurationSet ::
  -- | 'configurationSetName'
  Prelude.Text ->
  GetConfigurationSet
newGetConfigurationSet pConfigurationSetName_ =
  GetConfigurationSet'
    { configurationSetName =
        pConfigurationSetName_
    }

-- | The name of the configuration set that you want to obtain more
-- information about.
getConfigurationSet_configurationSetName :: Lens.Lens' GetConfigurationSet Prelude.Text
getConfigurationSet_configurationSetName = Lens.lens (\GetConfigurationSet' {configurationSetName} -> configurationSetName) (\s@GetConfigurationSet' {} a -> s {configurationSetName = a} :: GetConfigurationSet)

instance Core.AWSRequest GetConfigurationSet where
  type
    AWSResponse GetConfigurationSet =
      GetConfigurationSetResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetConfigurationSetResponse'
            Prelude.<$> (x Core..?> "SendingOptions")
            Prelude.<*> (x Core..?> "ConfigurationSetName")
            Prelude.<*> (x Core..?> "DeliveryOptions")
            Prelude.<*> (x Core..?> "TrackingOptions")
            Prelude.<*> (x Core..?> "ReputationOptions")
            Prelude.<*> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetConfigurationSet

instance Prelude.NFData GetConfigurationSet

instance Core.ToHeaders GetConfigurationSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetConfigurationSet where
  toPath GetConfigurationSet' {..} =
    Prelude.mconcat
      [ "/v1/email/configuration-sets/",
        Core.toBS configurationSetName
      ]

instance Core.ToQuery GetConfigurationSet where
  toQuery = Prelude.const Prelude.mempty

-- | Information about a configuration set.
--
-- /See:/ 'newGetConfigurationSetResponse' smart constructor.
data GetConfigurationSetResponse = GetConfigurationSetResponse'
  { -- | An object that defines whether or not Amazon Pinpoint can send email
    -- that you send using the configuration set.
    sendingOptions :: Prelude.Maybe SendingOptions,
    -- | The name of the configuration set.
    configurationSetName :: Prelude.Maybe Prelude.Text,
    -- | An object that defines the dedicated IP pool that is used to send emails
    -- that you send using the configuration set.
    deliveryOptions :: Prelude.Maybe DeliveryOptions,
    -- | An object that defines the open and click tracking options for emails
    -- that you send using the configuration set.
    trackingOptions :: Prelude.Maybe TrackingOptions,
    -- | An object that defines whether or not Amazon Pinpoint collects
    -- reputation metrics for the emails that you send that use the
    -- configuration set.
    reputationOptions :: Prelude.Maybe ReputationOptions,
    -- | An array of objects that define the tags (keys and values) that are
    -- associated with the configuration set.
    tags :: Prelude.Maybe [Tag],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetConfigurationSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sendingOptions', 'getConfigurationSetResponse_sendingOptions' - An object that defines whether or not Amazon Pinpoint can send email
-- that you send using the configuration set.
--
-- 'configurationSetName', 'getConfigurationSetResponse_configurationSetName' - The name of the configuration set.
--
-- 'deliveryOptions', 'getConfigurationSetResponse_deliveryOptions' - An object that defines the dedicated IP pool that is used to send emails
-- that you send using the configuration set.
--
-- 'trackingOptions', 'getConfigurationSetResponse_trackingOptions' - An object that defines the open and click tracking options for emails
-- that you send using the configuration set.
--
-- 'reputationOptions', 'getConfigurationSetResponse_reputationOptions' - An object that defines whether or not Amazon Pinpoint collects
-- reputation metrics for the emails that you send that use the
-- configuration set.
--
-- 'tags', 'getConfigurationSetResponse_tags' - An array of objects that define the tags (keys and values) that are
-- associated with the configuration set.
--
-- 'httpStatus', 'getConfigurationSetResponse_httpStatus' - The response's http status code.
newGetConfigurationSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetConfigurationSetResponse
newGetConfigurationSetResponse pHttpStatus_ =
  GetConfigurationSetResponse'
    { sendingOptions =
        Prelude.Nothing,
      configurationSetName = Prelude.Nothing,
      deliveryOptions = Prelude.Nothing,
      trackingOptions = Prelude.Nothing,
      reputationOptions = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An object that defines whether or not Amazon Pinpoint can send email
-- that you send using the configuration set.
getConfigurationSetResponse_sendingOptions :: Lens.Lens' GetConfigurationSetResponse (Prelude.Maybe SendingOptions)
getConfigurationSetResponse_sendingOptions = Lens.lens (\GetConfigurationSetResponse' {sendingOptions} -> sendingOptions) (\s@GetConfigurationSetResponse' {} a -> s {sendingOptions = a} :: GetConfigurationSetResponse)

-- | The name of the configuration set.
getConfigurationSetResponse_configurationSetName :: Lens.Lens' GetConfigurationSetResponse (Prelude.Maybe Prelude.Text)
getConfigurationSetResponse_configurationSetName = Lens.lens (\GetConfigurationSetResponse' {configurationSetName} -> configurationSetName) (\s@GetConfigurationSetResponse' {} a -> s {configurationSetName = a} :: GetConfigurationSetResponse)

-- | An object that defines the dedicated IP pool that is used to send emails
-- that you send using the configuration set.
getConfigurationSetResponse_deliveryOptions :: Lens.Lens' GetConfigurationSetResponse (Prelude.Maybe DeliveryOptions)
getConfigurationSetResponse_deliveryOptions = Lens.lens (\GetConfigurationSetResponse' {deliveryOptions} -> deliveryOptions) (\s@GetConfigurationSetResponse' {} a -> s {deliveryOptions = a} :: GetConfigurationSetResponse)

-- | An object that defines the open and click tracking options for emails
-- that you send using the configuration set.
getConfigurationSetResponse_trackingOptions :: Lens.Lens' GetConfigurationSetResponse (Prelude.Maybe TrackingOptions)
getConfigurationSetResponse_trackingOptions = Lens.lens (\GetConfigurationSetResponse' {trackingOptions} -> trackingOptions) (\s@GetConfigurationSetResponse' {} a -> s {trackingOptions = a} :: GetConfigurationSetResponse)

-- | An object that defines whether or not Amazon Pinpoint collects
-- reputation metrics for the emails that you send that use the
-- configuration set.
getConfigurationSetResponse_reputationOptions :: Lens.Lens' GetConfigurationSetResponse (Prelude.Maybe ReputationOptions)
getConfigurationSetResponse_reputationOptions = Lens.lens (\GetConfigurationSetResponse' {reputationOptions} -> reputationOptions) (\s@GetConfigurationSetResponse' {} a -> s {reputationOptions = a} :: GetConfigurationSetResponse)

-- | An array of objects that define the tags (keys and values) that are
-- associated with the configuration set.
getConfigurationSetResponse_tags :: Lens.Lens' GetConfigurationSetResponse (Prelude.Maybe [Tag])
getConfigurationSetResponse_tags = Lens.lens (\GetConfigurationSetResponse' {tags} -> tags) (\s@GetConfigurationSetResponse' {} a -> s {tags = a} :: GetConfigurationSetResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
getConfigurationSetResponse_httpStatus :: Lens.Lens' GetConfigurationSetResponse Prelude.Int
getConfigurationSetResponse_httpStatus = Lens.lens (\GetConfigurationSetResponse' {httpStatus} -> httpStatus) (\s@GetConfigurationSetResponse' {} a -> s {httpStatus = a} :: GetConfigurationSetResponse)

instance Prelude.NFData GetConfigurationSetResponse
