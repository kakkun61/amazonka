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
-- Module      : Network.AWS.CloudDirectory.Types.BatchReadOperation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.BatchReadOperation where

import Network.AWS.CloudDirectory.Types.BatchGetLinkAttributes
import Network.AWS.CloudDirectory.Types.BatchGetObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchGetObjectInformation
import Network.AWS.CloudDirectory.Types.BatchListAttachedIndices
import Network.AWS.CloudDirectory.Types.BatchListIncomingTypedLinks
import Network.AWS.CloudDirectory.Types.BatchListIndex
import Network.AWS.CloudDirectory.Types.BatchListObjectAttributes
import Network.AWS.CloudDirectory.Types.BatchListObjectChildren
import Network.AWS.CloudDirectory.Types.BatchListObjectParentPaths
import Network.AWS.CloudDirectory.Types.BatchListObjectParents
import Network.AWS.CloudDirectory.Types.BatchListObjectPolicies
import Network.AWS.CloudDirectory.Types.BatchListOutgoingTypedLinks
import Network.AWS.CloudDirectory.Types.BatchListPolicyAttachments
import Network.AWS.CloudDirectory.Types.BatchLookupPolicy
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents the output of a @BatchRead@ operation.
--
-- /See:/ 'newBatchReadOperation' smart constructor.
data BatchReadOperation = BatchReadOperation'
  { -- | Lists objects attached to the specified index.
    listIndex :: Prelude.Maybe BatchListIndex,
    -- | Retrieves metadata about an object.
    getObjectInformation :: Prelude.Maybe BatchGetObjectInformation,
    -- | Lists indices attached to an object.
    listAttachedIndices :: Prelude.Maybe BatchListAttachedIndices,
    -- | Lists all policies from the root of the Directory to the object
    -- specified. If there are no policies present, an empty list is returned.
    -- If policies are present, and if some objects don\'t have the policies
    -- attached, it returns the @ObjectIdentifier@ for such objects. If
    -- policies are present, it returns @ObjectIdentifier@, @policyId@, and
    -- @policyType@. Paths that don\'t lead to the root from the target object
    -- are ignored. For more information, see
    -- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies>.
    lookupPolicy :: Prelude.Maybe BatchLookupPolicy,
    -- | Retrieves all available parent paths for any object type such as node,
    -- leaf node, policy node, and index node objects. For more information
    -- about objects, see
    -- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html Directory Structure>.
    listObjectParentPaths :: Prelude.Maybe BatchListObjectParentPaths,
    -- | Lists all attributes that are associated with an object.
    listObjectAttributes :: Prelude.Maybe BatchListObjectAttributes,
    -- | Returns a paginated list of all the incoming TypedLinkSpecifier
    -- information for an object. It also supports filtering by typed link
    -- facet and identity attributes. For more information, see
    -- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
    listIncomingTypedLinks :: Prelude.Maybe BatchListIncomingTypedLinks,
    -- | Retrieves attributes that are associated with a typed link.
    getLinkAttributes :: Prelude.Maybe BatchGetLinkAttributes,
    -- | Retrieves attributes within a facet that are associated with an object.
    getObjectAttributes :: Prelude.Maybe BatchGetObjectAttributes,
    -- | Returns a paginated list of child objects that are associated with a
    -- given object.
    listObjectChildren :: Prelude.Maybe BatchListObjectChildren,
    -- | Lists parent objects that are associated with a given object in
    -- pagination fashion.
    listObjectParents :: Prelude.Maybe BatchListObjectParents,
    -- | Returns all of the @ObjectIdentifiers@ to which a given policy is
    -- attached.
    listPolicyAttachments :: Prelude.Maybe BatchListPolicyAttachments,
    -- | Returns a paginated list of all the outgoing TypedLinkSpecifier
    -- information for an object. It also supports filtering by typed link
    -- facet and identity attributes. For more information, see
    -- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
    listOutgoingTypedLinks :: Prelude.Maybe BatchListOutgoingTypedLinks,
    -- | Returns policies attached to an object in pagination fashion.
    listObjectPolicies :: Prelude.Maybe BatchListObjectPolicies
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchReadOperation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listIndex', 'batchReadOperation_listIndex' - Lists objects attached to the specified index.
--
-- 'getObjectInformation', 'batchReadOperation_getObjectInformation' - Retrieves metadata about an object.
--
-- 'listAttachedIndices', 'batchReadOperation_listAttachedIndices' - Lists indices attached to an object.
--
-- 'lookupPolicy', 'batchReadOperation_lookupPolicy' - Lists all policies from the root of the Directory to the object
-- specified. If there are no policies present, an empty list is returned.
-- If policies are present, and if some objects don\'t have the policies
-- attached, it returns the @ObjectIdentifier@ for such objects. If
-- policies are present, it returns @ObjectIdentifier@, @policyId@, and
-- @policyType@. Paths that don\'t lead to the root from the target object
-- are ignored. For more information, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies>.
--
-- 'listObjectParentPaths', 'batchReadOperation_listObjectParentPaths' - Retrieves all available parent paths for any object type such as node,
-- leaf node, policy node, and index node objects. For more information
-- about objects, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html Directory Structure>.
--
-- 'listObjectAttributes', 'batchReadOperation_listObjectAttributes' - Lists all attributes that are associated with an object.
--
-- 'listIncomingTypedLinks', 'batchReadOperation_listIncomingTypedLinks' - Returns a paginated list of all the incoming TypedLinkSpecifier
-- information for an object. It also supports filtering by typed link
-- facet and identity attributes. For more information, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
--
-- 'getLinkAttributes', 'batchReadOperation_getLinkAttributes' - Retrieves attributes that are associated with a typed link.
--
-- 'getObjectAttributes', 'batchReadOperation_getObjectAttributes' - Retrieves attributes within a facet that are associated with an object.
--
-- 'listObjectChildren', 'batchReadOperation_listObjectChildren' - Returns a paginated list of child objects that are associated with a
-- given object.
--
-- 'listObjectParents', 'batchReadOperation_listObjectParents' - Lists parent objects that are associated with a given object in
-- pagination fashion.
--
-- 'listPolicyAttachments', 'batchReadOperation_listPolicyAttachments' - Returns all of the @ObjectIdentifiers@ to which a given policy is
-- attached.
--
-- 'listOutgoingTypedLinks', 'batchReadOperation_listOutgoingTypedLinks' - Returns a paginated list of all the outgoing TypedLinkSpecifier
-- information for an object. It also supports filtering by typed link
-- facet and identity attributes. For more information, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
--
-- 'listObjectPolicies', 'batchReadOperation_listObjectPolicies' - Returns policies attached to an object in pagination fashion.
newBatchReadOperation ::
  BatchReadOperation
newBatchReadOperation =
  BatchReadOperation'
    { listIndex = Prelude.Nothing,
      getObjectInformation = Prelude.Nothing,
      listAttachedIndices = Prelude.Nothing,
      lookupPolicy = Prelude.Nothing,
      listObjectParentPaths = Prelude.Nothing,
      listObjectAttributes = Prelude.Nothing,
      listIncomingTypedLinks = Prelude.Nothing,
      getLinkAttributes = Prelude.Nothing,
      getObjectAttributes = Prelude.Nothing,
      listObjectChildren = Prelude.Nothing,
      listObjectParents = Prelude.Nothing,
      listPolicyAttachments = Prelude.Nothing,
      listOutgoingTypedLinks = Prelude.Nothing,
      listObjectPolicies = Prelude.Nothing
    }

-- | Lists objects attached to the specified index.
batchReadOperation_listIndex :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListIndex)
batchReadOperation_listIndex = Lens.lens (\BatchReadOperation' {listIndex} -> listIndex) (\s@BatchReadOperation' {} a -> s {listIndex = a} :: BatchReadOperation)

