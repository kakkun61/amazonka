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
-- Module      : Network.AWS.Proton.Types.CompatibleEnvironmentTemplateInput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Proton.Types.CompatibleEnvironmentTemplateInput where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Compatible environment template data.
--
-- /See:/ 'newCompatibleEnvironmentTemplateInput' smart constructor.
data CompatibleEnvironmentTemplateInput = CompatibleEnvironmentTemplateInput'
  { -- | The major version of the compatible environment template.
    majorVersion :: Prelude.Text,
    -- | The compatible environment template name.
    templateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CompatibleEnvironmentTemplateInput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'majorVersion', 'compatibleEnvironmentTemplateInput_majorVersion' - The major version of the compatible environment template.
--
-- 'templateName', 'compatibleEnvironmentTemplateInput_templateName' - The compatible environment template name.
newCompatibleEnvironmentTemplateInput ::
  -- | 'majorVersion'
  Prelude.Text ->
  -- | 'templateName'
  Prelude.Text ->
  CompatibleEnvironmentTemplateInput
newCompatibleEnvironmentTemplateInput
  pMajorVersion_
  pTemplateName_ =
    CompatibleEnvironmentTemplateInput'
      { majorVersion =
          pMajorVersion_,
        templateName = pTemplateName_
      }

-- | The major version of the compatible environment template.
compatibleEnvironmentTemplateInput_majorVersion :: Lens.Lens' CompatibleEnvironmentTemplateInput Prelude.Text
compatibleEnvironmentTemplateInput_majorVersion = Lens.lens (\CompatibleEnvironmentTemplateInput' {majorVersion} -> majorVersion) (\s@CompatibleEnvironmentTemplateInput' {} a -> s {majorVersion = a} :: CompatibleEnvironmentTemplateInput)

-- | The compatible environment template name.
compatibleEnvironmentTemplateInput_templateName :: Lens.Lens' CompatibleEnvironmentTemplateInput Prelude.Text
compatibleEnvironmentTemplateInput_templateName = Lens.lens (\CompatibleEnvironmentTemplateInput' {templateName} -> templateName) (\s@CompatibleEnvironmentTemplateInput' {} a -> s {templateName = a} :: CompatibleEnvironmentTemplateInput)

instance
  Prelude.Hashable
    CompatibleEnvironmentTemplateInput

instance
  Prelude.NFData
    CompatibleEnvironmentTemplateInput

instance
  Core.ToJSON
    CompatibleEnvironmentTemplateInput
  where
  toJSON CompatibleEnvironmentTemplateInput' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("majorVersion" Core..= majorVersion),
            Prelude.Just ("templateName" Core..= templateName)
          ]
      )
