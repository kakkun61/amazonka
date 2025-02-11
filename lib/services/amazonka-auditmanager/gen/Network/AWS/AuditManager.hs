{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.AuditManager
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-07-25@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Welcome to the Audit Manager API reference. This guide is for developers
-- who need detailed information about the Audit Manager API operations,
-- data types, and errors.
--
-- Audit Manager is a service that provides automated evidence collection
-- so that you can continuously audit your Amazon Web Services usage, and
-- assess the effectiveness of your controls to better manage risk and
-- simplify compliance.
--
-- Audit Manager provides pre-built frameworks that structure and automate
-- assessments for a given compliance standard. Frameworks include a
-- pre-built collection of controls with descriptions and testing
-- procedures, which are grouped according to the requirements of the
-- specified compliance standard or regulation. You can also customize
-- frameworks and controls to support internal audits with unique
-- requirements.
--
-- Use the following links to get started with the Audit Manager API:
--
-- -   <https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html Actions>:
--     An alphabetical list of all Audit Manager API operations.
--
-- -   <https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html Data types>:
--     An alphabetical list of all Audit Manager data types.
--
-- -   <https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html Common parameters>:
--     Parameters that all Query operations can use.
--
-- -   <https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html Common errors>:
--     Client and server errors that all operations can return.
--
-- If you\'re new to Audit Manager, we recommend that you review the
-- <https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html Audit Manager User Guide>.
module Network.AWS.AuditManager
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** ValidationException
    _ValidationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** CreateAssessmentReport
    CreateAssessmentReport (CreateAssessmentReport'),
    newCreateAssessmentReport,
    CreateAssessmentReportResponse (CreateAssessmentReportResponse'),
    newCreateAssessmentReportResponse,

    -- ** RegisterOrganizationAdminAccount
    RegisterOrganizationAdminAccount (RegisterOrganizationAdminAccount'),
    newRegisterOrganizationAdminAccount,
    RegisterOrganizationAdminAccountResponse (RegisterOrganizationAdminAccountResponse'),
    newRegisterOrganizationAdminAccountResponse,

    -- ** ListNotifications
    ListNotifications (ListNotifications'),
    newListNotifications,
    ListNotificationsResponse (ListNotificationsResponse'),
    newListNotificationsResponse,

    -- ** BatchCreateDelegationByAssessment
    BatchCreateDelegationByAssessment (BatchCreateDelegationByAssessment'),
    newBatchCreateDelegationByAssessment,
    BatchCreateDelegationByAssessmentResponse (BatchCreateDelegationByAssessmentResponse'),
    newBatchCreateDelegationByAssessmentResponse,

    -- ** GetEvidenceFoldersByAssessmentControl
    GetEvidenceFoldersByAssessmentControl (GetEvidenceFoldersByAssessmentControl'),
    newGetEvidenceFoldersByAssessmentControl,
    GetEvidenceFoldersByAssessmentControlResponse (GetEvidenceFoldersByAssessmentControlResponse'),
    newGetEvidenceFoldersByAssessmentControlResponse,

    -- ** BatchDeleteDelegationByAssessment
    BatchDeleteDelegationByAssessment (BatchDeleteDelegationByAssessment'),
    newBatchDeleteDelegationByAssessment,
    BatchDeleteDelegationByAssessmentResponse (BatchDeleteDelegationByAssessmentResponse'),
    newBatchDeleteDelegationByAssessmentResponse,

    -- ** ListTagsForResource
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** GetEvidence
    GetEvidence (GetEvidence'),
    newGetEvidence,
    GetEvidenceResponse (GetEvidenceResponse'),
    newGetEvidenceResponse,

    -- ** GetServicesInScope
    GetServicesInScope (GetServicesInScope'),
    newGetServicesInScope,
    GetServicesInScopeResponse (GetServicesInScopeResponse'),
    newGetServicesInScopeResponse,

    -- ** BatchDisassociateAssessmentReportEvidence
    BatchDisassociateAssessmentReportEvidence (BatchDisassociateAssessmentReportEvidence'),
    newBatchDisassociateAssessmentReportEvidence,
    BatchDisassociateAssessmentReportEvidenceResponse (BatchDisassociateAssessmentReportEvidenceResponse'),
    newBatchDisassociateAssessmentReportEvidenceResponse,

    -- ** DeregisterOrganizationAdminAccount
    DeregisterOrganizationAdminAccount (DeregisterOrganizationAdminAccount'),
    newDeregisterOrganizationAdminAccount,
    DeregisterOrganizationAdminAccountResponse (DeregisterOrganizationAdminAccountResponse'),
    newDeregisterOrganizationAdminAccountResponse,

    -- ** GetAssessmentReportUrl
    GetAssessmentReportUrl (GetAssessmentReportUrl'),
    newGetAssessmentReportUrl,
    GetAssessmentReportUrlResponse (GetAssessmentReportUrlResponse'),
    newGetAssessmentReportUrlResponse,

    -- ** UpdateAssessmentControl
    UpdateAssessmentControl (UpdateAssessmentControl'),
    newUpdateAssessmentControl,
    UpdateAssessmentControlResponse (UpdateAssessmentControlResponse'),
    newUpdateAssessmentControlResponse,

    -- ** DeleteAssessmentFramework
    DeleteAssessmentFramework (DeleteAssessmentFramework'),
    newDeleteAssessmentFramework,
    DeleteAssessmentFrameworkResponse (DeleteAssessmentFrameworkResponse'),
    newDeleteAssessmentFrameworkResponse,

    -- ** UpdateAssessmentFramework
    UpdateAssessmentFramework (UpdateAssessmentFramework'),
    newUpdateAssessmentFramework,
    UpdateAssessmentFrameworkResponse (UpdateAssessmentFrameworkResponse'),
    newUpdateAssessmentFrameworkResponse,

    -- ** BatchAssociateAssessmentReportEvidence
    BatchAssociateAssessmentReportEvidence (BatchAssociateAssessmentReportEvidence'),
    newBatchAssociateAssessmentReportEvidence,
    BatchAssociateAssessmentReportEvidenceResponse (BatchAssociateAssessmentReportEvidenceResponse'),
    newBatchAssociateAssessmentReportEvidenceResponse,

    -- ** GetEvidenceByEvidenceFolder
    GetEvidenceByEvidenceFolder (GetEvidenceByEvidenceFolder'),
    newGetEvidenceByEvidenceFolder,
    GetEvidenceByEvidenceFolderResponse (GetEvidenceByEvidenceFolderResponse'),
    newGetEvidenceByEvidenceFolderResponse,

    -- ** CreateAssessmentFramework
    CreateAssessmentFramework (CreateAssessmentFramework'),
    newCreateAssessmentFramework,
    CreateAssessmentFrameworkResponse (CreateAssessmentFrameworkResponse'),
    newCreateAssessmentFrameworkResponse,

    -- ** ListKeywordsForDataSource
    ListKeywordsForDataSource (ListKeywordsForDataSource'),
    newListKeywordsForDataSource,
    ListKeywordsForDataSourceResponse (ListKeywordsForDataSourceResponse'),
    newListKeywordsForDataSourceResponse,

    -- ** ListAssessmentReports
    ListAssessmentReports (ListAssessmentReports'),
    newListAssessmentReports,
    ListAssessmentReportsResponse (ListAssessmentReportsResponse'),
    newListAssessmentReportsResponse,

    -- ** ValidateAssessmentReportIntegrity
    ValidateAssessmentReportIntegrity (ValidateAssessmentReportIntegrity'),
    newValidateAssessmentReportIntegrity,
    ValidateAssessmentReportIntegrityResponse (ValidateAssessmentReportIntegrityResponse'),
    newValidateAssessmentReportIntegrityResponse,

    -- ** DeregisterAccount
    DeregisterAccount (DeregisterAccount'),
    newDeregisterAccount,
    DeregisterAccountResponse (DeregisterAccountResponse'),
    newDeregisterAccountResponse,

    -- ** DeleteAssessmentReport
    DeleteAssessmentReport (DeleteAssessmentReport'),
    newDeleteAssessmentReport,
    DeleteAssessmentReportResponse (DeleteAssessmentReportResponse'),
    newDeleteAssessmentReportResponse,

    -- ** UpdateSettings
    UpdateSettings (UpdateSettings'),
    newUpdateSettings,
    UpdateSettingsResponse (UpdateSettingsResponse'),
    newUpdateSettingsResponse,

    -- ** GetAssessmentFramework
    GetAssessmentFramework (GetAssessmentFramework'),
    newGetAssessmentFramework,
    GetAssessmentFrameworkResponse (GetAssessmentFrameworkResponse'),
    newGetAssessmentFrameworkResponse,

    -- ** DeleteAssessment
    DeleteAssessment (DeleteAssessment'),
    newDeleteAssessment,
    DeleteAssessmentResponse (DeleteAssessmentResponse'),
    newDeleteAssessmentResponse,

    -- ** GetChangeLogs
    GetChangeLogs (GetChangeLogs'),
    newGetChangeLogs,
    GetChangeLogsResponse (GetChangeLogsResponse'),
    newGetChangeLogsResponse,

    -- ** UpdateAssessment
    UpdateAssessment (UpdateAssessment'),
    newUpdateAssessment,
    UpdateAssessmentResponse (UpdateAssessmentResponse'),
    newUpdateAssessmentResponse,

    -- ** GetDelegations
    GetDelegations (GetDelegations'),
    newGetDelegations,
    GetDelegationsResponse (GetDelegationsResponse'),
    newGetDelegationsResponse,

    -- ** DisassociateAssessmentReportEvidenceFolder
    DisassociateAssessmentReportEvidenceFolder (DisassociateAssessmentReportEvidenceFolder'),
    newDisassociateAssessmentReportEvidenceFolder,
    DisassociateAssessmentReportEvidenceFolderResponse (DisassociateAssessmentReportEvidenceFolderResponse'),
    newDisassociateAssessmentReportEvidenceFolderResponse,

    -- ** ListAssessments
    ListAssessments (ListAssessments'),
    newListAssessments,
    ListAssessmentsResponse (ListAssessmentsResponse'),
    newListAssessmentsResponse,

    -- ** CreateAssessment
    CreateAssessment (CreateAssessment'),
    newCreateAssessment,
    CreateAssessmentResponse (CreateAssessmentResponse'),
    newCreateAssessmentResponse,

    -- ** GetEvidenceFoldersByAssessment
    GetEvidenceFoldersByAssessment (GetEvidenceFoldersByAssessment'),
    newGetEvidenceFoldersByAssessment,
    GetEvidenceFoldersByAssessmentResponse (GetEvidenceFoldersByAssessmentResponse'),
    newGetEvidenceFoldersByAssessmentResponse,

    -- ** RegisterAccount
    RegisterAccount (RegisterAccount'),
    newRegisterAccount,
    RegisterAccountResponse (RegisterAccountResponse'),
    newRegisterAccountResponse,

    -- ** GetAssessment
    GetAssessment (GetAssessment'),
    newGetAssessment,
    GetAssessmentResponse (GetAssessmentResponse'),
    newGetAssessmentResponse,

    -- ** BatchImportEvidenceToAssessmentControl
    BatchImportEvidenceToAssessmentControl (BatchImportEvidenceToAssessmentControl'),
    newBatchImportEvidenceToAssessmentControl,
    BatchImportEvidenceToAssessmentControlResponse (BatchImportEvidenceToAssessmentControlResponse'),
    newBatchImportEvidenceToAssessmentControlResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** GetEvidenceFolder
    GetEvidenceFolder (GetEvidenceFolder'),
    newGetEvidenceFolder,
    GetEvidenceFolderResponse (GetEvidenceFolderResponse'),
    newGetEvidenceFolderResponse,

    -- ** ListAssessmentFrameworks
    ListAssessmentFrameworks (ListAssessmentFrameworks'),
    newListAssessmentFrameworks,
    ListAssessmentFrameworksResponse (ListAssessmentFrameworksResponse'),
    newListAssessmentFrameworksResponse,

    -- ** CreateControl
    CreateControl (CreateControl'),
    newCreateControl,
    CreateControlResponse (CreateControlResponse'),
    newCreateControlResponse,

    -- ** UpdateAssessmentStatus
    UpdateAssessmentStatus (UpdateAssessmentStatus'),
    newUpdateAssessmentStatus,
    UpdateAssessmentStatusResponse (UpdateAssessmentStatusResponse'),
    newUpdateAssessmentStatusResponse,

    -- ** GetAccountStatus
    GetAccountStatus (GetAccountStatus'),
    newGetAccountStatus,
    GetAccountStatusResponse (GetAccountStatusResponse'),
    newGetAccountStatusResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** GetSettings
    GetSettings (GetSettings'),
    newGetSettings,
    GetSettingsResponse (GetSettingsResponse'),
    newGetSettingsResponse,

    -- ** GetOrganizationAdminAccount
    GetOrganizationAdminAccount (GetOrganizationAdminAccount'),
    newGetOrganizationAdminAccount,
    GetOrganizationAdminAccountResponse (GetOrganizationAdminAccountResponse'),
    newGetOrganizationAdminAccountResponse,

    -- ** DeleteControl
    DeleteControl (DeleteControl'),
    newDeleteControl,
    DeleteControlResponse (DeleteControlResponse'),
    newDeleteControlResponse,

    -- ** UpdateControl
    UpdateControl (UpdateControl'),
    newUpdateControl,
    UpdateControlResponse (UpdateControlResponse'),
    newUpdateControlResponse,

    -- ** UpdateAssessmentControlSetStatus
    UpdateAssessmentControlSetStatus (UpdateAssessmentControlSetStatus'),
    newUpdateAssessmentControlSetStatus,
    UpdateAssessmentControlSetStatusResponse (UpdateAssessmentControlSetStatusResponse'),
    newUpdateAssessmentControlSetStatusResponse,

    -- ** ListControls
    ListControls (ListControls'),
    newListControls,
    ListControlsResponse (ListControlsResponse'),
    newListControlsResponse,

    -- ** AssociateAssessmentReportEvidenceFolder
    AssociateAssessmentReportEvidenceFolder (AssociateAssessmentReportEvidenceFolder'),
    newAssociateAssessmentReportEvidenceFolder,
    AssociateAssessmentReportEvidenceFolderResponse (AssociateAssessmentReportEvidenceFolderResponse'),
    newAssociateAssessmentReportEvidenceFolderResponse,

    -- ** GetControl
    GetControl (GetControl'),
    newGetControl,
    GetControlResponse (GetControlResponse'),
    newGetControlResponse,

    -- * Types

    -- ** AccountStatus
    AccountStatus (..),

    -- ** ActionEnum
    ActionEnum (..),

    -- ** AssessmentReportDestinationType
    AssessmentReportDestinationType (..),

    -- ** AssessmentReportStatus
    AssessmentReportStatus (..),

    -- ** AssessmentStatus
    AssessmentStatus (..),

    -- ** ControlResponse
    ControlResponse (..),

    -- ** ControlSetStatus
    ControlSetStatus (..),

    -- ** ControlStatus
    ControlStatus (..),

    -- ** ControlType
    ControlType (..),

    -- ** DelegationStatus
    DelegationStatus (..),

    -- ** FrameworkType
    FrameworkType (..),

    -- ** KeywordInputType
    KeywordInputType (..),

    -- ** ObjectTypeEnum
    ObjectTypeEnum (..),

    -- ** RoleType
    RoleType (..),

    -- ** SettingAttribute
    SettingAttribute (..),

    -- ** SourceFrequency
    SourceFrequency (..),

    -- ** SourceSetUpOption
    SourceSetUpOption (..),

    -- ** SourceType
    SourceType (..),

    -- ** AWSAccount
    AWSAccount (AWSAccount'),
    newAWSAccount,

    -- ** AWSService
    AWSService (AWSService'),
    newAWSService,

    -- ** Assessment
    Assessment (Assessment'),
    newAssessment,

    -- ** AssessmentControl
    AssessmentControl (AssessmentControl'),
    newAssessmentControl,

    -- ** AssessmentControlSet
    AssessmentControlSet (AssessmentControlSet'),
    newAssessmentControlSet,

    -- ** AssessmentEvidenceFolder
    AssessmentEvidenceFolder (AssessmentEvidenceFolder'),
    newAssessmentEvidenceFolder,

    -- ** AssessmentFramework
    AssessmentFramework (AssessmentFramework'),
    newAssessmentFramework,

    -- ** AssessmentFrameworkMetadata
    AssessmentFrameworkMetadata (AssessmentFrameworkMetadata'),
    newAssessmentFrameworkMetadata,

    -- ** AssessmentMetadata
    AssessmentMetadata (AssessmentMetadata'),
    newAssessmentMetadata,

    -- ** AssessmentMetadataItem
    AssessmentMetadataItem (AssessmentMetadataItem'),
    newAssessmentMetadataItem,

    -- ** AssessmentReport
    AssessmentReport (AssessmentReport'),
    newAssessmentReport,

    -- ** AssessmentReportEvidenceError
    AssessmentReportEvidenceError (AssessmentReportEvidenceError'),
    newAssessmentReportEvidenceError,

    -- ** AssessmentReportMetadata
    AssessmentReportMetadata (AssessmentReportMetadata'),
    newAssessmentReportMetadata,

    -- ** AssessmentReportsDestination
    AssessmentReportsDestination (AssessmentReportsDestination'),
    newAssessmentReportsDestination,

    -- ** BatchCreateDelegationByAssessmentError
    BatchCreateDelegationByAssessmentError (BatchCreateDelegationByAssessmentError'),
    newBatchCreateDelegationByAssessmentError,

    -- ** BatchDeleteDelegationByAssessmentError
    BatchDeleteDelegationByAssessmentError (BatchDeleteDelegationByAssessmentError'),
    newBatchDeleteDelegationByAssessmentError,

    -- ** BatchImportEvidenceToAssessmentControlError
    BatchImportEvidenceToAssessmentControlError (BatchImportEvidenceToAssessmentControlError'),
    newBatchImportEvidenceToAssessmentControlError,

    -- ** ChangeLog
    ChangeLog (ChangeLog'),
    newChangeLog,

    -- ** Control
    Control (Control'),
    newControl,

    -- ** ControlComment
    ControlComment (ControlComment'),
    newControlComment,

    -- ** ControlMappingSource
    ControlMappingSource (ControlMappingSource'),
    newControlMappingSource,

    -- ** ControlMetadata
    ControlMetadata (ControlMetadata'),
    newControlMetadata,

    -- ** ControlSet
    ControlSet (ControlSet'),
    newControlSet,

    -- ** CreateAssessmentFrameworkControl
    CreateAssessmentFrameworkControl (CreateAssessmentFrameworkControl'),
    newCreateAssessmentFrameworkControl,

    -- ** CreateAssessmentFrameworkControlSet
    CreateAssessmentFrameworkControlSet (CreateAssessmentFrameworkControlSet'),
    newCreateAssessmentFrameworkControlSet,

    -- ** CreateControlMappingSource
    CreateControlMappingSource (CreateControlMappingSource'),
    newCreateControlMappingSource,

    -- ** CreateDelegationRequest
    CreateDelegationRequest (CreateDelegationRequest'),
    newCreateDelegationRequest,

    -- ** Delegation
    Delegation (Delegation'),
    newDelegation,

    -- ** DelegationMetadata
    DelegationMetadata (DelegationMetadata'),
    newDelegationMetadata,

    -- ** Evidence
    Evidence (Evidence'),
    newEvidence,

    -- ** Framework
    Framework (Framework'),
    newFramework,

    -- ** FrameworkMetadata
    FrameworkMetadata (FrameworkMetadata'),
    newFrameworkMetadata,

    -- ** ManualEvidence
    ManualEvidence (ManualEvidence'),
    newManualEvidence,

    -- ** Notification
    Notification (Notification'),
    newNotification,

    -- ** Resource
    Resource (Resource'),
    newResource,

    -- ** Role
    Role (Role'),
    newRole,

    -- ** Scope
    Scope (Scope'),
    newScope,

    -- ** ServiceMetadata
    ServiceMetadata (ServiceMetadata'),
    newServiceMetadata,

    -- ** Settings
    Settings (Settings'),
    newSettings,

    -- ** SourceKeyword
    SourceKeyword (SourceKeyword'),
    newSourceKeyword,

    -- ** URL
    URL (URL'),
    newURL,

    -- ** UpdateAssessmentFrameworkControlSet
    UpdateAssessmentFrameworkControlSet (UpdateAssessmentFrameworkControlSet'),
    newUpdateAssessmentFrameworkControlSet,
  )
where

import Network.AWS.AuditManager.AssociateAssessmentReportEvidenceFolder
import Network.AWS.AuditManager.BatchAssociateAssessmentReportEvidence
import Network.AWS.AuditManager.BatchCreateDelegationByAssessment
import Network.AWS.AuditManager.BatchDeleteDelegationByAssessment
import Network.AWS.AuditManager.BatchDisassociateAssessmentReportEvidence
import Network.AWS.AuditManager.BatchImportEvidenceToAssessmentControl
import Network.AWS.AuditManager.CreateAssessment
import Network.AWS.AuditManager.CreateAssessmentFramework
import Network.AWS.AuditManager.CreateAssessmentReport
import Network.AWS.AuditManager.CreateControl
import Network.AWS.AuditManager.DeleteAssessment
import Network.AWS.AuditManager.DeleteAssessmentFramework
import Network.AWS.AuditManager.DeleteAssessmentReport
import Network.AWS.AuditManager.DeleteControl
import Network.AWS.AuditManager.DeregisterAccount
import Network.AWS.AuditManager.DeregisterOrganizationAdminAccount
import Network.AWS.AuditManager.DisassociateAssessmentReportEvidenceFolder
import Network.AWS.AuditManager.GetAccountStatus
import Network.AWS.AuditManager.GetAssessment
import Network.AWS.AuditManager.GetAssessmentFramework
import Network.AWS.AuditManager.GetAssessmentReportUrl
import Network.AWS.AuditManager.GetChangeLogs
import Network.AWS.AuditManager.GetControl
import Network.AWS.AuditManager.GetDelegations
import Network.AWS.AuditManager.GetEvidence
import Network.AWS.AuditManager.GetEvidenceByEvidenceFolder
import Network.AWS.AuditManager.GetEvidenceFolder
import Network.AWS.AuditManager.GetEvidenceFoldersByAssessment
import Network.AWS.AuditManager.GetEvidenceFoldersByAssessmentControl
import Network.AWS.AuditManager.GetOrganizationAdminAccount
import Network.AWS.AuditManager.GetServicesInScope
import Network.AWS.AuditManager.GetSettings
import Network.AWS.AuditManager.Lens
import Network.AWS.AuditManager.ListAssessmentFrameworks
import Network.AWS.AuditManager.ListAssessmentReports
import Network.AWS.AuditManager.ListAssessments
import Network.AWS.AuditManager.ListControls
import Network.AWS.AuditManager.ListKeywordsForDataSource
import Network.AWS.AuditManager.ListNotifications
import Network.AWS.AuditManager.ListTagsForResource
import Network.AWS.AuditManager.RegisterAccount
import Network.AWS.AuditManager.RegisterOrganizationAdminAccount
import Network.AWS.AuditManager.TagResource
import Network.AWS.AuditManager.Types
import Network.AWS.AuditManager.UntagResource
import Network.AWS.AuditManager.UpdateAssessment
import Network.AWS.AuditManager.UpdateAssessmentControl
import Network.AWS.AuditManager.UpdateAssessmentControlSetStatus
import Network.AWS.AuditManager.UpdateAssessmentFramework
import Network.AWS.AuditManager.UpdateAssessmentStatus
import Network.AWS.AuditManager.UpdateControl
import Network.AWS.AuditManager.UpdateSettings
import Network.AWS.AuditManager.ValidateAssessmentReportIntegrity
import Network.AWS.AuditManager.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'AuditManager'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
