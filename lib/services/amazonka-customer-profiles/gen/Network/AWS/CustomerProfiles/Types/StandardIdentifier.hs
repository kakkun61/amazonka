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
-- Module      : Network.AWS.CustomerProfiles.Types.StandardIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CustomerProfiles.Types.StandardIdentifier
  ( StandardIdentifier
      ( ..,
        StandardIdentifier_ASSET,
        StandardIdentifier_CASE,
        StandardIdentifier_LOOKUP_ONLY,
        StandardIdentifier_NEW_ONLY,
        StandardIdentifier_PROFILE,
        StandardIdentifier_SECONDARY,
        StandardIdentifier_UNIQUE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype StandardIdentifier = StandardIdentifier'
  { fromStandardIdentifier ::
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

pattern StandardIdentifier_ASSET :: StandardIdentifier
pattern StandardIdentifier_ASSET = StandardIdentifier' "ASSET"

pattern StandardIdentifier_CASE :: StandardIdentifier
pattern StandardIdentifier_CASE = StandardIdentifier' "CASE"

pattern StandardIdentifier_LOOKUP_ONLY :: StandardIdentifier
pattern StandardIdentifier_LOOKUP_ONLY = StandardIdentifier' "LOOKUP_ONLY"

pattern StandardIdentifier_NEW_ONLY :: StandardIdentifier
pattern StandardIdentifier_NEW_ONLY = StandardIdentifier' "NEW_ONLY"

pattern StandardIdentifier_PROFILE :: StandardIdentifier
pattern StandardIdentifier_PROFILE = StandardIdentifier' "PROFILE"

pattern StandardIdentifier_SECONDARY :: StandardIdentifier
pattern StandardIdentifier_SECONDARY = StandardIdentifier' "SECONDARY"

pattern StandardIdentifier_UNIQUE :: StandardIdentifier
pattern StandardIdentifier_UNIQUE = StandardIdentifier' "UNIQUE"

{-# COMPLETE
  StandardIdentifier_ASSET,
  StandardIdentifier_CASE,
  StandardIdentifier_LOOKUP_ONLY,
  StandardIdentifier_NEW_ONLY,
  StandardIdentifier_PROFILE,
  StandardIdentifier_SECONDARY,
  StandardIdentifier_UNIQUE,
  StandardIdentifier'
  #-}
