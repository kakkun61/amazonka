{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MGN.CreateReplicationConfigurationTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ReplicationConfigurationTemplate.
module Network.AWS.MGN.CreateReplicationConfigurationTemplate
  ( -- * Creating a Request
    CreateReplicationConfigurationTemplate (..),
    newCreateReplicationConfigurationTemplate,

    -- * Request Lenses
    createReplicationConfigurationTemplate_ebsEncryptionKeyArn,
    createReplicationConfigurationTemplate_tags,
    createReplicationConfigurationTemplate_associateDefaultSecurityGroup,
    createReplicationConfigurationTemplate_bandwidthThrottling,
    createReplicationConfigurationTemplate_createPublicIP,
    createReplicationConfigurationTemplate_dataPlaneRouting,
    createReplicationConfigurationTemplate_defaultLargeStagingDiskType,
    createReplicationConfigurationTemplate_ebsEncryption,
    createReplicationConfigurationTemplate_replicationServerInstanceType,
    createReplicationConfigurationTemplate_replicationServersSecurityGroupsIDs,
    createReplicationConfigurationTemplate_stagingAreaSubnetId,
    createReplicationConfigurationTemplate_stagingAreaTags,
    createReplicationConfigurationTemplate_useDedicatedReplicationServer,

    -- * Destructuring the Response
    ReplicationConfigurationTemplate (..),
    newReplicationConfigurationTemplate,

    -- * Response Lenses
    replicationConfigurationTemplate_createPublicIP,
    replicationConfigurationTemplate_stagingAreaTags,
    replicationConfigurationTemplate_arn,
    replicationConfigurationTemplate_stagingAreaSubnetId,
    replicationConfigurationTemplate_replicationServerInstanceType,
    replicationConfigurationTemplate_ebsEncryption,
    replicationConfigurationTemplate_associateDefaultSecurityGroup,
    replicationConfigurationTemplate_replicationServersSecurityGroupsIDs,
    replicationConfigurationTemplate_ebsEncryptionKeyArn,
    replicationConfigurationTemplate_defaultLargeStagingDiskType,
    replicationConfigurationTemplate_bandwidthThrottling,
    replicationConfigurationTemplate_dataPlaneRouting,
    replicationConfigurationTemplate_useDedicatedReplicationServer,
    replicationConfigurationTemplate_tags,
    replicationConfigurationTemplate_replicationConfigurationTemplateID,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MGN.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateReplicationConfigurationTemplate' smart constructor.
data CreateReplicationConfigurationTemplate = CreateReplicationConfigurationTemplate'
  { -- | Request to configure an EBS enryption key during Replication Settings
    -- template creation.
    ebsEncryptionKeyArn :: Prelude.Maybe Prelude.Text,
    -- | Request to configure tags during Replication Settings template creation.
    tags :: Prelude.Maybe (Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text)),
    -- | Request to associate the default Application Migration Service Security
    -- group with the Replication Settings template.
    associateDefaultSecurityGroup :: Prelude.Bool,
    -- | Request to configure bandwidth throttling during Replication Settings
    -- template creation.
    bandwidthThrottling :: Prelude.Natural,
    -- | Request to create Public IP during Replication Settings template
    -- creation.
    createPublicIP :: Prelude.Bool,
    -- | Request to configure data plane routing during Replication Settings
    -- template creation.
    dataPlaneRouting :: ReplicationConfigurationDataPlaneRouting,
    -- | Request to configure the Staging Disk EBS volume type to \"gp2\" during
    -- Replication Settings template creation.
    defaultLargeStagingDiskType :: ReplicationConfigurationDefaultLargeStagingDiskType,
    -- | Request to configure EBS enryption during Replication Settings template
    -- creation.
    ebsEncryption :: ReplicationConfigurationEbsEncryption,
    -- | Request to configure the Replication Server instance type during
    -- Replication Settings template creation.
    replicationServerInstanceType :: Prelude.Text,
    -- | Request to configure the Replication Server Secuirity group ID during
    -- Replication Settings template creation.
    replicationServersSecurityGroupsIDs :: [Prelude.Text],
    -- | Request to configure the Staging Area subnet ID during Replication
    -- Settings template creation.
    stagingAreaSubnetId :: Prelude.Text,
    -- | Request to configure Staiging Area tags during Replication Settings
    -- template creation.
    stagingAreaTags :: Core.Sensitive (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | Request to use Dedicated Replication Servers during Replication Settings
    -- template creation.
    useDedicatedReplicationServer :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateReplicationConfigurationTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ebsEncryptionKeyArn', 'createReplicationConfigurationTemplate_ebsEncryptionKeyArn' - Request to configure an EBS enryption key during Replication Settings
-- template creation.
--
-- 'tags', 'createReplicationConfigurationTemplate_tags' - Request to configure tags during Replication Settings template creation.
--
-- 'associateDefaultSecurityGroup', 'createReplicationConfigurationTemplate_associateDefaultSecurityGroup' - Request to associate the default Application Migration Service Security
-- group with the Replication Settings template.
--
-- 'bandwidthThrottling', 'createReplicationConfigurationTemplate_bandwidthThrottling' - Request to configure bandwidth throttling during Replication Settings
-- template creation.
--
-- 'createPublicIP', 'createReplicationConfigurationTemplate_createPublicIP' - Request to create Public IP during Replication Settings template
-- creation.
--
-- 'dataPlaneRouting', 'createReplicationConfigurationTemplate_dataPlaneRouting' - Request to configure data plane routing during Replication Settings
-- template creation.
--
-- 'defaultLargeStagingDiskType', 'createReplicationConfigurationTemplate_defaultLargeStagingDiskType' - Request to configure the Staging Disk EBS volume type to \"gp2\" during
-- Replication Settings template creation.
--
-- 'ebsEncryption', 'createReplicationConfigurationTemplate_ebsEncryption' - Request to configure EBS enryption during Replication Settings template
-- creation.
--
-- 'replicationServerInstanceType', 'createReplicationConfigurationTemplate_replicationServerInstanceType' - Request to configure the Replication Server instance type during
-- Replication Settings template creation.
--
-- 'replicationServersSecurityGroupsIDs', 'createReplicationConfigurationTemplate_replicationServersSecurityGroupsIDs' - Request to configure the Replication Server Secuirity group ID during
-- Replication Settings template creation.
--
-- 'stagingAreaSubnetId', 'createReplicationConfigurationTemplate_stagingAreaSubnetId' - Request to configure the Staging Area subnet ID during Replication
-- Settings template creation.
--
-- 'stagingAreaTags', 'createReplicationConfigurationTemplate_stagingAreaTags' - Request to configure Staiging Area tags during Replication Settings
-- template creation.
--
-- 'useDedicatedReplicationServer', 'createReplicationConfigurationTemplate_useDedicatedReplicationServer' - Request to use Dedicated Replication Servers during Replication Settings
-- template creation.
newCreateReplicationConfigurationTemplate ::
  -- | 'associateDefaultSecurityGroup'
  Prelude.Bool ->
  -- | 'bandwidthThrottling'
  Prelude.Natural ->
  -- | 'createPublicIP'
  Prelude.Bool ->
  -- | 'dataPlaneRouting'
  ReplicationConfigurationDataPlaneRouting ->
  -- | 'defaultLargeStagingDiskType'
  ReplicationConfigurationDefaultLargeStagingDiskType ->
  -- | 'ebsEncryption'
  ReplicationConfigurationEbsEncryption ->
  -- | 'replicationServerInstanceType'
  Prelude.Text ->
  -- | 'stagingAreaSubnetId'
  Prelude.Text ->
  -- | 'useDedicatedReplicationServer'
  Prelude.Bool ->
  CreateReplicationConfigurationTemplate
newCreateReplicationConfigurationTemplate
  pAssociateDefaultSecurityGroup_
  pBandwidthThrottling_
  pCreatePublicIP_
  pDataPlaneRouting_
  pDefaultLargeStagingDiskType_
  pEbsEncryption_
  pReplicationServerInstanceType_
  pStagingAreaSubnetId_
  pUseDedicatedReplicationServer_ =
    CreateReplicationConfigurationTemplate'
      { ebsEncryptionKeyArn =
          Prelude.Nothing,
        tags = Prelude.Nothing,
        associateDefaultSecurityGroup =
          pAssociateDefaultSecurityGroup_,
        bandwidthThrottling =
          pBandwidthThrottling_,
        createPublicIP = pCreatePublicIP_,
        dataPlaneRouting =
          pDataPlaneRouting_,
        defaultLargeStagingDiskType =
          pDefaultLargeStagingDiskType_,
        ebsEncryption = pEbsEncryption_,
        replicationServerInstanceType =
          pReplicationServerInstanceType_,
        replicationServersSecurityGroupsIDs =
          Prelude.mempty,
        stagingAreaSubnetId =
          pStagingAreaSubnetId_,
        stagingAreaTags = Prelude.mempty,
        useDedicatedReplicationServer =
          pUseDedicatedReplicationServer_
      }

-- | Request to configure an EBS enryption key during Replication Settings
-- template creation.
createReplicationConfigurationTemplate_ebsEncryptionKeyArn :: Lens.Lens' CreateReplicationConfigurationTemplate (Prelude.Maybe Prelude.Text)
createReplicationConfigurationTemplate_ebsEncryptionKeyArn = Lens.lens (\CreateReplicationConfigurationTemplate' {ebsEncryptionKeyArn} -> ebsEncryptionKeyArn) (\s@CreateReplicationConfigurationTemplate' {} a -> s {ebsEncryptionKeyArn = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure tags during Replication Settings template creation.
createReplicationConfigurationTemplate_tags :: Lens.Lens' CreateReplicationConfigurationTemplate (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createReplicationConfigurationTemplate_tags = Lens.lens (\CreateReplicationConfigurationTemplate' {tags} -> tags) (\s@CreateReplicationConfigurationTemplate' {} a -> s {tags = a} :: CreateReplicationConfigurationTemplate) Prelude.. Lens.mapping (Core._Sensitive Prelude.. Lens.coerced)

-- | Request to associate the default Application Migration Service Security
-- group with the Replication Settings template.
createReplicationConfigurationTemplate_associateDefaultSecurityGroup :: Lens.Lens' CreateReplicationConfigurationTemplate Prelude.Bool
createReplicationConfigurationTemplate_associateDefaultSecurityGroup = Lens.lens (\CreateReplicationConfigurationTemplate' {associateDefaultSecurityGroup} -> associateDefaultSecurityGroup) (\s@CreateReplicationConfigurationTemplate' {} a -> s {associateDefaultSecurityGroup = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure bandwidth throttling during Replication Settings
-- template creation.
createReplicationConfigurationTemplate_bandwidthThrottling :: Lens.Lens' CreateReplicationConfigurationTemplate Prelude.Natural
createReplicationConfigurationTemplate_bandwidthThrottling = Lens.lens (\CreateReplicationConfigurationTemplate' {bandwidthThrottling} -> bandwidthThrottling) (\s@CreateReplicationConfigurationTemplate' {} a -> s {bandwidthThrottling = a} :: CreateReplicationConfigurationTemplate)

-- | Request to create Public IP during Replication Settings template
-- creation.
createReplicationConfigurationTemplate_createPublicIP :: Lens.Lens' CreateReplicationConfigurationTemplate Prelude.Bool
createReplicationConfigurationTemplate_createPublicIP = Lens.lens (\CreateReplicationConfigurationTemplate' {createPublicIP} -> createPublicIP) (\s@CreateReplicationConfigurationTemplate' {} a -> s {createPublicIP = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure data plane routing during Replication Settings
-- template creation.
createReplicationConfigurationTemplate_dataPlaneRouting :: Lens.Lens' CreateReplicationConfigurationTemplate ReplicationConfigurationDataPlaneRouting
createReplicationConfigurationTemplate_dataPlaneRouting = Lens.lens (\CreateReplicationConfigurationTemplate' {dataPlaneRouting} -> dataPlaneRouting) (\s@CreateReplicationConfigurationTemplate' {} a -> s {dataPlaneRouting = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure the Staging Disk EBS volume type to \"gp2\" during
-- Replication Settings template creation.
createReplicationConfigurationTemplate_defaultLargeStagingDiskType :: Lens.Lens' CreateReplicationConfigurationTemplate ReplicationConfigurationDefaultLargeStagingDiskType
createReplicationConfigurationTemplate_defaultLargeStagingDiskType = Lens.lens (\CreateReplicationConfigurationTemplate' {defaultLargeStagingDiskType} -> defaultLargeStagingDiskType) (\s@CreateReplicationConfigurationTemplate' {} a -> s {defaultLargeStagingDiskType = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure EBS enryption during Replication Settings template
-- creation.
createReplicationConfigurationTemplate_ebsEncryption :: Lens.Lens' CreateReplicationConfigurationTemplate ReplicationConfigurationEbsEncryption
createReplicationConfigurationTemplate_ebsEncryption = Lens.lens (\CreateReplicationConfigurationTemplate' {ebsEncryption} -> ebsEncryption) (\s@CreateReplicationConfigurationTemplate' {} a -> s {ebsEncryption = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure the Replication Server instance type during
-- Replication Settings template creation.
createReplicationConfigurationTemplate_replicationServerInstanceType :: Lens.Lens' CreateReplicationConfigurationTemplate Prelude.Text
createReplicationConfigurationTemplate_replicationServerInstanceType = Lens.lens (\CreateReplicationConfigurationTemplate' {replicationServerInstanceType} -> replicationServerInstanceType) (\s@CreateReplicationConfigurationTemplate' {} a -> s {replicationServerInstanceType = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure the Replication Server Secuirity group ID during
-- Replication Settings template creation.
createReplicationConfigurationTemplate_replicationServersSecurityGroupsIDs :: Lens.Lens' CreateReplicationConfigurationTemplate [Prelude.Text]
createReplicationConfigurationTemplate_replicationServersSecurityGroupsIDs = Lens.lens (\CreateReplicationConfigurationTemplate' {replicationServersSecurityGroupsIDs} -> replicationServersSecurityGroupsIDs) (\s@CreateReplicationConfigurationTemplate' {} a -> s {replicationServersSecurityGroupsIDs = a} :: CreateReplicationConfigurationTemplate) Prelude.. Lens.coerced

-- | Request to configure the Staging Area subnet ID during Replication
-- Settings template creation.
createReplicationConfigurationTemplate_stagingAreaSubnetId :: Lens.Lens' CreateReplicationConfigurationTemplate Prelude.Text
createReplicationConfigurationTemplate_stagingAreaSubnetId = Lens.lens (\CreateReplicationConfigurationTemplate' {stagingAreaSubnetId} -> stagingAreaSubnetId) (\s@CreateReplicationConfigurationTemplate' {} a -> s {stagingAreaSubnetId = a} :: CreateReplicationConfigurationTemplate)

-- | Request to configure Staiging Area tags during Replication Settings
-- template creation.
createReplicationConfigurationTemplate_stagingAreaTags :: Lens.Lens' CreateReplicationConfigurationTemplate (Prelude.HashMap Prelude.Text Prelude.Text)
createReplicationConfigurationTemplate_stagingAreaTags = Lens.lens (\CreateReplicationConfigurationTemplate' {stagingAreaTags} -> stagingAreaTags) (\s@CreateReplicationConfigurationTemplate' {} a -> s {stagingAreaTags = a} :: CreateReplicationConfigurationTemplate) Prelude.. Core._Sensitive Prelude.. Lens.coerced

-- | Request to use Dedicated Replication Servers during Replication Settings
-- template creation.
createReplicationConfigurationTemplate_useDedicatedReplicationServer :: Lens.Lens' CreateReplicationConfigurationTemplate Prelude.Bool
createReplicationConfigurationTemplate_useDedicatedReplicationServer = Lens.lens (\CreateReplicationConfigurationTemplate' {useDedicatedReplicationServer} -> useDedicatedReplicationServer) (\s@CreateReplicationConfigurationTemplate' {} a -> s {useDedicatedReplicationServer = a} :: CreateReplicationConfigurationTemplate)

instance
  Core.AWSRequest
    CreateReplicationConfigurationTemplate
  where
  type
    AWSResponse
      CreateReplicationConfigurationTemplate =
      ReplicationConfigurationTemplate
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Core.eitherParseJSON x)

instance
  Prelude.Hashable
    CreateReplicationConfigurationTemplate

instance
  Prelude.NFData
    CreateReplicationConfigurationTemplate

instance
  Core.ToHeaders
    CreateReplicationConfigurationTemplate
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    CreateReplicationConfigurationTemplate
  where
  toJSON CreateReplicationConfigurationTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("ebsEncryptionKeyArn" Core..=)
              Prelude.<$> ebsEncryptionKeyArn,
            ("tags" Core..=) Prelude.<$> tags,
            Prelude.Just
              ( "associateDefaultSecurityGroup"
                  Core..= associateDefaultSecurityGroup
              ),
            Prelude.Just
              ("bandwidthThrottling" Core..= bandwidthThrottling),
            Prelude.Just
              ("createPublicIP" Core..= createPublicIP),
            Prelude.Just
              ("dataPlaneRouting" Core..= dataPlaneRouting),
            Prelude.Just
              ( "defaultLargeStagingDiskType"
                  Core..= defaultLargeStagingDiskType
              ),
            Prelude.Just ("ebsEncryption" Core..= ebsEncryption),
            Prelude.Just
              ( "replicationServerInstanceType"
                  Core..= replicationServerInstanceType
              ),
            Prelude.Just
              ( "replicationServersSecurityGroupsIDs"
                  Core..= replicationServersSecurityGroupsIDs
              ),
            Prelude.Just
              ("stagingAreaSubnetId" Core..= stagingAreaSubnetId),
            Prelude.Just
              ("stagingAreaTags" Core..= stagingAreaTags),
            Prelude.Just
              ( "useDedicatedReplicationServer"
                  Core..= useDedicatedReplicationServer
              )
          ]
      )

instance
  Core.ToPath
    CreateReplicationConfigurationTemplate
  where
  toPath =
    Prelude.const
      "/CreateReplicationConfigurationTemplate"

instance
  Core.ToQuery
    CreateReplicationConfigurationTemplate
  where
  toQuery = Prelude.const Prelude.mempty
