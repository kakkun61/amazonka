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
-- Module      : Network.AWS.DirectoryService.Types.DirectoryDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.DirectoryDescription where

import qualified Network.AWS.Core as Core
import Network.AWS.DirectoryService.Types.DirectoryConnectSettingsDescription
import Network.AWS.DirectoryService.Types.DirectoryEdition
import Network.AWS.DirectoryService.Types.DirectorySize
import Network.AWS.DirectoryService.Types.DirectoryStage
import Network.AWS.DirectoryService.Types.DirectoryType
import Network.AWS.DirectoryService.Types.DirectoryVpcSettingsDescription
import Network.AWS.DirectoryService.Types.OwnerDirectoryDescription
import Network.AWS.DirectoryService.Types.RadiusSettings
import Network.AWS.DirectoryService.Types.RadiusStatus
import Network.AWS.DirectoryService.Types.RegionsInfo
import Network.AWS.DirectoryService.Types.ShareMethod
import Network.AWS.DirectoryService.Types.ShareStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an Directory Service directory.
--
-- /See:/ 'newDirectoryDescription' smart constructor.
data DirectoryDescription = DirectoryDescription'
  { -- | The edition associated with this directory.
    edition :: Prelude.Maybe DirectoryEdition,
    -- | The status of the RADIUS MFA server connection.
    radiusStatus :: Prelude.Maybe RadiusStatus,
    -- | The current stage of the directory.
    stage :: Prelude.Maybe DirectoryStage,
    -- | The directory identifier.
    directoryId :: Prelude.Maybe Prelude.Text,
    -- | The access URL for the directory, such as
    -- @http:\/\/\<alias>.awsapps.com@. If no alias has been created for the
    -- directory, @\<alias>@ is the directory identifier, such as
    -- @d-XXXXXXXXXX@.
    accessUrl :: Prelude.Maybe Prelude.Text,
    -- | The short name of the directory.
    shortName :: Prelude.Maybe Prelude.Text,
    -- | Lists the Regions where the directory has replicated.
    regionsInfo :: Prelude.Maybe RegionsInfo,
    -- | The directory size.
    size :: Prelude.Maybe DirectorySize,
    -- | The desired number of domain controllers in the directory if the
    -- directory is Microsoft AD.
    desiredNumberOfDomainControllers :: Prelude.Maybe Prelude.Natural,
    -- | A RadiusSettings object that contains information about the RADIUS
    -- server configured for this directory.
    radiusSettings :: Prelude.Maybe RadiusSettings,
    -- | Specifies when the directory was created.
    launchTime :: Prelude.Maybe Core.POSIX,
    -- | The alias for the directory. If no alias has been created for the
    -- directory, the alias is the directory identifier, such as
    -- @d-XXXXXXXXXX@.
    alias :: Prelude.Maybe Prelude.Text,
    -- | Current directory status of the shared Managed Microsoft AD directory.
    shareStatus :: Prelude.Maybe ShareStatus,
    -- | The fully qualified name of the directory.
    name :: Prelude.Maybe Prelude.Text,
    -- | The method used when sharing a directory to determine whether the
    -- directory should be shared within your Amazon Web Services organization
    -- (@ORGANIZATIONS@) or with any Amazon Web Services account by sending a
    -- shared directory request (@HANDSHAKE@).
    shareMethod :: Prelude.Maybe ShareMethod,
    -- | The date and time that the stage was last updated.
    stageLastUpdatedDateTime :: Prelude.Maybe Core.POSIX,
    -- | Indicates if single sign-on is enabled for the directory. For more
    -- information, see EnableSso and DisableSso.
    ssoEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The IP addresses of the DNS servers for the directory. For a Simple AD
    -- or Microsoft AD directory, these are the IP addresses of the Simple AD
    -- or Microsoft AD directory servers. For an AD Connector directory, these
    -- are the IP addresses of the DNS servers or domain controllers in your
    -- self-managed directory to which the AD Connector is connected.
    dnsIpAddrs :: Prelude.Maybe [Prelude.Text],
    -- | A DirectoryVpcSettingsDescription object that contains additional
    -- information about a directory. This member is only present if the
    -- directory is a Simple AD or Managed Microsoft AD directory.
    vpcSettings :: Prelude.Maybe DirectoryVpcSettingsDescription,
    -- | The directory size.
    type' :: Prelude.Maybe DirectoryType,
    -- | Additional information about the directory stage.
    stageReason :: Prelude.Maybe Prelude.Text,
    -- | A DirectoryConnectSettingsDescription object that contains additional
    -- information about an AD Connector directory. This member is only present
    -- if the directory is an AD Connector directory.
    connectSettings :: Prelude.Maybe DirectoryConnectSettingsDescription,
    -- | Describes the Managed Microsoft AD directory in the directory owner
    -- account.
    ownerDirectoryDescription :: Prelude.Maybe OwnerDirectoryDescription,
    -- | The description for the directory.
    description :: Prelude.Maybe Prelude.Text,
    -- | A directory share request that is sent by the directory owner to the
    -- directory consumer. The request includes a typed message to help the
    -- directory consumer administrator determine whether to approve or reject
    -- the share invitation.
    shareNotes :: Prelude.Maybe (Core.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DirectoryDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'edition', 'directoryDescription_edition' - The edition associated with this directory.
--
-- 'radiusStatus', 'directoryDescription_radiusStatus' - The status of the RADIUS MFA server connection.
--
-- 'stage', 'directoryDescription_stage' - The current stage of the directory.
--
-- 'directoryId', 'directoryDescription_directoryId' - The directory identifier.
--
-- 'accessUrl', 'directoryDescription_accessUrl' - The access URL for the directory, such as
-- @http:\/\/\<alias>.awsapps.com@. If no alias has been created for the
-- directory, @\<alias>@ is the directory identifier, such as
-- @d-XXXXXXXXXX@.
--
-- 'shortName', 'directoryDescription_shortName' - The short name of the directory.
--
-- 'regionsInfo', 'directoryDescription_regionsInfo' - Lists the Regions where the directory has replicated.
--
-- 'size', 'directoryDescription_size' - The directory size.
--
-- 'desiredNumberOfDomainControllers', 'directoryDescription_desiredNumberOfDomainControllers' - The desired number of domain controllers in the directory if the
-- directory is Microsoft AD.
--
-- 'radiusSettings', 'directoryDescription_radiusSettings' - A RadiusSettings object that contains information about the RADIUS
-- server configured for this directory.
--
-- 'launchTime', 'directoryDescription_launchTime' - Specifies when the directory was created.
--
-- 'alias', 'directoryDescription_alias' - The alias for the directory. If no alias has been created for the
-- directory, the alias is the directory identifier, such as
-- @d-XXXXXXXXXX@.
--
-- 'shareStatus', 'directoryDescription_shareStatus' - Current directory status of the shared Managed Microsoft AD directory.
--
-- 'name', 'directoryDescription_name' - The fully qualified name of the directory.
--
-- 'shareMethod', 'directoryDescription_shareMethod' - The method used when sharing a directory to determine whether the
-- directory should be shared within your Amazon Web Services organization
-- (@ORGANIZATIONS@) or with any Amazon Web Services account by sending a
-- shared directory request (@HANDSHAKE@).
--
-- 'stageLastUpdatedDateTime', 'directoryDescription_stageLastUpdatedDateTime' - The date and time that the stage was last updated.
--
-- 'ssoEnabled', 'directoryDescription_ssoEnabled' - Indicates if single sign-on is enabled for the directory. For more
-- information, see EnableSso and DisableSso.
--
-- 'dnsIpAddrs', 'directoryDescription_dnsIpAddrs' - The IP addresses of the DNS servers for the directory. For a Simple AD
-- or Microsoft AD directory, these are the IP addresses of the Simple AD
-- or Microsoft AD directory servers. For an AD Connector directory, these
-- are the IP addresses of the DNS servers or domain controllers in your
-- self-managed directory to which the AD Connector is connected.
--
-- 'vpcSettings', 'directoryDescription_vpcSettings' - A DirectoryVpcSettingsDescription object that contains additional
-- information about a directory. This member is only present if the
-- directory is a Simple AD or Managed Microsoft AD directory.
--
-- 'type'', 'directoryDescription_type' - The directory size.
--
-- 'stageReason', 'directoryDescription_stageReason' - Additional information about the directory stage.
--
-- 'connectSettings', 'directoryDescription_connectSettings' - A DirectoryConnectSettingsDescription object that contains additional
-- information about an AD Connector directory. This member is only present
-- if the directory is an AD Connector directory.
--
-- 'ownerDirectoryDescription', 'directoryDescription_ownerDirectoryDescription' - Describes the Managed Microsoft AD directory in the directory owner
-- account.
--
-- 'description', 'directoryDescription_description' - The description for the directory.
--
-- 'shareNotes', 'directoryDescription_shareNotes' - A directory share request that is sent by the directory owner to the
-- directory consumer. The request includes a typed message to help the
-- directory consumer administrator determine whether to approve or reject
-- the share invitation.
newDirectoryDescription ::
  DirectoryDescription
newDirectoryDescription =
  DirectoryDescription'
    { edition = Prelude.Nothing,
      radiusStatus = Prelude.Nothing,
      stage = Prelude.Nothing,
      directoryId = Prelude.Nothing,
      accessUrl = Prelude.Nothing,
      shortName = Prelude.Nothing,
      regionsInfo = Prelude.Nothing,
      size = Prelude.Nothing,
      desiredNumberOfDomainControllers = Prelude.Nothing,
      radiusSettings = Prelude.Nothing,
      launchTime = Prelude.Nothing,
      alias = Prelude.Nothing,
      shareStatus = Prelude.Nothing,
      name = Prelude.Nothing,
      shareMethod = Prelude.Nothing,
      stageLastUpdatedDateTime = Prelude.Nothing,
      ssoEnabled = Prelude.Nothing,
      dnsIpAddrs = Prelude.Nothing,
      vpcSettings = Prelude.Nothing,
      type' = Prelude.Nothing,
      stageReason = Prelude.Nothing,
      connectSettings = Prelude.Nothing,
      ownerDirectoryDescription = Prelude.Nothing,
      description = Prelude.Nothing,
      shareNotes = Prelude.Nothing
    }

-- | The edition associated with this directory.
directoryDescription_edition :: Lens.Lens' DirectoryDescription (Prelude.Maybe DirectoryEdition)
directoryDescription_edition = Lens.lens (\DirectoryDescription' {edition} -> edition) (\s@DirectoryDescription' {} a -> s {edition = a} :: DirectoryDescription)

-- | The status of the RADIUS MFA server connection.
directoryDescription_radiusStatus :: Lens.Lens' DirectoryDescription (Prelude.Maybe RadiusStatus)
directoryDescription_radiusStatus = Lens.lens (\DirectoryDescription' {radiusStatus} -> radiusStatus) (\s@DirectoryDescription' {} a -> s {radiusStatus = a} :: DirectoryDescription)

-- | The current stage of the directory.
directoryDescription_stage :: Lens.Lens' DirectoryDescription (Prelude.Maybe DirectoryStage)
directoryDescription_stage = Lens.lens (\DirectoryDescription' {stage} -> stage) (\s@DirectoryDescription' {} a -> s {stage = a} :: DirectoryDescription)

-- | The directory identifier.
directoryDescription_directoryId :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_directoryId = Lens.lens (\DirectoryDescription' {directoryId} -> directoryId) (\s@DirectoryDescription' {} a -> s {directoryId = a} :: DirectoryDescription)

-- | The access URL for the directory, such as
-- @http:\/\/\<alias>.awsapps.com@. If no alias has been created for the
-- directory, @\<alias>@ is the directory identifier, such as
-- @d-XXXXXXXXXX@.
directoryDescription_accessUrl :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_accessUrl = Lens.lens (\DirectoryDescription' {accessUrl} -> accessUrl) (\s@DirectoryDescription' {} a -> s {accessUrl = a} :: DirectoryDescription)

-- | The short name of the directory.
directoryDescription_shortName :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_shortName = Lens.lens (\DirectoryDescription' {shortName} -> shortName) (\s@DirectoryDescription' {} a -> s {shortName = a} :: DirectoryDescription)

-- | Lists the Regions where the directory has replicated.
directoryDescription_regionsInfo :: Lens.Lens' DirectoryDescription (Prelude.Maybe RegionsInfo)
directoryDescription_regionsInfo = Lens.lens (\DirectoryDescription' {regionsInfo} -> regionsInfo) (\s@DirectoryDescription' {} a -> s {regionsInfo = a} :: DirectoryDescription)

-- | The directory size.
directoryDescription_size :: Lens.Lens' DirectoryDescription (Prelude.Maybe DirectorySize)
directoryDescription_size = Lens.lens (\DirectoryDescription' {size} -> size) (\s@DirectoryDescription' {} a -> s {size = a} :: DirectoryDescription)

-- | The desired number of domain controllers in the directory if the
-- directory is Microsoft AD.
directoryDescription_desiredNumberOfDomainControllers :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Natural)
directoryDescription_desiredNumberOfDomainControllers = Lens.lens (\DirectoryDescription' {desiredNumberOfDomainControllers} -> desiredNumberOfDomainControllers) (\s@DirectoryDescription' {} a -> s {desiredNumberOfDomainControllers = a} :: DirectoryDescription)

-- | A RadiusSettings object that contains information about the RADIUS
-- server configured for this directory.
directoryDescription_radiusSettings :: Lens.Lens' DirectoryDescription (Prelude.Maybe RadiusSettings)
directoryDescription_radiusSettings = Lens.lens (\DirectoryDescription' {radiusSettings} -> radiusSettings) (\s@DirectoryDescription' {} a -> s {radiusSettings = a} :: DirectoryDescription)

-- | Specifies when the directory was created.
directoryDescription_launchTime :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.UTCTime)
directoryDescription_launchTime = Lens.lens (\DirectoryDescription' {launchTime} -> launchTime) (\s@DirectoryDescription' {} a -> s {launchTime = a} :: DirectoryDescription) Prelude.. Lens.mapping Core._Time

