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
-- Module      : Network.AWS.SSM.Types.ResourceDataSyncSourceWithState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.ResourceDataSyncSourceWithState where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSM.Types.ResourceDataSyncAwsOrganizationsSource

-- | The data type name for including resource data sync state. There are
-- four sync states:
--
-- @OrganizationNotExists@ (Your organization doesn\'t exist)
--
-- @NoPermissions@ (The system can\'t locate the service-linked role. This
-- role is automatically created when a user creates a resource data sync
-- in Amazon Web Services Systems Manager Explorer.)
--
-- @InvalidOrganizationalUnit@ (You specified or selected an invalid unit
-- in the resource data sync configuration.)
--
-- @TrustedAccessDisabled@ (You disabled Systems Manager access in the
-- organization in Organizations.)
--
-- /See:/ 'newResourceDataSyncSourceWithState' smart constructor.
data ResourceDataSyncSourceWithState = ResourceDataSyncSourceWithState'
  { -- | The data type name for including resource data sync state. There are
    -- four sync states:
    --
    -- @OrganizationNotExists@: Your organization doesn\'t exist.
    --
    -- @NoPermissions@: The system can\'t locate the service-linked role. This
    -- role is automatically created when a user creates a resource data sync
    -- in Explorer.
    --
    -- @InvalidOrganizationalUnit@: You specified or selected an invalid unit
    -- in the resource data sync configuration.
    --
    -- @TrustedAccessDisabled@: You disabled Systems Manager access in the
    -- organization in Organizations.
    state :: Prelude.Maybe Prelude.Text,
    -- | When you create a resource data sync, if you choose one of the
    -- Organizations options, then Systems Manager automatically enables all
    -- OpsData sources in the selected Amazon Web Services Regions for all
    -- Amazon Web Services accounts in your organization (or in the selected
    -- organization units). For more information, see
    -- <https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html About multiple account and Region resource data syncs>
    -- in the /Amazon Web Services Systems Manager User Guide/.
    enableAllOpsDataSources :: Prelude.Maybe Prelude.Bool,
    -- | Whether to automatically synchronize and aggregate data from new Amazon
    -- Web Services Regions when those Regions come online.
    includeFutureRegions :: Prelude.Maybe Prelude.Bool,
    -- | The type of data source for the resource data sync. @SourceType@ is
    -- either @AwsOrganizations@ (if an organization is present in
    -- Organizations) or @singleAccountMultiRegions@.
    sourceType :: Prelude.Maybe Prelude.Text,
    -- | The field name in @SyncSource@ for the
    -- @ResourceDataSyncAwsOrganizationsSource@ type.
    awsOrganizationsSource :: Prelude.Maybe ResourceDataSyncAwsOrganizationsSource,
    -- | The @SyncSource@ Amazon Web Services Regions included in the resource
    -- data sync.
    sourceRegions :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResourceDataSyncSourceWithState' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'state', 'resourceDataSyncSourceWithState_state' - The data type name for including resource data sync state. There are
-- four sync states:
--
-- @OrganizationNotExists@: Your organization doesn\'t exist.
--
-- @NoPermissions@: The system can\'t locate the service-linked role. This
-- role is automatically created when a user creates a resource data sync
-- in Explorer.
--
-- @InvalidOrganizationalUnit@: You specified or selected an invalid unit
-- in the resource data sync configuration.
--
-- @TrustedAccessDisabled@: You disabled Systems Manager access in the
-- organization in Organizations.
--
-- 'enableAllOpsDataSources', 'resourceDataSyncSourceWithState_enableAllOpsDataSources' - When you create a resource data sync, if you choose one of the
-- Organizations options, then Systems Manager automatically enables all
-- OpsData sources in the selected Amazon Web Services Regions for all
-- Amazon Web Services accounts in your organization (or in the selected
-- organization units). For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html About multiple account and Region resource data syncs>
-- in the /Amazon Web Services Systems Manager User Guide/.
--
-- 'includeFutureRegions', 'resourceDataSyncSourceWithState_includeFutureRegions' - Whether to automatically synchronize and aggregate data from new Amazon
-- Web Services Regions when those Regions come online.
--
-- 'sourceType', 'resourceDataSyncSourceWithState_sourceType' - The type of data source for the resource data sync. @SourceType@ is
-- either @AwsOrganizations@ (if an organization is present in
-- Organizations) or @singleAccountMultiRegions@.
--
-- 'awsOrganizationsSource', 'resourceDataSyncSourceWithState_awsOrganizationsSource' - The field name in @SyncSource@ for the
-- @ResourceDataSyncAwsOrganizationsSource@ type.
--
-- 'sourceRegions', 'resourceDataSyncSourceWithState_sourceRegions' - The @SyncSource@ Amazon Web Services Regions included in the resource
-- data sync.
newResourceDataSyncSourceWithState ::
  ResourceDataSyncSourceWithState
newResourceDataSyncSourceWithState =
  ResourceDataSyncSourceWithState'
    { state =
        Prelude.Nothing,
      enableAllOpsDataSources = Prelude.Nothing,
      includeFutureRegions = Prelude.Nothing,
      sourceType = Prelude.Nothing,
      awsOrganizationsSource = Prelude.Nothing,
      sourceRegions = Prelude.Nothing
    }

-- | The data type name for including resource data sync state. There are
-- four sync states:
--
-- @OrganizationNotExists@: Your organization doesn\'t exist.
--
-- @NoPermissions@: The system can\'t locate the service-linked role. This
-- role is automatically created when a user creates a resource data sync
-- in Explorer.
--
-- @InvalidOrganizationalUnit@: You specified or selected an invalid unit
-- in the resource data sync configuration.
--
-- @TrustedAccessDisabled@: You disabled Systems Manager access in the
-- organization in Organizations.
resourceDataSyncSourceWithState_state :: Lens.Lens' ResourceDataSyncSourceWithState (Prelude.Maybe Prelude.Text)
resourceDataSyncSourceWithState_state = Lens.lens (\ResourceDataSyncSourceWithState' {state} -> state) (\s@ResourceDataSyncSourceWithState' {} a -> s {state = a} :: ResourceDataSyncSourceWithState)

-- | When you create a resource data sync, if you choose one of the
-- Organizations options, then Systems Manager automatically enables all
-- OpsData sources in the selected Amazon Web Services Regions for all
-- Amazon Web Services accounts in your organization (or in the selected
-- organization units). For more information, see
-- <https://docs.aws.amazon.com/systems-manager/latest/userguide/Explorer-resouce-data-sync-multiple-accounts-and-regions.html About multiple account and Region resource data syncs>
-- in the /Amazon Web Services Systems Manager User Guide/.
resourceDataSyncSourceWithState_enableAllOpsDataSources :: Lens.Lens' ResourceDataSyncSourceWithState (Prelude.Maybe Prelude.Bool)
resourceDataSyncSourceWithState_enableAllOpsDataSources = Lens.lens (\ResourceDataSyncSourceWithState' {enableAllOpsDataSources} -> enableAllOpsDataSources) (\s@ResourceDataSyncSourceWithState' {} a -> s {enableAllOpsDataSources = a} :: ResourceDataSyncSourceWithState)

-- | Whether to automatically synchronize and aggregate data from new Amazon
-- Web Services Regions when those Regions come online.
resourceDataSyncSourceWithState_includeFutureRegions :: Lens.Lens' ResourceDataSyncSourceWithState (Prelude.Maybe Prelude.Bool)
resourceDataSyncSourceWithState_includeFutureRegions = Lens.lens (\ResourceDataSyncSourceWithState' {includeFutureRegions} -> includeFutureRegions) (\s@ResourceDataSyncSourceWithState' {} a -> s {includeFutureRegions = a} :: ResourceDataSyncSourceWithState)

-- | The type of data source for the resource data sync. @SourceType@ is
-- either @AwsOrganizations@ (if an organization is present in
-- Organizations) or @singleAccountMultiRegions@.
resourceDataSyncSourceWithState_sourceType :: Lens.Lens' ResourceDataSyncSourceWithState (Prelude.Maybe Prelude.Text)
resourceDataSyncSourceWithState_sourceType = Lens.lens (\ResourceDataSyncSourceWithState' {sourceType} -> sourceType) (\s@ResourceDataSyncSourceWithState' {} a -> s {sourceType = a} :: ResourceDataSyncSourceWithState)

-- | The field name in @SyncSource@ for the
-- @ResourceDataSyncAwsOrganizationsSource@ type.
resourceDataSyncSourceWithState_awsOrganizationsSource :: Lens.Lens' ResourceDataSyncSourceWithState (Prelude.Maybe ResourceDataSyncAwsOrganizationsSource)
resourceDataSyncSourceWithState_awsOrganizationsSource = Lens.lens (\ResourceDataSyncSourceWithState' {awsOrganizationsSource} -> awsOrganizationsSource) (\s@ResourceDataSyncSourceWithState' {} a -> s {awsOrganizationsSource = a} :: ResourceDataSyncSourceWithState)

-- | The @SyncSource@ Amazon Web Services Regions included in the resource
-- data sync.
resourceDataSyncSourceWithState_sourceRegions :: Lens.Lens' ResourceDataSyncSourceWithState (Prelude.Maybe [Prelude.Text])
resourceDataSyncSourceWithState_sourceRegions = Lens.lens (\ResourceDataSyncSourceWithState' {sourceRegions} -> sourceRegions) (\s@ResourceDataSyncSourceWithState' {} a -> s {sourceRegions = a} :: ResourceDataSyncSourceWithState) Prelude.. Lens.mapping Lens.coerced

instance
  Core.FromJSON
    ResourceDataSyncSourceWithState
  where
  parseJSON =
    Core.withObject
      "ResourceDataSyncSourceWithState"
      ( \x ->
          ResourceDataSyncSourceWithState'
            Prelude.<$> (x Core..:? "State")
            Prelude.<*> (x Core..:? "EnableAllOpsDataSources")
            Prelude.<*> (x Core..:? "IncludeFutureRegions")
            Prelude.<*> (x Core..:? "SourceType")
            Prelude.<*> (x Core..:? "AwsOrganizationsSource")
            Prelude.<*> (x Core..:? "SourceRegions" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    ResourceDataSyncSourceWithState

instance
  Prelude.NFData
    ResourceDataSyncSourceWithState
