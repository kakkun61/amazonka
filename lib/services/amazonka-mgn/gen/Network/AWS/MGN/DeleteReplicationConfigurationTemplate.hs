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
-- Module      : Network.AWS.MGN.DeleteReplicationConfigurationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a single Replication Configuration Template by ID
module Network.AWS.MGN.DeleteReplicationConfigurationTemplate
  ( -- * Creating a Request
    DeleteReplicationConfigurationTemplate (..),
    newDeleteReplicationConfigurationTemplate,

    -- * Request Lenses
    deleteReplicationConfigurationTemplate_replicationConfigurationTemplateID,

    -- * Destructuring the Response
    DeleteReplicationConfigurationTemplateResponse (..),
    newDeleteReplicationConfigurationTemplateResponse,

    -- * Response Lenses
    deleteReplicationConfigurationTemplateResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteReplicationConfigurationTemplate' smart constructor.
data DeleteReplicationConfigurationTemplate = DeleteReplicationConfigurationTemplate'
  { -- | Request to delete Replication Configuration Template from service by
    -- Replication Configuration Template ID.
    replicationConfigurationTemplateID :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteReplicationConfigurationTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationConfigurationTemplateID', 'deleteReplicationConfigurationTemplate_replicationConfigurationTemplateID' - Request to delete Replication Configuration Template from service by
-- Replication Configuration Template ID.
newDeleteReplicationConfigurationTemplate ::
  -- | 'replicationConfigurationTemplateID'
  Prelude.Text ->
  DeleteReplicationConfigurationTemplate
newDeleteReplicationConfigurationTemplate
  pReplicationConfigurationTemplateID_ =
    DeleteReplicationConfigurationTemplate'
      { replicationConfigurationTemplateID =
          pReplicationConfigurationTemplateID_
      }

-- | Request to delete Replication Configuration Template from service by
-- Replication Configuration Template ID.
deleteReplicationConfigurationTemplate_replicationConfigurationTemplateID :: Lens.Lens' DeleteReplicationConfigurationTemplate Prelude.Text
deleteReplicationConfigurationTemplate_replicationConfigurationTemplateID = Lens.lens (\DeleteReplicationConfigurationTemplate' {replicationConfigurationTemplateID} -> replicationConfigurationTemplateID) (\s@DeleteReplicationConfigurationTemplate' {} a -> s {replicationConfigurationTemplateID = a} :: DeleteReplicationConfigurationTemplate)

instance
  Core.AWSRequest
    DeleteReplicationConfigurationTemplate
  where
  type
    AWSResponse
      DeleteReplicationConfigurationTemplate =
      DeleteReplicationConfigurationTemplateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          DeleteReplicationConfigurationTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteReplicationConfigurationTemplate

instance
  Prelude.NFData
    DeleteReplicationConfigurationTemplate

instance
  Core.ToHeaders
    DeleteReplicationConfigurationTemplate
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
    DeleteReplicationConfigurationTemplate
  where
  toJSON DeleteReplicationConfigurationTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "replicationConfigurationTemplateID"
                  Core..= replicationConfigurationTemplateID
              )
          ]
      )

instance
  Core.ToPath
    DeleteReplicationConfigurationTemplate
  where
  toPath =
    Prelude.const
      "/DeleteReplicationConfigurationTemplate"

instance
  Core.ToQuery
    DeleteReplicationConfigurationTemplate
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteReplicationConfigurationTemplateResponse' smart constructor.
data DeleteReplicationConfigurationTemplateResponse = DeleteReplicationConfigurationTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DeleteReplicationConfigurationTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteReplicationConfigurationTemplateResponse_httpStatus' - The response's http status code.
newDeleteReplicationConfigurationTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteReplicationConfigurationTemplateResponse
newDeleteReplicationConfigurationTemplateResponse
  pHttpStatus_ =
    DeleteReplicationConfigurationTemplateResponse'
      { httpStatus =
          pHttpStatus_
      }

-- | The response's http status code.
deleteReplicationConfigurationTemplateResponse_httpStatus :: Lens.Lens' DeleteReplicationConfigurationTemplateResponse Prelude.Int
deleteReplicationConfigurationTemplateResponse_httpStatus = Lens.lens (\DeleteReplicationConfigurationTemplateResponse' {httpStatus} -> httpStatus) (\s@DeleteReplicationConfigurationTemplateResponse' {} a -> s {httpStatus = a} :: DeleteReplicationConfigurationTemplateResponse)

instance
  Prelude.NFData
    DeleteReplicationConfigurationTemplateResponse
