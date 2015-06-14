{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.EC2.CreateNetworkInterface
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

-- | Creates a network interface in the specified subnet.
--
-- For more information about network interfaces, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html Elastic Network Interfaces>
-- in the /Amazon Elastic Compute Cloud User Guide/.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateNetworkInterface.html>
module Network.AWS.EC2.CreateNetworkInterface
    (
    -- * Request
      CreateNetworkInterface
    -- ** Request constructor
    , createNetworkInterface
    -- ** Request lenses
    , cniPrivateIPAddresses
    , cniGroups
    , cniPrivateIPAddress
    , cniSecondaryPrivateIPAddressCount
    , cniDryRun
    , cniDescription
    , cniSubnetId

    -- * Response
    , CreateNetworkInterfaceResponse
    -- ** Response constructor
    , createNetworkInterfaceResponse
    -- ** Response lenses
    , cnirNetworkInterface
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.EC2.Types

-- | /See:/ 'createNetworkInterface' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cniPrivateIPAddresses'
--
-- * 'cniGroups'
--
-- * 'cniPrivateIPAddress'
--
-- * 'cniSecondaryPrivateIPAddressCount'
--
-- * 'cniDryRun'
--
-- * 'cniDescription'
--
-- * 'cniSubnetId'
data CreateNetworkInterface = CreateNetworkInterface'{_cniPrivateIPAddresses :: Maybe [PrivateIPAddressSpecification], _cniGroups :: Maybe [Text], _cniPrivateIPAddress :: Maybe Text, _cniSecondaryPrivateIPAddressCount :: Maybe Int, _cniDryRun :: Maybe Bool, _cniDescription :: Maybe Text, _cniSubnetId :: Text} deriving (Eq, Read, Show)

-- | 'CreateNetworkInterface' smart constructor.
createNetworkInterface :: Text -> CreateNetworkInterface
createNetworkInterface pSubnetId = CreateNetworkInterface'{_cniPrivateIPAddresses = Nothing, _cniGroups = Nothing, _cniPrivateIPAddress = Nothing, _cniSecondaryPrivateIPAddressCount = Nothing, _cniDryRun = Nothing, _cniDescription = Nothing, _cniSubnetId = pSubnetId};

-- | One or more private IP addresses.
cniPrivateIPAddresses :: Lens' CreateNetworkInterface (Maybe [PrivateIPAddressSpecification])
cniPrivateIPAddresses = lens _cniPrivateIPAddresses (\ s a -> s{_cniPrivateIPAddresses = a});

-- | The IDs of one or more security groups.
cniGroups :: Lens' CreateNetworkInterface (Maybe [Text])
cniGroups = lens _cniGroups (\ s a -> s{_cniGroups = a});

-- | The primary private IP address of the network interface. If you don\'t
-- specify an IP address, Amazon EC2 selects one for you from the subnet
-- range. If you specify an IP address, you cannot indicate any IP
-- addresses specified in @privateIpAddresses@ as primary (only one IP
-- address can be designated as primary).
cniPrivateIPAddress :: Lens' CreateNetworkInterface (Maybe Text)
cniPrivateIPAddress = lens _cniPrivateIPAddress (\ s a -> s{_cniPrivateIPAddress = a});

-- | The number of secondary private IP addresses to assign to a network
-- interface. When you specify a number of secondary IP addresses, Amazon
-- EC2 selects these IP addresses within the subnet range. You can\'t
-- specify this option and specify more than one private IP address using
-- @privateIpAddresses@.
--
-- The number of IP addresses you can assign to a network interface varies
-- by instance type. For more information, see
-- <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI Private IP Addresses Per ENI Per Instance Type>
-- in the /Amazon Elastic Compute Cloud User Guide/.
cniSecondaryPrivateIPAddressCount :: Lens' CreateNetworkInterface (Maybe Int)
cniSecondaryPrivateIPAddressCount = lens _cniSecondaryPrivateIPAddressCount (\ s a -> s{_cniSecondaryPrivateIPAddressCount = a});

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
cniDryRun :: Lens' CreateNetworkInterface (Maybe Bool)
cniDryRun = lens _cniDryRun (\ s a -> s{_cniDryRun = a});

-- | A description for the network interface.
cniDescription :: Lens' CreateNetworkInterface (Maybe Text)
cniDescription = lens _cniDescription (\ s a -> s{_cniDescription = a});

-- | The ID of the subnet to associate with the network interface.
cniSubnetId :: Lens' CreateNetworkInterface Text
cniSubnetId = lens _cniSubnetId (\ s a -> s{_cniSubnetId = a});

instance AWSRequest CreateNetworkInterface where
        type Sv CreateNetworkInterface = EC2
        type Rs CreateNetworkInterface =
             CreateNetworkInterfaceResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 CreateNetworkInterfaceResponse' <$>
                   x .@? "networkInterface")

instance ToHeaders CreateNetworkInterface where
        toHeaders = const mempty

instance ToPath CreateNetworkInterface where
        toPath = const "/"

instance ToQuery CreateNetworkInterface where
        toQuery CreateNetworkInterface'{..}
          = mconcat
              ["Action" =:
                 ("CreateNetworkInterface" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               "item" =: _cniPrivateIPAddresses,
               "SecurityGroupId" =: _cniGroups,
               "PrivateIpAddress" =: _cniPrivateIPAddress,
               "SecondaryPrivateIpAddressCount" =:
                 _cniSecondaryPrivateIPAddressCount,
               "DryRun" =: _cniDryRun,
               "Description" =: _cniDescription,
               "SubnetId" =: _cniSubnetId]

-- | /See:/ 'createNetworkInterfaceResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'cnirNetworkInterface'
newtype CreateNetworkInterfaceResponse = CreateNetworkInterfaceResponse'{_cnirNetworkInterface :: Maybe NetworkInterface} deriving (Eq, Read, Show)

-- | 'CreateNetworkInterfaceResponse' smart constructor.
createNetworkInterfaceResponse :: CreateNetworkInterfaceResponse
createNetworkInterfaceResponse = CreateNetworkInterfaceResponse'{_cnirNetworkInterface = Nothing};

-- | Information about the network interface.
cnirNetworkInterface :: Lens' CreateNetworkInterfaceResponse (Maybe NetworkInterface)
cnirNetworkInterface = lens _cnirNetworkInterface (\ s a -> s{_cnirNetworkInterface = a});
