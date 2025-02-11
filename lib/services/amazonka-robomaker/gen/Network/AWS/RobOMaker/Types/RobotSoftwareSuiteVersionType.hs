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
-- Module      : Network.AWS.RobOMaker.Types.RobotSoftwareSuiteVersionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RobOMaker.Types.RobotSoftwareSuiteVersionType
  ( RobotSoftwareSuiteVersionType
      ( ..,
        RobotSoftwareSuiteVersionType_Dashing,
        RobotSoftwareSuiteVersionType_Foxy,
        RobotSoftwareSuiteVersionType_Kinetic,
        RobotSoftwareSuiteVersionType_Melodic
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype RobotSoftwareSuiteVersionType = RobotSoftwareSuiteVersionType'
  { fromRobotSoftwareSuiteVersionType ::
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

pattern RobotSoftwareSuiteVersionType_Dashing :: RobotSoftwareSuiteVersionType
pattern RobotSoftwareSuiteVersionType_Dashing = RobotSoftwareSuiteVersionType' "Dashing"

pattern RobotSoftwareSuiteVersionType_Foxy :: RobotSoftwareSuiteVersionType
pattern RobotSoftwareSuiteVersionType_Foxy = RobotSoftwareSuiteVersionType' "Foxy"

pattern RobotSoftwareSuiteVersionType_Kinetic :: RobotSoftwareSuiteVersionType
pattern RobotSoftwareSuiteVersionType_Kinetic = RobotSoftwareSuiteVersionType' "Kinetic"

pattern RobotSoftwareSuiteVersionType_Melodic :: RobotSoftwareSuiteVersionType
pattern RobotSoftwareSuiteVersionType_Melodic = RobotSoftwareSuiteVersionType' "Melodic"

{-# COMPLETE
  RobotSoftwareSuiteVersionType_Dashing,
  RobotSoftwareSuiteVersionType_Foxy,
  RobotSoftwareSuiteVersionType_Kinetic,
  RobotSoftwareSuiteVersionType_Melodic,
  RobotSoftwareSuiteVersionType'
  #-}
