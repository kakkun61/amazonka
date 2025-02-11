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
-- Module      : Network.AWS.MacieV2.Types.CustomDetection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MacieV2.Types.CustomDetection where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MacieV2.Types.Occurrences
import qualified Network.AWS.Prelude as Prelude

-- | Provides information about a custom data identifier that produced a
-- sensitive data finding, and the sensitive data that it detected for the
-- finding.
--
-- /See:/ 'newCustomDetection' smart constructor.
data CustomDetection = CustomDetection'
  { -- | The location of 1-15 occurrences of the sensitive data that the custom
    -- data identifier detected. A finding includes location data for a maximum
    -- of 15 occurrences of sensitive data.
    occurrences :: Prelude.Maybe Occurrences,
    -- | The Amazon Resource Name (ARN) of the custom data identifier.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The total number of occurrences of the sensitive data that the custom
    -- data identifier detected.
    count :: Prelude.Maybe Prelude.Integer,
    -- | The name of the custom data identifier.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CustomDetection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'occurrences', 'customDetection_occurrences' - The location of 1-15 occurrences of the sensitive data that the custom
-- data identifier detected. A finding includes location data for a maximum
-- of 15 occurrences of sensitive data.
--
-- 'arn', 'customDetection_arn' - The Amazon Resource Name (ARN) of the custom data identifier.
--
-- 'count', 'customDetection_count' - The total number of occurrences of the sensitive data that the custom
-- data identifier detected.
--
-- 'name', 'customDetection_name' - The name of the custom data identifier.
newCustomDetection ::
  CustomDetection
newCustomDetection =
  CustomDetection'
    { occurrences = Prelude.Nothing,
      arn = Prelude.Nothing,
      count = Prelude.Nothing,
      name = Prelude.Nothing
    }

-- | The location of 1-15 occurrences of the sensitive data that the custom
-- data identifier detected. A finding includes location data for a maximum
-- of 15 occurrences of sensitive data.
customDetection_occurrences :: Lens.Lens' CustomDetection (Prelude.Maybe Occurrences)
customDetection_occurrences = Lens.lens (\CustomDetection' {occurrences} -> occurrences) (\s@CustomDetection' {} a -> s {occurrences = a} :: CustomDetection)

-- | The Amazon Resource Name (ARN) of the custom data identifier.
customDetection_arn :: Lens.Lens' CustomDetection (Prelude.Maybe Prelude.Text)
customDetection_arn = Lens.lens (\CustomDetection' {arn} -> arn) (\s@CustomDetection' {} a -> s {arn = a} :: CustomDetection)

-- | The total number of occurrences of the sensitive data that the custom
-- data identifier detected.
customDetection_count :: Lens.Lens' CustomDetection (Prelude.Maybe Prelude.Integer)
customDetection_count = Lens.lens (\CustomDetection' {count} -> count) (\s@CustomDetection' {} a -> s {count = a} :: CustomDetection)

-- | The name of the custom data identifier.
customDetection_name :: Lens.Lens' CustomDetection (Prelude.Maybe Prelude.Text)
customDetection_name = Lens.lens (\CustomDetection' {name} -> name) (\s@CustomDetection' {} a -> s {name = a} :: CustomDetection)

instance Core.FromJSON CustomDetection where
  parseJSON =
    Core.withObject
      "CustomDetection"
      ( \x ->
          CustomDetection'
            Prelude.<$> (x Core..:? "occurrences")
            Prelude.<*> (x Core..:? "arn")
            Prelude.<*> (x Core..:? "count")
            Prelude.<*> (x Core..:? "name")
      )

instance Prelude.Hashable CustomDetection

instance Prelude.NFData CustomDetection
