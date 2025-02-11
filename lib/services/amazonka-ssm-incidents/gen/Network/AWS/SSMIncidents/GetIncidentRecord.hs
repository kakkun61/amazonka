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
-- Module      : Network.AWS.SSMIncidents.GetIncidentRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of the specified incident record.
module Network.AWS.SSMIncidents.GetIncidentRecord
  ( -- * Creating a Request
    GetIncidentRecord (..),
    newGetIncidentRecord,

    -- * Request Lenses
    getIncidentRecord_arn,

    -- * Destructuring the Response
    GetIncidentRecordResponse (..),
    newGetIncidentRecordResponse,

    -- * Response Lenses
    getIncidentRecordResponse_httpStatus,
    getIncidentRecordResponse_incidentRecord,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSMIncidents.Types

-- | /See:/ 'newGetIncidentRecord' smart constructor.
data GetIncidentRecord = GetIncidentRecord'
  { -- | The Amazon Resource Name (ARN) of the incident record.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIncidentRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'getIncidentRecord_arn' - The Amazon Resource Name (ARN) of the incident record.
newGetIncidentRecord ::
  -- | 'arn'
  Prelude.Text ->
  GetIncidentRecord
newGetIncidentRecord pArn_ =
  GetIncidentRecord' {arn = pArn_}

-- | The Amazon Resource Name (ARN) of the incident record.
getIncidentRecord_arn :: Lens.Lens' GetIncidentRecord Prelude.Text
getIncidentRecord_arn = Lens.lens (\GetIncidentRecord' {arn} -> arn) (\s@GetIncidentRecord' {} a -> s {arn = a} :: GetIncidentRecord)

instance Core.AWSRequest GetIncidentRecord where
  type
    AWSResponse GetIncidentRecord =
      GetIncidentRecordResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetIncidentRecordResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "incidentRecord")
      )

instance Prelude.Hashable GetIncidentRecord

instance Prelude.NFData GetIncidentRecord

instance Core.ToHeaders GetIncidentRecord where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetIncidentRecord where
  toPath = Prelude.const "/getIncidentRecord"

instance Core.ToQuery GetIncidentRecord where
  toQuery GetIncidentRecord' {..} =
    Prelude.mconcat ["arn" Core.=: arn]

-- | /See:/ 'newGetIncidentRecordResponse' smart constructor.
data GetIncidentRecordResponse = GetIncidentRecordResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Details structure of the incident record.
    incidentRecord :: IncidentRecord
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetIncidentRecordResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getIncidentRecordResponse_httpStatus' - The response's http status code.
--
-- 'incidentRecord', 'getIncidentRecordResponse_incidentRecord' - Details structure of the incident record.
newGetIncidentRecordResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'incidentRecord'
  IncidentRecord ->
  GetIncidentRecordResponse
newGetIncidentRecordResponse
  pHttpStatus_
  pIncidentRecord_ =
    GetIncidentRecordResponse'
      { httpStatus =
          pHttpStatus_,
        incidentRecord = pIncidentRecord_
      }

-- | The response's http status code.
getIncidentRecordResponse_httpStatus :: Lens.Lens' GetIncidentRecordResponse Prelude.Int
getIncidentRecordResponse_httpStatus = Lens.lens (\GetIncidentRecordResponse' {httpStatus} -> httpStatus) (\s@GetIncidentRecordResponse' {} a -> s {httpStatus = a} :: GetIncidentRecordResponse)

-- | Details structure of the incident record.
getIncidentRecordResponse_incidentRecord :: Lens.Lens' GetIncidentRecordResponse IncidentRecord
getIncidentRecordResponse_incidentRecord = Lens.lens (\GetIncidentRecordResponse' {incidentRecord} -> incidentRecord) (\s@GetIncidentRecordResponse' {} a -> s {incidentRecord = a} :: GetIncidentRecordResponse)

instance Prelude.NFData GetIncidentRecordResponse
