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
-- Module      : Network.AWS.AppFlow.Types.TrendmicroMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.TrendmicroMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector metadata specific to Trend Micro.
--
-- /See:/ 'newTrendmicroMetadata' smart constructor.
data TrendmicroMetadata = TrendmicroMetadata'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TrendmicroMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newTrendmicroMetadata ::
  TrendmicroMetadata
newTrendmicroMetadata = TrendmicroMetadata'

instance Core.FromJSON TrendmicroMetadata where
  parseJSON =
    Core.withObject
      "TrendmicroMetadata"
      (\x -> Prelude.pure TrendmicroMetadata')

instance Prelude.Hashable TrendmicroMetadata

instance Prelude.NFData TrendmicroMetadata
