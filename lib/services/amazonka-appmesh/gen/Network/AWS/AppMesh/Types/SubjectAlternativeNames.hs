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
-- Module      : Network.AWS.AppMesh.Types.SubjectAlternativeNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppMesh.Types.SubjectAlternativeNames where

import Network.AWS.AppMesh.Types.SubjectAlternativeNameMatchers
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An object that represents the subject alternative names secured by the
-- certificate.
--
-- /See:/ 'newSubjectAlternativeNames' smart constructor.
data SubjectAlternativeNames = SubjectAlternativeNames'
  { -- | An object that represents the criteria for determining a SANs match.
    match :: SubjectAlternativeNameMatchers
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SubjectAlternativeNames' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'match', 'subjectAlternativeNames_match' - An object that represents the criteria for determining a SANs match.
newSubjectAlternativeNames ::
  -- | 'match'
  SubjectAlternativeNameMatchers ->
  SubjectAlternativeNames
newSubjectAlternativeNames pMatch_ =
  SubjectAlternativeNames' {match = pMatch_}

-- | An object that represents the criteria for determining a SANs match.
subjectAlternativeNames_match :: Lens.Lens' SubjectAlternativeNames SubjectAlternativeNameMatchers
subjectAlternativeNames_match = Lens.lens (\SubjectAlternativeNames' {match} -> match) (\s@SubjectAlternativeNames' {} a -> s {match = a} :: SubjectAlternativeNames)

instance Core.FromJSON SubjectAlternativeNames where
  parseJSON =
    Core.withObject
      "SubjectAlternativeNames"
      ( \x ->
          SubjectAlternativeNames'
            Prelude.<$> (x Core..: "match")
      )

instance Prelude.Hashable SubjectAlternativeNames

instance Prelude.NFData SubjectAlternativeNames

instance Core.ToJSON SubjectAlternativeNames where
  toJSON SubjectAlternativeNames' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("match" Core..= match)]
      )
