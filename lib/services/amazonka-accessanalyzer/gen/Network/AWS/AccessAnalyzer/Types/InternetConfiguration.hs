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
-- Module      : Network.AWS.AccessAnalyzer.Types.InternetConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.InternetConfiguration where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This configuration sets the network origin for the Amazon S3 access
-- point or multi-region access point to @Internet@.
--
-- /See:/ 'newInternetConfiguration' smart constructor.
data InternetConfiguration = InternetConfiguration'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'InternetConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newInternetConfiguration ::
  InternetConfiguration
newInternetConfiguration = InternetConfiguration'

instance Core.FromJSON InternetConfiguration where
  parseJSON =
    Core.withObject
      "InternetConfiguration"
      (\x -> Prelude.pure InternetConfiguration')

instance Prelude.Hashable InternetConfiguration

instance Prelude.NFData InternetConfiguration

instance Core.ToJSON InternetConfiguration where
  toJSON = Prelude.const (Core.Object Prelude.mempty)
