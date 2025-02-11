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
-- Module      : Network.AWS.QuickSight.Types.GeoSpatialDataRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.QuickSight.Types.GeoSpatialDataRole
  ( GeoSpatialDataRole
      ( ..,
        GeoSpatialDataRole_CITY,
        GeoSpatialDataRole_COUNTRY,
        GeoSpatialDataRole_COUNTY,
        GeoSpatialDataRole_LATITUDE,
        GeoSpatialDataRole_LONGITUDE,
        GeoSpatialDataRole_POSTCODE,
        GeoSpatialDataRole_STATE
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype GeoSpatialDataRole = GeoSpatialDataRole'
  { fromGeoSpatialDataRole ::
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

pattern GeoSpatialDataRole_CITY :: GeoSpatialDataRole
pattern GeoSpatialDataRole_CITY = GeoSpatialDataRole' "CITY"

pattern GeoSpatialDataRole_COUNTRY :: GeoSpatialDataRole
pattern GeoSpatialDataRole_COUNTRY = GeoSpatialDataRole' "COUNTRY"

pattern GeoSpatialDataRole_COUNTY :: GeoSpatialDataRole
pattern GeoSpatialDataRole_COUNTY = GeoSpatialDataRole' "COUNTY"

pattern GeoSpatialDataRole_LATITUDE :: GeoSpatialDataRole
pattern GeoSpatialDataRole_LATITUDE = GeoSpatialDataRole' "LATITUDE"

pattern GeoSpatialDataRole_LONGITUDE :: GeoSpatialDataRole
pattern GeoSpatialDataRole_LONGITUDE = GeoSpatialDataRole' "LONGITUDE"

pattern GeoSpatialDataRole_POSTCODE :: GeoSpatialDataRole
pattern GeoSpatialDataRole_POSTCODE = GeoSpatialDataRole' "POSTCODE"

pattern GeoSpatialDataRole_STATE :: GeoSpatialDataRole
pattern GeoSpatialDataRole_STATE = GeoSpatialDataRole' "STATE"

{-# COMPLETE
  GeoSpatialDataRole_CITY,
  GeoSpatialDataRole_COUNTRY,
  GeoSpatialDataRole_COUNTY,
  GeoSpatialDataRole_LATITUDE,
  GeoSpatialDataRole_LONGITUDE,
  GeoSpatialDataRole_POSTCODE,
  GeoSpatialDataRole_STATE,
  GeoSpatialDataRole'
  #-}
