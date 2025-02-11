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
-- Module      : Network.AWS.GreengrassV2.Types.LambdaFunctionRecipeSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GreengrassV2.Types.LambdaFunctionRecipeSource where

import qualified Network.AWS.Core as Core
import Network.AWS.GreengrassV2.Types.ComponentDependencyRequirement
import Network.AWS.GreengrassV2.Types.ComponentPlatform
import Network.AWS.GreengrassV2.Types.LambdaExecutionParameters
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an Lambda function to import to create a
-- component.
--
-- /See:/ 'newLambdaFunctionRecipeSource' smart constructor.
data LambdaFunctionRecipeSource = LambdaFunctionRecipeSource'
  { -- | The system and runtime parameters for the Lambda function as it runs on
    -- the Greengrass core device.
    componentLambdaParameters :: Prelude.Maybe LambdaExecutionParameters,
    -- | The version of the component.
    --
    -- Defaults to the version of the Lambda function as a semantic version.
    -- For example, if your function version is @3@, the component version
    -- becomes @3.0.0@.
    componentVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of the component.
    --
    -- Defaults to the name of the Lambda function.
    componentName :: Prelude.Maybe Prelude.Text,
    -- | The platforms that the component version supports.
    componentPlatforms :: Prelude.Maybe [ComponentPlatform],
    -- | The component versions on which this Lambda function component depends.
    componentDependencies :: Prelude.Maybe (Prelude.HashMap Prelude.Text ComponentDependencyRequirement),
    -- | The
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
    -- of the Lambda function. The ARN must include the version of the function
    -- to import. You can\'t use version aliases like @$LATEST@.
    lambdaArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'LambdaFunctionRecipeSource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'componentLambdaParameters', 'lambdaFunctionRecipeSource_componentLambdaParameters' - The system and runtime parameters for the Lambda function as it runs on
-- the Greengrass core device.
--
-- 'componentVersion', 'lambdaFunctionRecipeSource_componentVersion' - The version of the component.
--
-- Defaults to the version of the Lambda function as a semantic version.
-- For example, if your function version is @3@, the component version
-- becomes @3.0.0@.
--
-- 'componentName', 'lambdaFunctionRecipeSource_componentName' - The name of the component.
--
-- Defaults to the name of the Lambda function.
--
-- 'componentPlatforms', 'lambdaFunctionRecipeSource_componentPlatforms' - The platforms that the component version supports.
--
-- 'componentDependencies', 'lambdaFunctionRecipeSource_componentDependencies' - The component versions on which this Lambda function component depends.
--
-- 'lambdaArn', 'lambdaFunctionRecipeSource_lambdaArn' - The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Lambda function. The ARN must include the version of the function
-- to import. You can\'t use version aliases like @$LATEST@.
newLambdaFunctionRecipeSource ::
  -- | 'lambdaArn'
  Prelude.Text ->
  LambdaFunctionRecipeSource
newLambdaFunctionRecipeSource pLambdaArn_ =
  LambdaFunctionRecipeSource'
    { componentLambdaParameters =
        Prelude.Nothing,
      componentVersion = Prelude.Nothing,
      componentName = Prelude.Nothing,
      componentPlatforms = Prelude.Nothing,
      componentDependencies = Prelude.Nothing,
      lambdaArn = pLambdaArn_
    }

-- | The system and runtime parameters for the Lambda function as it runs on
-- the Greengrass core device.
lambdaFunctionRecipeSource_componentLambdaParameters :: Lens.Lens' LambdaFunctionRecipeSource (Prelude.Maybe LambdaExecutionParameters)
lambdaFunctionRecipeSource_componentLambdaParameters = Lens.lens (\LambdaFunctionRecipeSource' {componentLambdaParameters} -> componentLambdaParameters) (\s@LambdaFunctionRecipeSource' {} a -> s {componentLambdaParameters = a} :: LambdaFunctionRecipeSource)

-- | The version of the component.
--
-- Defaults to the version of the Lambda function as a semantic version.
-- For example, if your function version is @3@, the component version
-- becomes @3.0.0@.
lambdaFunctionRecipeSource_componentVersion :: Lens.Lens' LambdaFunctionRecipeSource (Prelude.Maybe Prelude.Text)
lambdaFunctionRecipeSource_componentVersion = Lens.lens (\LambdaFunctionRecipeSource' {componentVersion} -> componentVersion) (\s@LambdaFunctionRecipeSource' {} a -> s {componentVersion = a} :: LambdaFunctionRecipeSource)

-- | The name of the component.
--
-- Defaults to the name of the Lambda function.
lambdaFunctionRecipeSource_componentName :: Lens.Lens' LambdaFunctionRecipeSource (Prelude.Maybe Prelude.Text)
lambdaFunctionRecipeSource_componentName = Lens.lens (\LambdaFunctionRecipeSource' {componentName} -> componentName) (\s@LambdaFunctionRecipeSource' {} a -> s {componentName = a} :: LambdaFunctionRecipeSource)

-- | The platforms that the component version supports.
lambdaFunctionRecipeSource_componentPlatforms :: Lens.Lens' LambdaFunctionRecipeSource (Prelude.Maybe [ComponentPlatform])
lambdaFunctionRecipeSource_componentPlatforms = Lens.lens (\LambdaFunctionRecipeSource' {componentPlatforms} -> componentPlatforms) (\s@LambdaFunctionRecipeSource' {} a -> s {componentPlatforms = a} :: LambdaFunctionRecipeSource) Prelude.. Lens.mapping Lens.coerced

-- | The component versions on which this Lambda function component depends.
lambdaFunctionRecipeSource_componentDependencies :: Lens.Lens' LambdaFunctionRecipeSource (Prelude.Maybe (Prelude.HashMap Prelude.Text ComponentDependencyRequirement))
lambdaFunctionRecipeSource_componentDependencies = Lens.lens (\LambdaFunctionRecipeSource' {componentDependencies} -> componentDependencies) (\s@LambdaFunctionRecipeSource' {} a -> s {componentDependencies = a} :: LambdaFunctionRecipeSource) Prelude.. Lens.mapping Lens.coerced

-- | The
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html ARN>
-- of the Lambda function. The ARN must include the version of the function
-- to import. You can\'t use version aliases like @$LATEST@.
lambdaFunctionRecipeSource_lambdaArn :: Lens.Lens' LambdaFunctionRecipeSource Prelude.Text
lambdaFunctionRecipeSource_lambdaArn = Lens.lens (\LambdaFunctionRecipeSource' {lambdaArn} -> lambdaArn) (\s@LambdaFunctionRecipeSource' {} a -> s {lambdaArn = a} :: LambdaFunctionRecipeSource)

instance Prelude.Hashable LambdaFunctionRecipeSource

instance Prelude.NFData LambdaFunctionRecipeSource

instance Core.ToJSON LambdaFunctionRecipeSource where
  toJSON LambdaFunctionRecipeSource' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("componentLambdaParameters" Core..=)
              Prelude.<$> componentLambdaParameters,
            ("componentVersion" Core..=)
              Prelude.<$> componentVersion,
            ("componentName" Core..=) Prelude.<$> componentName,
            ("componentPlatforms" Core..=)
              Prelude.<$> componentPlatforms,
            ("componentDependencies" Core..=)
              Prelude.<$> componentDependencies,
            Prelude.Just ("lambdaArn" Core..= lambdaArn)
          ]
      )
