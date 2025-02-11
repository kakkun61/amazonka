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
-- Module      : Network.AWS.Amplify.Types.SubDomainSetting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Amplify.Types.SubDomainSetting where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the settings for the subdomain.
--
-- /See:/ 'newSubDomainSetting' smart constructor.
data SubDomainSetting = SubDomainSetting'
  { -- | The prefix setting for the subdomain.
    prefix :: Prelude.Text,
    -- | The branch name setting for the subdomain.
    branchName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubDomainSetting' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'prefix', 'subDomainSetting_prefix' - The prefix setting for the subdomain.
--
-- 'branchName', 'subDomainSetting_branchName' - The branch name setting for the subdomain.
newSubDomainSetting ::
  -- | 'prefix'
  Prelude.Text ->
  -- | 'branchName'
  Prelude.Text ->
  SubDomainSetting
newSubDomainSetting pPrefix_ pBranchName_ =
  SubDomainSetting'
    { prefix = pPrefix_,
      branchName = pBranchName_
    }

-- | The prefix setting for the subdomain.
subDomainSetting_prefix :: Lens.Lens' SubDomainSetting Prelude.Text
subDomainSetting_prefix = Lens.lens (\SubDomainSetting' {prefix} -> prefix) (\s@SubDomainSetting' {} a -> s {prefix = a} :: SubDomainSetting)

-- | The branch name setting for the subdomain.
subDomainSetting_branchName :: Lens.Lens' SubDomainSetting Prelude.Text
subDomainSetting_branchName = Lens.lens (\SubDomainSetting' {branchName} -> branchName) (\s@SubDomainSetting' {} a -> s {branchName = a} :: SubDomainSetting)

instance Core.FromJSON SubDomainSetting where
  parseJSON =
    Core.withObject
      "SubDomainSetting"
      ( \x ->
          SubDomainSetting'
            Prelude.<$> (x Core..: "prefix")
            Prelude.<*> (x Core..: "branchName")
      )

instance Prelude.Hashable SubDomainSetting

instance Prelude.NFData SubDomainSetting

instance Core.ToJSON SubDomainSetting where
  toJSON SubDomainSetting' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("prefix" Core..= prefix),
            Prelude.Just ("branchName" Core..= branchName)
          ]
      )
