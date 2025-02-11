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
-- Module      : Network.AWS.SSMIncidents.Types.SsmAutomation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSMIncidents.Types.SsmAutomation where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SSMIncidents.Types.SsmTargetAccount

-- | Details about the Systems Manager automation document that will be used
-- as a runbook during an incident.
--
-- /See:/ 'newSsmAutomation' smart constructor.
data SsmAutomation = SsmAutomation'
  { -- | The account that the automation document will be run in. This can be in
    -- either the management account or an application account.
    targetAccount :: Prelude.Maybe SsmTargetAccount,
    -- | The key-value pair parameters to use when running the automation
    -- document.
    parameters :: Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]),
    -- | The automation document\'s version to use when running.
    documentVersion :: Prelude.Maybe Prelude.Text,
    -- | The automation document\'s name.
    documentName :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the role that the automation document
    -- will assume when running commands.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SsmAutomation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetAccount', 'ssmAutomation_targetAccount' - The account that the automation document will be run in. This can be in
-- either the management account or an application account.
--
-- 'parameters', 'ssmAutomation_parameters' - The key-value pair parameters to use when running the automation
-- document.
--
-- 'documentVersion', 'ssmAutomation_documentVersion' - The automation document\'s version to use when running.
--
-- 'documentName', 'ssmAutomation_documentName' - The automation document\'s name.
--
-- 'roleArn', 'ssmAutomation_roleArn' - The Amazon Resource Name (ARN) of the role that the automation document
-- will assume when running commands.
newSsmAutomation ::
  -- | 'documentName'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  SsmAutomation
newSsmAutomation pDocumentName_ pRoleArn_ =
  SsmAutomation'
    { targetAccount = Prelude.Nothing,
      parameters = Prelude.Nothing,
      documentVersion = Prelude.Nothing,
      documentName = pDocumentName_,
      roleArn = pRoleArn_
    }

-- | The account that the automation document will be run in. This can be in
-- either the management account or an application account.
ssmAutomation_targetAccount :: Lens.Lens' SsmAutomation (Prelude.Maybe SsmTargetAccount)
ssmAutomation_targetAccount = Lens.lens (\SsmAutomation' {targetAccount} -> targetAccount) (\s@SsmAutomation' {} a -> s {targetAccount = a} :: SsmAutomation)

-- | The key-value pair parameters to use when running the automation
-- document.
ssmAutomation_parameters :: Lens.Lens' SsmAutomation (Prelude.Maybe (Prelude.HashMap Prelude.Text [Prelude.Text]))
ssmAutomation_parameters = Lens.lens (\SsmAutomation' {parameters} -> parameters) (\s@SsmAutomation' {} a -> s {parameters = a} :: SsmAutomation) Prelude.. Lens.mapping Lens.coerced

-- | The automation document\'s version to use when running.
ssmAutomation_documentVersion :: Lens.Lens' SsmAutomation (Prelude.Maybe Prelude.Text)
ssmAutomation_documentVersion = Lens.lens (\SsmAutomation' {documentVersion} -> documentVersion) (\s@SsmAutomation' {} a -> s {documentVersion = a} :: SsmAutomation)

-- | The automation document\'s name.
ssmAutomation_documentName :: Lens.Lens' SsmAutomation Prelude.Text
ssmAutomation_documentName = Lens.lens (\SsmAutomation' {documentName} -> documentName) (\s@SsmAutomation' {} a -> s {documentName = a} :: SsmAutomation)

-- | The Amazon Resource Name (ARN) of the role that the automation document
-- will assume when running commands.
ssmAutomation_roleArn :: Lens.Lens' SsmAutomation Prelude.Text
ssmAutomation_roleArn = Lens.lens (\SsmAutomation' {roleArn} -> roleArn) (\s@SsmAutomation' {} a -> s {roleArn = a} :: SsmAutomation)

instance Core.FromJSON SsmAutomation where
  parseJSON =
    Core.withObject
      "SsmAutomation"
      ( \x ->
          SsmAutomation'
            Prelude.<$> (x Core..:? "targetAccount")
            Prelude.<*> (x Core..:? "parameters" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..:? "documentVersion")
            Prelude.<*> (x Core..: "documentName")
            Prelude.<*> (x Core..: "roleArn")
      )

instance Prelude.Hashable SsmAutomation

instance Prelude.NFData SsmAutomation

instance Core.ToJSON SsmAutomation where
  toJSON SsmAutomation' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("targetAccount" Core..=) Prelude.<$> targetAccount,
            ("parameters" Core..=) Prelude.<$> parameters,
            ("documentVersion" Core..=)
              Prelude.<$> documentVersion,
            Prelude.Just ("documentName" Core..= documentName),
            Prelude.Just ("roleArn" Core..= roleArn)
          ]
      )
