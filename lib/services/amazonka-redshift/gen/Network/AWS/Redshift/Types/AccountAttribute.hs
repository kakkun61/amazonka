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
-- Module      : Network.AWS.Redshift.Types.AccountAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.AccountAttribute where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal
import Network.AWS.Redshift.Types.AttributeValueTarget

-- | A name value pair that describes an aspect of an account.
--
-- /See:/ 'newAccountAttribute' smart constructor.
data AccountAttribute = AccountAttribute'
  { -- | A list of attribute values.
    attributeValues :: Prelude.Maybe [AttributeValueTarget],
    -- | The name of the attribute.
    attributeName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AccountAttribute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeValues', 'accountAttribute_attributeValues' - A list of attribute values.
--
-- 'attributeName', 'accountAttribute_attributeName' - The name of the attribute.
newAccountAttribute ::
  AccountAttribute
newAccountAttribute =
  AccountAttribute'
    { attributeValues =
        Prelude.Nothing,
      attributeName = Prelude.Nothing
    }

-- | A list of attribute values.
accountAttribute_attributeValues :: Lens.Lens' AccountAttribute (Prelude.Maybe [AttributeValueTarget])
accountAttribute_attributeValues = Lens.lens (\AccountAttribute' {attributeValues} -> attributeValues) (\s@AccountAttribute' {} a -> s {attributeValues = a} :: AccountAttribute) Prelude.. Lens.mapping Lens.coerced

-- | The name of the attribute.
accountAttribute_attributeName :: Lens.Lens' AccountAttribute (Prelude.Maybe Prelude.Text)
accountAttribute_attributeName = Lens.lens (\AccountAttribute' {attributeName} -> attributeName) (\s@AccountAttribute' {} a -> s {attributeName = a} :: AccountAttribute)

instance Core.FromXML AccountAttribute where
  parseXML x =
    AccountAttribute'
      Prelude.<$> ( x Core..@? "AttributeValues" Core..!@ Prelude.mempty
                      Prelude.>>= Core.may (Core.parseXMLList "AttributeValueTarget")
                  )
      Prelude.<*> (x Core..@? "AttributeName")

instance Prelude.Hashable AccountAttribute

instance Prelude.NFData AccountAttribute
