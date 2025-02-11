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
-- Module      : Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanStatus
import Network.AWS.ServiceCatalog.Types.ProvisionedProductPlanType
import Network.AWS.ServiceCatalog.Types.Tag
import Network.AWS.ServiceCatalog.Types.UpdateProvisioningParameter

-- | Information about a plan.
--
-- /See:/ 'newProvisionedProductPlanDetails' smart constructor.
data ProvisionedProductPlanDetails = ProvisionedProductPlanDetails'
  { -- | The status.
    status :: Prelude.Maybe ProvisionedProductPlanStatus,
    -- | The product identifier.
    provisionProductId :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the provisioning artifact.
    provisioningArtifactId :: Prelude.Maybe Prelude.Text,
    -- | The user-friendly name of the provisioned product.
    provisionProductName :: Prelude.Maybe Prelude.Text,
    -- | The UTC time stamp of the creation time.
    createdTime :: Prelude.Maybe Core.POSIX,
    -- | Passed to CloudFormation. The SNS topic ARNs to which to publish
    -- stack-related events.
    notificationArns :: Prelude.Maybe [Prelude.Text],
    -- | The plan identifier.
    planId :: Prelude.Maybe Prelude.Text,
    -- | The name of the plan.
    planName :: Prelude.Maybe Prelude.Text,
    -- | The status message.
    statusMessage :: Prelude.Maybe Prelude.Text,
    -- | The time when the plan was last updated.
    updatedTime :: Prelude.Maybe Core.POSIX,
    -- | The path identifier of the product. This value is optional if the
    -- product has a default path, and required if the product has more than
    -- one path. To list the paths for a product, use ListLaunchPaths.
    pathId :: Prelude.Maybe Prelude.Text,
    -- | Parameters specified by the administrator that are required for
    -- provisioning the product.
    provisioningParameters :: Prelude.Maybe [UpdateProvisioningParameter],
    -- | The plan type.
    planType :: Prelude.Maybe ProvisionedProductPlanType,
    -- | The product identifier.
    productId :: Prelude.Maybe Prelude.Text,
    -- | One or more tags.
    tags :: Prelude.Maybe [Tag]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ProvisionedProductPlanDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'provisionedProductPlanDetails_status' - The status.
--
-- 'provisionProductId', 'provisionedProductPlanDetails_provisionProductId' - The product identifier.
--
-- 'provisioningArtifactId', 'provisionedProductPlanDetails_provisioningArtifactId' - The identifier of the provisioning artifact.
--
-- 'provisionProductName', 'provisionedProductPlanDetails_provisionProductName' - The user-friendly name of the provisioned product.
--
-- 'createdTime', 'provisionedProductPlanDetails_createdTime' - The UTC time stamp of the creation time.
--
-- 'notificationArns', 'provisionedProductPlanDetails_notificationArns' - Passed to CloudFormation. The SNS topic ARNs to which to publish
-- stack-related events.
--
-- 'planId', 'provisionedProductPlanDetails_planId' - The plan identifier.
--
-- 'planName', 'provisionedProductPlanDetails_planName' - The name of the plan.
--
-- 'statusMessage', 'provisionedProductPlanDetails_statusMessage' - The status message.
--
-- 'updatedTime', 'provisionedProductPlanDetails_updatedTime' - The time when the plan was last updated.
--
-- 'pathId', 'provisionedProductPlanDetails_pathId' - The path identifier of the product. This value is optional if the
-- product has a default path, and required if the product has more than
-- one path. To list the paths for a product, use ListLaunchPaths.
--
-- 'provisioningParameters', 'provisionedProductPlanDetails_provisioningParameters' - Parameters specified by the administrator that are required for
-- provisioning the product.
--
-- 'planType', 'provisionedProductPlanDetails_planType' - The plan type.
--
-- 'productId', 'provisionedProductPlanDetails_productId' - The product identifier.
--
-- 'tags', 'provisionedProductPlanDetails_tags' - One or more tags.
newProvisionedProductPlanDetails ::
  ProvisionedProductPlanDetails
newProvisionedProductPlanDetails =
  ProvisionedProductPlanDetails'
    { status =
        Prelude.Nothing,
      provisionProductId = Prelude.Nothing,
      provisioningArtifactId = Prelude.Nothing,
      provisionProductName = Prelude.Nothing,
      createdTime = Prelude.Nothing,
      notificationArns = Prelude.Nothing,
      planId = Prelude.Nothing,
      planName = Prelude.Nothing,
      statusMessage = Prelude.Nothing,
      updatedTime = Prelude.Nothing,
      pathId = Prelude.Nothing,
      provisioningParameters = Prelude.Nothing,
      planType = Prelude.Nothing,
      productId = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The status.
provisionedProductPlanDetails_status :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe ProvisionedProductPlanStatus)
provisionedProductPlanDetails_status = Lens.lens (\ProvisionedProductPlanDetails' {status} -> status) (\s@ProvisionedProductPlanDetails' {} a -> s {status = a} :: ProvisionedProductPlanDetails)

-- | The product identifier.
provisionedProductPlanDetails_provisionProductId :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_provisionProductId = Lens.lens (\ProvisionedProductPlanDetails' {provisionProductId} -> provisionProductId) (\s@ProvisionedProductPlanDetails' {} a -> s {provisionProductId = a} :: ProvisionedProductPlanDetails)

-- | The identifier of the provisioning artifact.
provisionedProductPlanDetails_provisioningArtifactId :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_provisioningArtifactId = Lens.lens (\ProvisionedProductPlanDetails' {provisioningArtifactId} -> provisioningArtifactId) (\s@ProvisionedProductPlanDetails' {} a -> s {provisioningArtifactId = a} :: ProvisionedProductPlanDetails)

-- | The user-friendly name of the provisioned product.
provisionedProductPlanDetails_provisionProductName :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_provisionProductName = Lens.lens (\ProvisionedProductPlanDetails' {provisionProductName} -> provisionProductName) (\s@ProvisionedProductPlanDetails' {} a -> s {provisionProductName = a} :: ProvisionedProductPlanDetails)

-- | The UTC time stamp of the creation time.
provisionedProductPlanDetails_createdTime :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.UTCTime)
provisionedProductPlanDetails_createdTime = Lens.lens (\ProvisionedProductPlanDetails' {createdTime} -> createdTime) (\s@ProvisionedProductPlanDetails' {} a -> s {createdTime = a} :: ProvisionedProductPlanDetails) Prelude.. Lens.mapping Core._Time

