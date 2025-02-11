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
-- Module      : Network.AWS.OpenSearch.Types.CognitoOptionsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.CognitoOptionsStatus where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types.CognitoOptions
import Network.AWS.OpenSearch.Types.OptionStatus
import qualified Network.AWS.Prelude as Prelude

-- | The status of the Cognito options for the specified domain.
--
-- /See:/ 'newCognitoOptionsStatus' smart constructor.
data CognitoOptionsStatus = CognitoOptionsStatus'
  { -- | Cognito options for the specified domain.
    options :: CognitoOptions,
    -- | The status of the Cognito options for the specified domain.
    status :: OptionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CognitoOptionsStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'options', 'cognitoOptionsStatus_options' - Cognito options for the specified domain.
--
-- 'status', 'cognitoOptionsStatus_status' - The status of the Cognito options for the specified domain.
newCognitoOptionsStatus ::
  -- | 'options'
  CognitoOptions ->
  -- | 'status'
  OptionStatus ->
  CognitoOptionsStatus
newCognitoOptionsStatus pOptions_ pStatus_ =
  CognitoOptionsStatus'
    { options = pOptions_,
      status = pStatus_
    }

-- | Cognito options for the specified domain.
cognitoOptionsStatus_options :: Lens.Lens' CognitoOptionsStatus CognitoOptions
cognitoOptionsStatus_options = Lens.lens (\CognitoOptionsStatus' {options} -> options) (\s@CognitoOptionsStatus' {} a -> s {options = a} :: CognitoOptionsStatus)

-- | The status of the Cognito options for the specified domain.
cognitoOptionsStatus_status :: Lens.Lens' CognitoOptionsStatus OptionStatus
cognitoOptionsStatus_status = Lens.lens (\CognitoOptionsStatus' {status} -> status) (\s@CognitoOptionsStatus' {} a -> s {status = a} :: CognitoOptionsStatus)

instance Core.FromJSON CognitoOptionsStatus where
  parseJSON =
    Core.withObject
      "CognitoOptionsStatus"
      ( \x ->
          CognitoOptionsStatus'
            Prelude.<$> (x Core..: "Options")
            Prelude.<*> (x Core..: "Status")
      )

instance Prelude.Hashable CognitoOptionsStatus

instance Prelude.NFData CognitoOptionsStatus