-- | The alias for the directory. If no alias has been created for the
-- directory, the alias is the directory identifier, such as
-- @d-XXXXXXXXXX@.
directoryDescription_alias :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_alias = Lens.lens (\DirectoryDescription' {alias} -> alias) (\s@DirectoryDescription' {} a -> s {alias = a} :: DirectoryDescription)

-- | Current directory status of the shared Managed Microsoft AD directory.
directoryDescription_shareStatus :: Lens.Lens' DirectoryDescription (Prelude.Maybe ShareStatus)
directoryDescription_shareStatus = Lens.lens (\DirectoryDescription' {shareStatus} -> shareStatus) (\s@DirectoryDescription' {} a -> s {shareStatus = a} :: DirectoryDescription)

-- | The fully qualified name of the directory.
directoryDescription_name :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_name = Lens.lens (\DirectoryDescription' {name} -> name) (\s@DirectoryDescription' {} a -> s {name = a} :: DirectoryDescription)

-- | The method used when sharing a directory to determine whether the
-- directory should be shared within your Amazon Web Services organization
-- (@ORGANIZATIONS@) or with any Amazon Web Services account by sending a
-- shared directory request (@HANDSHAKE@).
directoryDescription_shareMethod :: Lens.Lens' DirectoryDescription (Prelude.Maybe ShareMethod)
directoryDescription_shareMethod = Lens.lens (\DirectoryDescription' {shareMethod} -> shareMethod) (\s@DirectoryDescription' {} a -> s {shareMethod = a} :: DirectoryDescription)

