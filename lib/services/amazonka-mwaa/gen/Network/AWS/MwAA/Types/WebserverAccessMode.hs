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
-- Module      : Network.AWS.MwAA.Types.WebserverAccessMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MwAA.Types.WebserverAccessMode
  ( WebserverAccessMode
      ( ..,
        WebserverAccessMode_PRIVATE_ONLY,
        WebserverAccessMode_PUBLIC_ONLY
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype WebserverAccessMode = WebserverAccessMode'
  { fromWebserverAccessMode ::
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

pattern WebserverAccessMode_PRIVATE_ONLY :: WebserverAccessMode
pattern WebserverAccessMode_PRIVATE_ONLY = WebserverAccessMode' "PRIVATE_ONLY"

pattern WebserverAccessMode_PUBLIC_ONLY :: WebserverAccessMode
pattern WebserverAccessMode_PUBLIC_ONLY = WebserverAccessMode' "PUBLIC_ONLY"

{-# COMPLETE
  WebserverAccessMode_PRIVATE_ONLY,
  WebserverAccessMode_PUBLIC_ONLY,
  WebserverAccessMode'
  #-}
