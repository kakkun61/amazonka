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
-- Module      : Network.AWS.OpenSearch.Types.AdvancedSecurityOptionsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.AdvancedSecurityOptionsStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types.AdvancedSecurityOptions
import Network.AWS.OpenSearch.Types.OptionStatus
import qualified Network.AWS.Prelude as Prelude

-- | The status of advanced security options for the specified domain.
--
-- /See:/ 'newAdvancedSecurityOptionsStatus' smart constructor.
data AdvancedSecurityOptionsStatus = AdvancedSecurityOptionsStatus'
  { -- | Advanced security options for the specified domain.
    options :: AdvancedSecurityOptions,
    -- | Status of the advanced security options for the specified domain.
    status :: OptionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AdvancedSecurityOptionsStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'options', 'advancedSecurityOptionsStatus_options' - Advanced security options for the specified domain.
--
-- 'status', 'advancedSecurityOptionsStatus_status' - Status of the advanced security options for the specified domain.
newAdvancedSecurityOptionsStatus ::
  -- | 'options'
  AdvancedSecurityOptions ->
  -- | 'status'
  OptionStatus ->
  AdvancedSecurityOptionsStatus
newAdvancedSecurityOptionsStatus pOptions_ pStatus_ =
  AdvancedSecurityOptionsStatus'
    { options = pOptions_,
      status = pStatus_
    }

-- | Advanced security options for the specified domain.
advancedSecurityOptionsStatus_options :: Lens.Lens' AdvancedSecurityOptionsStatus AdvancedSecurityOptions
advancedSecurityOptionsStatus_options = Lens.lens (\AdvancedSecurityOptionsStatus' {options} -> options) (\s@AdvancedSecurityOptionsStatus' {} a -> s {options = a} :: AdvancedSecurityOptionsStatus)

-- | Status of the advanced security options for the specified domain.
advancedSecurityOptionsStatus_status :: Lens.Lens' AdvancedSecurityOptionsStatus OptionStatus
advancedSecurityOptionsStatus_status = Lens.lens (\AdvancedSecurityOptionsStatus' {status} -> status) (\s@AdvancedSecurityOptionsStatus' {} a -> s {status = a} :: AdvancedSecurityOptionsStatus)

instance Core.FromJSON AdvancedSecurityOptionsStatus where
  parseJSON =
    Core.withObject
      "AdvancedSecurityOptionsStatus"
      ( \x ->
          AdvancedSecurityOptionsStatus'
            Prelude.<$> (x Core..: "Options")
            Prelude.<*> (x Core..: "Status")
      )

instance
  Prelude.Hashable
    AdvancedSecurityOptionsStatus

instance Prelude.NFData AdvancedSecurityOptionsStatus
