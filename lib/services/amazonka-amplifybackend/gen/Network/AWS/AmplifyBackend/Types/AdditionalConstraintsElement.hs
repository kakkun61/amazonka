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
-- Module      : Network.AWS.AmplifyBackend.Types.AdditionalConstraintsElement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AmplifyBackend.Types.AdditionalConstraintsElement
  ( AdditionalConstraintsElement
      ( ..,
        AdditionalConstraintsElement_REQUIRE_DIGIT,
        AdditionalConstraintsElement_REQUIRE_LOWERCASE,
        AdditionalConstraintsElement_REQUIRE_SYMBOL,
        AdditionalConstraintsElement_REQUIRE_UPPERCASE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AdditionalConstraintsElement = AdditionalConstraintsElement'
  { fromAdditionalConstraintsElement ::
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

pattern AdditionalConstraintsElement_REQUIRE_DIGIT :: AdditionalConstraintsElement
pattern AdditionalConstraintsElement_REQUIRE_DIGIT = AdditionalConstraintsElement' "REQUIRE_DIGIT"

pattern AdditionalConstraintsElement_REQUIRE_LOWERCASE :: AdditionalConstraintsElement
pattern AdditionalConstraintsElement_REQUIRE_LOWERCASE = AdditionalConstraintsElement' "REQUIRE_LOWERCASE"

pattern AdditionalConstraintsElement_REQUIRE_SYMBOL :: AdditionalConstraintsElement
pattern AdditionalConstraintsElement_REQUIRE_SYMBOL = AdditionalConstraintsElement' "REQUIRE_SYMBOL"

pattern AdditionalConstraintsElement_REQUIRE_UPPERCASE :: AdditionalConstraintsElement
pattern AdditionalConstraintsElement_REQUIRE_UPPERCASE = AdditionalConstraintsElement' "REQUIRE_UPPERCASE"

{-# COMPLETE
  AdditionalConstraintsElement_REQUIRE_DIGIT,
  AdditionalConstraintsElement_REQUIRE_LOWERCASE,
  AdditionalConstraintsElement_REQUIRE_SYMBOL,
  AdditionalConstraintsElement_REQUIRE_UPPERCASE,
  AdditionalConstraintsElement'
  #-}
