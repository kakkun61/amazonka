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
-- Module      : Network.AWS.AccessAnalyzer.Types.Location
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AccessAnalyzer.Types.Location where

import Network.AWS.AccessAnalyzer.Types.PathElement
import Network.AWS.AccessAnalyzer.Types.Span
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A location in a policy that is represented as a path through the JSON
-- representation and a corresponding span.
--
-- /See:/ 'newLocation' smart constructor.
data Location = Location'
  { -- | A path in a policy, represented as a sequence of path elements.
    path :: [PathElement],
    -- | A span in a policy.
    span :: Span
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Location' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'path', 'location_path' - A path in a policy, represented as a sequence of path elements.
--
-- 'span', 'location_span' - A span in a policy.
newLocation ::
  -- | 'span'
  Span ->
  Location
newLocation pSpan_ =
  Location' {path = Prelude.mempty, span = pSpan_}

-- | A path in a policy, represented as a sequence of path elements.
location_path :: Lens.Lens' Location [PathElement]
location_path = Lens.lens (\Location' {path} -> path) (\s@Location' {} a -> s {path = a} :: Location) Prelude.. Lens.coerced

-- | A span in a policy.
location_span :: Lens.Lens' Location Span
location_span = Lens.lens (\Location' {span} -> span) (\s@Location' {} a -> s {span = a} :: Location)

instance Core.FromJSON Location where
  parseJSON =
    Core.withObject
      "Location"
      ( \x ->
          Location'
            Prelude.<$> (x Core..:? "path" Core..!= Prelude.mempty)
            Prelude.<*> (x Core..: "span")
      )

instance Prelude.Hashable Location

instance Prelude.NFData Location
