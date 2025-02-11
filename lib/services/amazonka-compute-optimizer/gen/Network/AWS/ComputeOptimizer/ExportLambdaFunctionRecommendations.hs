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
-- Module      : Network.AWS.ComputeOptimizer.ExportLambdaFunctionRecommendations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports optimization recommendations for Lambda functions.
--
-- Recommendations are exported in a comma-separated values (.csv) file,
-- and its metadata in a JavaScript Object Notation (JSON) (.json) file, to
-- an existing Amazon Simple Storage Service (Amazon S3) bucket that you
-- specify. For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html Exporting Recommendations>
-- in the /Compute Optimizer User Guide/.
--
-- You can have only one Lambda function export job in progress per Amazon
-- Web Services Region.
module Network.AWS.ComputeOptimizer.ExportLambdaFunctionRecommendations
  ( -- * Creating a Request
    ExportLambdaFunctionRecommendations (..),
    newExportLambdaFunctionRecommendations,

    -- * Request Lenses
    exportLambdaFunctionRecommendations_accountIds,
    exportLambdaFunctionRecommendations_fileFormat,
    exportLambdaFunctionRecommendations_filters,
    exportLambdaFunctionRecommendations_fieldsToExport,
    exportLambdaFunctionRecommendations_includeMemberAccounts,
    exportLambdaFunctionRecommendations_s3DestinationConfig,

    -- * Destructuring the Response
    ExportLambdaFunctionRecommendationsResponse (..),
    newExportLambdaFunctionRecommendationsResponse,

    -- * Response Lenses
    exportLambdaFunctionRecommendationsResponse_jobId,
    exportLambdaFunctionRecommendationsResponse_s3Destination,
    exportLambdaFunctionRecommendationsResponse_httpStatus,
  )
where

