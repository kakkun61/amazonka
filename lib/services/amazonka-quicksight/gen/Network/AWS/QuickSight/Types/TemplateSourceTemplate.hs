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
-- Module      : Network.AWS.QuickSight.Types.TemplateSourceTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.TemplateSourceTemplate where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The source template of the template.
--
-- /See:/ 'newTemplateSourceTemplate' smart constructor.
data TemplateSourceTemplate = TemplateSourceTemplate'
  { -- | The Amazon Resource Name (ARN) of the resource.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'TemplateSourceTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'templateSourceTemplate_arn' - The Amazon Resource Name (ARN) of the resource.
newTemplateSourceTemplate ::
  -- | 'arn'
  Prelude.Text ->
  TemplateSourceTemplate
newTemplateSourceTemplate pArn_ =
  TemplateSourceTemplate' {arn = pArn_}

-- | The Amazon Resource Name (ARN) of the resource.
templateSourceTemplate_arn :: Lens.Lens' TemplateSourceTemplate Prelude.Text
templateSourceTemplate_arn = Lens.lens (\TemplateSourceTemplate' {arn} -> arn) (\s@TemplateSourceTemplate' {} a -> s {arn = a} :: TemplateSourceTemplate)

instance Prelude.Hashable TemplateSourceTemplate

instance Prelude.NFData TemplateSourceTemplate

instance Core.ToJSON TemplateSourceTemplate where
  toJSON TemplateSourceTemplate' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("Arn" Core..= arn)]
      )
