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
-- Module      : Network.AWS.AppFlow.Types.SnowflakeMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.SnowflakeMetadata where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The connector metadata specific to Snowflake.
--
-- /See:/ 'newSnowflakeMetadata' smart constructor.
data SnowflakeMetadata = SnowflakeMetadata'
  { -- | Specifies the supported Amazon Web Services Regions when using
    -- Snowflake.
    supportedRegions :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SnowflakeMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'supportedRegions', 'snowflakeMetadata_supportedRegions' - Specifies the supported Amazon Web Services Regions when using
-- Snowflake.
newSnowflakeMetadata ::
  SnowflakeMetadata
newSnowflakeMetadata =
  SnowflakeMetadata'
    { supportedRegions =
        Prelude.Nothing
    }

-- | Specifies the supported Amazon Web Services Regions when using
-- Snowflake.
snowflakeMetadata_supportedRegions :: Lens.Lens' SnowflakeMetadata (Prelude.Maybe [Prelude.Text])
snowflakeMetadata_supportedRegions = Lens.lens (\SnowflakeMetadata' {supportedRegions} -> supportedRegions) (\s@SnowflakeMetadata' {} a -> s {supportedRegions = a} :: SnowflakeMetadata) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON SnowflakeMetadata where
  parseJSON =
    Core.withObject
      "SnowflakeMetadata"
      ( \x ->
          SnowflakeMetadata'
            Prelude.<$> ( x Core..:? "supportedRegions"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable SnowflakeMetadata

instance Prelude.NFData SnowflakeMetadata
