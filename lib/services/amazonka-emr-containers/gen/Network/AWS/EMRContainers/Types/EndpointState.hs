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
-- Module      : Network.AWS.EMRContainers.Types.EndpointState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMRContainers.Types.EndpointState
  ( EndpointState
      ( ..,
        EndpointState_ACTIVE,
        EndpointState_CREATING,
        EndpointState_TERMINATED,
        EndpointState_TERMINATED_WITH_ERRORS,
        EndpointState_TERMINATING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype EndpointState = EndpointState'
  { fromEndpointState ::
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

pattern EndpointState_ACTIVE :: EndpointState
pattern EndpointState_ACTIVE = EndpointState' "ACTIVE"

pattern EndpointState_CREATING :: EndpointState
pattern EndpointState_CREATING = EndpointState' "CREATING"

pattern EndpointState_TERMINATED :: EndpointState
pattern EndpointState_TERMINATED = EndpointState' "TERMINATED"

pattern EndpointState_TERMINATED_WITH_ERRORS :: EndpointState
pattern EndpointState_TERMINATED_WITH_ERRORS = EndpointState' "TERMINATED_WITH_ERRORS"

pattern EndpointState_TERMINATING :: EndpointState
pattern EndpointState_TERMINATING = EndpointState' "TERMINATING"

{-# COMPLETE
  EndpointState_ACTIVE,
  EndpointState_CREATING,
  EndpointState_TERMINATED,
  EndpointState_TERMINATED_WITH_ERRORS,
  EndpointState_TERMINATING,
  EndpointState'
  #-}
