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
-- Module      : Network.AWS.QuickSight.Types.Parameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.Parameters where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QuickSight.Types.DateTimeParameter
import Network.AWS.QuickSight.Types.DecimalParameter
import Network.AWS.QuickSight.Types.IntegerParameter
import Network.AWS.QuickSight.Types.StringParameter

-- | A list of Amazon QuickSight parameters and the list\'s override values.
--
-- /See:/ 'newParameters' smart constructor.
data Parameters = Parameters'
  { -- | The parameters that have a data type of date-time.
    dateTimeParameters :: Prelude.Maybe [DateTimeParameter],
    -- | The parameters that have a data type of decimal.
    decimalParameters :: Prelude.Maybe [DecimalParameter],
    -- | The parameters that have a data type of integer.
    integerParameters :: Prelude.Maybe [IntegerParameter],
    -- | The parameters that have a data type of string.
    stringParameters :: Prelude.Maybe [StringParameter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Parameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dateTimeParameters', 'parameters_dateTimeParameters' - The parameters that have a data type of date-time.
--
-- 'decimalParameters', 'parameters_decimalParameters' - The parameters that have a data type of decimal.
--
-- 'integerParameters', 'parameters_integerParameters' - The parameters that have a data type of integer.
--
-- 'stringParameters', 'parameters_stringParameters' - The parameters that have a data type of string.
newParameters ::
  Parameters
newParameters =
  Parameters'
    { dateTimeParameters = Prelude.Nothing,
      decimalParameters = Prelude.Nothing,
      integerParameters = Prelude.Nothing,
      stringParameters = Prelude.Nothing
    }

-- | The parameters that have a data type of date-time.
parameters_dateTimeParameters :: Lens.Lens' Parameters (Prelude.Maybe [DateTimeParameter])
parameters_dateTimeParameters = Lens.lens (\Parameters' {dateTimeParameters} -> dateTimeParameters) (\s@Parameters' {} a -> s {dateTimeParameters = a} :: Parameters) Prelude.. Lens.mapping Lens.coerced

-- | The parameters that have a data type of decimal.
parameters_decimalParameters :: Lens.Lens' Parameters (Prelude.Maybe [DecimalParameter])
parameters_decimalParameters = Lens.lens (\Parameters' {decimalParameters} -> decimalParameters) (\s@Parameters' {} a -> s {decimalParameters = a} :: Parameters) Prelude.. Lens.mapping Lens.coerced

-- | The parameters that have a data type of integer.
parameters_integerParameters :: Lens.Lens' Parameters (Prelude.Maybe [IntegerParameter])
parameters_integerParameters = Lens.lens (\Parameters' {integerParameters} -> integerParameters) (\s@Parameters' {} a -> s {integerParameters = a} :: Parameters) Prelude.. Lens.mapping Lens.coerced

-- | The parameters that have a data type of string.
parameters_stringParameters :: Lens.Lens' Parameters (Prelude.Maybe [StringParameter])
parameters_stringParameters = Lens.lens (\Parameters' {stringParameters} -> stringParameters) (\s@Parameters' {} a -> s {stringParameters = a} :: Parameters) Prelude.. Lens.mapping Lens.coerced

instance Prelude.Hashable Parameters

instance Prelude.NFData Parameters

instance Core.ToJSON Parameters where
  toJSON Parameters' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DateTimeParameters" Core..=)
              Prelude.<$> dateTimeParameters,
            ("DecimalParameters" Core..=)
              Prelude.<$> decimalParameters,
            ("IntegerParameters" Core..=)
              Prelude.<$> integerParameters,
            ("StringParameters" Core..=)
              Prelude.<$> stringParameters
          ]
      )
