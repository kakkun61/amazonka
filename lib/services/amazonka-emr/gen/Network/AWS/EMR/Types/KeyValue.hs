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
-- Module      : Network.AWS.EMR.Types.KeyValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.KeyValue where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A key-value pair.
--
-- /See:/ 'newKeyValue' smart constructor.
data KeyValue = KeyValue'
  { -- | The value part of the identified key.
    value :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier of a key-value pair.
    key :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'KeyValue' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'keyValue_value' - The value part of the identified key.
--
-- 'key', 'keyValue_key' - The unique identifier of a key-value pair.
newKeyValue ::
  KeyValue
newKeyValue =
  KeyValue'
    { value = Prelude.Nothing,
      key = Prelude.Nothing
    }

-- | The value part of the identified key.
keyValue_value :: Lens.Lens' KeyValue (Prelude.Maybe Prelude.Text)
keyValue_value = Lens.lens (\KeyValue' {value} -> value) (\s@KeyValue' {} a -> s {value = a} :: KeyValue)

-- | The unique identifier of a key-value pair.
keyValue_key :: Lens.Lens' KeyValue (Prelude.Maybe Prelude.Text)
keyValue_key = Lens.lens (\KeyValue' {key} -> key) (\s@KeyValue' {} a -> s {key = a} :: KeyValue)

instance Prelude.Hashable KeyValue

instance Prelude.NFData KeyValue

instance Core.ToJSON KeyValue where
  toJSON KeyValue' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Value" Core..=) Prelude.<$> value,
            ("Key" Core..=) Prelude.<$> key
          ]
      )
