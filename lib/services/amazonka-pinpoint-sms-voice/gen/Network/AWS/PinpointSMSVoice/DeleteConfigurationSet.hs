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
-- Module      : Network.AWS.PinpointSMSVoice.DeleteConfigurationSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing configuration set.
module Network.AWS.PinpointSMSVoice.DeleteConfigurationSet
  ( -- * Creating a Request
    DeleteConfigurationSet (..),
    newDeleteConfigurationSet,

    -- * Request Lenses
    deleteConfigurationSet_configurationSetName,

    -- * Destructuring the Response
    DeleteConfigurationSetResponse (..),
    newDeleteConfigurationSetResponse,

    -- * Response Lenses
    deleteConfigurationSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.PinpointSMSVoice.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteConfigurationSet' smart constructor.
data DeleteConfigurationSet = DeleteConfigurationSet'
  { -- | ConfigurationSetName
    configurationSetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteConfigurationSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'configurationSetName', 'deleteConfigurationSet_configurationSetName' - ConfigurationSetName
newDeleteConfigurationSet ::
  -- | 'configurationSetName'
  Prelude.Text ->
  DeleteConfigurationSet
newDeleteConfigurationSet pConfigurationSetName_ =
  DeleteConfigurationSet'
    { configurationSetName =
        pConfigurationSetName_
    }

-- | ConfigurationSetName
deleteConfigurationSet_configurationSetName :: Lens.Lens' DeleteConfigurationSet Prelude.Text
deleteConfigurationSet_configurationSetName = Lens.lens (\DeleteConfigurationSet' {configurationSetName} -> configurationSetName) (\s@DeleteConfigurationSet' {} a -> s {configurationSetName = a} :: DeleteConfigurationSet)

instance Core.AWSRequest DeleteConfigurationSet where
  type
    AWSResponse DeleteConfigurationSet =
      DeleteConfigurationSetResponse
  request = Request.delete defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteConfigurationSetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteConfigurationSet

instance Prelude.NFData DeleteConfigurationSet

instance Core.ToHeaders DeleteConfigurationSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DeleteConfigurationSet where
  toPath DeleteConfigurationSet' {..} =
    Prelude.mconcat
      [ "/v1/sms-voice/configuration-sets/",
        Core.toBS configurationSetName
      ]

instance Core.ToQuery DeleteConfigurationSet where
  toQuery = Prelude.const Prelude.mempty

-- | An empty object that indicates that the configuration set was deleted
-- successfully.
--
-- /See:/ 'newDeleteConfigurationSetResponse' smart constructor.
data DeleteConfigurationSetResponse = DeleteConfigurationSetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteConfigurationSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteConfigurationSetResponse_httpStatus' - The response's http status code.
newDeleteConfigurationSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteConfigurationSetResponse
newDeleteConfigurationSetResponse pHttpStatus_ =
  DeleteConfigurationSetResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
deleteConfigurationSetResponse_httpStatus :: Lens.Lens' DeleteConfigurationSetResponse Prelude.Int
deleteConfigurationSetResponse_httpStatus = Lens.lens (\DeleteConfigurationSetResponse' {httpStatus} -> httpStatus) (\s@DeleteConfigurationSetResponse' {} a -> s {httpStatus = a} :: DeleteConfigurationSetResponse)

instance
  Prelude.NFData
    DeleteConfigurationSetResponse
