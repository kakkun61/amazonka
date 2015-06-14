{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.EC2.CancelSpotInstanceRequests
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

-- | Cancels one or more Spot Instance requests. Spot Instances are instances
-- that Amazon EC2 starts on your behalf when the bid price that you
-- specify exceeds the current Spot Price. Amazon EC2 periodically sets the
-- Spot Price based on available Spot Instance capacity and current Spot
-- Instance requests. For more information, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html Spot Instance Requests>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- Canceling a Spot Instance request does not terminate running Spot
-- Instances associated with the request.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CancelSpotInstanceRequests.html>
module Network.AWS.EC2.CancelSpotInstanceRequests
    (
    -- * Request
      CancelSpotInstanceRequests
    -- ** Request constructor
    , cancelSpotInstanceRequests
    -- ** Request lenses
    , csirDryRun
    , csirSpotInstanceRequestIds

    -- * Response
    , CancelSpotInstanceRequestsResponse
    -- ** Response constructor
    , cancelSpotInstanceRequestsResponse
    -- ** Response lenses
    , csirrCancelledSpotInstanceRequests
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.EC2.Types

-- | /See:/ 'cancelSpotInstanceRequests' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'csirDryRun'
--
-- * 'csirSpotInstanceRequestIds'
data CancelSpotInstanceRequests = CancelSpotInstanceRequests'{_csirDryRun :: Maybe Bool, _csirSpotInstanceRequestIds :: [Text]} deriving (Eq, Read, Show)

-- | 'CancelSpotInstanceRequests' smart constructor.
cancelSpotInstanceRequests :: CancelSpotInstanceRequests
cancelSpotInstanceRequests = CancelSpotInstanceRequests'{_csirDryRun = Nothing, _csirSpotInstanceRequestIds = mempty};

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
csirDryRun :: Lens' CancelSpotInstanceRequests (Maybe Bool)
csirDryRun = lens _csirDryRun (\ s a -> s{_csirDryRun = a});

-- | One or more Spot Instance request IDs.
csirSpotInstanceRequestIds :: Lens' CancelSpotInstanceRequests [Text]
csirSpotInstanceRequestIds = lens _csirSpotInstanceRequestIds (\ s a -> s{_csirSpotInstanceRequestIds = a});

instance AWSRequest CancelSpotInstanceRequests where
        type Sv CancelSpotInstanceRequests = EC2
        type Rs CancelSpotInstanceRequests =
             CancelSpotInstanceRequestsResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 CancelSpotInstanceRequestsResponse' <$>
                   parseXMLList "item" x)

instance ToHeaders CancelSpotInstanceRequests where
        toHeaders = const mempty

instance ToPath CancelSpotInstanceRequests where
        toPath = const "/"

instance ToQuery CancelSpotInstanceRequests where
        toQuery CancelSpotInstanceRequests'{..}
          = mconcat
              ["Action" =:
                 ("CancelSpotInstanceRequests" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "DryRun" =: _csirDryRun,
               "SpotInstanceRequestId" =:
                 _csirSpotInstanceRequestIds]

-- | /See:/ 'cancelSpotInstanceRequestsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'csirrCancelledSpotInstanceRequests'
newtype CancelSpotInstanceRequestsResponse = CancelSpotInstanceRequestsResponse'{_csirrCancelledSpotInstanceRequests :: Maybe [CancelledSpotInstanceRequest]} deriving (Eq, Read, Show)

-- | 'CancelSpotInstanceRequestsResponse' smart constructor.
cancelSpotInstanceRequestsResponse :: CancelSpotInstanceRequestsResponse
cancelSpotInstanceRequestsResponse = CancelSpotInstanceRequestsResponse'{_csirrCancelledSpotInstanceRequests = Nothing};

-- | One or more Spot Instance requests.
csirrCancelledSpotInstanceRequests :: Lens' CancelSpotInstanceRequestsResponse (Maybe [CancelledSpotInstanceRequest])
csirrCancelledSpotInstanceRequests = lens _csirrCancelledSpotInstanceRequests (\ s a -> s{_csirrCancelledSpotInstanceRequests = a});