-- | Passed to CloudFormation. The SNS topic ARNs to which to publish
-- stack-related events.
provisionedProductPlanDetails_notificationArns :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe [Prelude.Text])
provisionedProductPlanDetails_notificationArns = Lens.lens (\ProvisionedProductPlanDetails' {notificationArns} -> notificationArns) (\s@ProvisionedProductPlanDetails' {} a -> s {notificationArns = a} :: ProvisionedProductPlanDetails) Prelude.. Lens.mapping Lens.coerced

-- | The plan identifier.
provisionedProductPlanDetails_planId :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_planId = Lens.lens (\ProvisionedProductPlanDetails' {planId} -> planId) (\s@ProvisionedProductPlanDetails' {} a -> s {planId = a} :: ProvisionedProductPlanDetails)

-- | The name of the plan.
provisionedProductPlanDetails_planName :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_planName = Lens.lens (\ProvisionedProductPlanDetails' {planName} -> planName) (\s@ProvisionedProductPlanDetails' {} a -> s {planName = a} :: ProvisionedProductPlanDetails)

-- | The status message.
provisionedProductPlanDetails_statusMessage :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_statusMessage = Lens.lens (\ProvisionedProductPlanDetails' {statusMessage} -> statusMessage) (\s@ProvisionedProductPlanDetails' {} a -> s {statusMessage = a} :: ProvisionedProductPlanDetails)

-- | The time when the plan was last updated.
provisionedProductPlanDetails_updatedTime :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.UTCTime)
provisionedProductPlanDetails_updatedTime = Lens.lens (\ProvisionedProductPlanDetails' {updatedTime} -> updatedTime) (\s@ProvisionedProductPlanDetails' {} a -> s {updatedTime = a} :: ProvisionedProductPlanDetails) Prelude.. Lens.mapping Core._Time

-- | The path identifier of the product. This value is optional if the
-- product has a default path, and required if the product has more than
-- one path. To list the paths for a product, use ListLaunchPaths.
provisionedProductPlanDetails_pathId :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_pathId = Lens.lens (\ProvisionedProductPlanDetails' {pathId} -> pathId) (\s@ProvisionedProductPlanDetails' {} a -> s {pathId = a} :: ProvisionedProductPlanDetails)

-- | Parameters specified by the administrator that are required for
-- provisioning the product.
provisionedProductPlanDetails_provisioningParameters :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe [UpdateProvisioningParameter])
provisionedProductPlanDetails_provisioningParameters = Lens.lens (\ProvisionedProductPlanDetails' {provisioningParameters} -> provisioningParameters) (\s@ProvisionedProductPlanDetails' {} a -> s {provisioningParameters = a} :: ProvisionedProductPlanDetails) Prelude.. Lens.mapping Lens.coerced

-- | The plan type.
provisionedProductPlanDetails_planType :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe ProvisionedProductPlanType)
provisionedProductPlanDetails_planType = Lens.lens (\ProvisionedProductPlanDetails' {planType} -> planType) (\s@ProvisionedProductPlanDetails' {} a -> s {planType = a} :: ProvisionedProductPlanDetails)

-- | The product identifier.
provisionedProductPlanDetails_productId :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe Prelude.Text)
provisionedProductPlanDetails_productId = Lens.lens (\ProvisionedProductPlanDetails' {productId} -> productId) (\s@ProvisionedProductPlanDetails' {} a -> s {productId = a} :: ProvisionedProductPlanDetails)

-- | One or more tags.
provisionedProductPlanDetails_tags :: Lens.Lens' ProvisionedProductPlanDetails (Prelude.Maybe [Tag])
provisionedProductPlanDetails_tags = Lens.lens (\ProvisionedProductPlanDetails' {tags} -> tags) (\s@ProvisionedProductPlanDetails' {} a -> s {tags = a} :: ProvisionedProductPlanDetails) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ProvisionedProductPlanDetails where
  parseJSON =
    Core.withObject
      "ProvisionedProductPlanDetails"
      ( \x ->
          ProvisionedProductPlanDetails'
            Prelude.<$> (x Core..:? "Status")
            Prelude.<*> (x Core..:? "ProvisionProductId")
            Prelude.<*> (x Core..:? "ProvisioningArtifactId")
            Prelude.<*> (x Core..:? "ProvisionProductName")
            Prelude.<*> (x Core..:? "CreatedTime")
            Prelude.<*> ( x Core..:? "NotificationArns"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "PlanId")
            Prelude.<*> (x Core..:? "PlanName")
            Prelude.<*> (x Core..:? "StatusMessage")
            Prelude.<*> (x Core..:? "UpdatedTime")
            Prelude.<*> (x Core..:? "PathId")
            Prelude.<*> ( x Core..:? "ProvisioningParameters"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "PlanType")
            Prelude.<*> (x Core..:? "ProductId")
            Prelude.<*> (x Core..:? "Tags" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    ProvisionedProductPlanDetails

instance Prelude.NFData ProvisionedProductPlanDetails
