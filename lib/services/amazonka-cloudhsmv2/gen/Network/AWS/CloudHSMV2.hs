{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.CloudHSMV2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-04-28@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- For more information about AWS CloudHSM, see
-- <http://aws.amazon.com/cloudhsm/ AWS CloudHSM> and the
-- <https://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide>.
module Network.AWS.CloudHSMV2
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** CloudHsmInternalFailureException
    _CloudHsmInternalFailureException,

    -- ** CloudHsmServiceException
    _CloudHsmServiceException,

    -- ** CloudHsmInvalidRequestException
    _CloudHsmInvalidRequestException,

    -- ** CloudHsmAccessDeniedException
    _CloudHsmAccessDeniedException,

    -- ** CloudHsmResourceNotFoundException
    _CloudHsmResourceNotFoundException,

    -- ** CloudHsmTagException
    _CloudHsmTagException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeClusters (Paginated)
    DescribeClusters (DescribeClusters'),
    newDescribeClusters,
    DescribeClustersResponse (DescribeClustersResponse'),
    newDescribeClustersResponse,

    -- ** DeleteBackup
    DeleteBackup (DeleteBackup'),
    newDeleteBackup,
    DeleteBackupResponse (DeleteBackupResponse'),
    newDeleteBackupResponse,

    -- ** InitializeCluster
    InitializeCluster (InitializeCluster'),
    newInitializeCluster,
    InitializeClusterResponse (InitializeClusterResponse'),
    newInitializeClusterResponse,

    -- ** CreateHsm
    CreateHsm (CreateHsm'),
    newCreateHsm,
    CreateHsmResponse (CreateHsmResponse'),
    newCreateHsmResponse,

    -- ** DescribeBackups (Paginated)
    DescribeBackups (DescribeBackups'),
    newDescribeBackups,
    DescribeBackupsResponse (DescribeBackupsResponse'),
    newDescribeBackupsResponse,

    -- ** CopyBackupToRegion
    CopyBackupToRegion (CopyBackupToRegion'),
    newCopyBackupToRegion,
    CopyBackupToRegionResponse (CopyBackupToRegionResponse'),
    newCopyBackupToRegionResponse,

    -- ** DeleteCluster
    DeleteCluster (DeleteCluster'),
    newDeleteCluster,
    DeleteClusterResponse (DeleteClusterResponse'),
    newDeleteClusterResponse,

    -- ** CreateCluster
    CreateCluster (CreateCluster'),
    newCreateCluster,
    CreateClusterResponse (CreateClusterResponse'),
    newCreateClusterResponse,

    -- ** RestoreBackup
    RestoreBackup (RestoreBackup'),
    newRestoreBackup,
    RestoreBackupResponse (RestoreBackupResponse'),
    newRestoreBackupResponse,

    -- ** DeleteHsm
    DeleteHsm (DeleteHsm'),
    newDeleteHsm,
    DeleteHsmResponse (DeleteHsmResponse'),
    newDeleteHsmResponse,

    -- ** ModifyCluster
    ModifyCluster (ModifyCluster'),
    newModifyCluster,
    ModifyClusterResponse (ModifyClusterResponse'),
    newModifyClusterResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** ListTags (Paginated)
    ListTags (ListTags'),
    newListTags,
    ListTagsResponse (ListTagsResponse'),
    newListTagsResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** ModifyBackupAttributes
    ModifyBackupAttributes (ModifyBackupAttributes'),
    newModifyBackupAttributes,
    ModifyBackupAttributesResponse (ModifyBackupAttributesResponse'),
    newModifyBackupAttributesResponse,

    -- * Types

    -- ** BackupPolicy
    BackupPolicy (..),

    -- ** BackupRetentionType
    BackupRetentionType (..),

    -- ** BackupState
    BackupState (..),

    -- ** ClusterState
    ClusterState (..),

    -- ** HsmState
    HsmState (..),

    -- ** Backup
    Backup (Backup'),
    newBackup,

    -- ** BackupRetentionPolicy
    BackupRetentionPolicy (BackupRetentionPolicy'),
    newBackupRetentionPolicy,

    -- ** Certificates
    Certificates (Certificates'),
    newCertificates,

    -- ** Cluster
    Cluster (Cluster'),
    newCluster,

    -- ** DestinationBackup
    DestinationBackup (DestinationBackup'),
    newDestinationBackup,

    -- ** Hsm
    Hsm (Hsm'),
    newHsm,

    -- ** Tag
    Tag (Tag'),
    newTag,
  )
where

import Network.AWS.CloudHSMV2.CopyBackupToRegion
import Network.AWS.CloudHSMV2.CreateCluster
import Network.AWS.CloudHSMV2.CreateHsm
import Network.AWS.CloudHSMV2.DeleteBackup
import Network.AWS.CloudHSMV2.DeleteCluster
import Network.AWS.CloudHSMV2.DeleteHsm
import Network.AWS.CloudHSMV2.DescribeBackups
import Network.AWS.CloudHSMV2.DescribeClusters
import Network.AWS.CloudHSMV2.InitializeCluster
import Network.AWS.CloudHSMV2.Lens
import Network.AWS.CloudHSMV2.ListTags
import Network.AWS.CloudHSMV2.ModifyBackupAttributes
import Network.AWS.CloudHSMV2.ModifyCluster
import Network.AWS.CloudHSMV2.RestoreBackup
import Network.AWS.CloudHSMV2.TagResource
import Network.AWS.CloudHSMV2.Types
import Network.AWS.CloudHSMV2.UntagResource
import Network.AWS.CloudHSMV2.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudHSMV2'.

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