-- | The date and time that the stage was last updated.
directoryDescription_stageLastUpdatedDateTime :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.UTCTime)
directoryDescription_stageLastUpdatedDateTime = Lens.lens (\DirectoryDescription' {stageLastUpdatedDateTime} -> stageLastUpdatedDateTime) (\s@DirectoryDescription' {} a -> s {stageLastUpdatedDateTime = a} :: DirectoryDescription) Prelude.. Lens.mapping Core._Time

-- | Indicates if single sign-on is enabled for the directory. For more
-- information, see EnableSso and DisableSso.
directoryDescription_ssoEnabled :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Bool)
directoryDescription_ssoEnabled = Lens.lens (\DirectoryDescription' {ssoEnabled} -> ssoEnabled) (\s@DirectoryDescription' {} a -> s {ssoEnabled = a} :: DirectoryDescription)

-- | The IP addresses of the DNS servers for the directory. For a Simple AD
-- or Microsoft AD directory, these are the IP addresses of the Simple AD
-- or Microsoft AD directory servers. For an AD Connector directory, these
-- are the IP addresses of the DNS servers or domain controllers in your
-- self-managed directory to which the AD Connector is connected.
directoryDescription_dnsIpAddrs :: Lens.Lens' DirectoryDescription (Prelude.Maybe [Prelude.Text])
directoryDescription_dnsIpAddrs = Lens.lens (\DirectoryDescription' {dnsIpAddrs} -> dnsIpAddrs) (\s@DirectoryDescription' {} a -> s {dnsIpAddrs = a} :: DirectoryDescription) Prelude.. Lens.mapping Lens.coerced

