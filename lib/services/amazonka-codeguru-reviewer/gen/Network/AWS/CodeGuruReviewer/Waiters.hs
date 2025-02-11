{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeGuruReviewer.Waiters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeGuruReviewer.Waiters where

import Network.AWS.CodeGuruReviewer.DescribeCodeReview
import Network.AWS.CodeGuruReviewer.DescribeRepositoryAssociation
import Network.AWS.CodeGuruReviewer.Lens
import Network.AWS.CodeGuruReviewer.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Polls 'Network.AWS.CodeGuruReviewer.DescribeCodeReview' every 10 seconds until a successful state is reached. An error is returned after 60 failed checks.
newCodeReviewCompleted :: Core.Wait DescribeCodeReview
newCodeReviewCompleted =
  Core.Wait
    { Core._waitName = "CodeReviewCompleted",
      Core._waitAttempts = 60,
      Core._waitDelay = 10,
      Core._waitAcceptors =
        [ Core.matchAll
            "Completed"
            Core.AcceptSuccess
            ( describeCodeReviewResponse_codeReview
                Prelude.. Lens._Just
                Prelude.. codeReview_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Pending"
            Core.AcceptRetry
            ( describeCodeReviewResponse_codeReview
                Prelude.. Lens._Just
                Prelude.. codeReview_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }

-- | Polls 'Network.AWS.CodeGuruReviewer.DescribeRepositoryAssociation' every 10 seconds until a successful state is reached. An error is returned after 20 failed checks.
newRepositoryAssociationSucceeded :: Core.Wait DescribeRepositoryAssociation
newRepositoryAssociationSucceeded =
  Core.Wait
    { Core._waitName =
        "RepositoryAssociationSucceeded",
      Core._waitAttempts = 20,
      Core._waitDelay = 10,
      Core._waitAcceptors =
        [ Core.matchAll
            "Associated"
            Core.AcceptSuccess
            ( describeRepositoryAssociationResponse_repositoryAssociation
                Prelude.. Lens._Just
                Prelude.. repositoryAssociation_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            ),
          Core.matchAll
            "Associating"
            Core.AcceptRetry
            ( describeRepositoryAssociationResponse_repositoryAssociation
                Prelude.. Lens._Just
                Prelude.. repositoryAssociation_state
                Prelude.. Lens._Just
                Prelude.. Lens.to Core.toTextCI
            )
        ]
    }
