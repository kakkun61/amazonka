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
-- Module      : Network.AWS.MacieV2.UpdateFindingsFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the criteria and other settings for a findings filter.
module Network.AWS.MacieV2.UpdateFindingsFilter
  ( -- * Creating a Request
    UpdateFindingsFilter (..),
    newUpdateFindingsFilter,

    -- * Request Lenses
    updateFindingsFilter_clientToken,
    updateFindingsFilter_findingCriteria,
    updateFindingsFilter_action,
    updateFindingsFilter_name,
    updateFindingsFilter_description,
    updateFindingsFilter_position,
    updateFindingsFilter_id,

    -- * Destructuring the Response
    UpdateFindingsFilterResponse (..),
    newUpdateFindingsFilterResponse,

    -- * Response Lenses
    updateFindingsFilterResponse_arn,
    updateFindingsFilterResponse_id,
    updateFindingsFilterResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateFindingsFilter' smart constructor.
data UpdateFindingsFilter = UpdateFindingsFilter'
  { -- | A unique, case-sensitive token that you provide to ensure the
    -- idempotency of the request.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The criteria to use to filter findings.
    findingCriteria :: Prelude.Maybe FindingCriteria,
    -- | The action to perform on findings that meet the filter criteria
    -- (findingCriteria). Valid values are: ARCHIVE, suppress (automatically
    -- archive) the findings; and, NOOP, don\'t perform any action on the
    -- findings.
    action :: Prelude.Maybe FindingsFilterAction,
    -- | A custom name for the filter. The name must contain at least 3
    -- characters and can contain as many as 64 characters.
    --
    -- We strongly recommend that you avoid including any sensitive data in the
    -- name of a filter. Other users might be able to see the filter\'s name,
    -- depending on the actions that they\'re allowed to perform in Amazon
    -- Macie.
    name :: Prelude.Maybe Prelude.Text,
    -- | A custom description of the filter. The description can contain as many
    -- as 512 characters.
    --
    -- We strongly recommend that you avoid including any sensitive data in the
    -- description of a filter. Other users might be able to see the filter\'s
    -- description, depending on the actions that they\'re allowed to perform
    -- in Amazon Macie.
    description :: Prelude.Maybe Prelude.Text,
    -- | The position of the filter in the list of saved filters on the Amazon
    -- Macie console. This value also determines the order in which the filter
    -- is applied to findings, relative to other filters that are also applied
    -- to the findings.
    position :: Prelude.Maybe Prelude.Int,
    -- | The unique identifier for the Amazon Macie resource or account that the
    -- request applies to.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFindingsFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'updateFindingsFilter_clientToken' - A unique, case-sensitive token that you provide to ensure the
-- idempotency of the request.
--
-- 'findingCriteria', 'updateFindingsFilter_findingCriteria' - The criteria to use to filter findings.
--
-- 'action', 'updateFindingsFilter_action' - The action to perform on findings that meet the filter criteria
-- (findingCriteria). Valid values are: ARCHIVE, suppress (automatically
-- archive) the findings; and, NOOP, don\'t perform any action on the
-- findings.
--
-- 'name', 'updateFindingsFilter_name' - A custom name for the filter. The name must contain at least 3
-- characters and can contain as many as 64 characters.
--
-- We strongly recommend that you avoid including any sensitive data in the
-- name of a filter. Other users might be able to see the filter\'s name,
-- depending on the actions that they\'re allowed to perform in Amazon
-- Macie.
--
-- 'description', 'updateFindingsFilter_description' - A custom description of the filter. The description can contain as many
-- as 512 characters.
--
-- We strongly recommend that you avoid including any sensitive data in the
-- description of a filter. Other users might be able to see the filter\'s
-- description, depending on the actions that they\'re allowed to perform
-- in Amazon Macie.
--
-- 'position', 'updateFindingsFilter_position' - The position of the filter in the list of saved filters on the Amazon
-- Macie console. This value also determines the order in which the filter
-- is applied to findings, relative to other filters that are also applied
-- to the findings.
--
-- 'id', 'updateFindingsFilter_id' - The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
newUpdateFindingsFilter ::
  -- | 'id'
  Prelude.Text ->
  UpdateFindingsFilter
newUpdateFindingsFilter pId_ =
  UpdateFindingsFilter'
    { clientToken =
        Prelude.Nothing,
      findingCriteria = Prelude.Nothing,
      action = Prelude.Nothing,
      name = Prelude.Nothing,
      description = Prelude.Nothing,
      position = Prelude.Nothing,
      id = pId_
    }

-- | A unique, case-sensitive token that you provide to ensure the
-- idempotency of the request.
updateFindingsFilter_clientToken :: Lens.Lens' UpdateFindingsFilter (Prelude.Maybe Prelude.Text)
updateFindingsFilter_clientToken = Lens.lens (\UpdateFindingsFilter' {clientToken} -> clientToken) (\s@UpdateFindingsFilter' {} a -> s {clientToken = a} :: UpdateFindingsFilter)

-- | The criteria to use to filter findings.
updateFindingsFilter_findingCriteria :: Lens.Lens' UpdateFindingsFilter (Prelude.Maybe FindingCriteria)
updateFindingsFilter_findingCriteria = Lens.lens (\UpdateFindingsFilter' {findingCriteria} -> findingCriteria) (\s@UpdateFindingsFilter' {} a -> s {findingCriteria = a} :: UpdateFindingsFilter)

-- | The action to perform on findings that meet the filter criteria
-- (findingCriteria). Valid values are: ARCHIVE, suppress (automatically
-- archive) the findings; and, NOOP, don\'t perform any action on the
-- findings.
updateFindingsFilter_action :: Lens.Lens' UpdateFindingsFilter (Prelude.Maybe FindingsFilterAction)
updateFindingsFilter_action = Lens.lens (\UpdateFindingsFilter' {action} -> action) (\s@UpdateFindingsFilter' {} a -> s {action = a} :: UpdateFindingsFilter)

-- | A custom name for the filter. The name must contain at least 3
-- characters and can contain as many as 64 characters.
--
-- We strongly recommend that you avoid including any sensitive data in the
-- name of a filter. Other users might be able to see the filter\'s name,
-- depending on the actions that they\'re allowed to perform in Amazon
-- Macie.
updateFindingsFilter_name :: Lens.Lens' UpdateFindingsFilter (Prelude.Maybe Prelude.Text)
updateFindingsFilter_name = Lens.lens (\UpdateFindingsFilter' {name} -> name) (\s@UpdateFindingsFilter' {} a -> s {name = a} :: UpdateFindingsFilter)

-- | A custom description of the filter. The description can contain as many
-- as 512 characters.
--
-- We strongly recommend that you avoid including any sensitive data in the
-- description of a filter. Other users might be able to see the filter\'s
-- description, depending on the actions that they\'re allowed to perform
-- in Amazon Macie.
updateFindingsFilter_description :: Lens.Lens' UpdateFindingsFilter (Prelude.Maybe Prelude.Text)
updateFindingsFilter_description = Lens.lens (\UpdateFindingsFilter' {description} -> description) (\s@UpdateFindingsFilter' {} a -> s {description = a} :: UpdateFindingsFilter)

-- | The position of the filter in the list of saved filters on the Amazon
-- Macie console. This value also determines the order in which the filter
-- is applied to findings, relative to other filters that are also applied
-- to the findings.
updateFindingsFilter_position :: Lens.Lens' UpdateFindingsFilter (Prelude.Maybe Prelude.Int)
updateFindingsFilter_position = Lens.lens (\UpdateFindingsFilter' {position} -> position) (\s@UpdateFindingsFilter' {} a -> s {position = a} :: UpdateFindingsFilter)

-- | The unique identifier for the Amazon Macie resource or account that the
-- request applies to.
updateFindingsFilter_id :: Lens.Lens' UpdateFindingsFilter Prelude.Text
updateFindingsFilter_id = Lens.lens (\UpdateFindingsFilter' {id} -> id) (\s@UpdateFindingsFilter' {} a -> s {id = a} :: UpdateFindingsFilter)

instance Core.AWSRequest UpdateFindingsFilter where
  type
    AWSResponse UpdateFindingsFilter =
      UpdateFindingsFilterResponse
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateFindingsFilterResponse'
            Prelude.<$> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "id")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateFindingsFilter

instance Prelude.NFData UpdateFindingsFilter

instance Core.ToHeaders UpdateFindingsFilter where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateFindingsFilter where
  toJSON UpdateFindingsFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("clientToken" Core..=) Prelude.<$> clientToken,
            ("findingCriteria" Core..=)
              Prelude.<$> findingCriteria,
            ("action" Core..=) Prelude.<$> action,
            ("name" Core..=) Prelude.<$> name,
            ("description" Core..=) Prelude.<$> description,
            ("position" Core..=) Prelude.<$> position
          ]
      )

