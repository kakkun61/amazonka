{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MigrationHub.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MigrationHub.Lens
  ( -- * Operations

    -- ** AssociateDiscoveredResource
    associateDiscoveredResource_dryRun,
    associateDiscoveredResource_progressUpdateStream,
    associateDiscoveredResource_migrationTaskName,
    associateDiscoveredResource_discoveredResource,
    associateDiscoveredResourceResponse_httpStatus,

    -- ** CreateProgressUpdateStream
    createProgressUpdateStream_dryRun,
    createProgressUpdateStream_progressUpdateStreamName,
    createProgressUpdateStreamResponse_httpStatus,

    -- ** ListApplicationStates
    listApplicationStates_nextToken,
    listApplicationStates_applicationIds,
    listApplicationStates_maxResults,
    listApplicationStatesResponse_applicationStateList,
    listApplicationStatesResponse_nextToken,
    listApplicationStatesResponse_httpStatus,

    -- ** ListCreatedArtifacts
    listCreatedArtifacts_nextToken,
    listCreatedArtifacts_maxResults,
    listCreatedArtifacts_progressUpdateStream,
    listCreatedArtifacts_migrationTaskName,
    listCreatedArtifactsResponse_nextToken,
    listCreatedArtifactsResponse_createdArtifactList,
    listCreatedArtifactsResponse_httpStatus,

    -- ** DisassociateDiscoveredResource
    disassociateDiscoveredResource_dryRun,
    disassociateDiscoveredResource_progressUpdateStream,
    disassociateDiscoveredResource_migrationTaskName,
    disassociateDiscoveredResource_configurationId,
    disassociateDiscoveredResourceResponse_httpStatus,

    -- ** NotifyApplicationState
    notifyApplicationState_updateDateTime,
    notifyApplicationState_dryRun,
    notifyApplicationState_applicationId,
    notifyApplicationState_status,
    notifyApplicationStateResponse_httpStatus,

    -- ** DeleteProgressUpdateStream
    deleteProgressUpdateStream_dryRun,
    deleteProgressUpdateStream_progressUpdateStreamName,
    deleteProgressUpdateStreamResponse_httpStatus,

    -- ** ListProgressUpdateStreams
    listProgressUpdateStreams_nextToken,
    listProgressUpdateStreams_maxResults,
    listProgressUpdateStreamsResponse_progressUpdateStreamSummaryList,
    listProgressUpdateStreamsResponse_nextToken,
    listProgressUpdateStreamsResponse_httpStatus,

    -- ** DisassociateCreatedArtifact
    disassociateCreatedArtifact_dryRun,
    disassociateCreatedArtifact_progressUpdateStream,
    disassociateCreatedArtifact_migrationTaskName,
    disassociateCreatedArtifact_createdArtifactName,
    disassociateCreatedArtifactResponse_httpStatus,

    -- ** ImportMigrationTask
    importMigrationTask_dryRun,
    importMigrationTask_progressUpdateStream,
    importMigrationTask_migrationTaskName,
    importMigrationTaskResponse_httpStatus,

    -- ** DescribeMigrationTask
    describeMigrationTask_progressUpdateStream,
    describeMigrationTask_migrationTaskName,
    describeMigrationTaskResponse_migrationTask,
    describeMigrationTaskResponse_httpStatus,

    -- ** PutResourceAttributes
    putResourceAttributes_dryRun,
    putResourceAttributes_progressUpdateStream,
    putResourceAttributes_migrationTaskName,
    putResourceAttributes_resourceAttributeList,
    putResourceAttributesResponse_httpStatus,

    -- ** AssociateCreatedArtifact
    associateCreatedArtifact_dryRun,
    associateCreatedArtifact_progressUpdateStream,
    associateCreatedArtifact_migrationTaskName,
    associateCreatedArtifact_createdArtifact,
    associateCreatedArtifactResponse_httpStatus,

    -- ** NotifyMigrationTaskState
    notifyMigrationTaskState_dryRun,
    notifyMigrationTaskState_progressUpdateStream,
    notifyMigrationTaskState_migrationTaskName,
    notifyMigrationTaskState_task,
    notifyMigrationTaskState_updateDateTime,
    notifyMigrationTaskState_nextUpdateSeconds,
    notifyMigrationTaskStateResponse_httpStatus,

    -- ** DescribeApplicationState
    describeApplicationState_applicationId,
    describeApplicationStateResponse_lastUpdatedTime,
    describeApplicationStateResponse_applicationStatus,
    describeApplicationStateResponse_httpStatus,

    -- ** ListMigrationTasks
    listMigrationTasks_resourceName,
    listMigrationTasks_nextToken,
    listMigrationTasks_maxResults,
    listMigrationTasksResponse_migrationTaskSummaryList,
    listMigrationTasksResponse_nextToken,
    listMigrationTasksResponse_httpStatus,

    -- ** ListDiscoveredResources
    listDiscoveredResources_nextToken,
    listDiscoveredResources_maxResults,
    listDiscoveredResources_progressUpdateStream,
    listDiscoveredResources_migrationTaskName,
    listDiscoveredResourcesResponse_discoveredResourceList,
    listDiscoveredResourcesResponse_nextToken,
    listDiscoveredResourcesResponse_httpStatus,

    -- * Types

    -- ** ApplicationState
    applicationState_lastUpdatedTime,
    applicationState_applicationId,
    applicationState_applicationStatus,

    -- ** CreatedArtifact
    createdArtifact_description,
    createdArtifact_name,

    -- ** DiscoveredResource
    discoveredResource_description,
    discoveredResource_configurationId,

    -- ** MigrationTask
    migrationTask_updateDateTime,
    migrationTask_resourceAttributeList,
    migrationTask_task,
    migrationTask_progressUpdateStream,
    migrationTask_migrationTaskName,

    -- ** MigrationTaskSummary
    migrationTaskSummary_status,
    migrationTaskSummary_updateDateTime,
    migrationTaskSummary_progressPercent,
    migrationTaskSummary_statusDetail,
    migrationTaskSummary_progressUpdateStream,
    migrationTaskSummary_migrationTaskName,

    -- ** ProgressUpdateStreamSummary
    progressUpdateStreamSummary_progressUpdateStreamName,

    -- ** ResourceAttribute
    resourceAttribute_type,
    resourceAttribute_value,

    -- ** Task
    task_progressPercent,
    task_statusDetail,
    task_status,
  )
where

import Network.AWS.MigrationHub.AssociateCreatedArtifact
import Network.AWS.MigrationHub.AssociateDiscoveredResource
import Network.AWS.MigrationHub.CreateProgressUpdateStream
import Network.AWS.MigrationHub.DeleteProgressUpdateStream
import Network.AWS.MigrationHub.DescribeApplicationState
import Network.AWS.MigrationHub.DescribeMigrationTask
import Network.AWS.MigrationHub.DisassociateCreatedArtifact
import Network.AWS.MigrationHub.DisassociateDiscoveredResource
import Network.AWS.MigrationHub.ImportMigrationTask
import Network.AWS.MigrationHub.ListApplicationStates
import Network.AWS.MigrationHub.ListCreatedArtifacts
import Network.AWS.MigrationHub.ListDiscoveredResources
import Network.AWS.MigrationHub.ListMigrationTasks
import Network.AWS.MigrationHub.ListProgressUpdateStreams
import Network.AWS.MigrationHub.NotifyApplicationState
import Network.AWS.MigrationHub.NotifyMigrationTaskState
import Network.AWS.MigrationHub.PutResourceAttributes
import Network.AWS.MigrationHub.Types.ApplicationState
import Network.AWS.MigrationHub.Types.CreatedArtifact
import Network.AWS.MigrationHub.Types.DiscoveredResource
import Network.AWS.MigrationHub.Types.MigrationTask
import Network.AWS.MigrationHub.Types.MigrationTaskSummary
import Network.AWS.MigrationHub.Types.ProgressUpdateStreamSummary
import Network.AWS.MigrationHub.Types.ResourceAttribute
import Network.AWS.MigrationHub.Types.Task
