{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MarketplaceEntitlement.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MarketplaceEntitlement.Lens
  ( -- * Operations

    -- ** GetEntitlements
    getEntitlements_nextToken,
    getEntitlements_filter,
    getEntitlements_maxResults,
    getEntitlements_productCode,
    getEntitlementsResponse_nextToken,
    getEntitlementsResponse_entitlements,
    getEntitlementsResponse_httpStatus,

    -- * Types

    -- ** Entitlement
    entitlement_dimension,
    entitlement_value,
    entitlement_expirationDate,
    entitlement_customerIdentifier,
    entitlement_productCode,

    -- ** EntitlementValue
    entitlementValue_integerValue,
    entitlementValue_doubleValue,
    entitlementValue_stringValue,
    entitlementValue_booleanValue,
  )
where

import Network.AWS.MarketplaceEntitlement.GetEntitlements
import Network.AWS.MarketplaceEntitlement.Types.Entitlement
import Network.AWS.MarketplaceEntitlement.Types.EntitlementValue
