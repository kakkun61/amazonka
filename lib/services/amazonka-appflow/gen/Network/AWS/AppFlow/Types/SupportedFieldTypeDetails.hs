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
-- Module      : Network.AWS.AppFlow.Types.SupportedFieldTypeDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppFlow.Types.SupportedFieldTypeDetails where

import Network.AWS.AppFlow.Types.FieldTypeDetails
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains details regarding all the supported @FieldTypes@ and their
-- corresponding @filterOperators@ and @supportedValues@.
--
-- /See:/ 'newSupportedFieldTypeDetails' smart constructor.
data SupportedFieldTypeDetails = SupportedFieldTypeDetails'
  { -- | The initial supported version for @fieldType@. If this is later changed
    -- to a different version, v2 will be introduced.
    v1 :: FieldTypeDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SupportedFieldTypeDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'v1', 'supportedFieldTypeDetails_v1' - The initial supported version for @fieldType@. If this is later changed
-- to a different version, v2 will be introduced.
newSupportedFieldTypeDetails ::
  -- | 'v1'
  FieldTypeDetails ->
  SupportedFieldTypeDetails
newSupportedFieldTypeDetails pV1_ =
  SupportedFieldTypeDetails' {v1 = pV1_}

-- | The initial supported version for @fieldType@. If this is later changed
-- to a different version, v2 will be introduced.
supportedFieldTypeDetails_v1 :: Lens.Lens' SupportedFieldTypeDetails FieldTypeDetails
supportedFieldTypeDetails_v1 = Lens.lens (\SupportedFieldTypeDetails' {v1} -> v1) (\s@SupportedFieldTypeDetails' {} a -> s {v1 = a} :: SupportedFieldTypeDetails)

instance Core.FromJSON SupportedFieldTypeDetails where
  parseJSON =
    Core.withObject
      "SupportedFieldTypeDetails"
      ( \x ->
          SupportedFieldTypeDetails'
            Prelude.<$> (x Core..: "v1")
      )

instance Prelude.Hashable SupportedFieldTypeDetails

instance Prelude.NFData SupportedFieldTypeDetails
