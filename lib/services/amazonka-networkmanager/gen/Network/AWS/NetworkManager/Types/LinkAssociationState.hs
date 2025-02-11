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
-- Module      : Network.AWS.NetworkManager.Types.LinkAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkManager.Types.LinkAssociationState
  ( LinkAssociationState
      ( ..,
        LinkAssociationState_AVAILABLE,
        LinkAssociationState_DELETED,
        LinkAssociationState_DELETING,
        LinkAssociationState_PENDING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype LinkAssociationState = LinkAssociationState'
  { fromLinkAssociationState ::
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

pattern LinkAssociationState_AVAILABLE :: LinkAssociationState
pattern LinkAssociationState_AVAILABLE = LinkAssociationState' "AVAILABLE"

pattern LinkAssociationState_DELETED :: LinkAssociationState
pattern LinkAssociationState_DELETED = LinkAssociationState' "DELETED"

pattern LinkAssociationState_DELETING :: LinkAssociationState
pattern LinkAssociationState_DELETING = LinkAssociationState' "DELETING"

pattern LinkAssociationState_PENDING :: LinkAssociationState
pattern LinkAssociationState_PENDING = LinkAssociationState' "PENDING"

{-# COMPLETE
  LinkAssociationState_AVAILABLE,
  LinkAssociationState_DELETED,
  LinkAssociationState_DELETING,
  LinkAssociationState_PENDING,
  LinkAssociationState'
  #-}
