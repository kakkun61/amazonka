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
-- Module      : Network.AWS.LakeFormation.Types.PrincipalResourcePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LakeFormation.Types.PrincipalResourcePermissions where

import qualified Network.AWS.Core as Core
import Network.AWS.LakeFormation.Types.DataLakePrincipal
import Network.AWS.LakeFormation.Types.DetailsMap
import Network.AWS.LakeFormation.Types.Permission
import Network.AWS.LakeFormation.Types.Resource
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The permissions granted or revoked on a resource.
--
-- /See:/ 'newPrincipalResourcePermissions' smart constructor.
data PrincipalResourcePermissions = PrincipalResourcePermissions'
  { -- | This attribute can be used to return any additional details of
    -- @PrincipalResourcePermissions@. Currently returns only as a RAM resource
    -- share ARN.
    additionalDetails :: Prelude.Maybe DetailsMap,
    -- | Indicates whether to grant the ability to grant permissions (as a subset
    -- of permissions granted).
    permissionsWithGrantOption :: Prelude.Maybe [Permission],
    -- | The Data Lake principal to be granted or revoked permissions.
    principal :: Prelude.Maybe DataLakePrincipal,
    -- | The resource where permissions are to be granted or revoked.
    resource :: Prelude.Maybe Resource,
    -- | The permissions to be granted or revoked on the resource.
    permissions :: Prelude.Maybe [Permission]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PrincipalResourcePermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalDetails', 'principalResourcePermissions_additionalDetails' - This attribute can be used to return any additional details of
-- @PrincipalResourcePermissions@. Currently returns only as a RAM resource
-- share ARN.
--
-- 'permissionsWithGrantOption', 'principalResourcePermissions_permissionsWithGrantOption' - Indicates whether to grant the ability to grant permissions (as a subset
-- of permissions granted).
--
-- 'principal', 'principalResourcePermissions_principal' - The Data Lake principal to be granted or revoked permissions.
--
-- 'resource', 'principalResourcePermissions_resource' - The resource where permissions are to be granted or revoked.
--
-- 'permissions', 'principalResourcePermissions_permissions' - The permissions to be granted or revoked on the resource.
newPrincipalResourcePermissions ::
  PrincipalResourcePermissions
newPrincipalResourcePermissions =
  PrincipalResourcePermissions'
    { additionalDetails =
        Prelude.Nothing,
      permissionsWithGrantOption = Prelude.Nothing,
      principal = Prelude.Nothing,
      resource = Prelude.Nothing,
      permissions = Prelude.Nothing
    }

-- | This attribute can be used to return any additional details of
-- @PrincipalResourcePermissions@. Currently returns only as a RAM resource
-- share ARN.
principalResourcePermissions_additionalDetails :: Lens.Lens' PrincipalResourcePermissions (Prelude.Maybe DetailsMap)
principalResourcePermissions_additionalDetails = Lens.lens (\PrincipalResourcePermissions' {additionalDetails} -> additionalDetails) (\s@PrincipalResourcePermissions' {} a -> s {additionalDetails = a} :: PrincipalResourcePermissions)

-- | Indicates whether to grant the ability to grant permissions (as a subset
-- of permissions granted).
principalResourcePermissions_permissionsWithGrantOption :: Lens.Lens' PrincipalResourcePermissions (Prelude.Maybe [Permission])
principalResourcePermissions_permissionsWithGrantOption = Lens.lens (\PrincipalResourcePermissions' {permissionsWithGrantOption} -> permissionsWithGrantOption) (\s@PrincipalResourcePermissions' {} a -> s {permissionsWithGrantOption = a} :: PrincipalResourcePermissions) Prelude.. Lens.mapping Lens.coerced

-- | The Data Lake principal to be granted or revoked permissions.
principalResourcePermissions_principal :: Lens.Lens' PrincipalResourcePermissions (Prelude.Maybe DataLakePrincipal)
principalResourcePermissions_principal = Lens.lens (\PrincipalResourcePermissions' {principal} -> principal) (\s@PrincipalResourcePermissions' {} a -> s {principal = a} :: PrincipalResourcePermissions)

-- | The resource where permissions are to be granted or revoked.
principalResourcePermissions_resource :: Lens.Lens' PrincipalResourcePermissions (Prelude.Maybe Resource)
principalResourcePermissions_resource = Lens.lens (\PrincipalResourcePermissions' {resource} -> resource) (\s@PrincipalResourcePermissions' {} a -> s {resource = a} :: PrincipalResourcePermissions)

-- | The permissions to be granted or revoked on the resource.
principalResourcePermissions_permissions :: Lens.Lens' PrincipalResourcePermissions (Prelude.Maybe [Permission])
principalResourcePermissions_permissions = Lens.lens (\PrincipalResourcePermissions' {permissions} -> permissions) (\s@PrincipalResourcePermissions' {} a -> s {permissions = a} :: PrincipalResourcePermissions) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON PrincipalResourcePermissions where
  parseJSON =
    Core.withObject
      "PrincipalResourcePermissions"
      ( \x ->
          PrincipalResourcePermissions'
            Prelude.<$> (x Core..:? "AdditionalDetails")
            Prelude.<*> ( x Core..:? "PermissionsWithGrantOption"
                            Core..!= Prelude.mempty
                        )
            Prelude.<*> (x Core..:? "Principal")
            Prelude.<*> (x Core..:? "Resource")
            Prelude.<*> (x Core..:? "Permissions" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    PrincipalResourcePermissions

instance Prelude.NFData PrincipalResourcePermissions
