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
-- Module      : Network.AWS.MemoryDb.Types.SourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MemoryDb.Types.SourceType
  ( SourceType
      ( ..,
        SourceType_Acl,
        SourceType_Cluster,
        SourceType_Node,
        SourceType_Parameter_group,
        SourceType_Subnet_group,
        SourceType_User
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype SourceType = SourceType'
  { fromSourceType ::
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

pattern SourceType_Acl :: SourceType
pattern SourceType_Acl = SourceType' "acl"

pattern SourceType_Cluster :: SourceType
pattern SourceType_Cluster = SourceType' "cluster"

pattern SourceType_Node :: SourceType
pattern SourceType_Node = SourceType' "node"

pattern SourceType_Parameter_group :: SourceType
pattern SourceType_Parameter_group = SourceType' "parameter-group"

pattern SourceType_Subnet_group :: SourceType
pattern SourceType_Subnet_group = SourceType' "subnet-group"

pattern SourceType_User :: SourceType
pattern SourceType_User = SourceType' "user"

{-# COMPLETE
  SourceType_Acl,
  SourceType_Cluster,
  SourceType_Node,
  SourceType_Parameter_group,
  SourceType_Subnet_group,
  SourceType_User,
  SourceType'
  #-}
