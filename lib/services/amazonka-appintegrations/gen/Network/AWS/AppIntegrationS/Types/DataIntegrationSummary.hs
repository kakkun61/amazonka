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
-- Module      : Network.AWS.AppIntegrationS.Types.DataIntegrationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppIntegrationS.Types.DataIntegrationSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary information about the DataIntegration.
--
-- /See:/ 'newDataIntegrationSummary' smart constructor.
data DataIntegrationSummary = DataIntegrationSummary'
  { -- | The Amazon Resource Name (ARN) of the DataIntegration.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The name of the DataIntegration.
    name :: Prelude.Maybe Prelude.Text,
    -- | The URI of the data source.
    sourceURI :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataIntegrationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'dataIntegrationSummary_arn' - The Amazon Resource Name (ARN) of the DataIntegration.
--
-- 'name', 'dataIntegrationSummary_name' - The name of the DataIntegration.
--
-- 'sourceURI', 'dataIntegrationSummary_sourceURI' - The URI of the data source.
newDataIntegrationSummary ::
  DataIntegrationSummary
newDataIntegrationSummary =
  DataIntegrationSummary'
    { arn = Prelude.Nothing,
      name = Prelude.Nothing,
      sourceURI = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the DataIntegration.
dataIntegrationSummary_arn :: Lens.Lens' DataIntegrationSummary (Prelude.Maybe Prelude.Text)
dataIntegrationSummary_arn = Lens.lens (\DataIntegrationSummary' {arn} -> arn) (\s@DataIntegrationSummary' {} a -> s {arn = a} :: DataIntegrationSummary)

-- | The name of the DataIntegration.
dataIntegrationSummary_name :: Lens.Lens' DataIntegrationSummary (Prelude.Maybe Prelude.Text)
dataIntegrationSummary_name = Lens.lens (\DataIntegrationSummary' {name} -> name) (\s@DataIntegrationSummary' {} a -> s {name = a} :: DataIntegrationSummary)

-- | The URI of the data source.
dataIntegrationSummary_sourceURI :: Lens.Lens' DataIntegrationSummary (Prelude.Maybe Prelude.Text)
dataIntegrationSummary_sourceURI = Lens.lens (\DataIntegrationSummary' {sourceURI} -> sourceURI) (\s@DataIntegrationSummary' {} a -> s {sourceURI = a} :: DataIntegrationSummary)

instance Core.FromJSON DataIntegrationSummary where
  parseJSON =
    Core.withObject
      "DataIntegrationSummary"
      ( \x ->
          DataIntegrationSummary'
            Prelude.<$> (x Core..:? "Arn")
            Prelude.<*> (x Core..:? "Name")
            Prelude.<*> (x Core..:? "SourceURI")
      )

instance Prelude.Hashable DataIntegrationSummary

instance Prelude.NFData DataIntegrationSummary
