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
-- Module      : Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecurityHub.Types.AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A secret to pass to the container.
--
-- /See:/ 'newAwsEcsTaskDefinitionContainerDefinitionsSecretsDetails' smart constructor.
data AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails = AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails'
  { -- | The name of the secret.
    name :: Prelude.Maybe Prelude.Text,
    -- | The secret to expose to the container. The value is either the full ARN
    -- of the Secrets Manager secret or the full ARN of the parameter in the
    -- Systems Manager Parameter Store.
    valueFrom :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_name' - The name of the secret.
--
-- 'valueFrom', 'awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_valueFrom' - The secret to expose to the container. The value is either the full ARN
-- of the Secrets Manager secret or the full ARN of the parameter in the
-- Systems Manager Parameter Store.
newAwsEcsTaskDefinitionContainerDefinitionsSecretsDetails ::
  AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
newAwsEcsTaskDefinitionContainerDefinitionsSecretsDetails =
  AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails'
    { name =
        Prelude.Nothing,
      valueFrom =
        Prelude.Nothing
    }

-- | The name of the secret.
awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_name :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_name = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails' {name} -> name) (\s@AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails' {} a -> s {name = a} :: AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails)

-- | The secret to expose to the container. The value is either the full ARN
-- of the Secrets Manager secret or the full ARN of the parameter in the
-- Systems Manager Parameter Store.
awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_valueFrom :: Lens.Lens' AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails (Prelude.Maybe Prelude.Text)
awsEcsTaskDefinitionContainerDefinitionsSecretsDetails_valueFrom = Lens.lens (\AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails' {valueFrom} -> valueFrom) (\s@AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails' {} a -> s {valueFrom = a} :: AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails)

instance
  Core.FromJSON
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
  where
  parseJSON =
    Core.withObject
      "AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails"
      ( \x ->
          AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails'
            Prelude.<$> (x Core..:? "Name")
              Prelude.<*> (x Core..:? "ValueFrom")
      )

instance
  Prelude.Hashable
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails

instance
  Prelude.NFData
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails

instance
  Core.ToJSON
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails
  where
  toJSON
    AwsEcsTaskDefinitionContainerDefinitionsSecretsDetails' {..} =
      Core.object
        ( Prelude.catMaybes
            [ ("Name" Core..=) Prelude.<$> name,
              ("ValueFrom" Core..=) Prelude.<$> valueFrom
            ]
        )
