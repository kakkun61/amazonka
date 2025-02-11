{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMakerA2IRuntime.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMakerA2IRuntime.Lens
  ( -- * Operations

    -- ** ListHumanLoops
    listHumanLoops_creationTimeAfter,
    listHumanLoops_nextToken,
    listHumanLoops_sortOrder,
    listHumanLoops_creationTimeBefore,
    listHumanLoops_maxResults,
    listHumanLoops_flowDefinitionArn,
    listHumanLoopsResponse_nextToken,
    listHumanLoopsResponse_httpStatus,
    listHumanLoopsResponse_humanLoopSummaries,

    -- ** DeleteHumanLoop
    deleteHumanLoop_humanLoopName,
    deleteHumanLoopResponse_httpStatus,

    -- ** StartHumanLoop
    startHumanLoop_dataAttributes,
    startHumanLoop_humanLoopName,
    startHumanLoop_flowDefinitionArn,
    startHumanLoop_humanLoopInput,
    startHumanLoopResponse_humanLoopArn,
    startHumanLoopResponse_httpStatus,

    -- ** StopHumanLoop
    stopHumanLoop_humanLoopName,
    stopHumanLoopResponse_httpStatus,

    -- ** DescribeHumanLoop
    describeHumanLoop_humanLoopName,
    describeHumanLoopResponse_failureReason,
    describeHumanLoopResponse_failureCode,
    describeHumanLoopResponse_humanLoopOutput,
    describeHumanLoopResponse_httpStatus,
    describeHumanLoopResponse_creationTime,
    describeHumanLoopResponse_humanLoopStatus,
    describeHumanLoopResponse_humanLoopName,
    describeHumanLoopResponse_humanLoopArn,
    describeHumanLoopResponse_flowDefinitionArn,

    -- * Types

    -- ** HumanLoopDataAttributes
    humanLoopDataAttributes_contentClassifiers,

    -- ** HumanLoopInput
    humanLoopInput_inputContent,

    -- ** HumanLoopOutput
    humanLoopOutput_outputS3Uri,

    -- ** HumanLoopSummary
    humanLoopSummary_creationTime,
    humanLoopSummary_failureReason,
    humanLoopSummary_humanLoopStatus,
    humanLoopSummary_humanLoopName,
    humanLoopSummary_flowDefinitionArn,
  )
where

import Network.AWS.SageMakerA2IRuntime.DeleteHumanLoop
import Network.AWS.SageMakerA2IRuntime.DescribeHumanLoop
import Network.AWS.SageMakerA2IRuntime.ListHumanLoops
import Network.AWS.SageMakerA2IRuntime.StartHumanLoop
import Network.AWS.SageMakerA2IRuntime.StopHumanLoop
import Network.AWS.SageMakerA2IRuntime.Types.HumanLoopDataAttributes
import Network.AWS.SageMakerA2IRuntime.Types.HumanLoopInput
import Network.AWS.SageMakerA2IRuntime.Types.HumanLoopOutput
import Network.AWS.SageMakerA2IRuntime.Types.HumanLoopSummary
