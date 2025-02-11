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
-- Module      : Network.AWS.DataBrew.UpdateDataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the definition of an existing DataBrew dataset.
module Network.AWS.DataBrew.UpdateDataset
  ( -- * Creating a Request
    UpdateDataset (..),
    newUpdateDataset,

    -- * Request Lenses
    updateDataset_pathOptions,
    updateDataset_formatOptions,
    updateDataset_format,
    updateDataset_name,
    updateDataset_input,

    -- * Destructuring the Response
    UpdateDatasetResponse (..),
    newUpdateDatasetResponse,

    -- * Response Lenses
    updateDatasetResponse_httpStatus,
    updateDatasetResponse_name,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDataset' smart constructor.
data UpdateDataset = UpdateDataset'
  { -- | A set of options that defines how DataBrew interprets an Amazon S3 path
    -- of the dataset.
    pathOptions :: Prelude.Maybe PathOptions,
    formatOptions :: Prelude.Maybe FormatOptions,
    -- | The file format of a dataset that is created from an Amazon S3 file or
    -- folder.
    format :: Prelude.Maybe InputFormat,
    -- | The name of the dataset to be updated.
    name :: Prelude.Text,
    input :: Input
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDataset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pathOptions', 'updateDataset_pathOptions' - A set of options that defines how DataBrew interprets an Amazon S3 path
-- of the dataset.
--
-- 'formatOptions', 'updateDataset_formatOptions' - Undocumented member.
--
-- 'format', 'updateDataset_format' - The file format of a dataset that is created from an Amazon S3 file or
-- folder.
--
-- 'name', 'updateDataset_name' - The name of the dataset to be updated.
--
-- 'input', 'updateDataset_input' - Undocumented member.
newUpdateDataset ::
  -- | 'name'
  Prelude.Text ->
  -- | 'input'
  Input ->
  UpdateDataset
newUpdateDataset pName_ pInput_ =
  UpdateDataset'
    { pathOptions = Prelude.Nothing,
      formatOptions = Prelude.Nothing,
      format = Prelude.Nothing,
      name = pName_,
      input = pInput_
    }

-- | A set of options that defines how DataBrew interprets an Amazon S3 path
-- of the dataset.
updateDataset_pathOptions :: Lens.Lens' UpdateDataset (Prelude.Maybe PathOptions)
updateDataset_pathOptions = Lens.lens (\UpdateDataset' {pathOptions} -> pathOptions) (\s@UpdateDataset' {} a -> s {pathOptions = a} :: UpdateDataset)

-- | Undocumented member.
updateDataset_formatOptions :: Lens.Lens' UpdateDataset (Prelude.Maybe FormatOptions)
updateDataset_formatOptions = Lens.lens (\UpdateDataset' {formatOptions} -> formatOptions) (\s@UpdateDataset' {} a -> s {formatOptions = a} :: UpdateDataset)

-- | The file format of a dataset that is created from an Amazon S3 file or
-- folder.
updateDataset_format :: Lens.Lens' UpdateDataset (Prelude.Maybe InputFormat)
updateDataset_format = Lens.lens (\UpdateDataset' {format} -> format) (\s@UpdateDataset' {} a -> s {format = a} :: UpdateDataset)

-- | The name of the dataset to be updated.
updateDataset_name :: Lens.Lens' UpdateDataset Prelude.Text
updateDataset_name = Lens.lens (\UpdateDataset' {name} -> name) (\s@UpdateDataset' {} a -> s {name = a} :: UpdateDataset)

-- | Undocumented member.
updateDataset_input :: Lens.Lens' UpdateDataset Input
updateDataset_input = Lens.lens (\UpdateDataset' {input} -> input) (\s@UpdateDataset' {} a -> s {input = a} :: UpdateDataset)

instance Core.AWSRequest UpdateDataset where
  type
    AWSResponse UpdateDataset =
      UpdateDatasetResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateDatasetResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable UpdateDataset

instance Prelude.NFData UpdateDataset

instance Core.ToHeaders UpdateDataset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateDataset where
  toJSON UpdateDataset' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("PathOptions" Core..=) Prelude.<$> pathOptions,
            ("FormatOptions" Core..=) Prelude.<$> formatOptions,
            ("Format" Core..=) Prelude.<$> format,
            Prelude.Just ("Input" Core..= input)
          ]
      )

instance Core.ToPath UpdateDataset where
  toPath UpdateDataset' {..} =
    Prelude.mconcat ["/datasets/", Core.toBS name]

instance Core.ToQuery UpdateDataset where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDatasetResponse' smart constructor.
data UpdateDatasetResponse = UpdateDatasetResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the dataset that you updated.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDatasetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateDatasetResponse_httpStatus' - The response's http status code.
--
-- 'name', 'updateDatasetResponse_name' - The name of the dataset that you updated.
newUpdateDatasetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  UpdateDatasetResponse
newUpdateDatasetResponse pHttpStatus_ pName_ =
  UpdateDatasetResponse'
    { httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The response's http status code.
updateDatasetResponse_httpStatus :: Lens.Lens' UpdateDatasetResponse Prelude.Int
updateDatasetResponse_httpStatus = Lens.lens (\UpdateDatasetResponse' {httpStatus} -> httpStatus) (\s@UpdateDatasetResponse' {} a -> s {httpStatus = a} :: UpdateDatasetResponse)

-- | The name of the dataset that you updated.
updateDatasetResponse_name :: Lens.Lens' UpdateDatasetResponse Prelude.Text
updateDatasetResponse_name = Lens.lens (\UpdateDatasetResponse' {name} -> name) (\s@UpdateDatasetResponse' {} a -> s {name = a} :: UpdateDatasetResponse)

instance Prelude.NFData UpdateDatasetResponse
