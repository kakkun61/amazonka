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
-- Module      : Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateResourceRecord
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsCertificateManagerCertificateResourceRecord where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides details about the CNAME record that is added to the DNS
-- database for domain validation.
--
-- /See:/ 'newAwsCertificateManagerCertificateResourceRecord' smart constructor.
data AwsCertificateManagerCertificateResourceRecord = AwsCertificateManagerCertificateResourceRecord'
  { -- | The value of the resource.
    value :: Prelude.Maybe Prelude.Text,
    -- | The name of the resource.
    name :: Prelude.Maybe Prelude.Text,
    -- | The type of resource.
    type' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsCertificateManagerCertificateResourceRecord' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'value', 'awsCertificateManagerCertificateResourceRecord_value' - The value of the resource.
--
-- 'name', 'awsCertificateManagerCertificateResourceRecord_name' - The name of the resource.
--
-- 'type'', 'awsCertificateManagerCertificateResourceRecord_type' - The type of resource.
newAwsCertificateManagerCertificateResourceRecord ::
  AwsCertificateManagerCertificateResourceRecord
newAwsCertificateManagerCertificateResourceRecord =
  AwsCertificateManagerCertificateResourceRecord'
    { value =
        Prelude.Nothing,
      name = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | The value of the resource.
awsCertificateManagerCertificateResourceRecord_value :: Lens.Lens' AwsCertificateManagerCertificateResourceRecord (Prelude.Maybe Prelude.Text)
awsCertificateManagerCertificateResourceRecord_value = Lens.lens (\AwsCertificateManagerCertificateResourceRecord' {value} -> value) (\s@AwsCertificateManagerCertificateResourceRecord' {} a -> s {value = a} :: AwsCertificateManagerCertificateResourceRecord)

-- | The name of the resource.
awsCertificateManagerCertificateResourceRecord_name :: Lens.Lens' AwsCertificateManagerCertificateResourceRecord (Prelude.Maybe Prelude.Text)
awsCertificateManagerCertificateResourceRecord_name = Lens.lens (\AwsCertificateManagerCertificateResourceRecord' {name} -> name) (\s@AwsCertificateManagerCertificateResourceRecord' {} a -> s {name = a} :: AwsCertificateManagerCertificateResourceRecord)

-- | The type of resource.
awsCertificateManagerCertificateResourceRecord_type :: Lens.Lens' AwsCertificateManagerCertificateResourceRecord (Prelude.Maybe Prelude.Text)
awsCertificateManagerCertificateResourceRecord_type = Lens.lens (\AwsCertificateManagerCertificateResourceRecord' {type'} -> type') (\s@AwsCertificateManagerCertificateResourceRecord' {} a -> s {type' = a} :: AwsCertificateManagerCertificateResourceRecord)

instance
  Core.FromJSON
    AwsCertificateManagerCertificateResourceRecord
  where
  parseJSON =
    Core.withObject
      "AwsCertificateManagerCertificateResourceRecord"
      ( \x ->
          AwsCertificateManagerCertificateResourceRecord'
            Prelude.<$> (x Core..:? "Value") Prelude.<*> (x Core..:? "Name")
              Prelude.<*> (x Core..:? "Type")
      )

instance
  Prelude.Hashable
    AwsCertificateManagerCertificateResourceRecord

instance
  Prelude.NFData
    AwsCertificateManagerCertificateResourceRecord

instance
  Core.ToJSON
    AwsCertificateManagerCertificateResourceRecord
  where
  toJSON
    AwsCertificateManagerCertificateResourceRecord' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Value" Core..=) Prelude.<$> value,
              ("Name" Core..=) Prelude.<$> name,
              ("Type" Core..=) Prelude.<$> type'
            ]
        )
