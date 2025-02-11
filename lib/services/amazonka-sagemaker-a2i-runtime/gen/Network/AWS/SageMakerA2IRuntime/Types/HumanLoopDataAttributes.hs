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
-- Module      : Network.AWS.SageMakerA2IRuntime.Types.HumanLoopDataAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMakerA2IRuntime.Types.HumanLoopDataAttributes where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMakerA2IRuntime.Types.ContentClassifier

-- | Attributes of the data specified by the customer. Use these to describe
-- the data to be labeled.
--
-- /See:/ 'newHumanLoopDataAttributes' smart constructor.
data HumanLoopDataAttributes = HumanLoopDataAttributes'
  { -- | Declares that your content is free of personally identifiable
    -- information or adult content.
    --
    -- Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can
    -- view your task based on this information.
    contentClassifiers :: [ContentClassifier]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'HumanLoopDataAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'contentClassifiers', 'humanLoopDataAttributes_contentClassifiers' - Declares that your content is free of personally identifiable
-- information or adult content.
--
-- Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can
-- view your task based on this information.
newHumanLoopDataAttributes ::
  HumanLoopDataAttributes
newHumanLoopDataAttributes =
  HumanLoopDataAttributes'
    { contentClassifiers =
        Prelude.mempty
    }

-- | Declares that your content is free of personally identifiable
-- information or adult content.
--
-- Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can
-- view your task based on this information.
humanLoopDataAttributes_contentClassifiers :: Lens.Lens' HumanLoopDataAttributes [ContentClassifier]
humanLoopDataAttributes_contentClassifiers = Lens.lens (\HumanLoopDataAttributes' {contentClassifiers} -> contentClassifiers) (\s@HumanLoopDataAttributes' {} a -> s {contentClassifiers = a} :: HumanLoopDataAttributes) Prelude.. Lens.coerced

instance Prelude.Hashable HumanLoopDataAttributes

instance Prelude.NFData HumanLoopDataAttributes

instance Core.ToJSON HumanLoopDataAttributes where
  toJSON HumanLoopDataAttributes' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ContentClassifiers" Core..= contentClassifiers)
          ]
      )