import Network.AWS.ComputeOptimizer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newExportLambdaFunctionRecommendations' smart constructor.
data ExportLambdaFunctionRecommendations = ExportLambdaFunctionRecommendations'
  { -- | The IDs of the Amazon Web Services accounts for which to export Lambda
    -- function recommendations.
    --
    -- If your account is the management account of an organization, use this
    -- parameter to specify the member account for which you want to export
    -- recommendations.
    --
    -- This parameter cannot be specified together with the include member
    -- accounts parameter. The parameters are mutually exclusive.
    --
    -- Recommendations for member accounts are not included in the export if
    -- this parameter, or the include member accounts parameter, is omitted.
    --
    -- You can specify multiple account IDs per request.
    accountIds :: Prelude.Maybe [Prelude.Text],
    -- | The format of the export file.
    --
    -- The only export file format currently supported is @Csv@.
    fileFormat :: Prelude.Maybe FileFormat,
    -- | An array of objects to specify a filter that exports a more specific set
    -- of Lambda function recommendations.
    filters :: Prelude.Maybe [LambdaFunctionRecommendationFilter],
    -- | The recommendations data to include in the export file. For more
    -- information about the fields that can be exported, see
    -- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files Exported files>
    -- in the /Compute Optimizer User Guide/.
    fieldsToExport :: Prelude.Maybe [ExportableLambdaFunctionField],
    -- | Indicates whether to include recommendations for resources in all member
    -- accounts of the organization if your account is the management account
    -- of an organization.
    --
    -- The member accounts must also be opted in to Compute Optimizer, and
    -- trusted access for Compute Optimizer must be enabled in the organization
    -- account. For more information, see
    -- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access Compute Optimizer and Amazon Web Services Organizations trusted access>
    -- in the /Compute Optimizer User Guide/.
    --
    -- Recommendations for member accounts of the organization are not included
    -- in the export file if this parameter is omitted.
    --
    -- This parameter cannot be specified together with the account IDs
    -- parameter. The parameters are mutually exclusive.
    --
    -- Recommendations for member accounts are not included in the export if
    -- this parameter, or the account IDs parameter, is omitted.
    includeMemberAccounts :: Prelude.Maybe Prelude.Bool,
    s3DestinationConfig :: S3DestinationConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportLambdaFunctionRecommendations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'exportLambdaFunctionRecommendations_accountIds' - The IDs of the Amazon Web Services accounts for which to export Lambda
-- function recommendations.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to export
-- recommendations.
--
-- This parameter cannot be specified together with the include member
-- accounts parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the include member accounts parameter, is omitted.
--
-- You can specify multiple account IDs per request.
--
-- 'fileFormat', 'exportLambdaFunctionRecommendations_fileFormat' - The format of the export file.
--
-- The only export file format currently supported is @Csv@.
--
-- 'filters', 'exportLambdaFunctionRecommendations_filters' - An array of objects to specify a filter that exports a more specific set
-- of Lambda function recommendations.
--
-- 'fieldsToExport', 'exportLambdaFunctionRecommendations_fieldsToExport' - The recommendations data to include in the export file. For more
-- information about the fields that can be exported, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files Exported files>
-- in the /Compute Optimizer User Guide/.
--
-- 'includeMemberAccounts', 'exportLambdaFunctionRecommendations_includeMemberAccounts' - Indicates whether to include recommendations for resources in all member
-- accounts of the organization if your account is the management account
-- of an organization.
--
-- The member accounts must also be opted in to Compute Optimizer, and
-- trusted access for Compute Optimizer must be enabled in the organization
-- account. For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access Compute Optimizer and Amazon Web Services Organizations trusted access>
-- in the /Compute Optimizer User Guide/.
--
-- Recommendations for member accounts of the organization are not included
-- in the export file if this parameter is omitted.
--
-- This parameter cannot be specified together with the account IDs
-- parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the account IDs parameter, is omitted.
--
-- 's3DestinationConfig', 'exportLambdaFunctionRecommendations_s3DestinationConfig' - Undocumented member.
newExportLambdaFunctionRecommendations ::
  -- | 's3DestinationConfig'
  S3DestinationConfig ->
  ExportLambdaFunctionRecommendations
newExportLambdaFunctionRecommendations
  pS3DestinationConfig_ =
    ExportLambdaFunctionRecommendations'
      { accountIds =
          Prelude.Nothing,
        fileFormat = Prelude.Nothing,
        filters = Prelude.Nothing,
        fieldsToExport = Prelude.Nothing,
        includeMemberAccounts =
          Prelude.Nothing,
        s3DestinationConfig =
          pS3DestinationConfig_
      }

-- | The IDs of the Amazon Web Services accounts for which to export Lambda
-- function recommendations.
--
-- If your account is the management account of an organization, use this
-- parameter to specify the member account for which you want to export
-- recommendations.
--
-- This parameter cannot be specified together with the include member
-- accounts parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the include member accounts parameter, is omitted.
--
-- You can specify multiple account IDs per request.
exportLambdaFunctionRecommendations_accountIds :: Lens.Lens' ExportLambdaFunctionRecommendations (Prelude.Maybe [Prelude.Text])
exportLambdaFunctionRecommendations_accountIds = Lens.lens (\ExportLambdaFunctionRecommendations' {accountIds} -> accountIds) (\s@ExportLambdaFunctionRecommendations' {} a -> s {accountIds = a} :: ExportLambdaFunctionRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The format of the export file.
--
-- The only export file format currently supported is @Csv@.
exportLambdaFunctionRecommendations_fileFormat :: Lens.Lens' ExportLambdaFunctionRecommendations (Prelude.Maybe FileFormat)
exportLambdaFunctionRecommendations_fileFormat = Lens.lens (\ExportLambdaFunctionRecommendations' {fileFormat} -> fileFormat) (\s@ExportLambdaFunctionRecommendations' {} a -> s {fileFormat = a} :: ExportLambdaFunctionRecommendations)

-- | An array of objects to specify a filter that exports a more specific set
-- of Lambda function recommendations.
exportLambdaFunctionRecommendations_filters :: Lens.Lens' ExportLambdaFunctionRecommendations (Prelude.Maybe [LambdaFunctionRecommendationFilter])
exportLambdaFunctionRecommendations_filters = Lens.lens (\ExportLambdaFunctionRecommendations' {filters} -> filters) (\s@ExportLambdaFunctionRecommendations' {} a -> s {filters = a} :: ExportLambdaFunctionRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | The recommendations data to include in the export file. For more
-- information about the fields that can be exported, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files Exported files>
-- in the /Compute Optimizer User Guide/.
exportLambdaFunctionRecommendations_fieldsToExport :: Lens.Lens' ExportLambdaFunctionRecommendations (Prelude.Maybe [ExportableLambdaFunctionField])
exportLambdaFunctionRecommendations_fieldsToExport = Lens.lens (\ExportLambdaFunctionRecommendations' {fieldsToExport} -> fieldsToExport) (\s@ExportLambdaFunctionRecommendations' {} a -> s {fieldsToExport = a} :: ExportLambdaFunctionRecommendations) Prelude.. Lens.mapping Lens.coerced

-- | Indicates whether to include recommendations for resources in all member
-- accounts of the organization if your account is the management account
-- of an organization.
--
-- The member accounts must also be opted in to Compute Optimizer, and
-- trusted access for Compute Optimizer must be enabled in the organization
-- account. For more information, see
-- <https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access Compute Optimizer and Amazon Web Services Organizations trusted access>
-- in the /Compute Optimizer User Guide/.
--
-- Recommendations for member accounts of the organization are not included
-- in the export file if this parameter is omitted.
--
-- This parameter cannot be specified together with the account IDs
-- parameter. The parameters are mutually exclusive.
--
-- Recommendations for member accounts are not included in the export if
-- this parameter, or the account IDs parameter, is omitted.
exportLambdaFunctionRecommendations_includeMemberAccounts :: Lens.Lens' ExportLambdaFunctionRecommendations (Prelude.Maybe Prelude.Bool)
exportLambdaFunctionRecommendations_includeMemberAccounts = Lens.lens (\ExportLambdaFunctionRecommendations' {includeMemberAccounts} -> includeMemberAccounts) (\s@ExportLambdaFunctionRecommendations' {} a -> s {includeMemberAccounts = a} :: ExportLambdaFunctionRecommendations)

-- | Undocumented member.
exportLambdaFunctionRecommendations_s3DestinationConfig :: Lens.Lens' ExportLambdaFunctionRecommendations S3DestinationConfig
exportLambdaFunctionRecommendations_s3DestinationConfig = Lens.lens (\ExportLambdaFunctionRecommendations' {s3DestinationConfig} -> s3DestinationConfig) (\s@ExportLambdaFunctionRecommendations' {} a -> s {s3DestinationConfig = a} :: ExportLambdaFunctionRecommendations)

instance
  Core.AWSRequest
    ExportLambdaFunctionRecommendations
  where
  type
    AWSResponse ExportLambdaFunctionRecommendations =
      ExportLambdaFunctionRecommendationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ExportLambdaFunctionRecommendationsResponse'
            Prelude.<$> (x Core..?> "jobId")
              Prelude.<*> (x Core..?> "s3Destination")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ExportLambdaFunctionRecommendations

instance
  Prelude.NFData
    ExportLambdaFunctionRecommendations

instance
  Core.ToHeaders
    ExportLambdaFunctionRecommendations
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "ComputeOptimizerService.ExportLambdaFunctionRecommendations" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.0" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    ExportLambdaFunctionRecommendations
  where
  toJSON ExportLambdaFunctionRecommendations' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("accountIds" Core..=) Prelude.<$> accountIds,
            ("fileFormat" Core..=) Prelude.<$> fileFormat,
            ("filters" Core..=) Prelude.<$> filters,
            ("fieldsToExport" Core..=)
              Prelude.<$> fieldsToExport,
            ("includeMemberAccounts" Core..=)
              Prelude.<$> includeMemberAccounts,
            Prelude.Just
              ("s3DestinationConfig" Core..= s3DestinationConfig)
          ]
      )

instance
  Core.ToPath
    ExportLambdaFunctionRecommendations
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    ExportLambdaFunctionRecommendations
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newExportLambdaFunctionRecommendationsResponse' smart constructor.
data ExportLambdaFunctionRecommendationsResponse = ExportLambdaFunctionRecommendationsResponse'
  { -- | The identification number of the export job.
    --
    -- Use the DescribeRecommendationExportJobs action, and specify the job ID
    -- to view the status of an export job.
    jobId :: Prelude.Maybe Prelude.Text,
    s3Destination :: Prelude.Maybe S3Destination,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ExportLambdaFunctionRecommendationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'jobId', 'exportLambdaFunctionRecommendationsResponse_jobId' - The identification number of the export job.
--
-- Use the DescribeRecommendationExportJobs action, and specify the job ID
-- to view the status of an export job.
--
-- 's3Destination', 'exportLambdaFunctionRecommendationsResponse_s3Destination' - Undocumented member.
--
-- 'httpStatus', 'exportLambdaFunctionRecommendationsResponse_httpStatus' - The response's http status code.
newExportLambdaFunctionRecommendationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ExportLambdaFunctionRecommendationsResponse
newExportLambdaFunctionRecommendationsResponse
  pHttpStatus_ =
    ExportLambdaFunctionRecommendationsResponse'
      { jobId =
          Prelude.Nothing,
        s3Destination =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The identification number of the export job.
--
-- Use the DescribeRecommendationExportJobs action, and specify the job ID
-- to view the status of an export job.
exportLambdaFunctionRecommendationsResponse_jobId :: Lens.Lens' ExportLambdaFunctionRecommendationsResponse (Prelude.Maybe Prelude.Text)
exportLambdaFunctionRecommendationsResponse_jobId = Lens.lens (\ExportLambdaFunctionRecommendationsResponse' {jobId} -> jobId) (\s@ExportLambdaFunctionRecommendationsResponse' {} a -> s {jobId = a} :: ExportLambdaFunctionRecommendationsResponse)

-- | Undocumented member.
exportLambdaFunctionRecommendationsResponse_s3Destination :: Lens.Lens' ExportLambdaFunctionRecommendationsResponse (Prelude.Maybe S3Destination)
exportLambdaFunctionRecommendationsResponse_s3Destination = Lens.lens (\ExportLambdaFunctionRecommendationsResponse' {s3Destination} -> s3Destination) (\s@ExportLambdaFunctionRecommendationsResponse' {} a -> s {s3Destination = a} :: ExportLambdaFunctionRecommendationsResponse)

-- | The response's http status code.
exportLambdaFunctionRecommendationsResponse_httpStatus :: Lens.Lens' ExportLambdaFunctionRecommendationsResponse Prelude.Int
exportLambdaFunctionRecommendationsResponse_httpStatus = Lens.lens (\ExportLambdaFunctionRecommendationsResponse' {httpStatus} -> httpStatus) (\s@ExportLambdaFunctionRecommendationsResponse' {} a -> s {httpStatus = a} :: ExportLambdaFunctionRecommendationsResponse)

instance
  Prelude.NFData
    ExportLambdaFunctionRecommendationsResponse
