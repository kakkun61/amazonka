{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ConnectParticipant.Types.ArtifactStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ConnectParticipant.Types.ArtifactStatus
  ( ArtifactStatus
      ( ..,
        ArtifactStatus_APPROVED,
        ArtifactStatus_IN_PROGRESS,
        ArtifactStatus_REJECTED
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ArtifactStatus = ArtifactStatus'
  { fromArtifactStatus ::
      Core.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern ArtifactStatus_APPROVED :: ArtifactStatus
pattern ArtifactStatus_APPROVED = ArtifactStatus' "APPROVED"

pattern ArtifactStatus_IN_PROGRESS :: ArtifactStatus
pattern ArtifactStatus_IN_PROGRESS = ArtifactStatus' "IN_PROGRESS"

pattern ArtifactStatus_REJECTED :: ArtifactStatus
pattern ArtifactStatus_REJECTED = ArtifactStatus' "REJECTED"

{-# COMPLETE
  ArtifactStatus_APPROVED,
  ArtifactStatus_IN_PROGRESS,
  ArtifactStatus_REJECTED,
  ArtifactStatus'
  #-}
