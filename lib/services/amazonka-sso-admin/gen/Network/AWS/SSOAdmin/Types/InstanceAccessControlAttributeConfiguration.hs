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
-- Module      : Network.AWS.SSOAdmin.Types.InstanceAccessControlAttributeConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSOAdmin.Types.InstanceAccessControlAttributeConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSOAdmin.Types.AccessControlAttribute

-- | Specifies the attributes to add to your attribute-based access control
-- (ABAC) configuration.
--
-- /See:/ 'newInstanceAccessControlAttributeConfiguration' smart constructor.
data InstanceAccessControlAttributeConfiguration = InstanceAccessControlAttributeConfiguration'
  { -- | Lists the attributes that are configured for ABAC in the specified
    -- Amazon Web Services SSO instance.
    accessControlAttributes :: [AccessControlAttribute]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InstanceAccessControlAttributeConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessControlAttributes', 'instanceAccessControlAttributeConfiguration_accessControlAttributes' - Lists the attributes that are configured for ABAC in the specified
-- Amazon Web Services SSO instance.
newInstanceAccessControlAttributeConfiguration ::
  InstanceAccessControlAttributeConfiguration
newInstanceAccessControlAttributeConfiguration =
  InstanceAccessControlAttributeConfiguration'
    { accessControlAttributes =
        Prelude.mempty
    }

-- | Lists the attributes that are configured for ABAC in the specified
-- Amazon Web Services SSO instance.
instanceAccessControlAttributeConfiguration_accessControlAttributes :: Lens.Lens' InstanceAccessControlAttributeConfiguration [AccessControlAttribute]
instanceAccessControlAttributeConfiguration_accessControlAttributes = Lens.lens (\InstanceAccessControlAttributeConfiguration' {accessControlAttributes} -> accessControlAttributes) (\s@InstanceAccessControlAttributeConfiguration' {} a -> s {accessControlAttributes = a} :: InstanceAccessControlAttributeConfiguration) Prelude.. Lens.coerced

instance
  Core.FromJSON
    InstanceAccessControlAttributeConfiguration
  where
  parseJSON =
    Core.withObject
      "InstanceAccessControlAttributeConfiguration"
      ( \x ->
          InstanceAccessControlAttributeConfiguration'
            Prelude.<$> ( x Core..:? "AccessControlAttributes"
                            Core..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    InstanceAccessControlAttributeConfiguration

instance
  Prelude.NFData
    InstanceAccessControlAttributeConfiguration

instance
  Core.ToJSON
    InstanceAccessControlAttributeConfiguration
  where
  toJSON
    InstanceAccessControlAttributeConfiguration' {..} =
      Core.object
        ( Prelude.catMaybes
            [ Prelude.Just
                ( "AccessControlAttributes"
                    Core..= accessControlAttributes
                )
            ]
        )
