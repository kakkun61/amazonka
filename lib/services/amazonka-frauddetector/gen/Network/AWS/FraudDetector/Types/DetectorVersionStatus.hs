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
-- Module      : Network.AWS.FraudDetector.Types.DetectorVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FraudDetector.Types.DetectorVersionStatus
  ( DetectorVersionStatus
      ( ..,
        DetectorVersionStatus_ACTIVE,
        DetectorVersionStatus_DRAFT,
        DetectorVersionStatus_INACTIVE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype DetectorVersionStatus = DetectorVersionStatus'
  { fromDetectorVersionStatus ::
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

pattern DetectorVersionStatus_ACTIVE :: DetectorVersionStatus
pattern DetectorVersionStatus_ACTIVE = DetectorVersionStatus' "ACTIVE"

pattern DetectorVersionStatus_DRAFT :: DetectorVersionStatus
pattern DetectorVersionStatus_DRAFT = DetectorVersionStatus' "DRAFT"

pattern DetectorVersionStatus_INACTIVE :: DetectorVersionStatus
pattern DetectorVersionStatus_INACTIVE = DetectorVersionStatus' "INACTIVE"

{-# COMPLETE
  DetectorVersionStatus_ACTIVE,
  DetectorVersionStatus_DRAFT,
  DetectorVersionStatus_INACTIVE,
  DetectorVersionStatus'
  #-}
