{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMakerFeatureStoreRuntime.Types.BatchGetRecordError
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMakerFeatureStoreRuntime.Types.BatchGetRecordError where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The error that has occurred when attempting to retrieve a batch of
-- Records.
--
-- /See:/ 'newBatchGetRecordError' smart constructor.
data BatchGetRecordError = BatchGetRecordError'
  { -- | The name of the feature group that the record belongs to.
    featureGroupName :: Prelude.Text,
    -- | The value for the @RecordIdentifier@ in string format of a Record from a
    -- @FeatureGroup@ that is causing an error when attempting to be retrieved.
    recordIdentifierValueAsString :: Prelude.Text,
    -- | The error code of an error that has occured when attempting to retrieve
    -- a batch of Records. For more information on errors, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_GetRecord.html#API_feature_store_GetRecord_Errors Errors>.
    errorCode :: Prelude.Text,
    -- | The error message of an error that has occured when attempting to
    -- retrieve a record in the batch.
    errorMessage :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchGetRecordError' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'featureGroupName', 'batchGetRecordError_featureGroupName' - The name of the feature group that the record belongs to.
--
-- 'recordIdentifierValueAsString', 'batchGetRecordError_recordIdentifierValueAsString' - The value for the @RecordIdentifier@ in string format of a Record from a
-- @FeatureGroup@ that is causing an error when attempting to be retrieved.
--
-- 'errorCode', 'batchGetRecordError_errorCode' - The error code of an error that has occured when attempting to retrieve
-- a batch of Records. For more information on errors, see
-- <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_GetRecord.html#API_feature_store_GetRecord_Errors Errors>.
--
-- 'errorMessage', 'batchGetRecordError_errorMessage' - The error message of an error that has occured when attempting to
-- retrieve a record in the batch.
newBatchGetRecordError ::
  -- | 'featureGroupName'
  Prelude.Text ->
  -- | 'recordIdentifierValueAsString'
  Prelude.Text ->
  -- | 'errorCode'
  Prelude.Text ->
  -- | 'errorMessage'
  Prelude.Text ->
  BatchGetRecordError
newBatchGetRecordError
  pFeatureGroupName_
  pRecordIdentifierValueAsString_
  pErrorCode_
  pErrorMessage_ =
    BatchGetRecordError'
      { featureGroupName =
          pFeatureGroupName_,
        recordIdentifierValueAsString =
          pRecordIdentifierValueAsString_,
        errorCode = pErrorCode_,
        errorMessage = pErrorMessage_
      }

-- | The name of the feature group that the record belongs to.
batchGetRecordError_featureGroupName :: Lens.Lens' BatchGetRecordError Prelude.Text
batchGetRecordError_featureGroupName = Lens.lens (\BatchGetRecordError' {featureGroupName} -> featureGroupName) (\s@BatchGetRecordError' {} a -> s {featureGroupName = a} :: BatchGetRecordError)

-- | The value for the @RecordIdentifier@ in string format of a Record from a
-- @FeatureGroup@ that is causing an error when attempting to be retrieved.
batchGetRecordError_recordIdentifierValueAsString :: Lens.Lens' BatchGetRecordError Prelude.Text
batchGetRecordError_recordIdentifierValueAsString = Lens.lens (\BatchGetRecordError' {recordIdentifierValueAsString} -> recordIdentifierValueAsString) (\s@BatchGetRecordError' {} a -> s {recordIdentifierValueAsString = a} :: BatchGetRecordError)

-- | The error code of an error that has occured when attempting to retrieve
-- a batch of Records. For more information on errors, see
-- <https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_feature_store_GetRecord.html#API_feature_store_GetRecord_Errors Errors>.
batchGetRecordError_errorCode :: Lens.Lens' BatchGetRecordError Prelude.Text
batchGetRecordError_errorCode = Lens.lens (\BatchGetRecordError' {errorCode} -> errorCode) (\s@BatchGetRecordError' {} a -> s {errorCode = a} :: BatchGetRecordError)

-- | The error message of an error that has occured when attempting to
-- retrieve a record in the batch.
batchGetRecordError_errorMessage :: Lens.Lens' BatchGetRecordError Prelude.Text
batchGetRecordError_errorMessage = Lens.lens (\BatchGetRecordError' {errorMessage} -> errorMessage) (\s@BatchGetRecordError' {} a -> s {errorMessage = a} :: BatchGetRecordError)

instance Core.FromJSON BatchGetRecordError where
  parseJSON =
    Core.withObject
      "BatchGetRecordError"
      ( \x ->
          BatchGetRecordError'
            Prelude.<$> (x Core..: "FeatureGroupName")
            Prelude.<*> (x Core..: "RecordIdentifierValueAsString")
            Prelude.<*> (x Core..: "ErrorCode")
            Prelude.<*> (x Core..: "ErrorMessage")
      )

instance Prelude.Hashable BatchGetRecordError

instance Prelude.NFData BatchGetRecordError
