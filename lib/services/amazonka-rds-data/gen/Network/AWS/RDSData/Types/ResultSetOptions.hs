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
-- Module      : Network.AWS.RDSData.Types.ResultSetOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDSData.Types.ResultSetOptions where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDSData.Types.DecimalReturnType

-- | Options that control how the result set is returned.
--
-- /See:/ 'newResultSetOptions' smart constructor.
data ResultSetOptions = ResultSetOptions'
  { -- | A value that indicates how a field of @DECIMAL@ type is represented in
    -- the response. The value of @STRING@, the default, specifies that it is
    -- converted to a String value. The value of @DOUBLE_OR_LONG@ specifies
    -- that it is converted to a Long value if its scale is 0, or to a Double
    -- value otherwise.
    --
    -- Conversion to Double or Long can result in roundoff errors due to
    -- precision loss. We recommend converting to String, especially when
    -- working with currency values.
    decimalReturnType :: Prelude.Maybe DecimalReturnType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ResultSetOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'decimalReturnType', 'resultSetOptions_decimalReturnType' - A value that indicates how a field of @DECIMAL@ type is represented in
-- the response. The value of @STRING@, the default, specifies that it is
-- converted to a String value. The value of @DOUBLE_OR_LONG@ specifies
-- that it is converted to a Long value if its scale is 0, or to a Double
-- value otherwise.
--
-- Conversion to Double or Long can result in roundoff errors due to
-- precision loss. We recommend converting to String, especially when
-- working with currency values.
newResultSetOptions ::
  ResultSetOptions
newResultSetOptions =
  ResultSetOptions'
    { decimalReturnType =
        Prelude.Nothing
    }

-- | A value that indicates how a field of @DECIMAL@ type is represented in
-- the response. The value of @STRING@, the default, specifies that it is
-- converted to a String value. The value of @DOUBLE_OR_LONG@ specifies
-- that it is converted to a Long value if its scale is 0, or to a Double
-- value otherwise.
--
-- Conversion to Double or Long can result in roundoff errors due to
-- precision loss. We recommend converting to String, especially when
-- working with currency values.
resultSetOptions_decimalReturnType :: Lens.Lens' ResultSetOptions (Prelude.Maybe DecimalReturnType)
resultSetOptions_decimalReturnType = Lens.lens (\ResultSetOptions' {decimalReturnType} -> decimalReturnType) (\s@ResultSetOptions' {} a -> s {decimalReturnType = a} :: ResultSetOptions)

instance Prelude.Hashable ResultSetOptions

instance Prelude.NFData ResultSetOptions

instance Core.ToJSON ResultSetOptions where
  toJSON ResultSetOptions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("decimalReturnType" Core..=)
              Prelude.<$> decimalReturnType
          ]
      )
