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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A namespaced kernel parameter to set in the container.
--
-- /See:/ 'newAwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails' smart constructor.
data AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails = AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails'
  { -- | The namespaced kernel parameter for which to set a value.
    namespace :: Prelude.Maybe Prelude.Text,
    -- | The value of the parameter.
    value :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'namespace', 'awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_namespace' - The namespaced kernel parameter for which to set a value.
--
-- 'value', 'awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_value' - The value of the parameter.
newAwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails ::
  AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
newAwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails =
  AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails'
    { namespace =
        Prelude.Nothing,
      value =
        Prelude.Nothing
    }

-- | The namespaced kernel parameter for which to set a value.
awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_namespace :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_namespace = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails' {namespace} -> namespace) (\s@AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails' {} a -> s {namespace = a} :: AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails)

-- | The value of the parameter.
awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_value :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails_value = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails' {value} -> value) (\s@AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails' {} a -> s {value = a} :: AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails)

instance
  Core.FromJSON
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails"
      ( \x ->
          AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails'
            Prelude.<$> (x Core..:? "Namespace")
              Prelude.<*> (x Core..:? "Value")
      )

instance
  Prelude.Hashable
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails

instance
  Prelude.NFData
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails

instance
  Core.ToJSON
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails
  where
  toJSON
    AwsEcsTaskDefinitionContainerDefinitionsSystemControlsDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Namespace" Core..=) Prelude.<$> namespace,
              ("Value" Core..=) Prelude.<$> value
            ]
        )
