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
-- Module      : Network.AWS.MacieV2.Types.MatchingResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.MatchingResource where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.MatchingBucket
import qualified Network.AWS.Prelude as Prelude

-- | Provides statistical data and other information about an Amazon Web
-- Services resource that Amazon Macie monitors and analyzes for your
-- account.
--
-- /See:/ 'newMatchingResource' smart constructor.
data MatchingResource = MatchingResource'
  { -- | The details of an S3 bucket that Amazon Macie monitors and analyzes.
    matchingBucket :: Prelude.Maybe MatchingBucket
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'MatchingResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'matchingBucket', 'matchingResource_matchingBucket' - The details of an S3 bucket that Amazon Macie monitors and analyzes.
newMatchingResource ::
  MatchingResource
newMatchingResource =
  MatchingResource' {matchingBucket = Prelude.Nothing}

-- | The details of an S3 bucket that Amazon Macie monitors and analyzes.
matchingResource_matchingBucket :: Lens.Lens' MatchingResource (Prelude.Maybe MatchingBucket)
matchingResource_matchingBucket = Lens.lens (\MatchingResource' {matchingBucket} -> matchingBucket) (\s@MatchingResource' {} a -> s {matchingBucket = a} :: MatchingResource)

instance Core.FromJSON MatchingResource where
  parseJSON =
    Core.withObject
      "MatchingResource"
      ( \x ->
          MatchingResource'
            Prelude.<$> (x Core..:? "matchingBucket")
      )

instance Prelude.Hashable MatchingResource

instance Prelude.NFData MatchingResource
