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
-- Module      : Network.AWS.AppRunner.Types.OperationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppRunner.Types.OperationType
  ( OperationType
      ( ..,
        OperationType_CREATE_SERVICE,
        OperationType_DELETE_SERVICE,
        OperationType_PAUSE_SERVICE,
        OperationType_RESUME_SERVICE,
        OperationType_START_DEPLOYMENT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype OperationType = OperationType'
  { fromOperationType ::
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

pattern OperationType_CREATE_SERVICE :: OperationType
pattern OperationType_CREATE_SERVICE = OperationType' "CREATE_SERVICE"

pattern OperationType_DELETE_SERVICE :: OperationType
pattern OperationType_DELETE_SERVICE = OperationType' "DELETE_SERVICE"

pattern OperationType_PAUSE_SERVICE :: OperationType
pattern OperationType_PAUSE_SERVICE = OperationType' "PAUSE_SERVICE"

pattern OperationType_RESUME_SERVICE :: OperationType
pattern OperationType_RESUME_SERVICE = OperationType' "RESUME_SERVICE"

pattern OperationType_START_DEPLOYMENT :: OperationType
pattern OperationType_START_DEPLOYMENT = OperationType' "START_DEPLOYMENT"

{-# COMPLETE
  OperationType_CREATE_SERVICE,
  OperationType_DELETE_SERVICE,
  OperationType_PAUSE_SERVICE,
  OperationType_RESUME_SERVICE,
  OperationType_START_DEPLOYMENT,
  OperationType'
  #-}
