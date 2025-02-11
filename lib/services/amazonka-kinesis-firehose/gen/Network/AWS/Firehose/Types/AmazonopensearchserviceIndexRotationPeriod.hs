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
-- Module      : Network.AWS.Firehose.Types.AmazonopensearchserviceIndexRotationPeriod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.AmazonopensearchserviceIndexRotationPeriod
  ( AmazonopensearchserviceIndexRotationPeriod
      ( ..,
        AmazonopensearchserviceIndexRotationPeriod_NoRotation,
        AmazonopensearchserviceIndexRotationPeriod_OneDay,
        AmazonopensearchserviceIndexRotationPeriod_OneHour,
        AmazonopensearchserviceIndexRotationPeriod_OneMonth,
        AmazonopensearchserviceIndexRotationPeriod_OneWeek
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype AmazonopensearchserviceIndexRotationPeriod = AmazonopensearchserviceIndexRotationPeriod'
  { fromAmazonopensearchserviceIndexRotationPeriod ::
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

pattern AmazonopensearchserviceIndexRotationPeriod_NoRotation :: AmazonopensearchserviceIndexRotationPeriod
pattern AmazonopensearchserviceIndexRotationPeriod_NoRotation = AmazonopensearchserviceIndexRotationPeriod' "NoRotation"

pattern AmazonopensearchserviceIndexRotationPeriod_OneDay :: AmazonopensearchserviceIndexRotationPeriod
pattern AmazonopensearchserviceIndexRotationPeriod_OneDay = AmazonopensearchserviceIndexRotationPeriod' "OneDay"

pattern AmazonopensearchserviceIndexRotationPeriod_OneHour :: AmazonopensearchserviceIndexRotationPeriod
pattern AmazonopensearchserviceIndexRotationPeriod_OneHour = AmazonopensearchserviceIndexRotationPeriod' "OneHour"

pattern AmazonopensearchserviceIndexRotationPeriod_OneMonth :: AmazonopensearchserviceIndexRotationPeriod
pattern AmazonopensearchserviceIndexRotationPeriod_OneMonth = AmazonopensearchserviceIndexRotationPeriod' "OneMonth"

pattern AmazonopensearchserviceIndexRotationPeriod_OneWeek :: AmazonopensearchserviceIndexRotationPeriod
pattern AmazonopensearchserviceIndexRotationPeriod_OneWeek = AmazonopensearchserviceIndexRotationPeriod' "OneWeek"

{-# COMPLETE
  AmazonopensearchserviceIndexRotationPeriod_NoRotation,
  AmazonopensearchserviceIndexRotationPeriod_OneDay,
  AmazonopensearchserviceIndexRotationPeriod_OneHour,
  AmazonopensearchserviceIndexRotationPeriod_OneMonth,
  AmazonopensearchserviceIndexRotationPeriod_OneWeek,
  AmazonopensearchserviceIndexRotationPeriod'
  #-}
