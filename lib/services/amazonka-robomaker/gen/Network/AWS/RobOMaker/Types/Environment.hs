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
-- Module      : Network.AWS.RobOMaker.Types.Environment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.Environment where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The object that contains the Docker image URI for either your robot or
-- simulation applications.
--
-- /See:/ 'newEnvironment' smart constructor.
data Environment = Environment'
  { -- | The Docker image URI for either your robot or simulation applications.
    uri :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Environment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'uri', 'environment_uri' - The Docker image URI for either your robot or simulation applications.
newEnvironment ::
  Environment
newEnvironment = Environment' {uri = Prelude.Nothing}

-- | The Docker image URI for either your robot or simulation applications.
environment_uri :: Lens.Lens' Environment (Prelude.Maybe Prelude.Text)
environment_uri = Lens.lens (\Environment' {uri} -> uri) (\s@Environment' {} a -> s {uri = a} :: Environment)

instance Core.FromJSON Environment where
  parseJSON =
    Core.withObject
      "Environment"
      (\x -> Environment' Prelude.<$> (x Core..:? "uri"))

instance Prelude.Hashable Environment

instance Prelude.NFData Environment

instance Core.ToJSON Environment where
  toJSON Environment' {..} =
    Core.object
      (Prelude.catMaybes [("uri" Core..=) Prelude.<$> uri])