-- | Retrieves metadata about an object.
batchReadOperation_getObjectInformation :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchGetObjectInformation)
batchReadOperation_getObjectInformation = Lens.lens (\BatchReadOperation' {getObjectInformation} -> getObjectInformation) (\s@BatchReadOperation' {} a -> s {getObjectInformation = a} :: BatchReadOperation)

-- | Lists indices attached to an object.
batchReadOperation_listAttachedIndices :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListAttachedIndices)
batchReadOperation_listAttachedIndices = Lens.lens (\BatchReadOperation' {listAttachedIndices} -> listAttachedIndices) (\s@BatchReadOperation' {} a -> s {listAttachedIndices = a} :: BatchReadOperation)

-- | Lists all policies from the root of the Directory to the object
-- specified. If there are no policies present, an empty list is returned.
-- If policies are present, and if some objects don\'t have the policies
-- attached, it returns the @ObjectIdentifier@ for such objects. If
-- policies are present, it returns @ObjectIdentifier@, @policyId@, and
-- @policyType@. Paths that don\'t lead to the root from the target object
-- are ignored. For more information, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies Policies>.
batchReadOperation_lookupPolicy :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchLookupPolicy)
batchReadOperation_lookupPolicy = Lens.lens (\BatchReadOperation' {lookupPolicy} -> lookupPolicy) (\s@BatchReadOperation' {} a -> s {lookupPolicy = a} :: BatchReadOperation)

-- | Retrieves all available parent paths for any object type such as node,
-- leaf node, policy node, and index node objects. For more information
-- about objects, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html Directory Structure>.
batchReadOperation_listObjectParentPaths :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListObjectParentPaths)
batchReadOperation_listObjectParentPaths = Lens.lens (\BatchReadOperation' {listObjectParentPaths} -> listObjectParentPaths) (\s@BatchReadOperation' {} a -> s {listObjectParentPaths = a} :: BatchReadOperation)

-- | Lists all attributes that are associated with an object.
batchReadOperation_listObjectAttributes :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListObjectAttributes)
batchReadOperation_listObjectAttributes = Lens.lens (\BatchReadOperation' {listObjectAttributes} -> listObjectAttributes) (\s@BatchReadOperation' {} a -> s {listObjectAttributes = a} :: BatchReadOperation)

