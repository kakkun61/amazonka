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
-- Module      : Network.AWS.AMP.Types.AlertManagerDefinitionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AMP.Types.AlertManagerDefinitionStatus where

import Network.AWS.AMP.Types.AlertManagerDefinitionStatusCode
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents the status of a definition.
--
-- /See:/ 'newAlertManagerDefinitionStatus' smart constructor.
data AlertManagerDefinitionStatus = AlertManagerDefinitionStatus'
  { -- | The reason for failure if any.
    statusReason :: Prelude.Maybe Prelude.Text,
    -- | Status code of this definition.
    statusCode :: AlertManagerDefinitionStatusCode
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AlertManagerDefinitionStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'statusReason', 'alertManagerDefinitionStatus_statusReason' - The reason for failure if any.
--
-- 'statusCode', 'alertManagerDefinitionStatus_statusCode' - Status code of this definition.
newAlertManagerDefinitionStatus ::
  -- | 'statusCode'
  AlertManagerDefinitionStatusCode ->
  AlertManagerDefinitionStatus
newAlertManagerDefinitionStatus pStatusCode_ =
  AlertManagerDefinitionStatus'
    { statusReason =
        Prelude.Nothing,
      statusCode = pStatusCode_
    }

-- | The reason for failure if any.
alertManagerDefinitionStatus_statusReason :: Lens.Lens' AlertManagerDefinitionStatus (Prelude.Maybe Prelude.Text)
alertManagerDefinitionStatus_statusReason = Lens.lens (\AlertManagerDefinitionStatus' {statusReason} -> statusReason) (\s@AlertManagerDefinitionStatus' {} a -> s {statusReason = a} :: AlertManagerDefinitionStatus)

-- | Status code of this definition.
alertManagerDefinitionStatus_statusCode :: Lens.Lens' AlertManagerDefinitionStatus AlertManagerDefinitionStatusCode
alertManagerDefinitionStatus_statusCode = Lens.lens (\AlertManagerDefinitionStatus' {statusCode} -> statusCode) (\s@AlertManagerDefinitionStatus' {} a -> s {statusCode = a} :: AlertManagerDefinitionStatus)

instance Core.FromJSON AlertManagerDefinitionStatus where
  parseJSON =
    Core.withObject
      "AlertManagerDefinitionStatus"
      ( \x ->
          AlertManagerDefinitionStatus'
            Prelude.<$> (x Core..:? "statusReason")
            Prelude.<*> (x Core..: "statusCode")
      )

instance
  Prelude.Hashable
    AlertManagerDefinitionStatus

instance Prelude.NFData AlertManagerDefinitionStatus
