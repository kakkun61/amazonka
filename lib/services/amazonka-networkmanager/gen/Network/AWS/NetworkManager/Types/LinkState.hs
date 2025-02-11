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
-- Module      : Network.AWS.NetworkManager.Types.LinkState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkManager.Types.LinkState
  ( LinkState
      ( ..,
        LinkState_AVAILABLE,
        LinkState_DELETING,
        LinkState_PENDING,
        LinkState_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype LinkState = LinkState'
  { fromLinkState ::
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

pattern LinkState_AVAILABLE :: LinkState
pattern LinkState_AVAILABLE = LinkState' "AVAILABLE"

pattern LinkState_DELETING :: LinkState
pattern LinkState_DELETING = LinkState' "DELETING"

pattern LinkState_PENDING :: LinkState
pattern LinkState_PENDING = LinkState' "PENDING"

pattern LinkState_UPDATING :: LinkState
pattern LinkState_UPDATING = LinkState' "UPDATING"

{-# COMPLETE
  LinkState_AVAILABLE,
  LinkState_DELETING,
  LinkState_PENDING,
  LinkState_UPDATING,
  LinkState'
  #-}
