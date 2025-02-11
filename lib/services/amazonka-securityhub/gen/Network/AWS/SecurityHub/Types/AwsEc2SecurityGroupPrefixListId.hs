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
-- Module      : Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupPrefixListId
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEc2SecurityGroupPrefixListId where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A prefix list ID.
--
-- /See:/ 'newAwsEc2SecurityGroupPrefixListId' smart constructor.
data AwsEc2SecurityGroupPrefixListId = AwsEc2SecurityGroupPrefixListId'
  { -- | The ID of the prefix.
    prefixListId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEc2SecurityGroupPrefixListId' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'prefixListId', 'awsEc2SecurityGroupPrefixListId_prefixListId' - The ID of the prefix.
newAwsEc2SecurityGroupPrefixListId ::
  AwsEc2SecurityGroupPrefixListId
newAwsEc2SecurityGroupPrefixListId =
  AwsEc2SecurityGroupPrefixListId'
    { prefixListId =
        Prelude.Nothing
    }

-- | The ID of the prefix.
awsEc2SecurityGroupPrefixListId_prefixListId :: Lens.Lens' AwsEc2SecurityGroupPrefixListId (Prelude.Maybe Prelude.Text)
awsEc2SecurityGroupPrefixListId_prefixListId = Lens.lens (\AwsEc2SecurityGroupPrefixListId' {prefixListId} -> prefixListId) (\s@AwsEc2SecurityGroupPrefixListId' {} a -> s {prefixListId = a} :: AwsEc2SecurityGroupPrefixListId)

instance
  Core.FromJSON
    AwsEc2SecurityGroupPrefixListId
  where
  parseJSON =
    Core.withObject
      "AwsEc2SecurityGroupPrefixListId"
      ( \x ->
          AwsEc2SecurityGroupPrefixListId'
            Prelude.<$> (x Core..:? "PrefixListId")
      )

instance
  Prelude.Hashable
    AwsEc2SecurityGroupPrefixListId

instance
  Prelude.NFData
    AwsEc2SecurityGroupPrefixListId

instance Core.ToJSON AwsEc2SecurityGroupPrefixListId where
  toJSON AwsEc2SecurityGroupPrefixListId' {..} =
    Core.object
      ( Prelude.catMaybes
          [("PrefixListId" Core..=) Prelude.<$> prefixListId]
      )
