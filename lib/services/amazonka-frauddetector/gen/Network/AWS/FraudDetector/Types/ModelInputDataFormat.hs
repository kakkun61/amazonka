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
-- Module      : Network.AWS.FraudDetector.Types.ModelInputDataFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.ModelInputDataFormat
  ( ModelInputDataFormat
      ( ..,
        ModelInputDataFormat_APPLICATION_JSON,
        ModelInputDataFormat_TEXT_CSV
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype ModelInputDataFormat = ModelInputDataFormat'
  { fromModelInputDataFormat ::
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

pattern ModelInputDataFormat_APPLICATION_JSON :: ModelInputDataFormat
pattern ModelInputDataFormat_APPLICATION_JSON = ModelInputDataFormat' "APPLICATION_JSON"

pattern ModelInputDataFormat_TEXT_CSV :: ModelInputDataFormat
pattern ModelInputDataFormat_TEXT_CSV = ModelInputDataFormat' "TEXT_CSV"

{-# COMPLETE
  ModelInputDataFormat_APPLICATION_JSON,
  ModelInputDataFormat_TEXT_CSV,
  ModelInputDataFormat'
  #-}
