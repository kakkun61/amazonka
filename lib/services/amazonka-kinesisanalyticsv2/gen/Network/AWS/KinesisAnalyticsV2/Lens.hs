{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalyticsV2.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Lens
  ( -- * Operations

    -- ** AddApplicationOutput
    addApplicationOutput_applicationName,
    addApplicationOutput_currentApplicationVersionId,
    addApplicationOutput_output,
    addApplicationOutputResponse_applicationARN,
    addApplicationOutputResponse_outputDescriptions,
    addApplicationOutputResponse_applicationVersionId,
    addApplicationOutputResponse_httpStatus,

    -- ** DiscoverInputSchema
    discoverInputSchema_inputStartingPositionConfiguration,
    discoverInputSchema_inputProcessingConfiguration,
    discoverInputSchema_s3Configuration,
    discoverInputSchema_resourceARN,
    discoverInputSchema_serviceExecutionRole,
    discoverInputSchemaResponse_rawInputRecords,
    discoverInputSchemaResponse_inputSchema,
    discoverInputSchemaResponse_processedInputRecords,
    discoverInputSchemaResponse_parsedInputRecords,
    discoverInputSchemaResponse_httpStatus,

    -- ** DescribeApplication
    describeApplication_includeAdditionalDetails,
    describeApplication_applicationName,
    describeApplicationResponse_httpStatus,
    describeApplicationResponse_applicationDetail,

    -- ** DeleteApplicationSnapshot
    deleteApplicationSnapshot_applicationName,
    deleteApplicationSnapshot_snapshotName,
    deleteApplicationSnapshot_snapshotCreationTimestamp,
    deleteApplicationSnapshotResponse_httpStatus,

    -- ** StartApplication
    startApplication_runConfiguration,
    startApplication_applicationName,
    startApplicationResponse_httpStatus,

    -- ** ListTagsForResource
    listTagsForResource_resourceARN,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_httpStatus,

    -- ** DescribeApplicationVersion
    describeApplicationVersion_applicationName,
    describeApplicationVersion_applicationVersionId,
    describeApplicationVersionResponse_applicationVersionDetail,
    describeApplicationVersionResponse_httpStatus,

    -- ** DeleteApplicationReferenceDataSource
    deleteApplicationReferenceDataSource_applicationName,
    deleteApplicationReferenceDataSource_currentApplicationVersionId,
    deleteApplicationReferenceDataSource_referenceId,
    deleteApplicationReferenceDataSourceResponse_applicationARN,
    deleteApplicationReferenceDataSourceResponse_applicationVersionId,
    deleteApplicationReferenceDataSourceResponse_httpStatus,

    -- ** CreateApplicationPresignedUrl
    createApplicationPresignedUrl_sessionExpirationDurationInSeconds,
    createApplicationPresignedUrl_applicationName,
    createApplicationPresignedUrl_urlType,
    createApplicationPresignedUrlResponse_authorizedUrl,
    createApplicationPresignedUrlResponse_httpStatus,

    -- ** DeleteApplication
    deleteApplication_applicationName,
    deleteApplication_createTimestamp,
    deleteApplicationResponse_httpStatus,

    -- ** UpdateApplication
    updateApplication_currentApplicationVersionId,
    updateApplication_serviceExecutionRoleUpdate,
    updateApplication_cloudWatchLoggingOptionUpdates,
    updateApplication_conditionalToken,
    updateApplication_applicationConfigurationUpdate,
    updateApplication_runConfigurationUpdate,
    updateApplication_applicationName,
    updateApplicationResponse_httpStatus,
    updateApplicationResponse_applicationDetail,

    -- ** DeleteApplicationCloudWatchLoggingOption
    deleteApplicationCloudWatchLoggingOption_currentApplicationVersionId,
    deleteApplicationCloudWatchLoggingOption_conditionalToken,
    deleteApplicationCloudWatchLoggingOption_applicationName,
    deleteApplicationCloudWatchLoggingOption_cloudWatchLoggingOptionId,
    deleteApplicationCloudWatchLoggingOptionResponse_applicationARN,
    deleteApplicationCloudWatchLoggingOptionResponse_applicationVersionId,
    deleteApplicationCloudWatchLoggingOptionResponse_cloudWatchLoggingOptionDescriptions,
    deleteApplicationCloudWatchLoggingOptionResponse_httpStatus,

    -- ** DescribeApplicationSnapshot
    describeApplicationSnapshot_applicationName,
    describeApplicationSnapshot_snapshotName,
    describeApplicationSnapshotResponse_httpStatus,
    describeApplicationSnapshotResponse_snapshotDetails,

    -- ** DeleteApplicationVpcConfiguration
    deleteApplicationVpcConfiguration_currentApplicationVersionId,
    deleteApplicationVpcConfiguration_conditionalToken,
    deleteApplicationVpcConfiguration_applicationName,
    deleteApplicationVpcConfiguration_vpcConfigurationId,
    deleteApplicationVpcConfigurationResponse_applicationARN,
    deleteApplicationVpcConfigurationResponse_applicationVersionId,
    deleteApplicationVpcConfigurationResponse_httpStatus,

    -- ** AddApplicationInputProcessingConfiguration
    addApplicationInputProcessingConfiguration_applicationName,
    addApplicationInputProcessingConfiguration_currentApplicationVersionId,
    addApplicationInputProcessingConfiguration_inputId,
    addApplicationInputProcessingConfiguration_inputProcessingConfiguration,
    addApplicationInputProcessingConfigurationResponse_applicationARN,
    addApplicationInputProcessingConfigurationResponse_applicationVersionId,
    addApplicationInputProcessingConfigurationResponse_inputId,
    addApplicationInputProcessingConfigurationResponse_inputProcessingConfigurationDescription,
    addApplicationInputProcessingConfigurationResponse_httpStatus,

    -- ** CreateApplication
    createApplication_applicationDescription,
    createApplication_cloudWatchLoggingOptions,
    createApplication_applicationMode,
    createApplication_applicationConfiguration,
    createApplication_tags,
    createApplication_applicationName,
    createApplication_runtimeEnvironment,
    createApplication_serviceExecutionRole,
    createApplicationResponse_httpStatus,
    createApplicationResponse_applicationDetail,

    -- ** ListApplicationVersions
    listApplicationVersions_nextToken,
    listApplicationVersions_limit,
    listApplicationVersions_applicationName,
    listApplicationVersionsResponse_applicationVersionSummaries,
    listApplicationVersionsResponse_nextToken,
    listApplicationVersionsResponse_httpStatus,

    -- ** DeleteApplicationOutput
    deleteApplicationOutput_applicationName,
    deleteApplicationOutput_currentApplicationVersionId,
    deleteApplicationOutput_outputId,
    deleteApplicationOutputResponse_applicationARN,
    deleteApplicationOutputResponse_applicationVersionId,
    deleteApplicationOutputResponse_httpStatus,

    -- ** RollbackApplication
    rollbackApplication_applicationName,
    rollbackApplication_currentApplicationVersionId,
    rollbackApplicationResponse_httpStatus,
    rollbackApplicationResponse_applicationDetail,

    -- ** ListApplicationSnapshots
    listApplicationSnapshots_nextToken,
    listApplicationSnapshots_limit,
    listApplicationSnapshots_applicationName,
    listApplicationSnapshotsResponse_snapshotSummaries,
    listApplicationSnapshotsResponse_nextToken,
    listApplicationSnapshotsResponse_httpStatus,

    -- ** StopApplication
    stopApplication_force,
    stopApplication_applicationName,
    stopApplicationResponse_httpStatus,

    -- ** CreateApplicationSnapshot
    createApplicationSnapshot_applicationName,
    createApplicationSnapshot_snapshotName,
    createApplicationSnapshotResponse_httpStatus,

    -- ** AddApplicationReferenceDataSource
    addApplicationReferenceDataSource_applicationName,
    addApplicationReferenceDataSource_currentApplicationVersionId,
    addApplicationReferenceDataSource_referenceDataSource,
    addApplicationReferenceDataSourceResponse_applicationARN,
    addApplicationReferenceDataSourceResponse_applicationVersionId,
    addApplicationReferenceDataSourceResponse_referenceDataSourceDescriptions,
    addApplicationReferenceDataSourceResponse_httpStatus,

    -- ** AddApplicationInput
    addApplicationInput_applicationName,
    addApplicationInput_currentApplicationVersionId,
    addApplicationInput_input,
    addApplicationInputResponse_applicationARN,
    addApplicationInputResponse_applicationVersionId,
    addApplicationInputResponse_inputDescriptions,
    addApplicationInputResponse_httpStatus,

    -- ** TagResource
    tagResource_resourceARN,
    tagResource_tags,
    tagResourceResponse_httpStatus,

    -- ** AddApplicationCloudWatchLoggingOption
    addApplicationCloudWatchLoggingOption_currentApplicationVersionId,
    addApplicationCloudWatchLoggingOption_conditionalToken,
    addApplicationCloudWatchLoggingOption_applicationName,
    addApplicationCloudWatchLoggingOption_cloudWatchLoggingOption,
    addApplicationCloudWatchLoggingOptionResponse_applicationARN,
    addApplicationCloudWatchLoggingOptionResponse_applicationVersionId,
    addApplicationCloudWatchLoggingOptionResponse_cloudWatchLoggingOptionDescriptions,
    addApplicationCloudWatchLoggingOptionResponse_httpStatus,

    -- ** ListApplications
    listApplications_nextToken,
    listApplications_limit,
    listApplicationsResponse_nextToken,
    listApplicationsResponse_httpStatus,
    listApplicationsResponse_applicationSummaries,

    -- ** UntagResource
    untagResource_resourceARN,
    untagResource_tagKeys,
    untagResourceResponse_httpStatus,

    -- ** DeleteApplicationInputProcessingConfiguration
    deleteApplicationInputProcessingConfiguration_applicationName,
    deleteApplicationInputProcessingConfiguration_currentApplicationVersionId,
    deleteApplicationInputProcessingConfiguration_inputId,
    deleteApplicationInputProcessingConfigurationResponse_applicationARN,
    deleteApplicationInputProcessingConfigurationResponse_applicationVersionId,
    deleteApplicationInputProcessingConfigurationResponse_httpStatus,

    -- ** AddApplicationVpcConfiguration
    addApplicationVpcConfiguration_currentApplicationVersionId,
    addApplicationVpcConfiguration_conditionalToken,
    addApplicationVpcConfiguration_applicationName,
    addApplicationVpcConfiguration_vpcConfiguration,
    addApplicationVpcConfigurationResponse_applicationARN,
    addApplicationVpcConfigurationResponse_applicationVersionId,
    addApplicationVpcConfigurationResponse_vpcConfigurationDescription,
    addApplicationVpcConfigurationResponse_httpStatus,

    -- ** UpdateApplicationMaintenanceConfiguration
    updateApplicationMaintenanceConfiguration_applicationName,
    updateApplicationMaintenanceConfiguration_applicationMaintenanceConfigurationUpdate,
    updateApplicationMaintenanceConfigurationResponse_applicationARN,
    updateApplicationMaintenanceConfigurationResponse_applicationMaintenanceConfigurationDescription,
    updateApplicationMaintenanceConfigurationResponse_httpStatus,

    -- * Types

    -- ** ApplicationCodeConfiguration
    applicationCodeConfiguration_codeContent,
    applicationCodeConfiguration_codeContentType,

    -- ** ApplicationCodeConfigurationDescription
    applicationCodeConfigurationDescription_codeContentDescription,
    applicationCodeConfigurationDescription_codeContentType,

    -- ** ApplicationCodeConfigurationUpdate
    applicationCodeConfigurationUpdate_codeContentTypeUpdate,
    applicationCodeConfigurationUpdate_codeContentUpdate,

    -- ** ApplicationConfiguration
    applicationConfiguration_applicationSnapshotConfiguration,
    applicationConfiguration_vpcConfigurations,
    applicationConfiguration_environmentProperties,
    applicationConfiguration_flinkApplicationConfiguration,
    applicationConfiguration_sqlApplicationConfiguration,
    applicationConfiguration_applicationCodeConfiguration,
    applicationConfiguration_zeppelinApplicationConfiguration,

    -- ** ApplicationConfigurationDescription
    applicationConfigurationDescription_zeppelinApplicationConfigurationDescription,
    applicationConfigurationDescription_vpcConfigurationDescriptions,
    applicationConfigurationDescription_applicationCodeConfigurationDescription,
    applicationConfigurationDescription_environmentPropertyDescriptions,
    applicationConfigurationDescription_runConfigurationDescription,
    applicationConfigurationDescription_sqlApplicationConfigurationDescription,
    applicationConfigurationDescription_flinkApplicationConfigurationDescription,
    applicationConfigurationDescription_applicationSnapshotConfigurationDescription,

    -- ** ApplicationConfigurationUpdate
    applicationConfigurationUpdate_applicationSnapshotConfigurationUpdate,
    applicationConfigurationUpdate_zeppelinApplicationConfigurationUpdate,
    applicationConfigurationUpdate_flinkApplicationConfigurationUpdate,
    applicationConfigurationUpdate_sqlApplicationConfigurationUpdate,
    applicationConfigurationUpdate_vpcConfigurationUpdates,
    applicationConfigurationUpdate_environmentPropertyUpdates,
    applicationConfigurationUpdate_applicationCodeConfigurationUpdate,

    -- ** ApplicationDetail
    applicationDetail_applicationDescription,
    applicationDetail_conditionalToken,
    applicationDetail_cloudWatchLoggingOptionDescriptions,
    applicationDetail_applicationVersionRolledBackFrom,
    applicationDetail_applicationMode,
    applicationDetail_applicationConfigurationDescription,
    applicationDetail_applicationVersionRolledBackTo,
    applicationDetail_createTimestamp,
    applicationDetail_lastUpdateTimestamp,
    applicationDetail_serviceExecutionRole,
    applicationDetail_applicationVersionUpdatedFrom,
    applicationDetail_applicationMaintenanceConfigurationDescription,
    applicationDetail_applicationARN,
    applicationDetail_applicationName,
    applicationDetail_runtimeEnvironment,
    applicationDetail_applicationStatus,
    applicationDetail_applicationVersionId,

    -- ** ApplicationMaintenanceConfigurationDescription
    applicationMaintenanceConfigurationDescription_applicationMaintenanceWindowStartTime,
    applicationMaintenanceConfigurationDescription_applicationMaintenanceWindowEndTime,

    -- ** ApplicationMaintenanceConfigurationUpdate
    applicationMaintenanceConfigurationUpdate_applicationMaintenanceWindowStartTimeUpdate,

    -- ** ApplicationRestoreConfiguration
    applicationRestoreConfiguration_snapshotName,
    applicationRestoreConfiguration_applicationRestoreType,

    -- ** ApplicationSnapshotConfiguration
    applicationSnapshotConfiguration_snapshotsEnabled,

    -- ** ApplicationSnapshotConfigurationDescription
    applicationSnapshotConfigurationDescription_snapshotsEnabled,

    -- ** ApplicationSnapshotConfigurationUpdate
    applicationSnapshotConfigurationUpdate_snapshotsEnabledUpdate,

    -- ** ApplicationSummary
    applicationSummary_applicationMode,
    applicationSummary_applicationName,
    applicationSummary_applicationARN,
    applicationSummary_applicationStatus,
    applicationSummary_applicationVersionId,
    applicationSummary_runtimeEnvironment,

    -- ** ApplicationVersionSummary
    applicationVersionSummary_applicationVersionId,
    applicationVersionSummary_applicationStatus,

    -- ** CSVMappingParameters
    cSVMappingParameters_recordRowDelimiter,
    cSVMappingParameters_recordColumnDelimiter,

    -- ** CatalogConfiguration
    catalogConfiguration_glueDataCatalogConfiguration,

    -- ** CatalogConfigurationDescription
    catalogConfigurationDescription_glueDataCatalogConfigurationDescription,

    -- ** CatalogConfigurationUpdate
    catalogConfigurationUpdate_glueDataCatalogConfigurationUpdate,

    -- ** CheckpointConfiguration
    checkpointConfiguration_checkpointingEnabled,
    checkpointConfiguration_minPauseBetweenCheckpoints,
    checkpointConfiguration_checkpointInterval,
    checkpointConfiguration_configurationType,

    -- ** CheckpointConfigurationDescription
    checkpointConfigurationDescription_checkpointingEnabled,
    checkpointConfigurationDescription_configurationType,
    checkpointConfigurationDescription_minPauseBetweenCheckpoints,
    checkpointConfigurationDescription_checkpointInterval,

    -- ** CheckpointConfigurationUpdate
    checkpointConfigurationUpdate_checkpointIntervalUpdate,
    checkpointConfigurationUpdate_checkpointingEnabledUpdate,
    checkpointConfigurationUpdate_minPauseBetweenCheckpointsUpdate,
    checkpointConfigurationUpdate_configurationTypeUpdate,

    -- ** CloudWatchLoggingOption
    cloudWatchLoggingOption_logStreamARN,

    -- ** CloudWatchLoggingOptionDescription
    cloudWatchLoggingOptionDescription_cloudWatchLoggingOptionId,
    cloudWatchLoggingOptionDescription_roleARN,
    cloudWatchLoggingOptionDescription_logStreamARN,

    -- ** CloudWatchLoggingOptionUpdate
    cloudWatchLoggingOptionUpdate_logStreamARNUpdate,
    cloudWatchLoggingOptionUpdate_cloudWatchLoggingOptionId,

    -- ** CodeContent
    codeContent_textContent,
    codeContent_s3ContentLocation,
    codeContent_zipFileContent,

    -- ** CodeContentDescription
    codeContentDescription_s3ApplicationCodeLocationDescription,
    codeContentDescription_codeMD5,
    codeContentDescription_textContent,
    codeContentDescription_codeSize,

    -- ** CodeContentUpdate
    codeContentUpdate_textContentUpdate,
    codeContentUpdate_zipFileContentUpdate,
    codeContentUpdate_s3ContentLocationUpdate,

    -- ** CustomArtifactConfiguration
    customArtifactConfiguration_s3ContentLocation,
    customArtifactConfiguration_mavenReference,
    customArtifactConfiguration_artifactType,

    -- ** CustomArtifactConfigurationDescription
    customArtifactConfigurationDescription_mavenReferenceDescription,
    customArtifactConfigurationDescription_s3ContentLocationDescription,
    customArtifactConfigurationDescription_artifactType,

    -- ** DeployAsApplicationConfiguration
    deployAsApplicationConfiguration_s3ContentLocation,

    -- ** DeployAsApplicationConfigurationDescription
    deployAsApplicationConfigurationDescription_s3ContentLocationDescription,

    -- ** DeployAsApplicationConfigurationUpdate
    deployAsApplicationConfigurationUpdate_s3ContentLocationUpdate,

    -- ** DestinationSchema
    destinationSchema_recordFormatType,

    -- ** EnvironmentProperties
    environmentProperties_propertyGroups,

    -- ** EnvironmentPropertyDescriptions
    environmentPropertyDescriptions_propertyGroupDescriptions,

    -- ** EnvironmentPropertyUpdates
    environmentPropertyUpdates_propertyGroups,

    -- ** FlinkApplicationConfiguration
    flinkApplicationConfiguration_monitoringConfiguration,
    flinkApplicationConfiguration_parallelismConfiguration,
    flinkApplicationConfiguration_checkpointConfiguration,

    -- ** FlinkApplicationConfigurationDescription
    flinkApplicationConfigurationDescription_monitoringConfigurationDescription,
    flinkApplicationConfigurationDescription_parallelismConfigurationDescription,
    flinkApplicationConfigurationDescription_checkpointConfigurationDescription,
    flinkApplicationConfigurationDescription_jobPlanDescription,

    -- ** FlinkApplicationConfigurationUpdate
    flinkApplicationConfigurationUpdate_checkpointConfigurationUpdate,
    flinkApplicationConfigurationUpdate_parallelismConfigurationUpdate,
    flinkApplicationConfigurationUpdate_monitoringConfigurationUpdate,

    -- ** FlinkRunConfiguration
    flinkRunConfiguration_allowNonRestoredState,

    -- ** GlueDataCatalogConfiguration
    glueDataCatalogConfiguration_databaseARN,

    -- ** GlueDataCatalogConfigurationDescription
    glueDataCatalogConfigurationDescription_databaseARN,

    -- ** GlueDataCatalogConfigurationUpdate
    glueDataCatalogConfigurationUpdate_databaseARNUpdate,

    -- ** Input
    input_inputParallelism,
    input_inputProcessingConfiguration,
    input_kinesisStreamsInput,
    input_kinesisFirehoseInput,
    input_namePrefix,
    input_inputSchema,

    -- ** InputDescription
    inputDescription_inputStartingPositionConfiguration,
    inputDescription_inputParallelism,
    inputDescription_inputId,
    inputDescription_inAppStreamNames,
    inputDescription_kinesisFirehoseInputDescription,
    inputDescription_inputSchema,
    inputDescription_kinesisStreamsInputDescription,
    inputDescription_namePrefix,
    inputDescription_inputProcessingConfigurationDescription,

    -- ** InputLambdaProcessor
    inputLambdaProcessor_resourceARN,

    -- ** InputLambdaProcessorDescription
    inputLambdaProcessorDescription_roleARN,
    inputLambdaProcessorDescription_resourceARN,

    -- ** InputLambdaProcessorUpdate
    inputLambdaProcessorUpdate_resourceARNUpdate,

    -- ** InputParallelism
    inputParallelism_count,

    -- ** InputParallelismUpdate
    inputParallelismUpdate_countUpdate,

    -- ** InputProcessingConfiguration
    inputProcessingConfiguration_inputLambdaProcessor,

    -- ** InputProcessingConfigurationDescription
    inputProcessingConfigurationDescription_inputLambdaProcessorDescription,

    -- ** InputProcessingConfigurationUpdate
    inputProcessingConfigurationUpdate_inputLambdaProcessorUpdate,

    -- ** InputSchemaUpdate
    inputSchemaUpdate_recordFormatUpdate,
    inputSchemaUpdate_recordEncodingUpdate,
    inputSchemaUpdate_recordColumnUpdates,

    -- ** InputStartingPositionConfiguration
    inputStartingPositionConfiguration_inputStartingPosition,

    -- ** InputUpdate
    inputUpdate_inputProcessingConfigurationUpdate,
    inputUpdate_kinesisStreamsInputUpdate,
    inputUpdate_inputParallelismUpdate,
    inputUpdate_namePrefixUpdate,
    inputUpdate_inputSchemaUpdate,
    inputUpdate_kinesisFirehoseInputUpdate,
    inputUpdate_inputId,

    -- ** JSONMappingParameters
    jSONMappingParameters_recordRowPath,

    -- ** KinesisFirehoseInput
    kinesisFirehoseInput_resourceARN,

    -- ** KinesisFirehoseInputDescription
    kinesisFirehoseInputDescription_roleARN,
    kinesisFirehoseInputDescription_resourceARN,

    -- ** KinesisFirehoseInputUpdate
    kinesisFirehoseInputUpdate_resourceARNUpdate,

    -- ** KinesisFirehoseOutput
    kinesisFirehoseOutput_resourceARN,

    -- ** KinesisFirehoseOutputDescription
    kinesisFirehoseOutputDescription_roleARN,
    kinesisFirehoseOutputDescription_resourceARN,

    -- ** KinesisFirehoseOutputUpdate
    kinesisFirehoseOutputUpdate_resourceARNUpdate,

    -- ** KinesisStreamsInput
    kinesisStreamsInput_resourceARN,

    -- ** KinesisStreamsInputDescription
    kinesisStreamsInputDescription_roleARN,
    kinesisStreamsInputDescription_resourceARN,

    -- ** KinesisStreamsInputUpdate
    kinesisStreamsInputUpdate_resourceARNUpdate,

    -- ** KinesisStreamsOutput
    kinesisStreamsOutput_resourceARN,

    -- ** KinesisStreamsOutputDescription
    kinesisStreamsOutputDescription_roleARN,
    kinesisStreamsOutputDescription_resourceARN,

    -- ** KinesisStreamsOutputUpdate
    kinesisStreamsOutputUpdate_resourceARNUpdate,

    -- ** LambdaOutput
    lambdaOutput_resourceARN,

    -- ** LambdaOutputDescription
    lambdaOutputDescription_roleARN,
    lambdaOutputDescription_resourceARN,

    -- ** LambdaOutputUpdate
    lambdaOutputUpdate_resourceARNUpdate,

    -- ** MappingParameters
    mappingParameters_cSVMappingParameters,
    mappingParameters_jSONMappingParameters,

    -- ** MavenReference
    mavenReference_groupId,
    mavenReference_artifactId,
    mavenReference_version,

    -- ** MonitoringConfiguration
    monitoringConfiguration_logLevel,
    monitoringConfiguration_metricsLevel,
    monitoringConfiguration_configurationType,

    -- ** MonitoringConfigurationDescription
    monitoringConfigurationDescription_logLevel,
    monitoringConfigurationDescription_configurationType,
    monitoringConfigurationDescription_metricsLevel,

    -- ** MonitoringConfigurationUpdate
    monitoringConfigurationUpdate_metricsLevelUpdate,
    monitoringConfigurationUpdate_logLevelUpdate,
    monitoringConfigurationUpdate_configurationTypeUpdate,

    -- ** Output
    output_lambdaOutput,
    output_kinesisStreamsOutput,
    output_kinesisFirehoseOutput,
    output_name,
    output_destinationSchema,

    -- ** OutputDescription
    outputDescription_outputId,
    outputDescription_destinationSchema,
    outputDescription_kinesisFirehoseOutputDescription,
    outputDescription_kinesisStreamsOutputDescription,
    outputDescription_name,
    outputDescription_lambdaOutputDescription,

    -- ** OutputUpdate
    outputUpdate_kinesisStreamsOutputUpdate,
    outputUpdate_destinationSchemaUpdate,
    outputUpdate_kinesisFirehoseOutputUpdate,
    outputUpdate_nameUpdate,
    outputUpdate_lambdaOutputUpdate,
    outputUpdate_outputId,

    -- ** ParallelismConfiguration
    parallelismConfiguration_autoScalingEnabled,
    parallelismConfiguration_parallelismPerKPU,
    parallelismConfiguration_parallelism,
    parallelismConfiguration_configurationType,

    -- ** ParallelismConfigurationDescription
    parallelismConfigurationDescription_autoScalingEnabled,
    parallelismConfigurationDescription_currentParallelism,
    parallelismConfigurationDescription_parallelismPerKPU,
    parallelismConfigurationDescription_configurationType,
    parallelismConfigurationDescription_parallelism,

    -- ** ParallelismConfigurationUpdate
    parallelismConfigurationUpdate_parallelismUpdate,
    parallelismConfigurationUpdate_autoScalingEnabledUpdate,
    parallelismConfigurationUpdate_parallelismPerKPUUpdate,
    parallelismConfigurationUpdate_configurationTypeUpdate,

    -- ** PropertyGroup
    propertyGroup_propertyGroupId,
    propertyGroup_propertyMap,

    -- ** RecordColumn
    recordColumn_mapping,
    recordColumn_name,
    recordColumn_sqlType,

    -- ** RecordFormat
    recordFormat_mappingParameters,
    recordFormat_recordFormatType,

    -- ** ReferenceDataSource
    referenceDataSource_s3ReferenceDataSource,
    referenceDataSource_tableName,
    referenceDataSource_referenceSchema,

    -- ** ReferenceDataSourceDescription
    referenceDataSourceDescription_referenceSchema,
    referenceDataSourceDescription_referenceId,
    referenceDataSourceDescription_tableName,
    referenceDataSourceDescription_s3ReferenceDataSourceDescription,

    -- ** ReferenceDataSourceUpdate
    referenceDataSourceUpdate_tableNameUpdate,
    referenceDataSourceUpdate_s3ReferenceDataSourceUpdate,
    referenceDataSourceUpdate_referenceSchemaUpdate,
    referenceDataSourceUpdate_referenceId,

    -- ** RunConfiguration
    runConfiguration_sqlRunConfigurations,
    runConfiguration_flinkRunConfiguration,
    runConfiguration_applicationRestoreConfiguration,

    -- ** RunConfigurationDescription
    runConfigurationDescription_applicationRestoreConfigurationDescription,
    runConfigurationDescription_flinkRunConfigurationDescription,

    -- ** RunConfigurationUpdate
    runConfigurationUpdate_flinkRunConfiguration,
    runConfigurationUpdate_applicationRestoreConfiguration,

    -- ** S3ApplicationCodeLocationDescription
    s3ApplicationCodeLocationDescription_objectVersion,
    s3ApplicationCodeLocationDescription_bucketARN,
    s3ApplicationCodeLocationDescription_fileKey,

    -- ** S3Configuration
    s3Configuration_bucketARN,
    s3Configuration_fileKey,

    -- ** S3ContentBaseLocation
    s3ContentBaseLocation_basePath,
    s3ContentBaseLocation_bucketARN,

    -- ** S3ContentBaseLocationDescription
    s3ContentBaseLocationDescription_basePath,
    s3ContentBaseLocationDescription_bucketARN,

    -- ** S3ContentBaseLocationUpdate
    s3ContentBaseLocationUpdate_bucketARNUpdate,
    s3ContentBaseLocationUpdate_basePathUpdate,

    -- ** S3ContentLocation
    s3ContentLocation_objectVersion,
    s3ContentLocation_bucketARN,
    s3ContentLocation_fileKey,

    -- ** S3ContentLocationUpdate
    s3ContentLocationUpdate_bucketARNUpdate,
    s3ContentLocationUpdate_fileKeyUpdate,
    s3ContentLocationUpdate_objectVersionUpdate,

    -- ** S3ReferenceDataSource
    s3ReferenceDataSource_bucketARN,
    s3ReferenceDataSource_fileKey,

    -- ** S3ReferenceDataSourceDescription
    s3ReferenceDataSourceDescription_referenceRoleARN,
    s3ReferenceDataSourceDescription_bucketARN,
    s3ReferenceDataSourceDescription_fileKey,

    -- ** S3ReferenceDataSourceUpdate
    s3ReferenceDataSourceUpdate_bucketARNUpdate,
    s3ReferenceDataSourceUpdate_fileKeyUpdate,

    -- ** SnapshotDetails
    snapshotDetails_snapshotCreationTimestamp,
    snapshotDetails_snapshotName,
    snapshotDetails_snapshotStatus,
    snapshotDetails_applicationVersionId,

    -- ** SourceSchema
    sourceSchema_recordEncoding,
    sourceSchema_recordFormat,
    sourceSchema_recordColumns,

    -- ** SqlApplicationConfiguration
    sqlApplicationConfiguration_inputs,
    sqlApplicationConfiguration_referenceDataSources,
    sqlApplicationConfiguration_outputs,

    -- ** SqlApplicationConfigurationDescription
    sqlApplicationConfigurationDescription_outputDescriptions,
    sqlApplicationConfigurationDescription_referenceDataSourceDescriptions,
    sqlApplicationConfigurationDescription_inputDescriptions,

    -- ** SqlApplicationConfigurationUpdate
    sqlApplicationConfigurationUpdate_referenceDataSourceUpdates,
    sqlApplicationConfigurationUpdate_inputUpdates,
    sqlApplicationConfigurationUpdate_outputUpdates,

    -- ** SqlRunConfiguration
    sqlRunConfiguration_inputId,
    sqlRunConfiguration_inputStartingPositionConfiguration,

    -- ** Tag
    tag_value,
    tag_key,

    -- ** VpcConfiguration
    vpcConfiguration_subnetIds,
    vpcConfiguration_securityGroupIds,

    -- ** VpcConfigurationDescription
    vpcConfigurationDescription_vpcConfigurationId,
    vpcConfigurationDescription_vpcId,
    vpcConfigurationDescription_subnetIds,
    vpcConfigurationDescription_securityGroupIds,

    -- ** VpcConfigurationUpdate
    vpcConfigurationUpdate_subnetIdUpdates,
    vpcConfigurationUpdate_securityGroupIdUpdates,
    vpcConfigurationUpdate_vpcConfigurationId,

    -- ** ZeppelinApplicationConfiguration
    zeppelinApplicationConfiguration_monitoringConfiguration,
    zeppelinApplicationConfiguration_catalogConfiguration,
    zeppelinApplicationConfiguration_deployAsApplicationConfiguration,
    zeppelinApplicationConfiguration_customArtifactsConfiguration,

    -- ** ZeppelinApplicationConfigurationDescription
    zeppelinApplicationConfigurationDescription_customArtifactsConfigurationDescription,
    zeppelinApplicationConfigurationDescription_deployAsApplicationConfigurationDescription,
    zeppelinApplicationConfigurationDescription_catalogConfigurationDescription,
    zeppelinApplicationConfigurationDescription_monitoringConfigurationDescription,

    -- ** ZeppelinApplicationConfigurationUpdate
    zeppelinApplicationConfigurationUpdate_customArtifactsConfigurationUpdate,
    zeppelinApplicationConfigurationUpdate_catalogConfigurationUpdate,
    zeppelinApplicationConfigurationUpdate_deployAsApplicationConfigurationUpdate,
    zeppelinApplicationConfigurationUpdate_monitoringConfigurationUpdate,

    -- ** ZeppelinMonitoringConfiguration
    zeppelinMonitoringConfiguration_logLevel,

    -- ** ZeppelinMonitoringConfigurationDescription
    zeppelinMonitoringConfigurationDescription_logLevel,

    -- ** ZeppelinMonitoringConfigurationUpdate
    zeppelinMonitoringConfigurationUpdate_logLevelUpdate,
  )
where

import Network.AWS.KinesisAnalyticsV2.AddApplicationCloudWatchLoggingOption
import Network.AWS.KinesisAnalyticsV2.AddApplicationInput
import Network.AWS.KinesisAnalyticsV2.AddApplicationInputProcessingConfiguration
import Network.AWS.KinesisAnalyticsV2.AddApplicationOutput
import Network.AWS.KinesisAnalyticsV2.AddApplicationReferenceDataSource
import Network.AWS.KinesisAnalyticsV2.AddApplicationVpcConfiguration
import Network.AWS.KinesisAnalyticsV2.CreateApplication
import Network.AWS.KinesisAnalyticsV2.CreateApplicationPresignedUrl
import Network.AWS.KinesisAnalyticsV2.CreateApplicationSnapshot
import Network.AWS.KinesisAnalyticsV2.DeleteApplication
import Network.AWS.KinesisAnalyticsV2.DeleteApplicationCloudWatchLoggingOption
import Network.AWS.KinesisAnalyticsV2.DeleteApplicationInputProcessingConfiguration
import Network.AWS.KinesisAnalyticsV2.DeleteApplicationOutput
import Network.AWS.KinesisAnalyticsV2.DeleteApplicationReferenceDataSource
import Network.AWS.KinesisAnalyticsV2.DeleteApplicationSnapshot
import Network.AWS.KinesisAnalyticsV2.DeleteApplicationVpcConfiguration
import Network.AWS.KinesisAnalyticsV2.DescribeApplication
import Network.AWS.KinesisAnalyticsV2.DescribeApplicationSnapshot
import Network.AWS.KinesisAnalyticsV2.DescribeApplicationVersion
import Network.AWS.KinesisAnalyticsV2.DiscoverInputSchema
import Network.AWS.KinesisAnalyticsV2.ListApplicationSnapshots
import Network.AWS.KinesisAnalyticsV2.ListApplicationVersions
import Network.AWS.KinesisAnalyticsV2.ListApplications
import Network.AWS.KinesisAnalyticsV2.ListTagsForResource
import Network.AWS.KinesisAnalyticsV2.RollbackApplication
import Network.AWS.KinesisAnalyticsV2.StartApplication
import Network.AWS.KinesisAnalyticsV2.StopApplication
import Network.AWS.KinesisAnalyticsV2.TagResource
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationCodeConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationCodeConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationCodeConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationDetail
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationMaintenanceConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationMaintenanceConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationRestoreConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationSnapshotConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationSnapshotConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationSnapshotConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationSummary
import Network.AWS.KinesisAnalyticsV2.Types.ApplicationVersionSummary
import Network.AWS.KinesisAnalyticsV2.Types.CSVMappingParameters
import Network.AWS.KinesisAnalyticsV2.Types.CatalogConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.CatalogConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.CatalogConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.CheckpointConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.CheckpointConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.CheckpointConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.CloudWatchLoggingOption
import Network.AWS.KinesisAnalyticsV2.Types.CloudWatchLoggingOptionDescription
import Network.AWS.KinesisAnalyticsV2.Types.CloudWatchLoggingOptionUpdate
import Network.AWS.KinesisAnalyticsV2.Types.CodeContent
import Network.AWS.KinesisAnalyticsV2.Types.CodeContentDescription
import Network.AWS.KinesisAnalyticsV2.Types.CodeContentUpdate
import Network.AWS.KinesisAnalyticsV2.Types.CustomArtifactConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.CustomArtifactConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.DeployAsApplicationConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.DeployAsApplicationConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.DeployAsApplicationConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.DestinationSchema
import Network.AWS.KinesisAnalyticsV2.Types.EnvironmentProperties
import Network.AWS.KinesisAnalyticsV2.Types.EnvironmentPropertyDescriptions
import Network.AWS.KinesisAnalyticsV2.Types.EnvironmentPropertyUpdates
import Network.AWS.KinesisAnalyticsV2.Types.FlinkApplicationConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.FlinkApplicationConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.FlinkApplicationConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.FlinkRunConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.GlueDataCatalogConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.Input
import Network.AWS.KinesisAnalyticsV2.Types.InputDescription
import Network.AWS.KinesisAnalyticsV2.Types.InputLambdaProcessor
import Network.AWS.KinesisAnalyticsV2.Types.InputLambdaProcessorDescription
import Network.AWS.KinesisAnalyticsV2.Types.InputLambdaProcessorUpdate
import Network.AWS.KinesisAnalyticsV2.Types.InputParallelism
import Network.AWS.KinesisAnalyticsV2.Types.InputParallelismUpdate
import Network.AWS.KinesisAnalyticsV2.Types.InputProcessingConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.InputProcessingConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.InputProcessingConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.InputSchemaUpdate
import Network.AWS.KinesisAnalyticsV2.Types.InputStartingPositionConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.InputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.JSONMappingParameters
import Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseInput
import Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseInputDescription
import Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseInputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseOutput
import Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseOutputDescription
import Network.AWS.KinesisAnalyticsV2.Types.KinesisFirehoseOutputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsInput
import Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsInputDescription
import Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsInputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsOutput
import Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsOutputDescription
import Network.AWS.KinesisAnalyticsV2.Types.KinesisStreamsOutputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.LambdaOutput
import Network.AWS.KinesisAnalyticsV2.Types.LambdaOutputDescription
import Network.AWS.KinesisAnalyticsV2.Types.LambdaOutputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.MappingParameters
import Network.AWS.KinesisAnalyticsV2.Types.MavenReference
import Network.AWS.KinesisAnalyticsV2.Types.MonitoringConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.MonitoringConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.MonitoringConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.Output
import Network.AWS.KinesisAnalyticsV2.Types.OutputDescription
import Network.AWS.KinesisAnalyticsV2.Types.OutputUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ParallelismConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ParallelismConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ParallelismConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.PropertyGroup
import Network.AWS.KinesisAnalyticsV2.Types.RecordColumn
import Network.AWS.KinesisAnalyticsV2.Types.RecordFormat
import Network.AWS.KinesisAnalyticsV2.Types.ReferenceDataSource
import Network.AWS.KinesisAnalyticsV2.Types.ReferenceDataSourceDescription
import Network.AWS.KinesisAnalyticsV2.Types.ReferenceDataSourceUpdate
import Network.AWS.KinesisAnalyticsV2.Types.RunConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.RunConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.RunConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.S3ApplicationCodeLocationDescription
import Network.AWS.KinesisAnalyticsV2.Types.S3Configuration
import Network.AWS.KinesisAnalyticsV2.Types.S3ContentBaseLocation
import Network.AWS.KinesisAnalyticsV2.Types.S3ContentBaseLocationDescription
import Network.AWS.KinesisAnalyticsV2.Types.S3ContentBaseLocationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.S3ContentLocation
import Network.AWS.KinesisAnalyticsV2.Types.S3ContentLocationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.S3ReferenceDataSource
import Network.AWS.KinesisAnalyticsV2.Types.S3ReferenceDataSourceDescription
import Network.AWS.KinesisAnalyticsV2.Types.S3ReferenceDataSourceUpdate
import Network.AWS.KinesisAnalyticsV2.Types.SnapshotDetails
import Network.AWS.KinesisAnalyticsV2.Types.SourceSchema
import Network.AWS.KinesisAnalyticsV2.Types.SqlApplicationConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.SqlApplicationConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.SqlApplicationConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.SqlRunConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.Tag
import Network.AWS.KinesisAnalyticsV2.Types.VpcConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.VpcConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.VpcConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinApplicationConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinApplicationConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinApplicationConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinMonitoringConfiguration
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinMonitoringConfigurationDescription
import Network.AWS.KinesisAnalyticsV2.Types.ZeppelinMonitoringConfigurationUpdate
import Network.AWS.KinesisAnalyticsV2.UntagResource
import Network.AWS.KinesisAnalyticsV2.UpdateApplication
import Network.AWS.KinesisAnalyticsV2.UpdateApplicationMaintenanceConfiguration
