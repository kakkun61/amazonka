{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Lens
  ( -- * Operations

    -- ** ListOpenWorkflowExecutions
    listOpenWorkflowExecutions_nextPageToken,
    listOpenWorkflowExecutions_executionFilter,
    listOpenWorkflowExecutions_typeFilter,
    listOpenWorkflowExecutions_reverseOrder,
    listOpenWorkflowExecutions_tagFilter,
    listOpenWorkflowExecutions_maximumPageSize,
    listOpenWorkflowExecutions_domain,
    listOpenWorkflowExecutions_startTimeFilter,
    workflowExecutionInfos_nextPageToken,
    workflowExecutionInfos_executionInfos,

    -- ** RegisterActivityType
    registerActivityType_defaultTaskScheduleToStartTimeout,
    registerActivityType_defaultTaskList,
    registerActivityType_defaultTaskPriority,
    registerActivityType_defaultTaskHeartbeatTimeout,
    registerActivityType_defaultTaskScheduleToCloseTimeout,
    registerActivityType_defaultTaskStartToCloseTimeout,
    registerActivityType_description,
    registerActivityType_domain,
    registerActivityType_name,
    registerActivityType_version,

    -- ** ListActivityTypes
    listActivityTypes_nextPageToken,
    listActivityTypes_reverseOrder,
    listActivityTypes_name,
    listActivityTypes_maximumPageSize,
    listActivityTypes_domain,
    listActivityTypes_registrationStatus,
    listActivityTypesResponse_nextPageToken,
    listActivityTypesResponse_httpStatus,
    listActivityTypesResponse_typeInfos,

    -- ** CountPendingActivityTasks
    countPendingActivityTasks_domain,
    countPendingActivityTasks_taskList,
    pendingTaskCount_truncated,
    pendingTaskCount_count,

    -- ** RegisterWorkflowType
    registerWorkflowType_defaultLambdaRole,
    registerWorkflowType_defaultChildPolicy,
    registerWorkflowType_defaultTaskList,
    registerWorkflowType_defaultTaskPriority,
    registerWorkflowType_defaultExecutionStartToCloseTimeout,
    registerWorkflowType_defaultTaskStartToCloseTimeout,
    registerWorkflowType_description,
    registerWorkflowType_domain,
    registerWorkflowType_name,
    registerWorkflowType_version,

    -- ** ListWorkflowTypes
    listWorkflowTypes_nextPageToken,
    listWorkflowTypes_reverseOrder,
    listWorkflowTypes_name,
    listWorkflowTypes_maximumPageSize,
    listWorkflowTypes_domain,
    listWorkflowTypes_registrationStatus,
    listWorkflowTypesResponse_nextPageToken,
    listWorkflowTypesResponse_httpStatus,
    listWorkflowTypesResponse_typeInfos,

    -- ** ListTagsForResource
    listTagsForResource_resourceArn,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** RespondActivityTaskFailed
    respondActivityTaskFailed_reason,
    respondActivityTaskFailed_details,
    respondActivityTaskFailed_taskToken,

    -- ** CountOpenWorkflowExecutions
    countOpenWorkflowExecutions_executionFilter,
    countOpenWorkflowExecutions_typeFilter,
    countOpenWorkflowExecutions_tagFilter,
    countOpenWorkflowExecutions_domain,
    countOpenWorkflowExecutions_startTimeFilter,
    workflowExecutionCount_truncated,
    workflowExecutionCount_count,

    -- ** UndeprecateDomain
    undeprecateDomain_name,

    -- ** DescribeWorkflowType
    describeWorkflowType_domain,
    describeWorkflowType_workflowType,
    describeWorkflowTypeResponse_httpStatus,
    describeWorkflowTypeResponse_typeInfo,
    describeWorkflowTypeResponse_configuration,

    -- ** DeprecateWorkflowType
    deprecateWorkflowType_domain,
    deprecateWorkflowType_workflowType,

    -- ** RequestCancelWorkflowExecution
    requestCancelWorkflowExecution_runId,
    requestCancelWorkflowExecution_domain,
    requestCancelWorkflowExecution_workflowId,

    -- ** RegisterDomain
    registerDomain_description,
    registerDomain_tags,
    registerDomain_name,
    registerDomain_workflowExecutionRetentionPeriodInDays,

    -- ** RespondDecisionTaskCompleted
    respondDecisionTaskCompleted_decisions,
    respondDecisionTaskCompleted_executionContext,
    respondDecisionTaskCompleted_taskToken,

    -- ** PollForActivityTask
    pollForActivityTask_identity,
    pollForActivityTask_domain,
    pollForActivityTask_taskList,
    pollForActivityTaskResponse_activityType,
    pollForActivityTaskResponse_activityId,
    pollForActivityTaskResponse_input,
    pollForActivityTaskResponse_taskToken,
    pollForActivityTaskResponse_workflowExecution,
    pollForActivityTaskResponse_httpStatus,
    pollForActivityTaskResponse_startedEventId,

    -- ** RespondActivityTaskCompleted
    respondActivityTaskCompleted_result,
    respondActivityTaskCompleted_taskToken,

    -- ** DescribeWorkflowExecution
    describeWorkflowExecution_domain,
    describeWorkflowExecution_execution,
    describeWorkflowExecutionResponse_latestActivityTaskTimestamp,
    describeWorkflowExecutionResponse_latestExecutionContext,
    describeWorkflowExecutionResponse_httpStatus,
    describeWorkflowExecutionResponse_executionInfo,
    describeWorkflowExecutionResponse_executionConfiguration,
    describeWorkflowExecutionResponse_openCounts,

    -- ** SignalWorkflowExecution
    signalWorkflowExecution_input,
    signalWorkflowExecution_runId,
    signalWorkflowExecution_domain,
    signalWorkflowExecution_workflowId,
    signalWorkflowExecution_signalName,

    -- ** CountPendingDecisionTasks
    countPendingDecisionTasks_domain,
    countPendingDecisionTasks_taskList,
    pendingTaskCount_truncated,
    pendingTaskCount_count,

    -- ** ListClosedWorkflowExecutions
    listClosedWorkflowExecutions_nextPageToken,
    listClosedWorkflowExecutions_executionFilter,
    listClosedWorkflowExecutions_closeStatusFilter,
    listClosedWorkflowExecutions_typeFilter,
    listClosedWorkflowExecutions_closeTimeFilter,
    listClosedWorkflowExecutions_reverseOrder,
    listClosedWorkflowExecutions_tagFilter,
    listClosedWorkflowExecutions_startTimeFilter,
    listClosedWorkflowExecutions_maximumPageSize,
    listClosedWorkflowExecutions_domain,
    workflowExecutionInfos_nextPageToken,
    workflowExecutionInfos_executionInfos,

    -- ** RecordActivityTaskHeartbeat
    recordActivityTaskHeartbeat_details,
    recordActivityTaskHeartbeat_taskToken,
    recordActivityTaskHeartbeatResponse_httpStatus,
    recordActivityTaskHeartbeatResponse_cancelRequested,

    -- ** DescribeDomain
    describeDomain_name,
    describeDomainResponse_httpStatus,
    describeDomainResponse_domainInfo,
    describeDomainResponse_configuration,

    -- ** GetWorkflowExecutionHistory
    getWorkflowExecutionHistory_nextPageToken,
    getWorkflowExecutionHistory_reverseOrder,
    getWorkflowExecutionHistory_maximumPageSize,
    getWorkflowExecutionHistory_domain,
    getWorkflowExecutionHistory_execution,
    getWorkflowExecutionHistoryResponse_nextPageToken,
    getWorkflowExecutionHistoryResponse_httpStatus,
    getWorkflowExecutionHistoryResponse_events,

    -- ** DeprecateDomain
    deprecateDomain_name,

    -- ** UndeprecateWorkflowType
    undeprecateWorkflowType_domain,
    undeprecateWorkflowType_workflowType,

    -- ** TerminateWorkflowExecution
    terminateWorkflowExecution_reason,
    terminateWorkflowExecution_runId,
    terminateWorkflowExecution_childPolicy,
    terminateWorkflowExecution_details,
    terminateWorkflowExecution_domain,
    terminateWorkflowExecution_workflowId,

    -- ** DescribeActivityType
    describeActivityType_domain,
    describeActivityType_activityType,
    describeActivityTypeResponse_httpStatus,
    describeActivityTypeResponse_typeInfo,
    describeActivityTypeResponse_configuration,

    -- ** TagResource
    tagResource_resourceArn,
    tagResource_tags,

    -- ** DeprecateActivityType
    deprecateActivityType_domain,
    deprecateActivityType_activityType,

    -- ** UndeprecateActivityType
    undeprecateActivityType_domain,
    undeprecateActivityType_activityType,

    -- ** CountClosedWorkflowExecutions
    countClosedWorkflowExecutions_executionFilter,
    countClosedWorkflowExecutions_closeStatusFilter,
    countClosedWorkflowExecutions_typeFilter,
    countClosedWorkflowExecutions_closeTimeFilter,
    countClosedWorkflowExecutions_tagFilter,
    countClosedWorkflowExecutions_startTimeFilter,
    countClosedWorkflowExecutions_domain,
    workflowExecutionCount_truncated,
    workflowExecutionCount_count,

    -- ** UntagResource
    untagResource_resourceArn,
    untagResource_tagKeys,

    -- ** RespondActivityTaskCanceled
    respondActivityTaskCanceled_details,
    respondActivityTaskCanceled_taskToken,

    -- ** StartWorkflowExecution
    startWorkflowExecution_tagList,
    startWorkflowExecution_taskStartToCloseTimeout,
    startWorkflowExecution_lambdaRole,
    startWorkflowExecution_input,
    startWorkflowExecution_executionStartToCloseTimeout,
    startWorkflowExecution_taskList,
    startWorkflowExecution_taskPriority,
    startWorkflowExecution_childPolicy,
    startWorkflowExecution_domain,
    startWorkflowExecution_workflowId,
    startWorkflowExecution_workflowType,
    startWorkflowExecutionResponse_runId,
    startWorkflowExecutionResponse_httpStatus,

    -- ** PollForDecisionTask
    pollForDecisionTask_nextPageToken,
    pollForDecisionTask_reverseOrder,
    pollForDecisionTask_maximumPageSize,
    pollForDecisionTask_identity,
    pollForDecisionTask_domain,
    pollForDecisionTask_taskList,
    pollForDecisionTaskResponse_nextPageToken,
    pollForDecisionTaskResponse_workflowType,
    pollForDecisionTaskResponse_previousStartedEventId,
    pollForDecisionTaskResponse_events,
    pollForDecisionTaskResponse_taskToken,
    pollForDecisionTaskResponse_workflowExecution,
    pollForDecisionTaskResponse_httpStatus,
    pollForDecisionTaskResponse_startedEventId,

    -- ** ListDomains
    listDomains_nextPageToken,
    listDomains_reverseOrder,
    listDomains_maximumPageSize,
    listDomains_registrationStatus,
    listDomainsResponse_nextPageToken,
    listDomainsResponse_httpStatus,
    listDomainsResponse_domainInfos,

    -- * Types

    -- ** ActivityTaskCancelRequestedEventAttributes
    activityTaskCancelRequestedEventAttributes_decisionTaskCompletedEventId,
    activityTaskCancelRequestedEventAttributes_activityId,

    -- ** ActivityTaskCanceledEventAttributes
    activityTaskCanceledEventAttributes_latestCancelRequestedEventId,
    activityTaskCanceledEventAttributes_details,
    activityTaskCanceledEventAttributes_scheduledEventId,
    activityTaskCanceledEventAttributes_startedEventId,

    -- ** ActivityTaskCompletedEventAttributes
    activityTaskCompletedEventAttributes_result,
    activityTaskCompletedEventAttributes_scheduledEventId,
    activityTaskCompletedEventAttributes_startedEventId,

    -- ** ActivityTaskFailedEventAttributes
    activityTaskFailedEventAttributes_reason,
    activityTaskFailedEventAttributes_details,
    activityTaskFailedEventAttributes_scheduledEventId,
    activityTaskFailedEventAttributes_startedEventId,

    -- ** ActivityTaskScheduledEventAttributes
    activityTaskScheduledEventAttributes_control,
    activityTaskScheduledEventAttributes_heartbeatTimeout,
    activityTaskScheduledEventAttributes_scheduleToCloseTimeout,
    activityTaskScheduledEventAttributes_input,
    activityTaskScheduledEventAttributes_taskPriority,
    activityTaskScheduledEventAttributes_scheduleToStartTimeout,
    activityTaskScheduledEventAttributes_startToCloseTimeout,
    activityTaskScheduledEventAttributes_activityType,
    activityTaskScheduledEventAttributes_activityId,
    activityTaskScheduledEventAttributes_taskList,
    activityTaskScheduledEventAttributes_decisionTaskCompletedEventId,

    -- ** ActivityTaskStartedEventAttributes
    activityTaskStartedEventAttributes_identity,
    activityTaskStartedEventAttributes_scheduledEventId,

    -- ** ActivityTaskTimedOutEventAttributes
    activityTaskTimedOutEventAttributes_details,
    activityTaskTimedOutEventAttributes_timeoutType,
    activityTaskTimedOutEventAttributes_scheduledEventId,
    activityTaskTimedOutEventAttributes_startedEventId,

    -- ** ActivityType
    activityType_name,
    activityType_version,

    -- ** ActivityTypeConfiguration
    activityTypeConfiguration_defaultTaskScheduleToStartTimeout,
    activityTypeConfiguration_defaultTaskList,
    activityTypeConfiguration_defaultTaskPriority,
    activityTypeConfiguration_defaultTaskHeartbeatTimeout,
    activityTypeConfiguration_defaultTaskScheduleToCloseTimeout,
    activityTypeConfiguration_defaultTaskStartToCloseTimeout,

    -- ** ActivityTypeInfo
    activityTypeInfo_deprecationDate,
    activityTypeInfo_description,
    activityTypeInfo_activityType,
    activityTypeInfo_status,
    activityTypeInfo_creationDate,

    -- ** CancelTimerDecisionAttributes
    cancelTimerDecisionAttributes_timerId,

    -- ** CancelTimerFailedEventAttributes
    cancelTimerFailedEventAttributes_timerId,
    cancelTimerFailedEventAttributes_cause,
    cancelTimerFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** CancelWorkflowExecutionDecisionAttributes
    cancelWorkflowExecutionDecisionAttributes_details,

    -- ** CancelWorkflowExecutionFailedEventAttributes
    cancelWorkflowExecutionFailedEventAttributes_cause,
    cancelWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** ChildWorkflowExecutionCanceledEventAttributes
    childWorkflowExecutionCanceledEventAttributes_details,
    childWorkflowExecutionCanceledEventAttributes_workflowExecution,
    childWorkflowExecutionCanceledEventAttributes_workflowType,
    childWorkflowExecutionCanceledEventAttributes_initiatedEventId,
    childWorkflowExecutionCanceledEventAttributes_startedEventId,

    -- ** ChildWorkflowExecutionCompletedEventAttributes
    childWorkflowExecutionCompletedEventAttributes_result,
    childWorkflowExecutionCompletedEventAttributes_workflowExecution,
    childWorkflowExecutionCompletedEventAttributes_workflowType,
    childWorkflowExecutionCompletedEventAttributes_initiatedEventId,
    childWorkflowExecutionCompletedEventAttributes_startedEventId,

    -- ** ChildWorkflowExecutionFailedEventAttributes
    childWorkflowExecutionFailedEventAttributes_reason,
    childWorkflowExecutionFailedEventAttributes_details,
    childWorkflowExecutionFailedEventAttributes_workflowExecution,
    childWorkflowExecutionFailedEventAttributes_workflowType,
    childWorkflowExecutionFailedEventAttributes_initiatedEventId,
    childWorkflowExecutionFailedEventAttributes_startedEventId,

    -- ** ChildWorkflowExecutionStartedEventAttributes
    childWorkflowExecutionStartedEventAttributes_workflowExecution,
    childWorkflowExecutionStartedEventAttributes_workflowType,
    childWorkflowExecutionStartedEventAttributes_initiatedEventId,

    -- ** ChildWorkflowExecutionTerminatedEventAttributes
    childWorkflowExecutionTerminatedEventAttributes_workflowExecution,
    childWorkflowExecutionTerminatedEventAttributes_workflowType,
    childWorkflowExecutionTerminatedEventAttributes_initiatedEventId,
    childWorkflowExecutionTerminatedEventAttributes_startedEventId,

    -- ** ChildWorkflowExecutionTimedOutEventAttributes
    childWorkflowExecutionTimedOutEventAttributes_workflowExecution,
    childWorkflowExecutionTimedOutEventAttributes_workflowType,
    childWorkflowExecutionTimedOutEventAttributes_timeoutType,
    childWorkflowExecutionTimedOutEventAttributes_initiatedEventId,
    childWorkflowExecutionTimedOutEventAttributes_startedEventId,

    -- ** CloseStatusFilter
    closeStatusFilter_status,

    -- ** CompleteWorkflowExecutionDecisionAttributes
    completeWorkflowExecutionDecisionAttributes_result,

    -- ** CompleteWorkflowExecutionFailedEventAttributes
    completeWorkflowExecutionFailedEventAttributes_cause,
    completeWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** ContinueAsNewWorkflowExecutionDecisionAttributes
    continueAsNewWorkflowExecutionDecisionAttributes_tagList,
    continueAsNewWorkflowExecutionDecisionAttributes_taskStartToCloseTimeout,
    continueAsNewWorkflowExecutionDecisionAttributes_lambdaRole,
    continueAsNewWorkflowExecutionDecisionAttributes_input,
    continueAsNewWorkflowExecutionDecisionAttributes_workflowTypeVersion,
    continueAsNewWorkflowExecutionDecisionAttributes_executionStartToCloseTimeout,
    continueAsNewWorkflowExecutionDecisionAttributes_taskList,
    continueAsNewWorkflowExecutionDecisionAttributes_taskPriority,
    continueAsNewWorkflowExecutionDecisionAttributes_childPolicy,

    -- ** ContinueAsNewWorkflowExecutionFailedEventAttributes
    continueAsNewWorkflowExecutionFailedEventAttributes_cause,
    continueAsNewWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** Decision
    decision_requestCancelExternalWorkflowExecutionDecisionAttributes,
    decision_scheduleActivityTaskDecisionAttributes,
    decision_signalExternalWorkflowExecutionDecisionAttributes,
    decision_startTimerDecisionAttributes,
    decision_recordMarkerDecisionAttributes,
    decision_failWorkflowExecutionDecisionAttributes,
    decision_startChildWorkflowExecutionDecisionAttributes,
    decision_completeWorkflowExecutionDecisionAttributes,
    decision_scheduleLambdaFunctionDecisionAttributes,
    decision_requestCancelActivityTaskDecisionAttributes,
    decision_cancelWorkflowExecutionDecisionAttributes,
    decision_cancelTimerDecisionAttributes,
    decision_continueAsNewWorkflowExecutionDecisionAttributes,
    decision_decisionType,

    -- ** DecisionTaskCompletedEventAttributes
    decisionTaskCompletedEventAttributes_executionContext,
    decisionTaskCompletedEventAttributes_scheduledEventId,
    decisionTaskCompletedEventAttributes_startedEventId,

    -- ** DecisionTaskScheduledEventAttributes
    decisionTaskScheduledEventAttributes_taskPriority,
    decisionTaskScheduledEventAttributes_startToCloseTimeout,
    decisionTaskScheduledEventAttributes_taskList,

    -- ** DecisionTaskStartedEventAttributes
    decisionTaskStartedEventAttributes_identity,
    decisionTaskStartedEventAttributes_scheduledEventId,

    -- ** DecisionTaskTimedOutEventAttributes
    decisionTaskTimedOutEventAttributes_timeoutType,
    decisionTaskTimedOutEventAttributes_scheduledEventId,
    decisionTaskTimedOutEventAttributes_startedEventId,

    -- ** DomainConfiguration
    domainConfiguration_workflowExecutionRetentionPeriodInDays,

    -- ** DomainInfo
    domainInfo_arn,
    domainInfo_description,
    domainInfo_name,
    domainInfo_status,

    -- ** ExecutionTimeFilter
    executionTimeFilter_latestDate,
    executionTimeFilter_oldestDate,

    -- ** ExternalWorkflowExecutionCancelRequestedEventAttributes
    externalWorkflowExecutionCancelRequestedEventAttributes_workflowExecution,
    externalWorkflowExecutionCancelRequestedEventAttributes_initiatedEventId,

    -- ** ExternalWorkflowExecutionSignaledEventAttributes
    externalWorkflowExecutionSignaledEventAttributes_workflowExecution,
    externalWorkflowExecutionSignaledEventAttributes_initiatedEventId,

    -- ** FailWorkflowExecutionDecisionAttributes
    failWorkflowExecutionDecisionAttributes_reason,
    failWorkflowExecutionDecisionAttributes_details,

    -- ** FailWorkflowExecutionFailedEventAttributes
    failWorkflowExecutionFailedEventAttributes_cause,
    failWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** HistoryEvent
    historyEvent_workflowExecutionCancelRequestedEventAttributes,
    historyEvent_recordMarkerFailedEventAttributes,
    historyEvent_requestCancelExternalWorkflowExecutionInitiatedEventAttributes,
    historyEvent_lambdaFunctionStartedEventAttributes,
    historyEvent_decisionTaskScheduledEventAttributes,
    historyEvent_workflowExecutionCompletedEventAttributes,
    historyEvent_startTimerFailedEventAttributes,
    historyEvent_activityTaskScheduledEventAttributes,
    historyEvent_scheduleActivityTaskFailedEventAttributes,
    historyEvent_childWorkflowExecutionCompletedEventAttributes,
    historyEvent_markerRecordedEventAttributes,
    historyEvent_scheduleLambdaFunctionFailedEventAttributes,
    historyEvent_completeWorkflowExecutionFailedEventAttributes,
    historyEvent_lambdaFunctionCompletedEventAttributes,
    historyEvent_requestCancelExternalWorkflowExecutionFailedEventAttributes,
    historyEvent_timerCanceledEventAttributes,
    historyEvent_workflowExecutionStartedEventAttributes,
    historyEvent_activityTaskCompletedEventAttributes,
    historyEvent_decisionTaskTimedOutEventAttributes,
    historyEvent_cancelTimerFailedEventAttributes,
    historyEvent_childWorkflowExecutionStartedEventAttributes,
    historyEvent_activityTaskCanceledEventAttributes,
    historyEvent_activityTaskTimedOutEventAttributes,
    historyEvent_decisionTaskStartedEventAttributes,
    historyEvent_workflowExecutionTerminatedEventAttributes,
    historyEvent_childWorkflowExecutionCanceledEventAttributes,
    historyEvent_requestCancelActivityTaskFailedEventAttributes,
    historyEvent_lambdaFunctionScheduledEventAttributes,
    historyEvent_childWorkflowExecutionTimedOutEventAttributes,
    historyEvent_cancelWorkflowExecutionFailedEventAttributes,
    historyEvent_startChildWorkflowExecutionInitiatedEventAttributes,
    historyEvent_signalExternalWorkflowExecutionFailedEventAttributes,
    historyEvent_activityTaskStartedEventAttributes,
    historyEvent_startLambdaFunctionFailedEventAttributes,
    historyEvent_childWorkflowExecutionTerminatedEventAttributes,
    historyEvent_lambdaFunctionFailedEventAttributes,
    historyEvent_workflowExecutionCanceledEventAttributes,
    historyEvent_timerStartedEventAttributes,
    historyEvent_activityTaskCancelRequestedEventAttributes,
    historyEvent_workflowExecutionTimedOutEventAttributes,
    historyEvent_workflowExecutionSignaledEventAttributes,
    historyEvent_timerFiredEventAttributes,
    historyEvent_activityTaskFailedEventAttributes,
    historyEvent_externalWorkflowExecutionSignaledEventAttributes,
    historyEvent_decisionTaskCompletedEventAttributes,
    historyEvent_startChildWorkflowExecutionFailedEventAttributes,
    historyEvent_childWorkflowExecutionFailedEventAttributes,
    historyEvent_failWorkflowExecutionFailedEventAttributes,
    historyEvent_continueAsNewWorkflowExecutionFailedEventAttributes,
    historyEvent_signalExternalWorkflowExecutionInitiatedEventAttributes,
    historyEvent_lambdaFunctionTimedOutEventAttributes,
    historyEvent_workflowExecutionFailedEventAttributes,
    historyEvent_workflowExecutionContinuedAsNewEventAttributes,
    historyEvent_externalWorkflowExecutionCancelRequestedEventAttributes,
    historyEvent_eventTimestamp,
    historyEvent_eventType,
    historyEvent_eventId,

    -- ** LambdaFunctionCompletedEventAttributes
    lambdaFunctionCompletedEventAttributes_result,
    lambdaFunctionCompletedEventAttributes_scheduledEventId,
    lambdaFunctionCompletedEventAttributes_startedEventId,

    -- ** LambdaFunctionFailedEventAttributes
    lambdaFunctionFailedEventAttributes_reason,
    lambdaFunctionFailedEventAttributes_details,
    lambdaFunctionFailedEventAttributes_scheduledEventId,
    lambdaFunctionFailedEventAttributes_startedEventId,

    -- ** LambdaFunctionScheduledEventAttributes
    lambdaFunctionScheduledEventAttributes_control,
    lambdaFunctionScheduledEventAttributes_input,
    lambdaFunctionScheduledEventAttributes_startToCloseTimeout,
    lambdaFunctionScheduledEventAttributes_id,
    lambdaFunctionScheduledEventAttributes_name,
    lambdaFunctionScheduledEventAttributes_decisionTaskCompletedEventId,

    -- ** LambdaFunctionStartedEventAttributes
    lambdaFunctionStartedEventAttributes_scheduledEventId,

    -- ** LambdaFunctionTimedOutEventAttributes
    lambdaFunctionTimedOutEventAttributes_timeoutType,
    lambdaFunctionTimedOutEventAttributes_scheduledEventId,
    lambdaFunctionTimedOutEventAttributes_startedEventId,

    -- ** MarkerRecordedEventAttributes
    markerRecordedEventAttributes_details,
    markerRecordedEventAttributes_markerName,
    markerRecordedEventAttributes_decisionTaskCompletedEventId,

    -- ** PendingTaskCount
    pendingTaskCount_truncated,
    pendingTaskCount_count,

    -- ** RecordMarkerDecisionAttributes
    recordMarkerDecisionAttributes_details,
    recordMarkerDecisionAttributes_markerName,

    -- ** RecordMarkerFailedEventAttributes
    recordMarkerFailedEventAttributes_markerName,
    recordMarkerFailedEventAttributes_cause,
    recordMarkerFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** RequestCancelActivityTaskDecisionAttributes
    requestCancelActivityTaskDecisionAttributes_activityId,

    -- ** RequestCancelActivityTaskFailedEventAttributes
    requestCancelActivityTaskFailedEventAttributes_activityId,
    requestCancelActivityTaskFailedEventAttributes_cause,
    requestCancelActivityTaskFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** RequestCancelExternalWorkflowExecutionDecisionAttributes
    requestCancelExternalWorkflowExecutionDecisionAttributes_control,
    requestCancelExternalWorkflowExecutionDecisionAttributes_runId,
    requestCancelExternalWorkflowExecutionDecisionAttributes_workflowId,

    -- ** RequestCancelExternalWorkflowExecutionFailedEventAttributes
    requestCancelExternalWorkflowExecutionFailedEventAttributes_control,
    requestCancelExternalWorkflowExecutionFailedEventAttributes_runId,
    requestCancelExternalWorkflowExecutionFailedEventAttributes_workflowId,
    requestCancelExternalWorkflowExecutionFailedEventAttributes_cause,
    requestCancelExternalWorkflowExecutionFailedEventAttributes_initiatedEventId,
    requestCancelExternalWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
    requestCancelExternalWorkflowExecutionInitiatedEventAttributes_control,
    requestCancelExternalWorkflowExecutionInitiatedEventAttributes_runId,
    requestCancelExternalWorkflowExecutionInitiatedEventAttributes_workflowId,
    requestCancelExternalWorkflowExecutionInitiatedEventAttributes_decisionTaskCompletedEventId,

    -- ** ResourceTag
    resourceTag_value,
    resourceTag_key,

    -- ** ScheduleActivityTaskDecisionAttributes
    scheduleActivityTaskDecisionAttributes_control,
    scheduleActivityTaskDecisionAttributes_heartbeatTimeout,
    scheduleActivityTaskDecisionAttributes_scheduleToCloseTimeout,
    scheduleActivityTaskDecisionAttributes_input,
    scheduleActivityTaskDecisionAttributes_taskList,
    scheduleActivityTaskDecisionAttributes_taskPriority,
    scheduleActivityTaskDecisionAttributes_scheduleToStartTimeout,
    scheduleActivityTaskDecisionAttributes_startToCloseTimeout,
    scheduleActivityTaskDecisionAttributes_activityType,
    scheduleActivityTaskDecisionAttributes_activityId,

    -- ** ScheduleActivityTaskFailedEventAttributes
    scheduleActivityTaskFailedEventAttributes_activityType,
    scheduleActivityTaskFailedEventAttributes_activityId,
    scheduleActivityTaskFailedEventAttributes_cause,
    scheduleActivityTaskFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** ScheduleLambdaFunctionDecisionAttributes
    scheduleLambdaFunctionDecisionAttributes_control,
    scheduleLambdaFunctionDecisionAttributes_input,
    scheduleLambdaFunctionDecisionAttributes_startToCloseTimeout,
    scheduleLambdaFunctionDecisionAttributes_id,
    scheduleLambdaFunctionDecisionAttributes_name,

    -- ** ScheduleLambdaFunctionFailedEventAttributes
    scheduleLambdaFunctionFailedEventAttributes_id,
    scheduleLambdaFunctionFailedEventAttributes_name,
    scheduleLambdaFunctionFailedEventAttributes_cause,
    scheduleLambdaFunctionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** SignalExternalWorkflowExecutionDecisionAttributes
    signalExternalWorkflowExecutionDecisionAttributes_control,
    signalExternalWorkflowExecutionDecisionAttributes_input,
    signalExternalWorkflowExecutionDecisionAttributes_runId,
    signalExternalWorkflowExecutionDecisionAttributes_workflowId,
    signalExternalWorkflowExecutionDecisionAttributes_signalName,

    -- ** SignalExternalWorkflowExecutionFailedEventAttributes
    signalExternalWorkflowExecutionFailedEventAttributes_control,
    signalExternalWorkflowExecutionFailedEventAttributes_runId,
    signalExternalWorkflowExecutionFailedEventAttributes_workflowId,
    signalExternalWorkflowExecutionFailedEventAttributes_cause,
    signalExternalWorkflowExecutionFailedEventAttributes_initiatedEventId,
    signalExternalWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** SignalExternalWorkflowExecutionInitiatedEventAttributes
    signalExternalWorkflowExecutionInitiatedEventAttributes_control,
    signalExternalWorkflowExecutionInitiatedEventAttributes_input,
    signalExternalWorkflowExecutionInitiatedEventAttributes_runId,
    signalExternalWorkflowExecutionInitiatedEventAttributes_workflowId,
    signalExternalWorkflowExecutionInitiatedEventAttributes_signalName,
    signalExternalWorkflowExecutionInitiatedEventAttributes_decisionTaskCompletedEventId,

    -- ** StartChildWorkflowExecutionDecisionAttributes
    startChildWorkflowExecutionDecisionAttributes_control,
    startChildWorkflowExecutionDecisionAttributes_tagList,
    startChildWorkflowExecutionDecisionAttributes_taskStartToCloseTimeout,
    startChildWorkflowExecutionDecisionAttributes_lambdaRole,
    startChildWorkflowExecutionDecisionAttributes_input,
    startChildWorkflowExecutionDecisionAttributes_executionStartToCloseTimeout,
    startChildWorkflowExecutionDecisionAttributes_taskList,
    startChildWorkflowExecutionDecisionAttributes_taskPriority,
    startChildWorkflowExecutionDecisionAttributes_childPolicy,
    startChildWorkflowExecutionDecisionAttributes_workflowType,
    startChildWorkflowExecutionDecisionAttributes_workflowId,

    -- ** StartChildWorkflowExecutionFailedEventAttributes
    startChildWorkflowExecutionFailedEventAttributes_control,
    startChildWorkflowExecutionFailedEventAttributes_workflowType,
    startChildWorkflowExecutionFailedEventAttributes_cause,
    startChildWorkflowExecutionFailedEventAttributes_workflowId,
    startChildWorkflowExecutionFailedEventAttributes_initiatedEventId,
    startChildWorkflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** StartChildWorkflowExecutionInitiatedEventAttributes
    startChildWorkflowExecutionInitiatedEventAttributes_control,
    startChildWorkflowExecutionInitiatedEventAttributes_tagList,
    startChildWorkflowExecutionInitiatedEventAttributes_taskStartToCloseTimeout,
    startChildWorkflowExecutionInitiatedEventAttributes_lambdaRole,
    startChildWorkflowExecutionInitiatedEventAttributes_input,
    startChildWorkflowExecutionInitiatedEventAttributes_executionStartToCloseTimeout,
    startChildWorkflowExecutionInitiatedEventAttributes_taskPriority,
    startChildWorkflowExecutionInitiatedEventAttributes_workflowId,
    startChildWorkflowExecutionInitiatedEventAttributes_workflowType,
    startChildWorkflowExecutionInitiatedEventAttributes_taskList,
    startChildWorkflowExecutionInitiatedEventAttributes_decisionTaskCompletedEventId,
    startChildWorkflowExecutionInitiatedEventAttributes_childPolicy,

    -- ** StartLambdaFunctionFailedEventAttributes
    startLambdaFunctionFailedEventAttributes_scheduledEventId,
    startLambdaFunctionFailedEventAttributes_cause,
    startLambdaFunctionFailedEventAttributes_message,

    -- ** StartTimerDecisionAttributes
    startTimerDecisionAttributes_control,
    startTimerDecisionAttributes_timerId,
    startTimerDecisionAttributes_startToFireTimeout,

    -- ** StartTimerFailedEventAttributes
    startTimerFailedEventAttributes_timerId,
    startTimerFailedEventAttributes_cause,
    startTimerFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** TagFilter
    tagFilter_tag,

    -- ** TaskList
    taskList_name,

    -- ** TimerCanceledEventAttributes
    timerCanceledEventAttributes_timerId,
    timerCanceledEventAttributes_startedEventId,
    timerCanceledEventAttributes_decisionTaskCompletedEventId,

    -- ** TimerFiredEventAttributes
    timerFiredEventAttributes_timerId,
    timerFiredEventAttributes_startedEventId,

    -- ** TimerStartedEventAttributes
    timerStartedEventAttributes_control,
    timerStartedEventAttributes_timerId,
    timerStartedEventAttributes_startToFireTimeout,
    timerStartedEventAttributes_decisionTaskCompletedEventId,

    -- ** WorkflowExecution
    workflowExecution_workflowId,
    workflowExecution_runId,

    -- ** WorkflowExecutionCancelRequestedEventAttributes
    workflowExecutionCancelRequestedEventAttributes_externalWorkflowExecution,
    workflowExecutionCancelRequestedEventAttributes_externalInitiatedEventId,
    workflowExecutionCancelRequestedEventAttributes_cause,

    -- ** WorkflowExecutionCanceledEventAttributes
    workflowExecutionCanceledEventAttributes_details,
    workflowExecutionCanceledEventAttributes_decisionTaskCompletedEventId,

    -- ** WorkflowExecutionCompletedEventAttributes
    workflowExecutionCompletedEventAttributes_result,
    workflowExecutionCompletedEventAttributes_decisionTaskCompletedEventId,

    -- ** WorkflowExecutionConfiguration
    workflowExecutionConfiguration_lambdaRole,
    workflowExecutionConfiguration_taskPriority,
    workflowExecutionConfiguration_taskStartToCloseTimeout,
    workflowExecutionConfiguration_executionStartToCloseTimeout,
    workflowExecutionConfiguration_taskList,
    workflowExecutionConfiguration_childPolicy,

    -- ** WorkflowExecutionContinuedAsNewEventAttributes
    workflowExecutionContinuedAsNewEventAttributes_tagList,
    workflowExecutionContinuedAsNewEventAttributes_taskStartToCloseTimeout,
    workflowExecutionContinuedAsNewEventAttributes_lambdaRole,
    workflowExecutionContinuedAsNewEventAttributes_input,
    workflowExecutionContinuedAsNewEventAttributes_executionStartToCloseTimeout,
    workflowExecutionContinuedAsNewEventAttributes_taskPriority,
    workflowExecutionContinuedAsNewEventAttributes_decisionTaskCompletedEventId,
    workflowExecutionContinuedAsNewEventAttributes_newExecutionRunId,
    workflowExecutionContinuedAsNewEventAttributes_taskList,
    workflowExecutionContinuedAsNewEventAttributes_childPolicy,
    workflowExecutionContinuedAsNewEventAttributes_workflowType,

    -- ** WorkflowExecutionCount
    workflowExecutionCount_truncated,
    workflowExecutionCount_count,

    -- ** WorkflowExecutionFailedEventAttributes
    workflowExecutionFailedEventAttributes_reason,
    workflowExecutionFailedEventAttributes_details,
    workflowExecutionFailedEventAttributes_decisionTaskCompletedEventId,

    -- ** WorkflowExecutionFilter
    workflowExecutionFilter_workflowId,

    -- ** WorkflowExecutionInfo
    workflowExecutionInfo_parent,
    workflowExecutionInfo_tagList,
    workflowExecutionInfo_closeStatus,
    workflowExecutionInfo_closeTimestamp,
    workflowExecutionInfo_cancelRequested,
    workflowExecutionInfo_execution,
    workflowExecutionInfo_workflowType,
    workflowExecutionInfo_startTimestamp,
    workflowExecutionInfo_executionStatus,

    -- ** WorkflowExecutionInfos
    workflowExecutionInfos_nextPageToken,
    workflowExecutionInfos_executionInfos,

    -- ** WorkflowExecutionOpenCounts
    workflowExecutionOpenCounts_openLambdaFunctions,
    workflowExecutionOpenCounts_openActivityTasks,
    workflowExecutionOpenCounts_openDecisionTasks,
    workflowExecutionOpenCounts_openTimers,
    workflowExecutionOpenCounts_openChildWorkflowExecutions,

    -- ** WorkflowExecutionSignaledEventAttributes
    workflowExecutionSignaledEventAttributes_externalWorkflowExecution,
    workflowExecutionSignaledEventAttributes_externalInitiatedEventId,
    workflowExecutionSignaledEventAttributes_input,
    workflowExecutionSignaledEventAttributes_signalName,

    -- ** WorkflowExecutionStartedEventAttributes
    workflowExecutionStartedEventAttributes_parentInitiatedEventId,
    workflowExecutionStartedEventAttributes_tagList,
    workflowExecutionStartedEventAttributes_taskStartToCloseTimeout,
    workflowExecutionStartedEventAttributes_lambdaRole,
    workflowExecutionStartedEventAttributes_input,
    workflowExecutionStartedEventAttributes_executionStartToCloseTimeout,
    workflowExecutionStartedEventAttributes_taskPriority,
    workflowExecutionStartedEventAttributes_parentWorkflowExecution,
    workflowExecutionStartedEventAttributes_continuedExecutionRunId,
    workflowExecutionStartedEventAttributes_childPolicy,
    workflowExecutionStartedEventAttributes_taskList,
    workflowExecutionStartedEventAttributes_workflowType,

    -- ** WorkflowExecutionTerminatedEventAttributes
    workflowExecutionTerminatedEventAttributes_cause,
    workflowExecutionTerminatedEventAttributes_reason,
    workflowExecutionTerminatedEventAttributes_details,
    workflowExecutionTerminatedEventAttributes_childPolicy,

    -- ** WorkflowExecutionTimedOutEventAttributes
    workflowExecutionTimedOutEventAttributes_timeoutType,
    workflowExecutionTimedOutEventAttributes_childPolicy,

    -- ** WorkflowType
    workflowType_name,
    workflowType_version,

    -- ** WorkflowTypeConfiguration
    workflowTypeConfiguration_defaultLambdaRole,
    workflowTypeConfiguration_defaultChildPolicy,
    workflowTypeConfiguration_defaultTaskList,
    workflowTypeConfiguration_defaultTaskPriority,
    workflowTypeConfiguration_defaultExecutionStartToCloseTimeout,
    workflowTypeConfiguration_defaultTaskStartToCloseTimeout,

    -- ** WorkflowTypeFilter
    workflowTypeFilter_version,
    workflowTypeFilter_name,

    -- ** WorkflowTypeInfo
    workflowTypeInfo_deprecationDate,
    workflowTypeInfo_description,
    workflowTypeInfo_workflowType,
    workflowTypeInfo_status,
    workflowTypeInfo_creationDate,
  )
where

import Network.AWS.SWF.CountClosedWorkflowExecutions
import Network.AWS.SWF.CountOpenWorkflowExecutions
import Network.AWS.SWF.CountPendingActivityTasks
import Network.AWS.SWF.CountPendingDecisionTasks
import Network.AWS.SWF.DeprecateActivityType
import Network.AWS.SWF.DeprecateDomain
import Network.AWS.SWF.DeprecateWorkflowType
import Network.AWS.SWF.DescribeActivityType
import Network.AWS.SWF.DescribeDomain
import Network.AWS.SWF.DescribeWorkflowExecution
import Network.AWS.SWF.DescribeWorkflowType
import Network.AWS.SWF.GetWorkflowExecutionHistory
import Network.AWS.SWF.ListActivityTypes
import Network.AWS.SWF.ListClosedWorkflowExecutions
import Network.AWS.SWF.ListDomains
import Network.AWS.SWF.ListOpenWorkflowExecutions
import Network.AWS.SWF.ListTagsForResource
import Network.AWS.SWF.ListWorkflowTypes
import Network.AWS.SWF.PollForActivityTask
import Network.AWS.SWF.PollForDecisionTask
import Network.AWS.SWF.RecordActivityTaskHeartbeat
import Network.AWS.SWF.RegisterActivityType
import Network.AWS.SWF.RegisterDomain
import Network.AWS.SWF.RegisterWorkflowType
import Network.AWS.SWF.RequestCancelWorkflowExecution
import Network.AWS.SWF.RespondActivityTaskCanceled
import Network.AWS.SWF.RespondActivityTaskCompleted
import Network.AWS.SWF.RespondActivityTaskFailed
import Network.AWS.SWF.RespondDecisionTaskCompleted
import Network.AWS.SWF.SignalWorkflowExecution
import Network.AWS.SWF.StartWorkflowExecution
import Network.AWS.SWF.TagResource
import Network.AWS.SWF.TerminateWorkflowExecution
import Network.AWS.SWF.Types.ActivityTaskCancelRequestedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskCanceledEventAttributes
import Network.AWS.SWF.Types.ActivityTaskCompletedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskScheduledEventAttributes
import Network.AWS.SWF.Types.ActivityTaskStartedEventAttributes
import Network.AWS.SWF.Types.ActivityTaskTimedOutEventAttributes
import Network.AWS.SWF.Types.ActivityType
import Network.AWS.SWF.Types.ActivityTypeConfiguration
import Network.AWS.SWF.Types.ActivityTypeInfo
import Network.AWS.SWF.Types.CancelTimerDecisionAttributes
import Network.AWS.SWF.Types.CancelTimerFailedEventAttributes
import Network.AWS.SWF.Types.CancelWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.CancelWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionCanceledEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionCompletedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionStartedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionTerminatedEventAttributes
import Network.AWS.SWF.Types.ChildWorkflowExecutionTimedOutEventAttributes
import Network.AWS.SWF.Types.CloseStatusFilter
import Network.AWS.SWF.Types.CompleteWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.CompleteWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.ContinueAsNewWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.Decision
import Network.AWS.SWF.Types.DecisionTaskCompletedEventAttributes
import Network.AWS.SWF.Types.DecisionTaskScheduledEventAttributes
import Network.AWS.SWF.Types.DecisionTaskStartedEventAttributes
import Network.AWS.SWF.Types.DecisionTaskTimedOutEventAttributes
import Network.AWS.SWF.Types.DomainConfiguration
import Network.AWS.SWF.Types.DomainInfo
import Network.AWS.SWF.Types.ExecutionTimeFilter
import Network.AWS.SWF.Types.ExternalWorkflowExecutionCancelRequestedEventAttributes
import Network.AWS.SWF.Types.ExternalWorkflowExecutionSignaledEventAttributes
import Network.AWS.SWF.Types.FailWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.FailWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.HistoryEvent
import Network.AWS.SWF.Types.LambdaFunctionCompletedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionScheduledEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionStartedEventAttributes
import Network.AWS.SWF.Types.LambdaFunctionTimedOutEventAttributes
import Network.AWS.SWF.Types.MarkerRecordedEventAttributes
import Network.AWS.SWF.Types.PendingTaskCount
import Network.AWS.SWF.Types.RecordMarkerDecisionAttributes
import Network.AWS.SWF.Types.RecordMarkerFailedEventAttributes
import Network.AWS.SWF.Types.RequestCancelActivityTaskDecisionAttributes
import Network.AWS.SWF.Types.RequestCancelActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.ResourceTag
import Network.AWS.SWF.Types.ScheduleActivityTaskDecisionAttributes
import Network.AWS.SWF.Types.ScheduleActivityTaskFailedEventAttributes
import Network.AWS.SWF.Types.ScheduleLambdaFunctionDecisionAttributes
import Network.AWS.SWF.Types.ScheduleLambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.SignalExternalWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionDecisionAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.StartChildWorkflowExecutionInitiatedEventAttributes
import Network.AWS.SWF.Types.StartLambdaFunctionFailedEventAttributes
import Network.AWS.SWF.Types.StartTimerDecisionAttributes
import Network.AWS.SWF.Types.StartTimerFailedEventAttributes
import Network.AWS.SWF.Types.TagFilter
import Network.AWS.SWF.Types.TaskList
import Network.AWS.SWF.Types.TimerCanceledEventAttributes
import Network.AWS.SWF.Types.TimerFiredEventAttributes
import Network.AWS.SWF.Types.TimerStartedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecution
import Network.AWS.SWF.Types.WorkflowExecutionCancelRequestedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCanceledEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCompletedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionConfiguration
import Network.AWS.SWF.Types.WorkflowExecutionContinuedAsNewEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionCount
import Network.AWS.SWF.Types.WorkflowExecutionFailedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionFilter
import Network.AWS.SWF.Types.WorkflowExecutionInfo
import Network.AWS.SWF.Types.WorkflowExecutionInfos
import Network.AWS.SWF.Types.WorkflowExecutionOpenCounts
import Network.AWS.SWF.Types.WorkflowExecutionSignaledEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionStartedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTerminatedEventAttributes
import Network.AWS.SWF.Types.WorkflowExecutionTimedOutEventAttributes
import Network.AWS.SWF.Types.WorkflowType
import Network.AWS.SWF.Types.WorkflowTypeConfiguration
import Network.AWS.SWF.Types.WorkflowTypeFilter
import Network.AWS.SWF.Types.WorkflowTypeInfo
import Network.AWS.SWF.UndeprecateActivityType
import Network.AWS.SWF.UndeprecateDomain
import Network.AWS.SWF.UndeprecateWorkflowType
import Network.AWS.SWF.UntagResource
