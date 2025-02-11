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
-- Module      : Network.AWS.XRay.Types.ResponseTimeRootCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ResponseTimeRootCause where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.XRay.Types.ResponseTimeRootCauseService

-- | The root cause information for a response time warning.
--
-- /See:/ 'newResponseTimeRootCause' smart constructor.
data ResponseTimeRootCause = ResponseTimeRootCause'
  { -- | A flag that denotes that the root cause impacts the trace client.
    clientImpacting :: Prelude.Maybe Prelude.Bool,
    -- | A list of corresponding services. A service identifies a segment and
    -- contains a name, account ID, type, and inferred flag.
    services :: Prelude.Maybe [ResponseTimeRootCauseService]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResponseTimeRootCause' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientImpacting', 'responseTimeRootCause_clientImpacting' - A flag that denotes that the root cause impacts the trace client.
--
-- 'services', 'responseTimeRootCause_services' - A list of corresponding services. A service identifies a segment and
-- contains a name, account ID, type, and inferred flag.
newResponseTimeRootCause ::
  ResponseTimeRootCause
newResponseTimeRootCause =
  ResponseTimeRootCause'
    { clientImpacting =
        Prelude.Nothing,
      services = Prelude.Nothing
    }

-- | A flag that denotes that the root cause impacts the trace client.
responseTimeRootCause_clientImpacting :: Lens.Lens' ResponseTimeRootCause (Prelude.Maybe Prelude.Bool)
responseTimeRootCause_clientImpacting = Lens.lens (\ResponseTimeRootCause' {clientImpacting} -> clientImpacting) (\s@ResponseTimeRootCause' {} a -> s {clientImpacting = a} :: ResponseTimeRootCause)

-- | A list of corresponding services. A service identifies a segment and
-- contains a name, account ID, type, and inferred flag.
responseTimeRootCause_services :: Lens.Lens' ResponseTimeRootCause (Prelude.Maybe [ResponseTimeRootCauseService])
responseTimeRootCause_services = Lens.lens (\ResponseTimeRootCause' {services} -> services) (\s@ResponseTimeRootCause' {} a -> s {services = a} :: ResponseTimeRootCause) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON ResponseTimeRootCause where
  parseJSON =
    Core.withObject
      "ResponseTimeRootCause"
      ( \x ->
          ResponseTimeRootCause'
            Prelude.<$> (x Core..:? "ClientImpacting")
            Prelude.<*> (x Core..:? "Services" Core..!= Prelude.mempty)
      )

instance Prelude.Hashable ResponseTimeRootCause

instance Prelude.NFData ResponseTimeRootCause
