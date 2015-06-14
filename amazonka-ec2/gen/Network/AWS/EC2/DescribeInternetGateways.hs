{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.EC2.DescribeInternetGateways
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

-- | Describes one or more of your Internet gateways.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeInternetGateways.html>
module Network.AWS.EC2.DescribeInternetGateways
    (
    -- * Request
      DescribeInternetGateways
    -- ** Request constructor
    , describeInternetGateways
    -- ** Request lenses
    , desFilters
    , desInternetGatewayIds
    , desDryRun

    -- * Response
    , DescribeInternetGatewaysResponse
    -- ** Response constructor
    , describeInternetGatewaysResponse
    -- ** Response lenses
    , digrInternetGateways
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.EC2.Types

-- | /See:/ 'describeInternetGateways' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'desFilters'
--
-- * 'desInternetGatewayIds'
--
-- * 'desDryRun'
data DescribeInternetGateways = DescribeInternetGateways'{_desFilters :: Maybe [Filter], _desInternetGatewayIds :: Maybe [Text], _desDryRun :: Maybe Bool} deriving (Eq, Read, Show)

-- | 'DescribeInternetGateways' smart constructor.
describeInternetGateways :: DescribeInternetGateways
describeInternetGateways = DescribeInternetGateways'{_desFilters = Nothing, _desInternetGatewayIds = Nothing, _desDryRun = Nothing};

-- | One or more filters.
--
-- -   @attachment.state@ - The current state of the attachment between the
--     gateway and the VPC (@available@). Present only if a VPC is
--     attached.
--
-- -   @attachment.vpc-id@ - The ID of an attached VPC.
--
-- -   @internet-gateway-id@ - The ID of the Internet gateway.
--
-- -   @tag@:/key/=/value/ - The key\/value combination of a tag assigned
--     to the resource.
--
-- -   @tag-key@ - The key of a tag assigned to the resource. This filter
--     is independent of the @tag-value@ filter. For example, if you use
--     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
--     you get any resources assigned both the tag key Purpose (regardless
--     of what the tag\'s value is), and the tag value X (regardless of
--     what the tag\'s key is). If you want to list only resources where
--     Purpose is X, see the @tag@:/key/=/value/ filter.
--
-- -   @tag-value@ - The value of a tag assigned to the resource. This
--     filter is independent of the @tag-key@ filter.
--
desFilters :: Lens' DescribeInternetGateways (Maybe [Filter])
desFilters = lens _desFilters (\ s a -> s{_desFilters = a});

-- | One or more Internet gateway IDs.
--
-- Default: Describes all your Internet gateways.
desInternetGatewayIds :: Lens' DescribeInternetGateways (Maybe [Text])
desInternetGatewayIds = lens _desInternetGatewayIds (\ s a -> s{_desInternetGatewayIds = a});

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
desDryRun :: Lens' DescribeInternetGateways (Maybe Bool)
desDryRun = lens _desDryRun (\ s a -> s{_desDryRun = a});

instance AWSRequest DescribeInternetGateways where
        type Sv DescribeInternetGateways = EC2
        type Rs DescribeInternetGateways =
             DescribeInternetGatewaysResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 DescribeInternetGatewaysResponse' <$>
                   parseXMLList "item" x)

instance ToHeaders DescribeInternetGateways where
        toHeaders = const mempty

instance ToPath DescribeInternetGateways where
        toPath = const "/"

instance ToQuery DescribeInternetGateways where
        toQuery DescribeInternetGateways'{..}
          = mconcat
              ["Action" =:
                 ("DescribeInternetGateways" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "Filter" =: _desFilters,
               "item" =: _desInternetGatewayIds,
               "DryRun" =: _desDryRun]

-- | /See:/ 'describeInternetGatewaysResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'digrInternetGateways'
newtype DescribeInternetGatewaysResponse = DescribeInternetGatewaysResponse'{_digrInternetGateways :: Maybe [InternetGateway]} deriving (Eq, Read, Show)

-- | 'DescribeInternetGatewaysResponse' smart constructor.
describeInternetGatewaysResponse :: DescribeInternetGatewaysResponse
describeInternetGatewaysResponse = DescribeInternetGatewaysResponse'{_digrInternetGateways = Nothing};

-- | Information about one or more Internet gateways.
digrInternetGateways :: Lens' DescribeInternetGatewaysResponse (Maybe [InternetGateway])
digrInternetGateways = lens _digrInternetGateways (\ s a -> s{_digrInternetGateways = a});
