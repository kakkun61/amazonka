{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeGuruProfiler.Types.MetadataField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.MetadataField
  ( MetadataField
      ( ..,
        MetadataField_AgentId,
        MetadataField_AwsRequestId,
        MetadataField_ComputePlatform,
        MetadataField_ExecutionEnvironment,
        MetadataField_LambdaFunctionArn,
        MetadataField_LambdaMemoryLimitInMB,
        MetadataField_LambdaPreviousExecutionTimeInMilliseconds,
        MetadataField_LambdaRemainingTimeInMilliseconds,
        MetadataField_LambdaTimeGapBetweenInvokesInMilliseconds
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype MetadataField = MetadataField'
  { fromMetadataField ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern MetadataField_AgentId :: MetadataField
pattern MetadataField_AgentId = MetadataField' "AgentId"

pattern MetadataField_AwsRequestId :: MetadataField
pattern MetadataField_AwsRequestId = MetadataField' "AwsRequestId"

pattern MetadataField_ComputePlatform :: MetadataField
pattern MetadataField_ComputePlatform = MetadataField' "ComputePlatform"

pattern MetadataField_ExecutionEnvironment :: MetadataField
pattern MetadataField_ExecutionEnvironment = MetadataField' "ExecutionEnvironment"

pattern MetadataField_LambdaFunctionArn :: MetadataField
pattern MetadataField_LambdaFunctionArn = MetadataField' "LambdaFunctionArn"

pattern MetadataField_LambdaMemoryLimitInMB :: MetadataField
pattern MetadataField_LambdaMemoryLimitInMB = MetadataField' "LambdaMemoryLimitInMB"

pattern MetadataField_LambdaPreviousExecutionTimeInMilliseconds :: MetadataField
pattern MetadataField_LambdaPreviousExecutionTimeInMilliseconds = MetadataField' "LambdaPreviousExecutionTimeInMilliseconds"

pattern MetadataField_LambdaRemainingTimeInMilliseconds :: MetadataField
pattern MetadataField_LambdaRemainingTimeInMilliseconds = MetadataField' "LambdaRemainingTimeInMilliseconds"

pattern MetadataField_LambdaTimeGapBetweenInvokesInMilliseconds :: MetadataField
pattern MetadataField_LambdaTimeGapBetweenInvokesInMilliseconds = MetadataField' "LambdaTimeGapBetweenInvokesInMilliseconds"

{-# COMPLETE
  MetadataField_AgentId,
  MetadataField_AwsRequestId,
  MetadataField_ComputePlatform,
  MetadataField_ExecutionEnvironment,
  MetadataField_LambdaFunctionArn,
  MetadataField_LambdaMemoryLimitInMB,
  MetadataField_LambdaPreviousExecutionTimeInMilliseconds,
  MetadataField_LambdaRemainingTimeInMilliseconds,
  MetadataField_LambdaTimeGapBetweenInvokesInMilliseconds,
  MetadataField'
  #-}
