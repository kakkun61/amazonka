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
-- Module      : Network.AWS.NetworkManager.Types.CustomerGatewayAssociationState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.NetworkManager.Types.CustomerGatewayAssociationState
  ( CustomerGatewayAssociationState
      ( ..,
        CustomerGatewayAssociationState_AVAILABLE,
        CustomerGatewayAssociationState_DELETED,
        CustomerGatewayAssociationState_DELETING,
        CustomerGatewayAssociationState_PENDING
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype CustomerGatewayAssociationState = CustomerGatewayAssociationState'
  { fromCustomerGatewayAssociationState ::
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

pattern CustomerGatewayAssociationState_AVAILABLE :: CustomerGatewayAssociationState
pattern CustomerGatewayAssociationState_AVAILABLE = CustomerGatewayAssociationState' "AVAILABLE"

pattern CustomerGatewayAssociationState_DELETED :: CustomerGatewayAssociationState
pattern CustomerGatewayAssociationState_DELETED = CustomerGatewayAssociationState' "DELETED"

pattern CustomerGatewayAssociationState_DELETING :: CustomerGatewayAssociationState
pattern CustomerGatewayAssociationState_DELETING = CustomerGatewayAssociationState' "DELETING"

pattern CustomerGatewayAssociationState_PENDING :: CustomerGatewayAssociationState
pattern CustomerGatewayAssociationState_PENDING = CustomerGatewayAssociationState' "PENDING"

{-# COMPLETE
  CustomerGatewayAssociationState_AVAILABLE,
  CustomerGatewayAssociationState_DELETED,
  CustomerGatewayAssociationState_DELETING,
  CustomerGatewayAssociationState_PENDING,
  CustomerGatewayAssociationState'
  #-}
