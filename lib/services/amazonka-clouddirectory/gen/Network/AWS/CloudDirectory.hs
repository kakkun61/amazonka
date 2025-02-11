{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.AWS.CloudDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2017-01-11@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Amazon Cloud Directory
--
-- Amazon Cloud Directory is a component of the AWS Directory Service that
-- simplifies the development and management of cloud-scale web, mobile,
-- and IoT applications. This guide describes the Cloud Directory
-- operations that you can call programmatically and includes detailed
-- information on data types and errors. For information about Cloud
-- Directory features, see
-- <https://aws.amazon.com/directoryservice/ AWS Directory Service> and the
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html Amazon Cloud Directory Developer Guide>.
module Network.AWS.CloudDirectory
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** UnsupportedIndexTypeException
    _UnsupportedIndexTypeException,

    -- ** NotIndexException
    _NotIndexException,

    -- ** ValidationException
    _ValidationException,

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** FacetAlreadyExistsException
    _FacetAlreadyExistsException,

    -- ** InvalidSchemaDocException
    _InvalidSchemaDocException,

    -- ** InvalidAttachmentException
    _InvalidAttachmentException,

    -- ** CannotListParentOfRootException
    _CannotListParentOfRootException,

    -- ** NotPolicyException
    _NotPolicyException,

    -- ** InvalidTaggingRequestException
    _InvalidTaggingRequestException,

    -- ** InvalidFacetUpdateException
    _InvalidFacetUpdateException,

    -- ** InvalidRuleException
    _InvalidRuleException,

    -- ** SchemaAlreadyPublishedException
    _SchemaAlreadyPublishedException,

    -- ** DirectoryAlreadyExistsException
    _DirectoryAlreadyExistsException,

    -- ** DirectoryNotDisabledException
    _DirectoryNotDisabledException,

    -- ** BatchWriteException
    _BatchWriteException,

    -- ** DirectoryNotEnabledException
    _DirectoryNotEnabledException,

    -- ** FacetInUseException
    _FacetInUseException,

    -- ** FacetValidationException
    _FacetValidationException,

    -- ** StillContainsLinksException
    _StillContainsLinksException,

    -- ** IncompatibleSchemaException
    _IncompatibleSchemaException,

    -- ** NotNodeException
    _NotNodeException,

    -- ** InvalidNextTokenException
    _InvalidNextTokenException,

    -- ** ObjectAlreadyDetachedException
    _ObjectAlreadyDetachedException,

    -- ** LinkNameAlreadyInUseException
    _LinkNameAlreadyInUseException,

    -- ** InternalServiceException
    _InternalServiceException,

    -- ** SchemaAlreadyExistsException
    _SchemaAlreadyExistsException,

    -- ** IndexedAttributeMissingException
    _IndexedAttributeMissingException,

    -- ** DirectoryDeletedException
    _DirectoryDeletedException,

    -- ** RetryableConflictException
    _RetryableConflictException,

    -- ** InvalidArnException
    _InvalidArnException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** FacetNotFoundException
    _FacetNotFoundException,

    -- ** LimitExceededException
    _LimitExceededException,

    -- ** ObjectNotDetachedException
    _ObjectNotDetachedException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ListTypedLinkFacetAttributes (Paginated)
    ListTypedLinkFacetAttributes (ListTypedLinkFacetAttributes'),
    newListTypedLinkFacetAttributes,
    ListTypedLinkFacetAttributesResponse (ListTypedLinkFacetAttributesResponse'),
    newListTypedLinkFacetAttributesResponse,

    -- ** DeleteObject
    DeleteObject (DeleteObject'),
    newDeleteObject,
    DeleteObjectResponse (DeleteObjectResponse'),
    newDeleteObjectResponse,

    -- ** ListIndex (Paginated)
    ListIndex (ListIndex'),
    newListIndex,
    ListIndexResponse (ListIndexResponse'),
    newListIndexResponse,

    -- ** UpgradeAppliedSchema
    UpgradeAppliedSchema (UpgradeAppliedSchema'),
    newUpgradeAppliedSchema,
    UpgradeAppliedSchemaResponse (UpgradeAppliedSchemaResponse'),
    newUpgradeAppliedSchemaResponse,

    -- ** GetDirectory
    GetDirectory (GetDirectory'),
    newGetDirectory,
    GetDirectoryResponse (GetDirectoryResponse'),
    newGetDirectoryResponse,

    -- ** GetObjectInformation
    GetObjectInformation (GetObjectInformation'),
    newGetObjectInformation,
    GetObjectInformationResponse (GetObjectInformationResponse'),
    newGetObjectInformationResponse,

    -- ** ListAttachedIndices (Paginated)
    ListAttachedIndices (ListAttachedIndices'),
    newListAttachedIndices,
    ListAttachedIndicesResponse (ListAttachedIndicesResponse'),
    newListAttachedIndicesResponse,

    -- ** DetachFromIndex
    DetachFromIndex (DetachFromIndex'),
    newDetachFromIndex,
    DetachFromIndexResponse (DetachFromIndexResponse'),
    newDetachFromIndexResponse,

    -- ** LookupPolicy (Paginated)
    LookupPolicy (LookupPolicy'),
    newLookupPolicy,
    LookupPolicyResponse (LookupPolicyResponse'),
    newLookupPolicyResponse,

    -- ** ListTagsForResource (Paginated)
    ListTagsForResource (ListTagsForResource'),
    newListTagsForResource,
    ListTagsForResourceResponse (ListTagsForResourceResponse'),
    newListTagsForResourceResponse,

    -- ** ListPublishedSchemaArns (Paginated)
    ListPublishedSchemaArns (ListPublishedSchemaArns'),
    newListPublishedSchemaArns,
    ListPublishedSchemaArnsResponse (ListPublishedSchemaArnsResponse'),
    newListPublishedSchemaArnsResponse,

    -- ** ListDirectories (Paginated)
    ListDirectories (ListDirectories'),
    newListDirectories,
    ListDirectoriesResponse (ListDirectoriesResponse'),
    newListDirectoriesResponse,

    -- ** CreateTypedLinkFacet
    CreateTypedLinkFacet (CreateTypedLinkFacet'),
    newCreateTypedLinkFacet,
    CreateTypedLinkFacetResponse (CreateTypedLinkFacetResponse'),
    newCreateTypedLinkFacetResponse,

    -- ** ListObjectParentPaths (Paginated)
    ListObjectParentPaths (ListObjectParentPaths'),
    newListObjectParentPaths,
    ListObjectParentPathsResponse (ListObjectParentPathsResponse'),
    newListObjectParentPathsResponse,

    -- ** DisableDirectory
    DisableDirectory (DisableDirectory'),
    newDisableDirectory,
    DisableDirectoryResponse (DisableDirectoryResponse'),
    newDisableDirectoryResponse,

    -- ** CreateDirectory
    CreateDirectory (CreateDirectory'),
    newCreateDirectory,
    CreateDirectoryResponse (CreateDirectoryResponse'),
    newCreateDirectoryResponse,

    -- ** ListFacetAttributes (Paginated)
    ListFacetAttributes (ListFacetAttributes'),
    newListFacetAttributes,
    ListFacetAttributesResponse (ListFacetAttributesResponse'),
    newListFacetAttributesResponse,

    -- ** ListManagedSchemaArns (Paginated)
    ListManagedSchemaArns (ListManagedSchemaArns'),
    newListManagedSchemaArns,
    ListManagedSchemaArnsResponse (ListManagedSchemaArnsResponse'),
    newListManagedSchemaArnsResponse,

    -- ** UpdateTypedLinkFacet
    UpdateTypedLinkFacet (UpdateTypedLinkFacet'),
    newUpdateTypedLinkFacet,
    UpdateTypedLinkFacetResponse (UpdateTypedLinkFacetResponse'),
    newUpdateTypedLinkFacetResponse,

    -- ** DeleteTypedLinkFacet
    DeleteTypedLinkFacet (DeleteTypedLinkFacet'),
    newDeleteTypedLinkFacet,
    DeleteTypedLinkFacetResponse (DeleteTypedLinkFacetResponse'),
    newDeleteTypedLinkFacetResponse,

    -- ** GetAppliedSchemaVersion
    GetAppliedSchemaVersion (GetAppliedSchemaVersion'),
    newGetAppliedSchemaVersion,
    GetAppliedSchemaVersionResponse (GetAppliedSchemaVersionResponse'),
    newGetAppliedSchemaVersionResponse,

    -- ** RemoveFacetFromObject
    RemoveFacetFromObject (RemoveFacetFromObject'),
    newRemoveFacetFromObject,
    RemoveFacetFromObjectResponse (RemoveFacetFromObjectResponse'),
    newRemoveFacetFromObjectResponse,

    -- ** EnableDirectory
    EnableDirectory (EnableDirectory'),
    newEnableDirectory,
    EnableDirectoryResponse (EnableDirectoryResponse'),
    newEnableDirectoryResponse,

    -- ** ListObjectAttributes (Paginated)
    ListObjectAttributes (ListObjectAttributes'),
    newListObjectAttributes,
    ListObjectAttributesResponse (ListObjectAttributesResponse'),
    newListObjectAttributesResponse,

    -- ** ListAppliedSchemaArns (Paginated)
    ListAppliedSchemaArns (ListAppliedSchemaArns'),
    newListAppliedSchemaArns,
    ListAppliedSchemaArnsResponse (ListAppliedSchemaArnsResponse'),
    newListAppliedSchemaArnsResponse,

    -- ** ListIncomingTypedLinks (Paginated)
    ListIncomingTypedLinks (ListIncomingTypedLinks'),
    newListIncomingTypedLinks,
    ListIncomingTypedLinksResponse (ListIncomingTypedLinksResponse'),
    newListIncomingTypedLinksResponse,

    -- ** GetFacet
    GetFacet (GetFacet'),
    newGetFacet,
    GetFacetResponse (GetFacetResponse'),
    newGetFacetResponse,

    -- ** GetTypedLinkFacetInformation
    GetTypedLinkFacetInformation (GetTypedLinkFacetInformation'),
    newGetTypedLinkFacetInformation,
    GetTypedLinkFacetInformationResponse (GetTypedLinkFacetInformationResponse'),
    newGetTypedLinkFacetInformationResponse,

    -- ** ListDevelopmentSchemaArns (Paginated)
    ListDevelopmentSchemaArns (ListDevelopmentSchemaArns'),
    newListDevelopmentSchemaArns,
    ListDevelopmentSchemaArnsResponse (ListDevelopmentSchemaArnsResponse'),
    newListDevelopmentSchemaArnsResponse,

    -- ** AttachObject
    AttachObject (AttachObject'),
    newAttachObject,
    AttachObjectResponse (AttachObjectResponse'),
    newAttachObjectResponse,

    -- ** BatchWrite
    BatchWrite (BatchWrite'),
    newBatchWrite,
    BatchWriteResponse (BatchWriteResponse'),
    newBatchWriteResponse,

    -- ** CreateObject
    CreateObject (CreateObject'),
    newCreateObject,
    CreateObjectResponse (CreateObjectResponse'),
    newCreateObjectResponse,

    -- ** UpgradePublishedSchema
    UpgradePublishedSchema (UpgradePublishedSchema'),
    newUpgradePublishedSchema,
    UpgradePublishedSchemaResponse (UpgradePublishedSchemaResponse'),
    newUpgradePublishedSchemaResponse,

    -- ** CreateFacet
    CreateFacet (CreateFacet'),
    newCreateFacet,
    CreateFacetResponse (CreateFacetResponse'),
    newCreateFacetResponse,

    -- ** GetLinkAttributes
    GetLinkAttributes (GetLinkAttributes'),
    newGetLinkAttributes,
    GetLinkAttributesResponse (GetLinkAttributesResponse'),
    newGetLinkAttributesResponse,

    -- ** GetObjectAttributes
    GetObjectAttributes (GetObjectAttributes'),
    newGetObjectAttributes,
    GetObjectAttributesResponse (GetObjectAttributesResponse'),
    newGetObjectAttributesResponse,

    -- ** DeleteFacet
    DeleteFacet (DeleteFacet'),
    newDeleteFacet,
    DeleteFacetResponse (DeleteFacetResponse'),
    newDeleteFacetResponse,

    -- ** UpdateFacet
    UpdateFacet (UpdateFacet'),
    newUpdateFacet,
    UpdateFacetResponse (UpdateFacetResponse'),
    newUpdateFacetResponse,

    -- ** ListObjectChildren
    ListObjectChildren (ListObjectChildren'),
    newListObjectChildren,
    ListObjectChildrenResponse (ListObjectChildrenResponse'),
    newListObjectChildrenResponse,

    -- ** ListTypedLinkFacetNames (Paginated)
    ListTypedLinkFacetNames (ListTypedLinkFacetNames'),
    newListTypedLinkFacetNames,
    ListTypedLinkFacetNamesResponse (ListTypedLinkFacetNamesResponse'),
    newListTypedLinkFacetNamesResponse,

    -- ** AttachTypedLink
    AttachTypedLink (AttachTypedLink'),
    newAttachTypedLink,
    AttachTypedLinkResponse (AttachTypedLinkResponse'),
    newAttachTypedLinkResponse,

    -- ** DetachPolicy
    DetachPolicy (DetachPolicy'),
    newDetachPolicy,
    DetachPolicyResponse (DetachPolicyResponse'),
    newDetachPolicyResponse,

    -- ** CreateIndex
    CreateIndex (CreateIndex'),
    newCreateIndex,
    CreateIndexResponse (CreateIndexResponse'),
    newCreateIndexResponse,

    -- ** DetachObject
    DetachObject (DetachObject'),
    newDetachObject,
    DetachObjectResponse (DetachObjectResponse'),
    newDetachObjectResponse,

    -- ** AddFacetToObject
    AddFacetToObject (AddFacetToObject'),
    newAddFacetToObject,
    AddFacetToObjectResponse (AddFacetToObjectResponse'),
    newAddFacetToObjectResponse,

    -- ** ApplySchema
    ApplySchema (ApplySchema'),
    newApplySchema,
    ApplySchemaResponse (ApplySchemaResponse'),
    newApplySchemaResponse,

    -- ** CreateSchema
    CreateSchema (CreateSchema'),
    newCreateSchema,
    CreateSchemaResponse (CreateSchemaResponse'),
    newCreateSchemaResponse,

    -- ** GetSchemaAsJson
    GetSchemaAsJson (GetSchemaAsJson'),
    newGetSchemaAsJson,
    GetSchemaAsJsonResponse (GetSchemaAsJsonResponse'),
    newGetSchemaAsJsonResponse,

    -- ** PublishSchema
    PublishSchema (PublishSchema'),
    newPublishSchema,
    PublishSchemaResponse (PublishSchemaResponse'),
    newPublishSchemaResponse,

    -- ** DeleteDirectory
    DeleteDirectory (DeleteDirectory'),
    newDeleteDirectory,
    DeleteDirectoryResponse (DeleteDirectoryResponse'),
    newDeleteDirectoryResponse,

    -- ** ListObjectParents
    ListObjectParents (ListObjectParents'),
    newListObjectParents,
    ListObjectParentsResponse (ListObjectParentsResponse'),
    newListObjectParentsResponse,

    -- ** ListPolicyAttachments (Paginated)
    ListPolicyAttachments (ListPolicyAttachments'),
    newListPolicyAttachments,
    ListPolicyAttachmentsResponse (ListPolicyAttachmentsResponse'),
    newListPolicyAttachmentsResponse,

    -- ** TagResource
    TagResource (TagResource'),
    newTagResource,
    TagResourceResponse (TagResourceResponse'),
    newTagResourceResponse,

    -- ** UpdateSchema
    UpdateSchema (UpdateSchema'),
    newUpdateSchema,
    UpdateSchemaResponse (UpdateSchemaResponse'),
    newUpdateSchemaResponse,

    -- ** DeleteSchema
    DeleteSchema (DeleteSchema'),
    newDeleteSchema,
    DeleteSchemaResponse (DeleteSchemaResponse'),
    newDeleteSchemaResponse,

    -- ** DetachTypedLink
    DetachTypedLink (DetachTypedLink'),
    newDetachTypedLink,
    DetachTypedLinkResponse (DetachTypedLinkResponse'),
    newDetachTypedLinkResponse,

    -- ** ListFacetNames (Paginated)
    ListFacetNames (ListFacetNames'),
    newListFacetNames,
    ListFacetNamesResponse (ListFacetNamesResponse'),
    newListFacetNamesResponse,

    -- ** UntagResource
    UntagResource (UntagResource'),
    newUntagResource,
    UntagResourceResponse (UntagResourceResponse'),
    newUntagResourceResponse,

    -- ** ListOutgoingTypedLinks (Paginated)
    ListOutgoingTypedLinks (ListOutgoingTypedLinks'),
    newListOutgoingTypedLinks,
    ListOutgoingTypedLinksResponse (ListOutgoingTypedLinksResponse'),
    newListOutgoingTypedLinksResponse,

    -- ** UpdateObjectAttributes
    UpdateObjectAttributes (UpdateObjectAttributes'),
    newUpdateObjectAttributes,
    UpdateObjectAttributesResponse (UpdateObjectAttributesResponse'),
    newUpdateObjectAttributesResponse,

    -- ** AttachPolicy
    AttachPolicy (AttachPolicy'),
    newAttachPolicy,
    AttachPolicyResponse (AttachPolicyResponse'),
    newAttachPolicyResponse,

    -- ** BatchRead
    BatchRead (BatchRead'),
    newBatchRead,
    BatchReadResponse (BatchReadResponse'),
    newBatchReadResponse,

    -- ** PutSchemaFromJson
    PutSchemaFromJson (PutSchemaFromJson'),
    newPutSchemaFromJson,
    PutSchemaFromJsonResponse (PutSchemaFromJsonResponse'),
    newPutSchemaFromJsonResponse,

    -- ** UpdateLinkAttributes
    UpdateLinkAttributes (UpdateLinkAttributes'),
    newUpdateLinkAttributes,
    UpdateLinkAttributesResponse (UpdateLinkAttributesResponse'),
    newUpdateLinkAttributesResponse,

    -- ** AttachToIndex
    AttachToIndex (AttachToIndex'),
    newAttachToIndex,
    AttachToIndexResponse (AttachToIndexResponse'),
    newAttachToIndexResponse,

    -- ** ListObjectPolicies (Paginated)
    ListObjectPolicies (ListObjectPolicies'),
    newListObjectPolicies,
    ListObjectPoliciesResponse (ListObjectPoliciesResponse'),
    newListObjectPoliciesResponse,

    -- * Types

    -- ** BatchReadExceptionType
    BatchReadExceptionType (..),

    -- ** ConsistencyLevel
    ConsistencyLevel (..),

    -- ** DirectoryState
    DirectoryState (..),

    -- ** FacetAttributeType
    FacetAttributeType (..),

    -- ** FacetStyle
    FacetStyle (..),

    -- ** ObjectType
    ObjectType (..),

    -- ** RangeMode
    RangeMode (..),

    -- ** RequiredAttributeBehavior
    RequiredAttributeBehavior (..),

    -- ** RuleType
    RuleType (..),

    -- ** UpdateActionType
    UpdateActionType (..),

    -- ** AttributeKey
    AttributeKey (AttributeKey'),
    newAttributeKey,

    -- ** AttributeKeyAndValue
    AttributeKeyAndValue (AttributeKeyAndValue'),
    newAttributeKeyAndValue,

    -- ** AttributeNameAndValue
    AttributeNameAndValue (AttributeNameAndValue'),
    newAttributeNameAndValue,

    -- ** BatchAddFacetToObject
    BatchAddFacetToObject (BatchAddFacetToObject'),
    newBatchAddFacetToObject,

    -- ** BatchAddFacetToObjectResponse
    BatchAddFacetToObjectResponse (BatchAddFacetToObjectResponse'),
    newBatchAddFacetToObjectResponse,

    -- ** BatchAttachObject
    BatchAttachObject (BatchAttachObject'),
    newBatchAttachObject,

    -- ** BatchAttachObjectResponse
    BatchAttachObjectResponse (BatchAttachObjectResponse'),
    newBatchAttachObjectResponse,

    -- ** BatchAttachPolicy
    BatchAttachPolicy (BatchAttachPolicy'),
    newBatchAttachPolicy,

    -- ** BatchAttachPolicyResponse
    BatchAttachPolicyResponse (BatchAttachPolicyResponse'),
    newBatchAttachPolicyResponse,

    -- ** BatchAttachToIndex
    BatchAttachToIndex (BatchAttachToIndex'),
    newBatchAttachToIndex,

    -- ** BatchAttachToIndexResponse
    BatchAttachToIndexResponse (BatchAttachToIndexResponse'),
    newBatchAttachToIndexResponse,

    -- ** BatchAttachTypedLink
    BatchAttachTypedLink (BatchAttachTypedLink'),
    newBatchAttachTypedLink,

    -- ** BatchAttachTypedLinkResponse
    BatchAttachTypedLinkResponse (BatchAttachTypedLinkResponse'),
    newBatchAttachTypedLinkResponse,

    -- ** BatchCreateIndex
    BatchCreateIndex (BatchCreateIndex'),
    newBatchCreateIndex,

    -- ** BatchCreateIndexResponse
    BatchCreateIndexResponse (BatchCreateIndexResponse'),
    newBatchCreateIndexResponse,

    -- ** BatchCreateObject
    BatchCreateObject (BatchCreateObject'),
    newBatchCreateObject,

    -- ** BatchCreateObjectResponse
    BatchCreateObjectResponse (BatchCreateObjectResponse'),
    newBatchCreateObjectResponse,

    -- ** BatchDeleteObject
    BatchDeleteObject (BatchDeleteObject'),
    newBatchDeleteObject,

    -- ** BatchDeleteObjectResponse
    BatchDeleteObjectResponse (BatchDeleteObjectResponse'),
    newBatchDeleteObjectResponse,

    -- ** BatchDetachFromIndex
    BatchDetachFromIndex (BatchDetachFromIndex'),
    newBatchDetachFromIndex,

    -- ** BatchDetachFromIndexResponse
    BatchDetachFromIndexResponse (BatchDetachFromIndexResponse'),
    newBatchDetachFromIndexResponse,

    -- ** BatchDetachObject
    BatchDetachObject (BatchDetachObject'),
    newBatchDetachObject,

    -- ** BatchDetachObjectResponse
    BatchDetachObjectResponse (BatchDetachObjectResponse'),
    newBatchDetachObjectResponse,

    -- ** BatchDetachPolicy
    BatchDetachPolicy (BatchDetachPolicy'),
    newBatchDetachPolicy,

    -- ** BatchDetachPolicyResponse
    BatchDetachPolicyResponse (BatchDetachPolicyResponse'),
    newBatchDetachPolicyResponse,

    -- ** BatchDetachTypedLink
    BatchDetachTypedLink (BatchDetachTypedLink'),
    newBatchDetachTypedLink,

    -- ** BatchDetachTypedLinkResponse
    BatchDetachTypedLinkResponse (BatchDetachTypedLinkResponse'),
    newBatchDetachTypedLinkResponse,

    -- ** BatchGetLinkAttributes
    BatchGetLinkAttributes (BatchGetLinkAttributes'),
    newBatchGetLinkAttributes,

    -- ** BatchGetLinkAttributesResponse
    BatchGetLinkAttributesResponse (BatchGetLinkAttributesResponse'),
    newBatchGetLinkAttributesResponse,

    -- ** BatchGetObjectAttributes
    BatchGetObjectAttributes (BatchGetObjectAttributes'),
    newBatchGetObjectAttributes,

    -- ** BatchGetObjectAttributesResponse
    BatchGetObjectAttributesResponse (BatchGetObjectAttributesResponse'),
    newBatchGetObjectAttributesResponse,

    -- ** BatchGetObjectInformation
    BatchGetObjectInformation (BatchGetObjectInformation'),
    newBatchGetObjectInformation,

    -- ** BatchGetObjectInformationResponse
    BatchGetObjectInformationResponse (BatchGetObjectInformationResponse'),
    newBatchGetObjectInformationResponse,

    -- ** BatchListAttachedIndices
    BatchListAttachedIndices (BatchListAttachedIndices'),
    newBatchListAttachedIndices,

    -- ** BatchListAttachedIndicesResponse
    BatchListAttachedIndicesResponse (BatchListAttachedIndicesResponse'),
    newBatchListAttachedIndicesResponse,

    -- ** BatchListIncomingTypedLinks
    BatchListIncomingTypedLinks (BatchListIncomingTypedLinks'),
    newBatchListIncomingTypedLinks,

    -- ** BatchListIncomingTypedLinksResponse
    BatchListIncomingTypedLinksResponse (BatchListIncomingTypedLinksResponse'),
    newBatchListIncomingTypedLinksResponse,

    -- ** BatchListIndex
    BatchListIndex (BatchListIndex'),
    newBatchListIndex,

    -- ** BatchListIndexResponse
    BatchListIndexResponse (BatchListIndexResponse'),
    newBatchListIndexResponse,

    -- ** BatchListObjectAttributes
    BatchListObjectAttributes (BatchListObjectAttributes'),
    newBatchListObjectAttributes,

    -- ** BatchListObjectAttributesResponse
    BatchListObjectAttributesResponse (BatchListObjectAttributesResponse'),
    newBatchListObjectAttributesResponse,

    -- ** BatchListObjectChildren
    BatchListObjectChildren (BatchListObjectChildren'),
    newBatchListObjectChildren,

    -- ** BatchListObjectChildrenResponse
    BatchListObjectChildrenResponse (BatchListObjectChildrenResponse'),
    newBatchListObjectChildrenResponse,

    -- ** BatchListObjectParentPaths
    BatchListObjectParentPaths (BatchListObjectParentPaths'),
    newBatchListObjectParentPaths,

    -- ** BatchListObjectParentPathsResponse
    BatchListObjectParentPathsResponse (BatchListObjectParentPathsResponse'),
    newBatchListObjectParentPathsResponse,

    -- ** BatchListObjectParents
    BatchListObjectParents (BatchListObjectParents'),
    newBatchListObjectParents,

    -- ** BatchListObjectParentsResponse
    BatchListObjectParentsResponse (BatchListObjectParentsResponse'),
    newBatchListObjectParentsResponse,

    -- ** BatchListObjectPolicies
    BatchListObjectPolicies (BatchListObjectPolicies'),
    newBatchListObjectPolicies,

    -- ** BatchListObjectPoliciesResponse
    BatchListObjectPoliciesResponse (BatchListObjectPoliciesResponse'),
    newBatchListObjectPoliciesResponse,

    -- ** BatchListOutgoingTypedLinks
    BatchListOutgoingTypedLinks (BatchListOutgoingTypedLinks'),
    newBatchListOutgoingTypedLinks,

    -- ** BatchListOutgoingTypedLinksResponse
    BatchListOutgoingTypedLinksResponse (BatchListOutgoingTypedLinksResponse'),
    newBatchListOutgoingTypedLinksResponse,

    -- ** BatchListPolicyAttachments
    BatchListPolicyAttachments (BatchListPolicyAttachments'),
    newBatchListPolicyAttachments,

    -- ** BatchListPolicyAttachmentsResponse
    BatchListPolicyAttachmentsResponse (BatchListPolicyAttachmentsResponse'),
    newBatchListPolicyAttachmentsResponse,

    -- ** BatchLookupPolicy
    BatchLookupPolicy (BatchLookupPolicy'),
    newBatchLookupPolicy,

    -- ** BatchLookupPolicyResponse
    BatchLookupPolicyResponse (BatchLookupPolicyResponse'),
    newBatchLookupPolicyResponse,

    -- ** BatchReadException
    BatchReadException (BatchReadException'),
    newBatchReadException,

    -- ** BatchReadOperation
    BatchReadOperation (BatchReadOperation'),
    newBatchReadOperation,

    -- ** BatchReadOperationResponse
    BatchReadOperationResponse (BatchReadOperationResponse'),
    newBatchReadOperationResponse,

    -- ** BatchReadSuccessfulResponse
    BatchReadSuccessfulResponse (BatchReadSuccessfulResponse'),
    newBatchReadSuccessfulResponse,

    -- ** BatchRemoveFacetFromObject
    BatchRemoveFacetFromObject (BatchRemoveFacetFromObject'),
    newBatchRemoveFacetFromObject,

    -- ** BatchRemoveFacetFromObjectResponse
    BatchRemoveFacetFromObjectResponse (BatchRemoveFacetFromObjectResponse'),
    newBatchRemoveFacetFromObjectResponse,

    -- ** BatchUpdateLinkAttributes
    BatchUpdateLinkAttributes (BatchUpdateLinkAttributes'),
    newBatchUpdateLinkAttributes,

    -- ** BatchUpdateLinkAttributesResponse
    BatchUpdateLinkAttributesResponse (BatchUpdateLinkAttributesResponse'),
    newBatchUpdateLinkAttributesResponse,

    -- ** BatchUpdateObjectAttributes
    BatchUpdateObjectAttributes (BatchUpdateObjectAttributes'),
    newBatchUpdateObjectAttributes,

    -- ** BatchUpdateObjectAttributesResponse
    BatchUpdateObjectAttributesResponse (BatchUpdateObjectAttributesResponse'),
    newBatchUpdateObjectAttributesResponse,

    -- ** BatchWriteOperation
    BatchWriteOperation (BatchWriteOperation'),
    newBatchWriteOperation,

    -- ** BatchWriteOperationResponse
    BatchWriteOperationResponse (BatchWriteOperationResponse'),
    newBatchWriteOperationResponse,

    -- ** Directory
    Directory (Directory'),
    newDirectory,

    -- ** Facet
    Facet (Facet'),
    newFacet,

    -- ** FacetAttribute
    FacetAttribute (FacetAttribute'),
    newFacetAttribute,

    -- ** FacetAttributeDefinition
    FacetAttributeDefinition (FacetAttributeDefinition'),
    newFacetAttributeDefinition,

    -- ** FacetAttributeReference
    FacetAttributeReference (FacetAttributeReference'),
    newFacetAttributeReference,

    -- ** FacetAttributeUpdate
    FacetAttributeUpdate (FacetAttributeUpdate'),
    newFacetAttributeUpdate,

    -- ** IndexAttachment
    IndexAttachment (IndexAttachment'),
    newIndexAttachment,

    -- ** LinkAttributeAction
    LinkAttributeAction (LinkAttributeAction'),
    newLinkAttributeAction,

    -- ** LinkAttributeUpdate
    LinkAttributeUpdate (LinkAttributeUpdate'),
    newLinkAttributeUpdate,

    -- ** ObjectAttributeAction
    ObjectAttributeAction (ObjectAttributeAction'),
    newObjectAttributeAction,

    -- ** ObjectAttributeRange
    ObjectAttributeRange (ObjectAttributeRange'),
    newObjectAttributeRange,

    -- ** ObjectAttributeUpdate
    ObjectAttributeUpdate (ObjectAttributeUpdate'),
    newObjectAttributeUpdate,

    -- ** ObjectIdentifierAndLinkNameTuple
    ObjectIdentifierAndLinkNameTuple (ObjectIdentifierAndLinkNameTuple'),
    newObjectIdentifierAndLinkNameTuple,

    -- ** ObjectReference
    ObjectReference (ObjectReference'),
    newObjectReference,

    -- ** PathToObjectIdentifiers
    PathToObjectIdentifiers (PathToObjectIdentifiers'),
    newPathToObjectIdentifiers,

    -- ** PolicyAttachment
    PolicyAttachment (PolicyAttachment'),
    newPolicyAttachment,

    -- ** PolicyToPath
    PolicyToPath (PolicyToPath'),
    newPolicyToPath,

    -- ** Rule
    Rule (Rule'),
    newRule,

    -- ** SchemaFacet
    SchemaFacet (SchemaFacet'),
    newSchemaFacet,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TypedAttributeValue
    TypedAttributeValue (TypedAttributeValue'),
    newTypedAttributeValue,

    -- ** TypedAttributeValueRange
    TypedAttributeValueRange (TypedAttributeValueRange'),
    newTypedAttributeValueRange,

    -- ** TypedLinkAttributeDefinition
    TypedLinkAttributeDefinition (TypedLinkAttributeDefinition'),
    newTypedLinkAttributeDefinition,

    -- ** TypedLinkAttributeRange
    TypedLinkAttributeRange (TypedLinkAttributeRange'),
    newTypedLinkAttributeRange,

    -- ** TypedLinkFacet
    TypedLinkFacet (TypedLinkFacet'),
    newTypedLinkFacet,

    -- ** TypedLinkFacetAttributeUpdate
    TypedLinkFacetAttributeUpdate (TypedLinkFacetAttributeUpdate'),
    newTypedLinkFacetAttributeUpdate,

    -- ** TypedLinkSchemaAndFacetName
    TypedLinkSchemaAndFacetName (TypedLinkSchemaAndFacetName'),
    newTypedLinkSchemaAndFacetName,

    -- ** TypedLinkSpecifier
    TypedLinkSpecifier (TypedLinkSpecifier'),
    newTypedLinkSpecifier,
  )
where

import Network.AWS.CloudDirectory.AddFacetToObject
import Network.AWS.CloudDirectory.ApplySchema
import Network.AWS.CloudDirectory.AttachObject
import Network.AWS.CloudDirectory.AttachPolicy
import Network.AWS.CloudDirectory.AttachToIndex
import Network.AWS.CloudDirectory.AttachTypedLink
import Network.AWS.CloudDirectory.BatchRead
import Network.AWS.CloudDirectory.BatchWrite
import Network.AWS.CloudDirectory.CreateDirectory
import Network.AWS.CloudDirectory.CreateFacet
import Network.AWS.CloudDirectory.CreateIndex
import Network.AWS.CloudDirectory.CreateObject
import Network.AWS.CloudDirectory.CreateSchema
import Network.AWS.CloudDirectory.CreateTypedLinkFacet
import Network.AWS.CloudDirectory.DeleteDirectory
import Network.AWS.CloudDirectory.DeleteFacet
import Network.AWS.CloudDirectory.DeleteObject
import Network.AWS.CloudDirectory.DeleteSchema
import Network.AWS.CloudDirectory.DeleteTypedLinkFacet
import Network.AWS.CloudDirectory.DetachFromIndex
import Network.AWS.CloudDirectory.DetachObject
import Network.AWS.CloudDirectory.DetachPolicy
import Network.AWS.CloudDirectory.DetachTypedLink
import Network.AWS.CloudDirectory.DisableDirectory
import Network.AWS.CloudDirectory.EnableDirectory
import Network.AWS.CloudDirectory.GetAppliedSchemaVersion
import Network.AWS.CloudDirectory.GetDirectory
import Network.AWS.CloudDirectory.GetFacet
import Network.AWS.CloudDirectory.GetLinkAttributes
import Network.AWS.CloudDirectory.GetObjectAttributes
import Network.AWS.CloudDirectory.GetObjectInformation
import Network.AWS.CloudDirectory.GetSchemaAsJson
import Network.AWS.CloudDirectory.GetTypedLinkFacetInformation
import Network.AWS.CloudDirectory.Lens
import Network.AWS.CloudDirectory.ListAppliedSchemaArns
import Network.AWS.CloudDirectory.ListAttachedIndices
import Network.AWS.CloudDirectory.ListDevelopmentSchemaArns
import Network.AWS.CloudDirectory.ListDirectories
import Network.AWS.CloudDirectory.ListFacetAttributes
import Network.AWS.CloudDirectory.ListFacetNames
import Network.AWS.CloudDirectory.ListIncomingTypedLinks
import Network.AWS.CloudDirectory.ListIndex
import Network.AWS.CloudDirectory.ListManagedSchemaArns
import Network.AWS.CloudDirectory.ListObjectAttributes
import Network.AWS.CloudDirectory.ListObjectChildren
import Network.AWS.CloudDirectory.ListObjectParentPaths
import Network.AWS.CloudDirectory.ListObjectParents
import Network.AWS.CloudDirectory.ListObjectPolicies
import Network.AWS.CloudDirectory.ListOutgoingTypedLinks
import Network.AWS.CloudDirectory.ListPolicyAttachments
import Network.AWS.CloudDirectory.ListPublishedSchemaArns
import Network.AWS.CloudDirectory.ListTagsForResource
import Network.AWS.CloudDirectory.ListTypedLinkFacetAttributes
import Network.AWS.CloudDirectory.ListTypedLinkFacetNames
import Network.AWS.CloudDirectory.LookupPolicy
import Network.AWS.CloudDirectory.PublishSchema
import Network.AWS.CloudDirectory.PutSchemaFromJson
import Network.AWS.CloudDirectory.RemoveFacetFromObject
import Network.AWS.CloudDirectory.TagResource
import Network.AWS.CloudDirectory.Types
import Network.AWS.CloudDirectory.UntagResource
import Network.AWS.CloudDirectory.UpdateFacet
import Network.AWS.CloudDirectory.UpdateLinkAttributes
import Network.AWS.CloudDirectory.UpdateObjectAttributes
import Network.AWS.CloudDirectory.UpdateSchema
import Network.AWS.CloudDirectory.UpdateTypedLinkFacet
import Network.AWS.CloudDirectory.UpgradeAppliedSchema
import Network.AWS.CloudDirectory.UpgradePublishedSchema
import Network.AWS.CloudDirectory.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'CloudDirectory'.

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
