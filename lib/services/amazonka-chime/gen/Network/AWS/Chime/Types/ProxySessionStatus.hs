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
-- Module      : Network.AWS.Chime.Types.ProxySessionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Chime.Types.ProxySessionStatus
  ( ProxySessionStatus
      ( ..,
        ProxySessionStatus_Closed,
        ProxySessionStatus_InProgress,
        ProxySessionStatus_Open
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ProxySessionStatus = ProxySessionStatus'
  { fromProxySessionStatus ::
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

pattern ProxySessionStatus_Closed :: ProxySessionStatus
pattern ProxySessionStatus_Closed = ProxySessionStatus' "Closed"

pattern ProxySessionStatus_InProgress :: ProxySessionStatus
pattern ProxySessionStatus_InProgress = ProxySessionStatus' "InProgress"

pattern ProxySessionStatus_Open :: ProxySessionStatus
pattern ProxySessionStatus_Open = ProxySessionStatus' "Open"

{-# COMPLETE
  ProxySessionStatus_Closed,
  ProxySessionStatus_InProgress,
  ProxySessionStatus_Open,
  ProxySessionStatus'
  #-}
