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
-- Module      : Network.AWS.DataExchange.Types.RedshiftDataShareAssetSourceEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DataExchange.Types.RedshiftDataShareAssetSourceEntry where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The source of the Amazon Redshift datashare asset.
--
-- /See:/ 'newRedshiftDataShareAssetSourceEntry' smart constructor.
data RedshiftDataShareAssetSourceEntry = RedshiftDataShareAssetSourceEntry'
  { -- | The Amazon Resource Name (ARN) of the datashare asset.
    dataShareArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'RedshiftDataShareAssetSourceEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataShareArn', 'redshiftDataShareAssetSourceEntry_dataShareArn' - The Amazon Resource Name (ARN) of the datashare asset.
newRedshiftDataShareAssetSourceEntry ::
  -- | 'dataShareArn'
  Prelude.Text ->
  RedshiftDataShareAssetSourceEntry
newRedshiftDataShareAssetSourceEntry pDataShareArn_ =
  RedshiftDataShareAssetSourceEntry'
    { dataShareArn =
        pDataShareArn_
    }

-- | The Amazon Resource Name (ARN) of the datashare asset.
redshiftDataShareAssetSourceEntry_dataShareArn :: Lens.Lens' RedshiftDataShareAssetSourceEntry Prelude.Text
redshiftDataShareAssetSourceEntry_dataShareArn = Lens.lens (\RedshiftDataShareAssetSourceEntry' {dataShareArn} -> dataShareArn) (\s@RedshiftDataShareAssetSourceEntry' {} a -> s {dataShareArn = a} :: RedshiftDataShareAssetSourceEntry)

instance
  Core.FromJSON
    RedshiftDataShareAssetSourceEntry
  where
  parseJSON =
    Core.withObject
      "RedshiftDataShareAssetSourceEntry"
      ( \x ->
          RedshiftDataShareAssetSourceEntry'
            Prelude.<$> (x Core..: "DataShareArn")
      )

instance
  Prelude.Hashable
    RedshiftDataShareAssetSourceEntry

instance
  Prelude.NFData
    RedshiftDataShareAssetSourceEntry

instance
  Core.ToJSON
    RedshiftDataShareAssetSourceEntry
  where
  toJSON RedshiftDataShareAssetSourceEntry' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("DataShareArn" Core..= dataShareArn)]
      )
