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
-- Module      : Network.AWS.KinesisAnalyticsV2.Types.ApplicationCodeConfigurationUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalyticsV2.Types.ApplicationCodeConfigurationUpdate where

import qualified Network.AWS.Core as Core
import Network.AWS.KinesisAnalyticsV2.Types.CodeContentType
import Network.AWS.KinesisAnalyticsV2.Types.CodeContentUpdate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes code configuration updates for an application. This is
-- supported for a Flink-based Kinesis Data Analytics application or a
-- SQL-based Kinesis Data Analytics application.
--
-- /See:/ 'newApplicationCodeConfigurationUpdate' smart constructor.
data ApplicationCodeConfigurationUpdate = ApplicationCodeConfigurationUpdate'
  { -- | Describes updates to the code content type.
    codeContentTypeUpdate :: Prelude.Maybe CodeContentType,
    -- | Describes updates to the code content of an application.
    codeContentUpdate :: Prelude.Maybe CodeContentUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ApplicationCodeConfigurationUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'codeContentTypeUpdate', 'applicationCodeConfigurationUpdate_codeContentTypeUpdate' - Describes updates to the code content type.
--
-- 'codeContentUpdate', 'applicationCodeConfigurationUpdate_codeContentUpdate' - Describes updates to the code content of an application.
newApplicationCodeConfigurationUpdate ::
  ApplicationCodeConfigurationUpdate
newApplicationCodeConfigurationUpdate =
  ApplicationCodeConfigurationUpdate'
    { codeContentTypeUpdate =
        Prelude.Nothing,
      codeContentUpdate = Prelude.Nothing
    }

-- | Describes updates to the code content type.
applicationCodeConfigurationUpdate_codeContentTypeUpdate :: Lens.Lens' ApplicationCodeConfigurationUpdate (Prelude.Maybe CodeContentType)
applicationCodeConfigurationUpdate_codeContentTypeUpdate = Lens.lens (\ApplicationCodeConfigurationUpdate' {codeContentTypeUpdate} -> codeContentTypeUpdate) (\s@ApplicationCodeConfigurationUpdate' {} a -> s {codeContentTypeUpdate = a} :: ApplicationCodeConfigurationUpdate)

-- | Describes updates to the code content of an application.
applicationCodeConfigurationUpdate_codeContentUpdate :: Lens.Lens' ApplicationCodeConfigurationUpdate (Prelude.Maybe CodeContentUpdate)
applicationCodeConfigurationUpdate_codeContentUpdate = Lens.lens (\ApplicationCodeConfigurationUpdate' {codeContentUpdate} -> codeContentUpdate) (\s@ApplicationCodeConfigurationUpdate' {} a -> s {codeContentUpdate = a} :: ApplicationCodeConfigurationUpdate)

instance
  Prelude.Hashable
    ApplicationCodeConfigurationUpdate

instance
  Prelude.NFData
    ApplicationCodeConfigurationUpdate

instance
  Core.ToJSON
    ApplicationCodeConfigurationUpdate
  where
  toJSON ApplicationCodeConfigurationUpdate' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("CodeContentTypeUpdate" Core..=)
              Prelude.<$> codeContentTypeUpdate,
            ("CodeContentUpdate" Core..=)
              Prelude.<$> codeContentUpdate
          ]
      )
