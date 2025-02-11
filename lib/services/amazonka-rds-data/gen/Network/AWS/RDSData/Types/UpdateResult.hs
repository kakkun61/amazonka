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
-- Module      : Network.AWS.RDSData.Types.UpdateResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDSData.Types.UpdateResult where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDSData.Types.Field

-- | The response elements represent the results of an update.
--
-- /See:/ 'newUpdateResult' smart constructor.
data UpdateResult = UpdateResult'
  { -- | Values for fields generated during the request.
    generatedFields :: Prelude.Maybe [Field]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateResult' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'generatedFields', 'updateResult_generatedFields' - Values for fields generated during the request.
newUpdateResult ::
  UpdateResult
newUpdateResult =
  UpdateResult' {generatedFields = Prelude.Nothing}

-- | Values for fields generated during the request.
updateResult_generatedFields :: Lens.Lens' UpdateResult (Prelude.Maybe [Field])
updateResult_generatedFields = Lens.lens (\UpdateResult' {generatedFields} -> generatedFields) (\s@UpdateResult' {} a -> s {generatedFields = a} :: UpdateResult) Prelude.. Lens.mapping Lens.coerced

instance Core.FromJSON UpdateResult where
  parseJSON =
    Core.withObject
      "UpdateResult"
      ( \x ->
          UpdateResult'
            Prelude.<$> ( x Core..:? "generatedFields"
                            Core..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable UpdateResult

instance Prelude.NFData UpdateResult
