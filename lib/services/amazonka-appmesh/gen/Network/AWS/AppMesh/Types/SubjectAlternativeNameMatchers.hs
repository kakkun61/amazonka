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
-- Module      : Network.AWS.AppMesh.Types.SubjectAlternativeNameMatchers
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.SubjectAlternativeNameMatchers where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the methods by which a subject alternative
-- name on a peer Transport Layer Security (TLS) certificate can be
-- matched.
--
-- /See:/ 'newSubjectAlternativeNameMatchers' smart constructor.
data SubjectAlternativeNameMatchers = SubjectAlternativeNameMatchers'
  { -- | The values sent must match the specified values exactly.
    exact :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubjectAlternativeNameMatchers' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'exact', 'subjectAlternativeNameMatchers_exact' - The values sent must match the specified values exactly.
newSubjectAlternativeNameMatchers ::
  SubjectAlternativeNameMatchers
newSubjectAlternativeNameMatchers =
  SubjectAlternativeNameMatchers'
    { exact =
        Prelude.mempty
    }

-- | The values sent must match the specified values exactly.
subjectAlternativeNameMatchers_exact :: Lens.Lens' SubjectAlternativeNameMatchers [Prelude.Text]
subjectAlternativeNameMatchers_exact = Lens.lens (\SubjectAlternativeNameMatchers' {exact} -> exact) (\s@SubjectAlternativeNameMatchers' {} a -> s {exact = a} :: SubjectAlternativeNameMatchers) Prelude.. Lens.coerced

instance Core.FromJSON SubjectAlternativeNameMatchers where
  parseJSON =
    Core.withObject
      "SubjectAlternativeNameMatchers"
      ( \x ->
          SubjectAlternativeNameMatchers'
            Prelude.<$> (x Core..:? "exact" Core..!= Prelude.mempty)
      )

instance
  Prelude.Hashable
    SubjectAlternativeNameMatchers

instance
  Prelude.NFData
    SubjectAlternativeNameMatchers

instance Core.ToJSON SubjectAlternativeNameMatchers where
  toJSON SubjectAlternativeNameMatchers' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("exact" Core..= exact)]
      )