-- | A DirectoryVpcSettingsDescription object that contains additional
-- information about a directory. This member is only present if the
-- directory is a Simple AD or Managed Microsoft AD directory.
directoryDescription_vpcSettings :: Lens.Lens' DirectoryDescription (Prelude.Maybe DirectoryVpcSettingsDescription)
directoryDescription_vpcSettings = Lens.lens (\DirectoryDescription' {vpcSettings} -> vpcSettings) (\s@DirectoryDescription' {} a -> s {vpcSettings = a} :: DirectoryDescription)

-- | The directory size.
directoryDescription_type :: Lens.Lens' DirectoryDescription (Prelude.Maybe DirectoryType)
directoryDescription_type = Lens.lens (\DirectoryDescription' {type'} -> type') (\s@DirectoryDescription' {} a -> s {type' = a} :: DirectoryDescription)

-- | Additional information about the directory stage.
directoryDescription_stageReason :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_stageReason = Lens.lens (\DirectoryDescription' {stageReason} -> stageReason) (\s@DirectoryDescription' {} a -> s {stageReason = a} :: DirectoryDescription)

-- | A DirectoryConnectSettingsDescription object that contains additional
-- information about an AD Connector directory. This member is only present
-- if the directory is an AD Connector directory.
directoryDescription_connectSettings :: Lens.Lens' DirectoryDescription (Prelude.Maybe DirectoryConnectSettingsDescription)
directoryDescription_connectSettings = Lens.lens (\DirectoryDescription' {connectSettings} -> connectSettings) (\s@DirectoryDescription' {} a -> s {connectSettings = a} :: DirectoryDescription)

-- | Describes the Managed Microsoft AD directory in the directory owner
-- account.
directoryDescription_ownerDirectoryDescription :: Lens.Lens' DirectoryDescription (Prelude.Maybe OwnerDirectoryDescription)
directoryDescription_ownerDirectoryDescription = Lens.lens (\DirectoryDescription' {ownerDirectoryDescription} -> ownerDirectoryDescription) (\s@DirectoryDescription' {} a -> s {ownerDirectoryDescription = a} :: DirectoryDescription)

-- | The description for the directory.
directoryDescription_description :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_description = Lens.lens (\DirectoryDescription' {description} -> description) (\s@DirectoryDescription' {} a -> s {description = a} :: DirectoryDescription)

-- | A directory share request that is sent by the directory owner to the
-- directory consumer. The request includes a typed message to help the
-- directory consumer administrator determine whether to approve or reject
-- the share invitation.
directoryDescription_shareNotes :: Lens.Lens' DirectoryDescription (Prelude.Maybe Prelude.Text)
directoryDescription_shareNotes = Lens.lens (\DirectoryDescription' {shareNotes} -> shareNotes) (\s@DirectoryDescription' {} a -> s {shareNotes = a} :: DirectoryDescription) Prelude.. Lens.mapping Core._Sensitive

instance Core.FromJSON DirectoryDescription where
  parseJSON =
    Core.withObject
      "DirectoryDescription"
      ( \x ->
          DirectoryDescription'
            Prelude.<$> (x Core..:? "Edition")
            Prelude.<*> (x Core..:? "RadiusStatus")
            Prelude.<*> (x Core..:? "Stage")
            Prelude.<*> (x Core..:? "DirectoryId")
            Prelude.<*> (x Core..:? "AccessUrl")
            Prelude.<*> (x Core..:? "ShortName")
            Prelude.<*> (x Core..:? "RegionsInfo")
            Prelude.<*> (x Core..:? "Size")
            Prelude.<*> (x Core..:? "DesiredNumberOfDomainControllers")
            Prelude.<*> (x Core..:? "RadiusSettings")
            Prelude.<*> (x Core..:? "LaunchTime")
            Prelude.<*> (x Core..:? "Alias")
            Prelude.<*> (x Core..:? "ShareStatus")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "ShareMethod")
            Prelude.<*> (x Core..:? "StageLastUpdatedDateTime")
            Prelude.<*> (x Core..:? "SsoEnabled")
            Prelude.<*> (x Core..:? "DnsIpAddrs" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "VpcSettings")
            Prelude.<*> (x Core..:? "Type")
            Prelude.<*> (x Core..:? "StageReason")
            Prelude.<*> (x Core..:? "ConnectSettings")
            Prelude.<*> (x Core..:? "OwnerDirectoryDescription")
            Prelude.<*> (x Core..:? "Description")
            Prelude.<*> (x Core..:? "ShareNotes")
      )

instance Prelude.Hashable DirectoryDescription

instance Prelude.NFData DirectoryDescription
