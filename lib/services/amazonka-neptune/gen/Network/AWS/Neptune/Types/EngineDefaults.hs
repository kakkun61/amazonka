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
-- Module      : Network.AWS.Neptune.Types.EngineDefaults
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Neptune.Types.EngineDefaults where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Neptune.Types.Parameter
import qualified Network.AWS.Prelude as Prelude

-- | Contains the result of a successful invocation of the
-- DescribeEngineDefaultParameters action.
--
-- /See:/ 'newEngineDefaults' smart constructor.
data EngineDefaults = EngineDefaults'
  { -- | Specifies the name of the DB parameter group family that the engine
    -- default parameters apply to.
    dbParameterGroupFamily :: Prelude.Maybe Prelude.Text,
    -- | An optional pagination token provided by a previous EngineDefaults
    -- request. If this parameter is specified, the response includes only
    -- records beyond the marker, up to the value specified by @MaxRecords@ .
    marker :: Prelude.Maybe Prelude.Text,
    -- | Contains a list of engine default parameters.
    parameters :: Prelude.Maybe [Parameter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EngineDefaults' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dbParameterGroupFamily', 'engineDefaults_dbParameterGroupFamily' - Specifies the name of the DB parameter group family that the engine
-- default parameters apply to.
--
-- 'marker', 'engineDefaults_marker' - An optional pagination token provided by a previous EngineDefaults
-- request. If this parameter is specified, the response includes only
-- records beyond the marker, up to the value specified by @MaxRecords@ .
--
-- 'parameters', 'engineDefaults_parameters' - Contains a list of engine default parameters.
newEngineDefaults ::
  EngineDefaults
newEngineDefaults =
  EngineDefaults'
    { dbParameterGroupFamily =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      parameters = Prelude.Nothing
    }

-- | Specifies the name of the DB parameter group family that the engine
-- default parameters apply to.
engineDefaults_dbParameterGroupFamily :: Lens.Lens' EngineDefaults (Prelude.Maybe Prelude.Text)
engineDefaults_dbParameterGroupFamily = Lens.lens (\EngineDefaults' {dbParameterGroupFamily} -> dbParameterGroupFamily) (\s@EngineDefaults' {} a -> s {dbParameterGroupFamily = a} :: EngineDefaults)

-- | An optional pagination token provided by a previous EngineDefaults
-- request. If this parameter is specified, the response includes only
-- records beyond the marker, up to the value specified by @MaxRecords@ .
engineDefaults_marker :: Lens.Lens' EngineDefaults (Prelude.Maybe Prelude.Text)
engineDefaults_marker = Lens.lens (\EngineDefaults' {marker} -> marker) (\s@EngineDefaults' {} a -> s {marker = a} :: EngineDefaults)

-- | Contains a list of engine default parameters.
engineDefaults_parameters :: Lens.Lens' EngineDefaults (Prelude.Maybe [Parameter])
engineDefaults_parameters = Lens.lens (\EngineDefaults' {parameters} -> parameters) (\s@EngineDefaults' {} a -> s {parameters = a} :: EngineDefaults) Prelude.. Lens.mapping Lens.coerced

instance Core.FromXML EngineDefaults where
  parseXML x =
    EngineDefaults'
      Prelude.<$> (x Core..@? "DBParameterGroupFamily")
      Prelude.<*> (x Core..@? "Marker")
      Prelude.<*> ( x Core..@? "Parameters" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "Parameter")
                  )

instance Prelude.Hashable EngineDefaults

instance Prelude.NFData EngineDefaults
