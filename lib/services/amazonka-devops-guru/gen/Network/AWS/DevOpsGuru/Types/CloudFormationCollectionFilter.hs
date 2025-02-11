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
-- Module      : Network.AWS.DevOpsGuru.Types.CloudFormationCollectionFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DevOpsGuru.Types.CloudFormationCollectionFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about AWS CloudFormation stacks. You can use up to 500
-- stacks to specify which AWS resources in your account to analyze. For
-- more information, see
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html Stacks>
-- in the /AWS CloudFormation User Guide/.
--
-- /See:/ 'newCloudFormationCollectionFilter' smart constructor.
data CloudFormationCollectionFilter = CloudFormationCollectionFilter'
  { -- | An array of CloudFormation stack names.
    stackNames :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CloudFormationCollectionFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stackNames', 'cloudFormationCollectionFilter_stackNames' - An array of CloudFormation stack names.
newCloudFormationCollectionFilter ::
  CloudFormationCollectionFilter
newCloudFormationCollectionFilter =
  CloudFormationCollectionFilter'
    { stackNames =
        Prelude.Nothing
    }

-- | An array of CloudFormation stack names.
cloudFormationCollectionFilter_stackNames :: Lens.Lens' CloudFormationCollectionFilter (Prelude.Maybe [Prelude.Text])
cloudFormationCollectionFilter_stackNames = Lens.lens (\CloudFormationCollectionFilter' {stackNames} -> stackNames) (\s@CloudFormationCollectionFilter' {} a -> s {stackNames = a} :: CloudFormationCollectionFilter) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON CloudFormationCollectionFilter where
  parseJSON =
    Core.withObject
      "CloudFormationCollectionFilter"
      ( \x ->
          CloudFormationCollectionFilter'
            Prelude.<$> (x Core..:? "StackNames" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    CloudFormationCollectionFilter

instance
  Prelude.NFData
    CloudFormationCollectionFilter
