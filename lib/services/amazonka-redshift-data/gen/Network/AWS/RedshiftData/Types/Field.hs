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
-- Module      : Network.AWS.RedshiftData.Types.Field
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RedshiftData.Types.Field where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A data value in a column.
--
-- /See:/ 'newField' smart constructor.
data Field = Field'
  { -- | A value of the double data type.
    doubleValue :: Prelude.Maybe Prelude.Double,
    -- | A value of the string data type.
    stringValue :: Prelude.Maybe Prelude.Text,
    -- | A value of the long data type.
    longValue :: Prelude.Maybe Prelude.Integer,
    -- | A value of the Boolean data type.
    booleanValue :: Prelude.Maybe Prelude.Bool,
    -- | A value of the BLOB data type.
    blobValue :: Prelude.Maybe Core.Base64,
    -- | A value that indicates whether the data is NULL.
    isNull :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Field' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'doubleValue', 'field_doubleValue' - A value of the double data type.
--
-- 'stringValue', 'field_stringValue' - A value of the string data type.
--
-- 'longValue', 'field_longValue' - A value of the long data type.
--
-- 'booleanValue', 'field_booleanValue' - A value of the Boolean data type.
--
-- 'blobValue', 'field_blobValue' - A value of the BLOB data type.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'isNull', 'field_isNull' - A value that indicates whether the data is NULL.
newField ::
  Field
newField =
  Field'
    { doubleValue = Prelude.Nothing,
      stringValue = Prelude.Nothing,
      longValue = Prelude.Nothing,
      booleanValue = Prelude.Nothing,
      blobValue = Prelude.Nothing,
      isNull = Prelude.Nothing
    }

-- | A value of the double data type.
field_doubleValue :: Lens.Lens' Field (Prelude.Maybe Prelude.Double)
field_doubleValue = Lens.lens (\Field' {doubleValue} -> doubleValue) (\s@Field' {} a -> s {doubleValue = a} :: Field)

-- | A value of the string data type.
field_stringValue :: Lens.Lens' Field (Prelude.Maybe Prelude.Text)
field_stringValue = Lens.lens (\Field' {stringValue} -> stringValue) (\s@Field' {} a -> s {stringValue = a} :: Field)

-- | A value of the long data type.
field_longValue :: Lens.Lens' Field (Prelude.Maybe Prelude.Integer)
field_longValue = Lens.lens (\Field' {longValue} -> longValue) (\s@Field' {} a -> s {longValue = a} :: Field)

-- | A value of the Boolean data type.
field_booleanValue :: Lens.Lens' Field (Prelude.Maybe Prelude.Bool)
field_booleanValue = Lens.lens (\Field' {booleanValue} -> booleanValue) (\s@Field' {} a -> s {booleanValue = a} :: Field)

-- | A value of the BLOB data type.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
field_blobValue :: Lens.Lens' Field (Prelude.Maybe Prelude.ByteString)
field_blobValue = Lens.lens (\Field' {blobValue} -> blobValue) (\s@Field' {} a -> s {blobValue = a} :: Field) Prelude.. Lens.mapping Core._Base64

-- | A value that indicates whether the data is NULL.
field_isNull :: Lens.Lens' Field (Prelude.Maybe Prelude.Bool)
field_isNull = Lens.lens (\Field' {isNull} -> isNull) (\s@Field' {} a -> s {isNull = a} :: Field)

instance Core.FromJSON Field where
  parseJSON =
    Core.withObject
      "Field"
      ( \x ->
          Field'
            Prelude.<$> (x Core..:? "doubleValue")
            Prelude.<*> (x Core..:? "stringValue")
            Prelude.<*> (x Core..:? "longValue")
            Prelude.<*> (x Core..:? "booleanValue")
            Prelude.<*> (x Core..:? "blobValue")
            Prelude.<*> (x Core..:? "isNull")
      )

instance Prelude.Hashable Field

instance Prelude.NFData Field
