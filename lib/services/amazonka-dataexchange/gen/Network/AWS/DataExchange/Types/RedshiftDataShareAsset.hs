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
-- Module      : Network.AWS.DataExchange.Types.RedshiftDataShareAsset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.RedshiftDataShareAsset where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The Amazon Redshift datashare asset.
--
-- /See:/ 'newRedshiftDataShareAsset' smart constructor.
data RedshiftDataShareAsset = RedshiftDataShareAsset'
  { -- | The Amazon Resource Name (ARN) of the datashare asset.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RedshiftDataShareAsset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'redshiftDataShareAsset_arn' - The Amazon Resource Name (ARN) of the datashare asset.
newRedshiftDataShareAsset ::
  -- | 'arn'
  Prelude.Text ->
  RedshiftDataShareAsset
newRedshiftDataShareAsset pArn_ =
  RedshiftDataShareAsset' {arn = pArn_}

-- | The Amazon Resource Name (ARN) of the datashare asset.
redshiftDataShareAsset_arn :: Lens.Lens' RedshiftDataShareAsset Prelude.Text
redshiftDataShareAsset_arn = Lens.lens (\RedshiftDataShareAsset' {arn} -> arn) (\s@RedshiftDataShareAsset' {} a -> s {arn = a} :: RedshiftDataShareAsset)

instance Core.FromJSON RedshiftDataShareAsset where
  parseJSON =
    Core.withObject
      "RedshiftDataShareAsset"
      ( \x ->
          RedshiftDataShareAsset'
            Prelude.<$> (x Core..: "Arn")
      )

instance Prelude.Hashable RedshiftDataShareAsset

instance Prelude.NFData RedshiftDataShareAsset
