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
-- Module      : Network.AWS.AppFlow.Types.AmplitudeConnectorProfileProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.AmplitudeConnectorProfileProperties where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector-specific profile properties required when using Amplitude.
--
-- /See:/ 'newAmplitudeConnectorProfileProperties' smart constructor.
data AmplitudeConnectorProfileProperties = AmplitudeConnectorProfileProperties'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AmplitudeConnectorProfileProperties' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAmplitudeConnectorProfileProperties ::
  AmplitudeConnectorProfileProperties
newAmplitudeConnectorProfileProperties =
  AmplitudeConnectorProfileProperties'

instance
  Core.FromJSON
    AmplitudeConnectorProfileProperties
  where
  parseJSON =
    Core.withObject
      "AmplitudeConnectorProfileProperties"
      ( \x ->
          Prelude.pure AmplitudeConnectorProfileProperties'
      )

instance
  Prelude.Hashable
    AmplitudeConnectorProfileProperties

instance
  Prelude.NFData
    AmplitudeConnectorProfileProperties

instance
  Core.ToJSON
    AmplitudeConnectorProfileProperties
  where
  toJSON = Prelude.const (Core.Object Prelude.mempty)
