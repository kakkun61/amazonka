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
-- Module      : Network.AWS.EMR.Types.ReleaseLabelFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ReleaseLabelFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The release label filters by application or version prefix.
--
-- /See:/ 'newReleaseLabelFilter' smart constructor.
data ReleaseLabelFilter = ReleaseLabelFilter'
  { -- | Optional release label application filter. For example, @spark\@2.1.0@.
    application :: Prelude.Maybe Prelude.Text,
    -- | Optional release label version prefix filter. For example, @emr-5@.
    prefix :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ReleaseLabelFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'application', 'releaseLabelFilter_application' - Optional release label application filter. For example, @spark\@2.1.0@.
--
-- 'prefix', 'releaseLabelFilter_prefix' - Optional release label version prefix filter. For example, @emr-5@.
newReleaseLabelFilter ::
  ReleaseLabelFilter
newReleaseLabelFilter =
  ReleaseLabelFilter'
    { application = Prelude.Nothing,
      prefix = Prelude.Nothing
    }

-- | Optional release label application filter. For example, @spark\@2.1.0@.
releaseLabelFilter_application :: Lens.Lens' ReleaseLabelFilter (Prelude.Maybe Prelude.Text)
releaseLabelFilter_application = Lens.lens (\ReleaseLabelFilter' {application} -> application) (\s@ReleaseLabelFilter' {} a -> s {application = a} :: ReleaseLabelFilter)

-- | Optional release label version prefix filter. For example, @emr-5@.
releaseLabelFilter_prefix :: Lens.Lens' ReleaseLabelFilter (Prelude.Maybe Prelude.Text)
releaseLabelFilter_prefix = Lens.lens (\ReleaseLabelFilter' {prefix} -> prefix) (\s@ReleaseLabelFilter' {} a -> s {prefix = a} :: ReleaseLabelFilter)

instance Prelude.Hashable ReleaseLabelFilter

instance Prelude.NFData ReleaseLabelFilter

instance Core.ToJSON ReleaseLabelFilter where
  toJSON ReleaseLabelFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Application" Core..=) Prelude.<$> application,
            ("Prefix" Core..=) Prelude.<$> prefix
          ]
      )