-- | Returns a paginated list of all the incoming TypedLinkSpecifier
-- information for an object. It also supports filtering by typed link
-- facet and identity attributes. For more information, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
batchReadOperation_listIncomingTypedLinks :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListIncomingTypedLinks)
batchReadOperation_listIncomingTypedLinks = Lens.lens (\BatchReadOperation' {listIncomingTypedLinks} -> listIncomingTypedLinks) (\s@BatchReadOperation' {} a -> s {listIncomingTypedLinks = a} :: BatchReadOperation)

-- | Retrieves attributes that are associated with a typed link.
batchReadOperation_getLinkAttributes :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchGetLinkAttributes)
batchReadOperation_getLinkAttributes = Lens.lens (\BatchReadOperation' {getLinkAttributes} -> getLinkAttributes) (\s@BatchReadOperation' {} a -> s {getLinkAttributes = a} :: BatchReadOperation)

-- | Retrieves attributes within a facet that are associated with an object.
batchReadOperation_getObjectAttributes :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchGetObjectAttributes)
batchReadOperation_getObjectAttributes = Lens.lens (\BatchReadOperation' {getObjectAttributes} -> getObjectAttributes) (\s@BatchReadOperation' {} a -> s {getObjectAttributes = a} :: BatchReadOperation)

-- | Returns a paginated list of child objects that are associated with a
-- given object.
batchReadOperation_listObjectChildren :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListObjectChildren)
batchReadOperation_listObjectChildren = Lens.lens (\BatchReadOperation' {listObjectChildren} -> listObjectChildren) (\s@BatchReadOperation' {} a -> s {listObjectChildren = a} :: BatchReadOperation)

-- | Lists parent objects that are associated with a given object in
-- pagination fashion.
batchReadOperation_listObjectParents :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListObjectParents)
batchReadOperation_listObjectParents = Lens.lens (\BatchReadOperation' {listObjectParents} -> listObjectParents) (\s@BatchReadOperation' {} a -> s {listObjectParents = a} :: BatchReadOperation)

-- | Returns all of the @ObjectIdentifiers@ to which a given policy is
-- attached.
batchReadOperation_listPolicyAttachments :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListPolicyAttachments)
batchReadOperation_listPolicyAttachments = Lens.lens (\BatchReadOperation' {listPolicyAttachments} -> listPolicyAttachments) (\s@BatchReadOperation' {} a -> s {listPolicyAttachments = a} :: BatchReadOperation)

-- | Returns a paginated list of all the outgoing TypedLinkSpecifier
-- information for an object. It also supports filtering by typed link
-- facet and identity attributes. For more information, see
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink Typed Links>.
batchReadOperation_listOutgoingTypedLinks :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListOutgoingTypedLinks)
batchReadOperation_listOutgoingTypedLinks = Lens.lens (\BatchReadOperation' {listOutgoingTypedLinks} -> listOutgoingTypedLinks) (\s@BatchReadOperation' {} a -> s {listOutgoingTypedLinks = a} :: BatchReadOperation)

-- | Returns policies attached to an object in pagination fashion.
batchReadOperation_listObjectPolicies :: Lens.Lens' BatchReadOperation (Prelude.Maybe BatchListObjectPolicies)
batchReadOperation_listObjectPolicies = Lens.lens (\BatchReadOperation' {listObjectPolicies} -> listObjectPolicies) (\s@BatchReadOperation' {} a -> s {listObjectPolicies = a} :: BatchReadOperation)

instance Prelude.Hashable BatchReadOperation

instance Prelude.NFData BatchReadOperation

instance Core.ToJSON BatchReadOperation where
  toJSON BatchReadOperation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ListIndex" Core..=) Prelude.<$> listIndex,
            ("GetObjectInformation" Core..=)
              Prelude.<$> getObjectInformation,
            ("ListAttachedIndices" Core..=)
              Prelude.<$> listAttachedIndices,
            ("LookupPolicy" Core..=) Prelude.<$> lookupPolicy,
            ("ListObjectParentPaths" Core..=)
              Prelude.<$> listObjectParentPaths,
            ("ListObjectAttributes" Core..=)
              Prelude.<$> listObjectAttributes,
            ("ListIncomingTypedLinks" Core..=)
              Prelude.<$> listIncomingTypedLinks,
            ("GetLinkAttributes" Core..=)
              Prelude.<$> getLinkAttributes,
            ("GetObjectAttributes" Core..=)
              Prelude.<$> getObjectAttributes,
            ("ListObjectChildren" Core..=)
              Prelude.<$> listObjectChildren,
            ("ListObjectParents" Core..=)
              Prelude.<$> listObjectParents,
            ("ListPolicyAttachments" Core..=)
              Prelude.<$> listPolicyAttachments,
            ("ListOutgoingTypedLinks" Core..=)
              Prelude.<$> listOutgoingTypedLinks,
            ("ListObjectPolicies" Core..=)
              Prelude.<$> listObjectPolicies
          ]
      )
