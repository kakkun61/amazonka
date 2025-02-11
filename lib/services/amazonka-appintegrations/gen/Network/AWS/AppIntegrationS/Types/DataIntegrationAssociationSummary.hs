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
-- Module      : Network.AWS.AppIntegrationS.Types.DataIntegrationAssociationSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppIntegrationS.Types.DataIntegrationAssociationSummary where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Summary information about the DataIntegration association.
--
-- /See:/ 'newDataIntegrationAssociationSummary' smart constructor.
data DataIntegrationAssociationSummary = DataIntegrationAssociationSummary'
  { -- | The identifier for teh client that is associated with the
    -- DataIntegration association.
    clientId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the DataIntegration association.
    dataIntegrationAssociationArn :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN)of the DataIntegration.
    dataIntegrationArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DataIntegrationAssociationSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientId', 'dataIntegrationAssociationSummary_clientId' - The identifier for teh client that is associated with the
-- DataIntegration association.
--
-- 'dataIntegrationAssociationArn', 'dataIntegrationAssociationSummary_dataIntegrationAssociationArn' - The Amazon Resource Name (ARN) of the DataIntegration association.
--
-- 'dataIntegrationArn', 'dataIntegrationAssociationSummary_dataIntegrationArn' - The Amazon Resource Name (ARN)of the DataIntegration.
newDataIntegrationAssociationSummary ::
  DataIntegrationAssociationSummary
newDataIntegrationAssociationSummary =
  DataIntegrationAssociationSummary'
    { clientId =
        Prelude.Nothing,
      dataIntegrationAssociationArn =
        Prelude.Nothing,
      dataIntegrationArn = Prelude.Nothing
    }

-- | The identifier for teh client that is associated with the
-- DataIntegration association.
dataIntegrationAssociationSummary_clientId :: Lens.Lens' DataIntegrationAssociationSummary (Prelude.Maybe Prelude.Text)
dataIntegrationAssociationSummary_clientId = Lens.lens (\DataIntegrationAssociationSummary' {clientId} -> clientId) (\s@DataIntegrationAssociationSummary' {} a -> s {clientId = a} :: DataIntegrationAssociationSummary)

-- | The Amazon Resource Name (ARN) of the DataIntegration association.
dataIntegrationAssociationSummary_dataIntegrationAssociationArn :: Lens.Lens' DataIntegrationAssociationSummary (Prelude.Maybe Prelude.Text)
dataIntegrationAssociationSummary_dataIntegrationAssociationArn = Lens.lens (\DataIntegrationAssociationSummary' {dataIntegrationAssociationArn} -> dataIntegrationAssociationArn) (\s@DataIntegrationAssociationSummary' {} a -> s {dataIntegrationAssociationArn = a} :: DataIntegrationAssociationSummary)

-- | The Amazon Resource Name (ARN)of the DataIntegration.
dataIntegrationAssociationSummary_dataIntegrationArn :: Lens.Lens' DataIntegrationAssociationSummary (Prelude.Maybe Prelude.Text)
dataIntegrationAssociationSummary_dataIntegrationArn = Lens.lens (\DataIntegrationAssociationSummary' {dataIntegrationArn} -> dataIntegrationArn) (\s@DataIntegrationAssociationSummary' {} a -> s {dataIntegrationArn = a} :: DataIntegrationAssociationSummary)

instance
  Core.FromJSON
    DataIntegrationAssociationSummary
  where
  parseJSON =
    Core.withObject
      "DataIntegrationAssociationSummary"
      ( \x ->
          DataIntegrationAssociationSummary'
            Prelude.<$> (x Core..:? "ClientId")
            Prelude.<*> (x Core..:? "DataIntegrationAssociationArn")
            Prelude.<*> (x Core..:? "DataIntegrationArn")
      )

instance
  Prelude.Hashable
    DataIntegrationAssociationSummary

instance
  Prelude.NFData
    DataIntegrationAssociationSummary
