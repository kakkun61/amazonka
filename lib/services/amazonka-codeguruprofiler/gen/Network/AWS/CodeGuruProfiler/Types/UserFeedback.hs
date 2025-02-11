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
-- Module      : Network.AWS.CodeGuruProfiler.Types.UserFeedback
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruProfiler.Types.UserFeedback where

import Network.AWS.CodeGuruProfiler.Types.FeedbackType
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Feedback that can be submitted for each instance of an anomaly by the
-- user. Feedback is be used for improvements in generating recommendations
-- for the application.
--
-- /See:/ 'newUserFeedback' smart constructor.
data UserFeedback = UserFeedback'
  { -- | Optional @Positive@ or @Negative@ feedback submitted by the user about
    -- whether the recommendation is useful or not.
    type' :: FeedbackType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UserFeedback' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'userFeedback_type' - Optional @Positive@ or @Negative@ feedback submitted by the user about
-- whether the recommendation is useful or not.
newUserFeedback ::
  -- | 'type''
  FeedbackType ->
  UserFeedback
newUserFeedback pType_ =
  UserFeedback' {type' = pType_}

-- | Optional @Positive@ or @Negative@ feedback submitted by the user about
-- whether the recommendation is useful or not.
userFeedback_type :: Lens.Lens' UserFeedback FeedbackType
userFeedback_type = Lens.lens (\UserFeedback' {type'} -> type') (\s@UserFeedback' {} a -> s {type' = a} :: UserFeedback)

instance Core.FromJSON UserFeedback where
  parseJSON =
    Core.withObject
      "UserFeedback"
      (\x -> UserFeedback' Prelude.<$> (x Core..: "type"))

instance Prelude.Hashable UserFeedback

instance Prelude.NFData UserFeedback
