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
-- Module      : Network.AWS.AccessAnalyzer.Types.FindingSourceDetail
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.FindingSourceDetail where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Includes details about how the access that generated the finding is
-- granted. This is populated for Amazon S3 bucket findings.
--
-- /See:/ 'newFindingSourceDetail' smart constructor.
data FindingSourceDetail = FindingSourceDetail'
  { -- | The ARN of the access point that generated the finding. The ARN format
    -- depends on whether the ARN represents an access point or a multi-region
    -- access point.
    accessPointArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'FindingSourceDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessPointArn', 'findingSourceDetail_accessPointArn' - The ARN of the access point that generated the finding. The ARN format
-- depends on whether the ARN represents an access point or a multi-region
-- access point.
newFindingSourceDetail ::
  FindingSourceDetail
newFindingSourceDetail =
  FindingSourceDetail'
    { accessPointArn =
        Prelude.Nothing
    }

-- | The ARN of the access point that generated the finding. The ARN format
-- depends on whether the ARN represents an access point or a multi-region
-- access point.
findingSourceDetail_accessPointArn :: Lens.Lens' FindingSourceDetail (Prelude.Maybe Prelude.Text)
findingSourceDetail_accessPointArn = Lens.lens (\FindingSourceDetail' {accessPointArn} -> accessPointArn) (\s@FindingSourceDetail' {} a -> s {accessPointArn = a} :: FindingSourceDetail)

instance Core.FromJSON FindingSourceDetail where
  parseJSON =
    Core.withObject
      "FindingSourceDetail"
      ( \x ->
          FindingSourceDetail'
            Prelude.<$> (x Core..:? "accessPointArn")
      )

instance Prelude.Hashable FindingSourceDetail

instance Prelude.NFData FindingSourceDetail
