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
-- Module      : Network.AWS.ApiGatewayV2.Types.ParameterConstraints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApiGatewayV2.Types.ParameterConstraints where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Validation constraints imposed on parameters of a request (path, query
-- string, headers).
--
-- /See:/ 'newParameterConstraints' smart constructor.
data ParameterConstraints = ParameterConstraints'
  { -- | Whether or not the parameter is required.
    required :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ParameterConstraints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'required', 'parameterConstraints_required' - Whether or not the parameter is required.
newParameterConstraints ::
  ParameterConstraints
newParameterConstraints =
  ParameterConstraints' {required = Prelude.Nothing}

-- | Whether or not the parameter is required.
parameterConstraints_required :: Lens.Lens' ParameterConstraints (Prelude.Maybe Prelude.Bool)
parameterConstraints_required = Lens.lens (\ParameterConstraints' {required} -> required) (\s@ParameterConstraints' {} a -> s {required = a} :: ParameterConstraints)

instance Core.FromJSON ParameterConstraints where
  parseJSON =
    Core.withObject
      "ParameterConstraints"
      ( \x ->
          ParameterConstraints'
            Prelude.<$> (x Core..:? "required")
      )

instance Prelude.Hashable ParameterConstraints

instance Prelude.NFData ParameterConstraints

instance Core.ToJSON ParameterConstraints where
  toJSON ParameterConstraints' {..} =
    Core.object
      ( Prelude.catMaybes
          [("required" Core..=) Prelude.<$> required]
      )
