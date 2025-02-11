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
-- Module      : Network.AWS.Kafka.Types.ClientBroker
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kafka.Types.ClientBroker
  ( ClientBroker
      ( ..,
        ClientBroker_PLAINTEXT,
        ClientBroker_TLS,
        ClientBroker_TLS_PLAINTEXT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

-- | Client-broker encryption in transit setting.
newtype ClientBroker = ClientBroker'
  { fromClientBroker ::
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

pattern ClientBroker_PLAINTEXT :: ClientBroker
pattern ClientBroker_PLAINTEXT = ClientBroker' "PLAINTEXT"

pattern ClientBroker_TLS :: ClientBroker
pattern ClientBroker_TLS = ClientBroker' "TLS"

pattern ClientBroker_TLS_PLAINTEXT :: ClientBroker
pattern ClientBroker_TLS_PLAINTEXT = ClientBroker' "TLS_PLAINTEXT"

{-# COMPLETE
  ClientBroker_PLAINTEXT,
  ClientBroker_TLS,
  ClientBroker_TLS_PLAINTEXT,
  ClientBroker'
  #-}
