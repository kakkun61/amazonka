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
-- Module      : Network.AWS.Proton.Types.EnvironmentTemplateFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Proton.Types.EnvironmentTemplateFilter where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A search filter for environment templates.
--
-- /See:/ 'newEnvironmentTemplateFilter' smart constructor.
data EnvironmentTemplateFilter = EnvironmentTemplateFilter'
  { -- | Include @majorVersion@ to filter search for a major version.
    majorVersion :: Prelude.Text,
    -- | Include @templateName@ to filter search for a template name.
    templateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EnvironmentTemplateFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'majorVersion', 'environmentTemplateFilter_majorVersion' - Include @majorVersion@ to filter search for a major version.
--
-- 'templateName', 'environmentTemplateFilter_templateName' - Include @templateName@ to filter search for a template name.
newEnvironmentTemplateFilter ::
  -- | 'majorVersion'
  Prelude.Text ->
  -- | 'templateName'
  Prelude.Text ->
  EnvironmentTemplateFilter
newEnvironmentTemplateFilter
  pMajorVersion_
  pTemplateName_ =
    EnvironmentTemplateFilter'
      { majorVersion =
          pMajorVersion_,
        templateName = pTemplateName_
      }

-- | Include @majorVersion@ to filter search for a major version.
environmentTemplateFilter_majorVersion :: Lens.Lens' EnvironmentTemplateFilter Prelude.Text
environmentTemplateFilter_majorVersion = Lens.lens (\EnvironmentTemplateFilter' {majorVersion} -> majorVersion) (\s@EnvironmentTemplateFilter' {} a -> s {majorVersion = a} :: EnvironmentTemplateFilter)

-- | Include @templateName@ to filter search for a template name.
environmentTemplateFilter_templateName :: Lens.Lens' EnvironmentTemplateFilter Prelude.Text
environmentTemplateFilter_templateName = Lens.lens (\EnvironmentTemplateFilter' {templateName} -> templateName) (\s@EnvironmentTemplateFilter' {} a -> s {templateName = a} :: EnvironmentTemplateFilter)

instance Prelude.Hashable EnvironmentTemplateFilter

instance Prelude.NFData EnvironmentTemplateFilter

instance Core.ToJSON EnvironmentTemplateFilter where
  toJSON EnvironmentTemplateFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("majorVersion" Core..= majorVersion),
            Prelude.Just ("templateName" Core..= templateName)
          ]
      )
