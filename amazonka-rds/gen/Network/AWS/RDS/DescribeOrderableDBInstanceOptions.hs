{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.RDS.DescribeOrderableDBInstanceOptions
-- Copyright   : (c) 2013-2015 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- | Returns a list of orderable DB instance options for the specified
-- engine.
--
-- <http://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeOrderableDBInstanceOptions.html>
module Network.AWS.RDS.DescribeOrderableDBInstanceOptions
    (
    -- * Request
      DescribeOrderableDBInstanceOptions
    -- ** Request constructor
    , describeOrderableDBInstanceOptions
    -- ** Request lenses
    , dodioEngineVersion
    , dodioFilters
    , dodioDBInstanceClass
    , dodioLicenseModel
    , dodioMaxRecords
    , dodioMarker
    , dodioVPC
    , dodioEngine

    -- * Response
    , DescribeOrderableDBInstanceOptionsResponse
    -- ** Response constructor
    , describeOrderableDBInstanceOptionsResponse
    -- ** Response lenses
    , dodiorOrderableDBInstanceOptions
    , dodiorMarker
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.RDS.Types

-- | /See:/ 'describeOrderableDBInstanceOptions' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dodioEngineVersion'
--
-- * 'dodioFilters'
--
-- * 'dodioDBInstanceClass'
--
-- * 'dodioLicenseModel'
--
-- * 'dodioMaxRecords'
--
-- * 'dodioMarker'
--
-- * 'dodioVPC'
--
-- * 'dodioEngine'
data DescribeOrderableDBInstanceOptions = DescribeOrderableDBInstanceOptions'{_dodioEngineVersion :: Maybe Text, _dodioFilters :: Maybe [Filter], _dodioDBInstanceClass :: Maybe Text, _dodioLicenseModel :: Maybe Text, _dodioMaxRecords :: Maybe Int, _dodioMarker :: Maybe Text, _dodioVPC :: Maybe Bool, _dodioEngine :: Text} deriving (Eq, Read, Show)

-- | 'DescribeOrderableDBInstanceOptions' smart constructor.
describeOrderableDBInstanceOptions :: Text -> DescribeOrderableDBInstanceOptions
describeOrderableDBInstanceOptions pEngine = DescribeOrderableDBInstanceOptions'{_dodioEngineVersion = Nothing, _dodioFilters = Nothing, _dodioDBInstanceClass = Nothing, _dodioLicenseModel = Nothing, _dodioMaxRecords = Nothing, _dodioMarker = Nothing, _dodioVPC = Nothing, _dodioEngine = pEngine};

-- | The engine version filter value. Specify this parameter to show only the
-- available offerings matching the specified engine version.
dodioEngineVersion :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioEngineVersion = lens _dodioEngineVersion (\ s a -> s{_dodioEngineVersion = a});

-- | This parameter is not currently supported.
dodioFilters :: Lens' DescribeOrderableDBInstanceOptions (Maybe [Filter])
dodioFilters = lens _dodioFilters (\ s a -> s{_dodioFilters = a});

-- | The DB instance class filter value. Specify this parameter to show only
-- the available offerings matching the specified DB instance class.
dodioDBInstanceClass :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioDBInstanceClass = lens _dodioDBInstanceClass (\ s a -> s{_dodioDBInstanceClass = a});

-- | The license model filter value. Specify this parameter to show only the
-- available offerings matching the specified license model.
dodioLicenseModel :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioLicenseModel = lens _dodioLicenseModel (\ s a -> s{_dodioLicenseModel = a});

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: minimum 20, maximum 100
dodioMaxRecords :: Lens' DescribeOrderableDBInstanceOptions (Maybe Int)
dodioMaxRecords = lens _dodioMaxRecords (\ s a -> s{_dodioMaxRecords = a});

-- | An optional pagination token provided by a previous
-- DescribeOrderableDBInstanceOptions request. If this parameter is
-- specified, the response includes only records beyond the marker, up to
-- the value specified by @MaxRecords@ .
dodioMarker :: Lens' DescribeOrderableDBInstanceOptions (Maybe Text)
dodioMarker = lens _dodioMarker (\ s a -> s{_dodioMarker = a});

-- | The VPC filter value. Specify this parameter to show only the available
-- VPC or non-VPC offerings.
dodioVPC :: Lens' DescribeOrderableDBInstanceOptions (Maybe Bool)
dodioVPC = lens _dodioVPC (\ s a -> s{_dodioVPC = a});

-- | The name of the engine to retrieve DB instance options for.
dodioEngine :: Lens' DescribeOrderableDBInstanceOptions Text
dodioEngine = lens _dodioEngine (\ s a -> s{_dodioEngine = a});

instance AWSRequest
         DescribeOrderableDBInstanceOptions where
        type Sv DescribeOrderableDBInstanceOptions = RDS
        type Rs DescribeOrderableDBInstanceOptions =
             DescribeOrderableDBInstanceOptionsResponse
        request = post
        response
          = receiveXMLWrapper
              "DescribeOrderableDBInstanceOptionsResult"
              (\ s h x ->
                 DescribeOrderableDBInstanceOptionsResponse' <$>
                   (x .@? "OrderableDBInstanceOptions" .!@ mempty >>=
                      parseXMLList "OrderableDBInstanceOption")
                     <*> x .@? "Marker")

instance ToHeaders DescribeOrderableDBInstanceOptions
         where
        toHeaders = const mempty

instance ToPath DescribeOrderableDBInstanceOptions
         where
        toPath = const "/"

instance ToQuery DescribeOrderableDBInstanceOptions
         where
        toQuery DescribeOrderableDBInstanceOptions'{..}
          = mconcat
              ["Action" =:
                 ("DescribeOrderableDBInstanceOptions" :: ByteString),
               "Version" =: ("2014-10-31" :: ByteString),
               "EngineVersion" =: _dodioEngineVersion,
               "Filters" =: "Filter" =: _dodioFilters,
               "DBInstanceClass" =: _dodioDBInstanceClass,
               "LicenseModel" =: _dodioLicenseModel,
               "MaxRecords" =: _dodioMaxRecords,
               "Marker" =: _dodioMarker, "Vpc" =: _dodioVPC,
               "Engine" =: _dodioEngine]

-- | /See:/ 'describeOrderableDBInstanceOptionsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dodiorOrderableDBInstanceOptions'
--
-- * 'dodiorMarker'
data DescribeOrderableDBInstanceOptionsResponse = DescribeOrderableDBInstanceOptionsResponse'{_dodiorOrderableDBInstanceOptions :: Maybe [OrderableDBInstanceOption], _dodiorMarker :: Maybe Text} deriving (Eq, Read, Show)

-- | 'DescribeOrderableDBInstanceOptionsResponse' smart constructor.
describeOrderableDBInstanceOptionsResponse :: DescribeOrderableDBInstanceOptionsResponse
describeOrderableDBInstanceOptionsResponse = DescribeOrderableDBInstanceOptionsResponse'{_dodiorOrderableDBInstanceOptions = Nothing, _dodiorMarker = Nothing};

-- | An OrderableDBInstanceOption structure containing information about
-- orderable options for the DB instance.
dodiorOrderableDBInstanceOptions :: Lens' DescribeOrderableDBInstanceOptionsResponse (Maybe [OrderableDBInstanceOption])
dodiorOrderableDBInstanceOptions = lens _dodiorOrderableDBInstanceOptions (\ s a -> s{_dodiorOrderableDBInstanceOptions = a});

-- | An optional pagination token provided by a previous
-- OrderableDBInstanceOptions request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@ .
dodiorMarker :: Lens' DescribeOrderableDBInstanceOptionsResponse (Maybe Text)
dodiorMarker = lens _dodiorMarker (\ s a -> s{_dodiorMarker = a});
