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
-- Module      : Network.AWS.SageMakerA2IRuntime.Types.ContentClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMakerA2IRuntime.Types.ContentClassifier
  ( ContentClassifier
      ( ..,
        ContentClassifier_FreeOfAdultContent,
        ContentClassifier_FreeOfPersonallyIdentifiableInformation
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ContentClassifier = ContentClassifier'
  { fromContentClassifier ::
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

pattern ContentClassifier_FreeOfAdultContent :: ContentClassifier
pattern ContentClassifier_FreeOfAdultContent = ContentClassifier' "FreeOfAdultContent"

pattern ContentClassifier_FreeOfPersonallyIdentifiableInformation :: ContentClassifier
pattern ContentClassifier_FreeOfPersonallyIdentifiableInformation = ContentClassifier' "FreeOfPersonallyIdentifiableInformation"

{-# COMPLETE
  ContentClassifier_FreeOfAdultContent,
  ContentClassifier_FreeOfPersonallyIdentifiableInformation,
  ContentClassifier'
  #-}
