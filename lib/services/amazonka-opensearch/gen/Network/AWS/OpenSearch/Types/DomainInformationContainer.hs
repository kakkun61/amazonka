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
-- Module      : Network.AWS.OpenSearch.Types.DomainInformationContainer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpenSearch.Types.DomainInformationContainer where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.OpenSearch.Types.AWSDomainInformation
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newDomainInformationContainer' smart constructor.
data DomainInformationContainer = DomainInformationContainer'
  { aWSDomainInformation :: Prelude.Maybe AWSDomainInformation
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DomainInformationContainer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aWSDomainInformation', 'domainInformationContainer_aWSDomainInformation' - Undocumented member.
newDomainInformationContainer ::
  DomainInformationContainer
newDomainInformationContainer =
  DomainInformationContainer'
    { aWSDomainInformation =
        Prelude.Nothing
    }

-- | Undocumented member.
domainInformationContainer_aWSDomainInformation :: Lens.Lens' DomainInformationContainer (Prelude.Maybe AWSDomainInformation)
domainInformationContainer_aWSDomainInformation = Lens.lens (\DomainInformationContainer' {aWSDomainInformation} -> aWSDomainInformation) (\s@DomainInformationContainer' {} a -> s {aWSDomainInformation = a} :: DomainInformationContainer)

instance Core.FromJSON DomainInformationContainer where
  parseJSON =
    Core.withObject
      "DomainInformationContainer"
      ( \x ->
          DomainInformationContainer'
            Prelude.<$> (x Core..:? "AWSDomainInformation")
      )

instance Prelude.Hashable DomainInformationContainer

instance Prelude.NFData DomainInformationContainer

instance Core.ToJSON DomainInformationContainer where
  toJSON DomainInformationContainer' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AWSDomainInformation" Core..=)
              Prelude.<$> aWSDomainInformation
          ]
      )
