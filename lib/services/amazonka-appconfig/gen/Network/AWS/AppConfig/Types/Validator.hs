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
-- Module      : Network.AWS.AppConfig.Types.Validator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppConfig.Types.Validator where

import Network.AWS.AppConfig.Types.ValidatorType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A validator provides a syntactic or semantic check to ensure the
-- configuration you want to deploy functions as intended. To validate your
-- application configuration data, you provide a schema or a Lambda
-- function that runs against the configuration. The configuration
-- deployment or update can only proceed when the configuration data is
-- valid.
--
-- /See:/ 'newValidator' smart constructor.
data Validator = Validator'
  { -- | AppConfig supports validators of type @JSON_SCHEMA@ and @LAMBDA@
    type' :: ValidatorType,
    -- | Either the JSON Schema content or the Amazon Resource Name (ARN) of an
    -- AWS Lambda function.
    content :: Core.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Validator' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'validator_type' - AppConfig supports validators of type @JSON_SCHEMA@ and @LAMBDA@
--
-- 'content', 'validator_content' - Either the JSON Schema content or the Amazon Resource Name (ARN) of an
-- AWS Lambda function.
newValidator ::
  -- | 'type''
  ValidatorType ->
  -- | 'content'
  Prelude.Text ->
  Validator
newValidator pType_ pContent_ =
  Validator'
    { type' = pType_,
      content = Core._Sensitive Lens.# pContent_
    }

-- | AppConfig supports validators of type @JSON_SCHEMA@ and @LAMBDA@
validator_type :: Lens.Lens' Validator ValidatorType
validator_type = Lens.lens (\Validator' {type'} -> type') (\s@Validator' {} a -> s {type' = a} :: Validator)

-- | Either the JSON Schema content or the Amazon Resource Name (ARN) of an
-- AWS Lambda function.
validator_content :: Lens.Lens' Validator Prelude.Text
validator_content = Lens.lens (\Validator' {content} -> content) (\s@Validator' {} a -> s {content = a} :: Validator) Prelude.. Core._Sensitive

instance Core.FromJSON Validator where
  parseJSON =
    Core.withObject
      "Validator"
      ( \x ->
          Validator'
            Prelude.<$> (x Core..: "Type") Prelude.<*> (x Core..: "Content")
      )

instance Prelude.Hashable Validator

instance Prelude.NFData Validator

instance Core.ToJSON Validator where
  toJSON Validator' {..} =
    Core.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Type" Core..= type'),
            Prelude.Just ("Content" Core..= content)
          ]
      )
