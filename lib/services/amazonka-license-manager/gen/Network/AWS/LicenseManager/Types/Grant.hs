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
-- Module      : Network.AWS.LicenseManager.Types.Grant
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LicenseManager.Types.Grant where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.LicenseManager.Types.AllowedOperation
import Network.AWS.LicenseManager.Types.GrantStatus
import qualified Network.AWS.Prelude as Prelude

-- | Describes a grant.
--
-- /See:/ 'newGrant' smart constructor.
data Grant = Grant'
  { -- | Grant status reason.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | Amazon Resource Name (ARN) of the grant.
    grantArn :: Prelude.Text,
    -- | Grant name.
    grantName :: Prelude.Text,
    -- | Parent ARN.
    parentArn :: Prelude.Text,
    -- | License ARN.
    licenseArn :: Prelude.Text,
    -- | The grantee principal ARN.
    granteePrincipalArn :: Prelude.Text,
    -- | Home Region of the grant.
    homeRegion :: Prelude.Text,
    -- | Grant status.
    grantStatus :: GrantStatus,
    -- | Grant version.
    version :: Prelude.Text,
    -- | Granted operations.
    grantedOperations :: Prelude.NonEmpty AllowedOperation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Grant' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusReason', 'grant_statusReason' - Grant status reason.
--
-- 'grantArn', 'grant_grantArn' - Amazon Resource Name (ARN) of the grant.
--
-- 'grantName', 'grant_grantName' - Grant name.
--
-- 'parentArn', 'grant_parentArn' - Parent ARN.
--
-- 'licenseArn', 'grant_licenseArn' - License ARN.
--
-- 'granteePrincipalArn', 'grant_granteePrincipalArn' - The grantee principal ARN.
--
-- 'homeRegion', 'grant_homeRegion' - Home Region of the grant.
--
-- 'grantStatus', 'grant_grantStatus' - Grant status.
--
-- 'version', 'grant_version' - Grant version.
--
-- 'grantedOperations', 'grant_grantedOperations' - Granted operations.
newGrant ::
  -- | 'grantArn'
  Prelude.Text ->
  -- | 'grantName'
  Prelude.Text ->
  -- | 'parentArn'
  Prelude.Text ->
  -- | 'licenseArn'
  Prelude.Text ->
  -- | 'granteePrincipalArn'
  Prelude.Text ->
  -- | 'homeRegion'
  Prelude.Text ->
  -- | 'grantStatus'
  GrantStatus ->
  -- | 'version'
  Prelude.Text ->
  -- | 'grantedOperations'
  Prelude.NonEmpty AllowedOperation ->
  Grant
newGrant
  pGrantArn_
  pGrantName_
  pParentArn_
  pLicenseArn_
  pGranteePrincipalArn_
  pHomeRegion_
  pGrantStatus_
  pVersion_
  pGrantedOperations_ =
    Grant'
      { statusReason = Prelude.Nothing,
        grantArn = pGrantArn_,
        grantName = pGrantName_,
        parentArn = pParentArn_,
        licenseArn = pLicenseArn_,
        granteePrincipalArn = pGranteePrincipalArn_,
        homeRegion = pHomeRegion_,
        grantStatus = pGrantStatus_,
        version = pVersion_,
        grantedOperations =
          Lens.coerced Lens.# pGrantedOperations_
      }

-- | Grant status reason.
grant_statusReason :: Lens.Lens' Grant (Prelude.Maybe Prelude.Text)
grant_statusReason = Lens.lens (\Grant' {statusReason} -> statusReason) (\s@Grant' {} a -> s {statusReason = a} :: Grant)

-- | Amazon Resource Name (ARN) of the grant.
grant_grantArn :: Lens.Lens' Grant Prelude.Text
grant_grantArn = Lens.lens (\Grant' {grantArn} -> grantArn) (\s@Grant' {} a -> s {grantArn = a} :: Grant)

-- | Grant name.
grant_grantName :: Lens.Lens' Grant Prelude.Text
grant_grantName = Lens.lens (\Grant' {grantName} -> grantName) (\s@Grant' {} a -> s {grantName = a} :: Grant)

-- | Parent ARN.
grant_parentArn :: Lens.Lens' Grant Prelude.Text
grant_parentArn = Lens.lens (\Grant' {parentArn} -> parentArn) (\s@Grant' {} a -> s {parentArn = a} :: Grant)

-- | License ARN.
grant_licenseArn :: Lens.Lens' Grant Prelude.Text
grant_licenseArn = Lens.lens (\Grant' {licenseArn} -> licenseArn) (\s@Grant' {} a -> s {licenseArn = a} :: Grant)

-- | The grantee principal ARN.
grant_granteePrincipalArn :: Lens.Lens' Grant Prelude.Text
grant_granteePrincipalArn = Lens.lens (\Grant' {granteePrincipalArn} -> granteePrincipalArn) (\s@Grant' {} a -> s {granteePrincipalArn = a} :: Grant)

-- | Home Region of the grant.
grant_homeRegion :: Lens.Lens' Grant Prelude.Text
grant_homeRegion = Lens.lens (\Grant' {homeRegion} -> homeRegion) (\s@Grant' {} a -> s {homeRegion = a} :: Grant)

-- | Grant status.
grant_grantStatus :: Lens.Lens' Grant GrantStatus
grant_grantStatus = Lens.lens (\Grant' {grantStatus} -> grantStatus) (\s@Grant' {} a -> s {grantStatus = a} :: Grant)

-- | Grant version.
grant_version :: Lens.Lens' Grant Prelude.Text
grant_version = Lens.lens (\Grant' {version} -> version) (\s@Grant' {} a -> s {version = a} :: Grant)

-- | Granted operations.
grant_grantedOperations :: Lens.Lens' Grant (Prelude.NonEmpty AllowedOperation)
grant_grantedOperations = Lens.lens (\Grant' {grantedOperations} -> grantedOperations) (\s@Grant' {} a -> s {grantedOperations = a} :: Grant) Prelude.. Lens.coerced

instance Core.FromJSON Grant where
  parseJSON =
    Core.withObject
      "Grant"
      ( \x ->
          Grant'
            Prelude.<$> (x Core..:? "StatusReason")
            Prelude.<*> (x Core..: "GrantArn")
            Prelude.<*> (x Core..: "GrantName")
            Prelude.<*> (x Core..: "ParentArn")
            Prelude.<*> (x Core..: "LicenseArn")
            Prelude.<*> (x Core..: "GranteePrincipalArn")
            Prelude.<*> (x Core..: "HomeRegion")
            Prelude.<*> (x Core..: "GrantStatus")
            Prelude.<*> (x Core..: "Version")
            Prelude.<*> (x Core..: "GrantedOperations")
      )

instance Prelude.Hashable Grant

instance Prelude.NFData Grant
