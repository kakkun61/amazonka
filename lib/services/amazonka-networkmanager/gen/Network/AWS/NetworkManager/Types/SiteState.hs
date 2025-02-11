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
-- Module      : Network.AWS.NetworkManager.Types.SiteState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkManager.Types.SiteState
  ( SiteState
      ( ..,
        SiteState_AVAILABLE,
        SiteState_DELETING,
        SiteState_PENDING,
        SiteState_UPDATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SiteState = SiteState'
  { fromSiteState ::
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

pattern SiteState_AVAILABLE :: SiteState
pattern SiteState_AVAILABLE = SiteState' "AVAILABLE"

pattern SiteState_DELETING :: SiteState
pattern SiteState_DELETING = SiteState' "DELETING"

pattern SiteState_PENDING :: SiteState
pattern SiteState_PENDING = SiteState' "PENDING"

pattern SiteState_UPDATING :: SiteState
pattern SiteState_UPDATING = SiteState' "UPDATING"

{-# COMPLETE
  SiteState_AVAILABLE,
  SiteState_DELETING,
  SiteState_PENDING,
  SiteState_UPDATING,
  SiteState'
  #-}
