{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.AutoScaling.DisableMetricsCollection
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

-- | Disables monitoring of the specified metrics for the specified Auto
-- Scaling group.
--
-- <http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_DisableMetricsCollection.html>
module Network.AWS.AutoScaling.DisableMetricsCollection
    (
    -- * Request
      DisableMetricsCollection
    -- ** Request constructor
    , disableMetricsCollection
    -- ** Request lenses
    , dmcMetrics
    , dmcAutoScalingGroupName

    -- * Response
    , DisableMetricsCollectionResponse
    -- ** Response constructor
    , disableMetricsCollectionResponse
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.AutoScaling.Types

-- | /See:/ 'disableMetricsCollection' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dmcMetrics'
--
-- * 'dmcAutoScalingGroupName'
data DisableMetricsCollection = DisableMetricsCollection'{_dmcMetrics :: Maybe [Text], _dmcAutoScalingGroupName :: Text} deriving (Eq, Read, Show)

-- | 'DisableMetricsCollection' smart constructor.
disableMetricsCollection :: Text -> DisableMetricsCollection
disableMetricsCollection pAutoScalingGroupName = DisableMetricsCollection'{_dmcMetrics = Nothing, _dmcAutoScalingGroupName = pAutoScalingGroupName};

-- | One or more of the following metrics:
--
-- -   GroupMinSize
--
-- -   GroupMaxSize
--
-- -   GroupDesiredCapacity
--
-- -   GroupInServiceInstances
--
-- -   GroupPendingInstances
--
-- -   GroupStandbyInstances
--
-- -   GroupTerminatingInstances
--
-- -   GroupTotalInstances
--
-- If you omit this parameter, all metrics are disabled.
dmcMetrics :: Lens' DisableMetricsCollection (Maybe [Text])
dmcMetrics = lens _dmcMetrics (\ s a -> s{_dmcMetrics = a});

-- | The name or Amazon Resource Name (ARN) of the group.
dmcAutoScalingGroupName :: Lens' DisableMetricsCollection Text
dmcAutoScalingGroupName = lens _dmcAutoScalingGroupName (\ s a -> s{_dmcAutoScalingGroupName = a});

instance AWSRequest DisableMetricsCollection where
        type Sv DisableMetricsCollection = AutoScaling
        type Rs DisableMetricsCollection =
             DisableMetricsCollectionResponse
        request = post
        response
          = receiveNull DisableMetricsCollectionResponse'

instance ToHeaders DisableMetricsCollection where
        toHeaders = const mempty

instance ToPath DisableMetricsCollection where
        toPath = const "/"

instance ToQuery DisableMetricsCollection where
        toQuery DisableMetricsCollection'{..}
          = mconcat
              ["Action" =:
                 ("DisableMetricsCollection" :: ByteString),
               "Version" =: ("2011-01-01" :: ByteString),
               "Metrics" =: "member" =: _dmcMetrics,
               "AutoScalingGroupName" =: _dmcAutoScalingGroupName]

-- | /See:/ 'disableMetricsCollectionResponse' smart constructor.
data DisableMetricsCollectionResponse = DisableMetricsCollectionResponse' deriving (Eq, Read, Show)

-- | 'DisableMetricsCollectionResponse' smart constructor.
disableMetricsCollectionResponse :: DisableMetricsCollectionResponse
disableMetricsCollectionResponse = DisableMetricsCollectionResponse';