instance Core.ToPath UpdateFindingsFilter where
  toPath UpdateFindingsFilter' {..} =
    Prelude.mconcat ["/findingsfilters/", Core.toBS id]

instance Core.ToQuery UpdateFindingsFilter where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateFindingsFilterResponse' smart constructor.
data UpdateFindingsFilterResponse = UpdateFindingsFilterResponse'
  { -- | The Amazon Resource Name (ARN) of the filter that was updated.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the filter that was updated.
    id :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateFindingsFilterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'updateFindingsFilterResponse_arn' - The Amazon Resource Name (ARN) of the filter that was updated.
--
-- 'id', 'updateFindingsFilterResponse_id' - The unique identifier for the filter that was updated.
--
-- 'httpStatus', 'updateFindingsFilterResponse_httpStatus' - The response's http status code.
newUpdateFindingsFilterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateFindingsFilterResponse
newUpdateFindingsFilterResponse pHttpStatus_ =
  UpdateFindingsFilterResponse'
    { arn =
        Prelude.Nothing,
      id = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the filter that was updated.
updateFindingsFilterResponse_arn :: Lens.Lens' UpdateFindingsFilterResponse (Prelude.Maybe Prelude.Text)
updateFindingsFilterResponse_arn = Lens.lens (\UpdateFindingsFilterResponse' {arn} -> arn) (\s@UpdateFindingsFilterResponse' {} a -> s {arn = a} :: UpdateFindingsFilterResponse)

-- | The unique identifier for the filter that was updated.
updateFindingsFilterResponse_id :: Lens.Lens' UpdateFindingsFilterResponse (Prelude.Maybe Prelude.Text)
updateFindingsFilterResponse_id = Lens.lens (\UpdateFindingsFilterResponse' {id} -> id) (\s@UpdateFindingsFilterResponse' {} a -> s {id = a} :: UpdateFindingsFilterResponse)

-- | The response's http status code.
updateFindingsFilterResponse_httpStatus :: Lens.Lens' UpdateFindingsFilterResponse Prelude.Int
updateFindingsFilterResponse_httpStatus = Lens.lens (\UpdateFindingsFilterResponse' {httpStatus} -> httpStatus) (\s@UpdateFindingsFilterResponse' {} a -> s {httpStatus = a} :: UpdateFindingsFilterResponse)

instance Prelude.NFData UpdateFindingsFilterResponse
