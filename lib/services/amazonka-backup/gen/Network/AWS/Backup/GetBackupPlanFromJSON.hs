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
-- Module      : Network.AWS.Backup.GetBackupPlanFromJSON
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a valid JSON document specifying a backup plan or an error.
module Network.AWS.Backup.GetBackupPlanFromJSON
  ( -- * Creating a Request
    GetBackupPlanFromJSON (..),
    newGetBackupPlanFromJSON,

    -- * Request Lenses
    getBackupPlanFromJSON_backupPlanTemplateJson,

    -- * Destructuring the Response
    GetBackupPlanFromJSONResponse (..),
    newGetBackupPlanFromJSONResponse,

    -- * Response Lenses
    getBackupPlanFromJSONResponse_backupPlan,
    getBackupPlanFromJSONResponse_httpStatus,
  )
where

import Network.AWS.Backup.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetBackupPlanFromJSON' smart constructor.
data GetBackupPlanFromJSON = GetBackupPlanFromJSON'
  { -- | A customer-supplied backup plan document in JSON format.
    backupPlanTemplateJson :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBackupPlanFromJSON' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupPlanTemplateJson', 'getBackupPlanFromJSON_backupPlanTemplateJson' - A customer-supplied backup plan document in JSON format.
newGetBackupPlanFromJSON ::
  -- | 'backupPlanTemplateJson'
  Prelude.Text ->
  GetBackupPlanFromJSON
newGetBackupPlanFromJSON pBackupPlanTemplateJson_ =
  GetBackupPlanFromJSON'
    { backupPlanTemplateJson =
        pBackupPlanTemplateJson_
    }

-- | A customer-supplied backup plan document in JSON format.
getBackupPlanFromJSON_backupPlanTemplateJson :: Lens.Lens' GetBackupPlanFromJSON Prelude.Text
getBackupPlanFromJSON_backupPlanTemplateJson = Lens.lens (\GetBackupPlanFromJSON' {backupPlanTemplateJson} -> backupPlanTemplateJson) (\s@GetBackupPlanFromJSON' {} a -> s {backupPlanTemplateJson = a} :: GetBackupPlanFromJSON)

instance Core.AWSRequest GetBackupPlanFromJSON where
  type
    AWSResponse GetBackupPlanFromJSON =
      GetBackupPlanFromJSONResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBackupPlanFromJSONResponse'
            Prelude.<$> (x Core..?> "BackupPlan")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetBackupPlanFromJSON

instance Prelude.NFData GetBackupPlanFromJSON

instance Core.ToHeaders GetBackupPlanFromJSON where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON GetBackupPlanFromJSON where
  toJSON GetBackupPlanFromJSON' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "BackupPlanTemplateJson"
                  Core..= backupPlanTemplateJson
              )
          ]
      )

instance Core.ToPath GetBackupPlanFromJSON where
  toPath = Prelude.const "/backup/template/json/toPlan"

instance Core.ToQuery GetBackupPlanFromJSON where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetBackupPlanFromJSONResponse' smart constructor.
data GetBackupPlanFromJSONResponse = GetBackupPlanFromJSONResponse'
  { -- | Specifies the body of a backup plan. Includes a @BackupPlanName@ and one
    -- or more sets of @Rules@.
    backupPlan :: Prelude.Maybe BackupPlan,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetBackupPlanFromJSONResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'backupPlan', 'getBackupPlanFromJSONResponse_backupPlan' - Specifies the body of a backup plan. Includes a @BackupPlanName@ and one
-- or more sets of @Rules@.
--
-- 'httpStatus', 'getBackupPlanFromJSONResponse_httpStatus' - The response's http status code.
newGetBackupPlanFromJSONResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetBackupPlanFromJSONResponse
newGetBackupPlanFromJSONResponse pHttpStatus_ =
  GetBackupPlanFromJSONResponse'
    { backupPlan =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Specifies the body of a backup plan. Includes a @BackupPlanName@ and one
-- or more sets of @Rules@.
getBackupPlanFromJSONResponse_backupPlan :: Lens.Lens' GetBackupPlanFromJSONResponse (Prelude.Maybe BackupPlan)
getBackupPlanFromJSONResponse_backupPlan = Lens.lens (\GetBackupPlanFromJSONResponse' {backupPlan} -> backupPlan) (\s@GetBackupPlanFromJSONResponse' {} a -> s {backupPlan = a} :: GetBackupPlanFromJSONResponse)

-- | The response's http status code.
getBackupPlanFromJSONResponse_httpStatus :: Lens.Lens' GetBackupPlanFromJSONResponse Prelude.Int
getBackupPlanFromJSONResponse_httpStatus = Lens.lens (\GetBackupPlanFromJSONResponse' {httpStatus} -> httpStatus) (\s@GetBackupPlanFromJSONResponse' {} a -> s {httpStatus = a} :: GetBackupPlanFromJSONResponse)

instance Prelude.NFData GetBackupPlanFromJSONResponse
