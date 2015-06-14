{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.SWF.ListWorkflowTypes
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

-- | Returns information about workflow types in the specified domain. The
-- results may be split into multiple pages that can be retrieved by making
-- the call repeatedly.
--
-- __Access Control__
--
-- You can use IAM policies to control this action\'s access to Amazon SWF
-- resources as follows:
--
-- -   Use a @Resource@ element with the domain name to limit the action to
--     only specified domains.
-- -   Use an @Action@ element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- <http://docs.aws.amazon.com/amazonswf/latest/apireference/API_ListWorkflowTypes.html>
module Network.AWS.SWF.ListWorkflowTypes
    (
    -- * Request
      ListWorkflowTypes
    -- ** Request constructor
    , listWorkflowTypes
    -- ** Request lenses
    , lwtNextPageToken
    , lwtReverseOrder
    , lwtName
    , lwtMaximumPageSize
    , lwtDomain
    , lwtRegistrationStatus

    -- * Response
    , ListWorkflowTypesResponse
    -- ** Response constructor
    , listWorkflowTypesResponse
    -- ** Response lenses
    , lwtrNextPageToken
    , lwtrTypeInfos
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.SWF.Types

-- | /See:/ 'listWorkflowTypes' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lwtNextPageToken'
--
-- * 'lwtReverseOrder'
--
-- * 'lwtName'
--
-- * 'lwtMaximumPageSize'
--
-- * 'lwtDomain'
--
-- * 'lwtRegistrationStatus'
data ListWorkflowTypes = ListWorkflowTypes'{_lwtNextPageToken :: Maybe Text, _lwtReverseOrder :: Maybe Bool, _lwtName :: Maybe Text, _lwtMaximumPageSize :: Maybe Nat, _lwtDomain :: Text, _lwtRegistrationStatus :: RegistrationStatus} deriving (Eq, Read, Show)

-- | 'ListWorkflowTypes' smart constructor.
listWorkflowTypes :: Text -> RegistrationStatus -> ListWorkflowTypes
listWorkflowTypes pDomain pRegistrationStatus = ListWorkflowTypes'{_lwtNextPageToken = Nothing, _lwtReverseOrder = Nothing, _lwtName = Nothing, _lwtMaximumPageSize = Nothing, _lwtDomain = pDomain, _lwtRegistrationStatus = pRegistrationStatus};

-- | If a @NextPageToken@ was returned by a previous call, there are more
-- results available. To retrieve the next page of results, make the call
-- again using the returned token in @nextPageToken@. Keep all other
-- arguments unchanged.
--
-- The configured @maximumPageSize@ determines how many results can be
-- returned in a single call.
lwtNextPageToken :: Lens' ListWorkflowTypes (Maybe Text)
lwtNextPageToken = lens _lwtNextPageToken (\ s a -> s{_lwtNextPageToken = a});

-- | When set to @true@, returns the results in reverse order. By default the
-- results are returned in ascending alphabetical order of the @name@ of
-- the workflow types.
lwtReverseOrder :: Lens' ListWorkflowTypes (Maybe Bool)
lwtReverseOrder = lens _lwtReverseOrder (\ s a -> s{_lwtReverseOrder = a});

-- | If specified, lists the workflow type with this name.
lwtName :: Lens' ListWorkflowTypes (Maybe Text)
lwtName = lens _lwtName (\ s a -> s{_lwtName = a});

-- | The maximum number of results that will be returned per call.
-- @nextPageToken@ can be used to obtain futher pages of results. The
-- default is 100, which is the maximum allowed page size. You can,
-- however, specify a page size /smaller/ than 100.
--
-- This is an upper limit only; the actual number of results returned per
-- call may be fewer than the specified maximum.
lwtMaximumPageSize :: Lens' ListWorkflowTypes (Maybe Natural)
lwtMaximumPageSize = lens _lwtMaximumPageSize (\ s a -> s{_lwtMaximumPageSize = a}) . mapping _Nat;

-- | The name of the domain in which the workflow types have been registered.
lwtDomain :: Lens' ListWorkflowTypes Text
lwtDomain = lens _lwtDomain (\ s a -> s{_lwtDomain = a});

-- | Specifies the registration status of the workflow types to list.
lwtRegistrationStatus :: Lens' ListWorkflowTypes RegistrationStatus
lwtRegistrationStatus = lens _lwtRegistrationStatus (\ s a -> s{_lwtRegistrationStatus = a});

instance AWSRequest ListWorkflowTypes where
        type Sv ListWorkflowTypes = SWF
        type Rs ListWorkflowTypes = ListWorkflowTypesResponse
        request = postJSON
        response
          = receiveJSON
              (\ s h x ->
                 ListWorkflowTypesResponse' <$>
                   x .?> "nextPageToken" <*>
                     x .?> "typeInfos" .!@ mempty)

instance ToHeaders ListWorkflowTypes where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("SimpleWorkflowService.ListWorkflowTypes" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.0" :: ByteString)])

instance ToJSON ListWorkflowTypes where
        toJSON ListWorkflowTypes'{..}
          = object
              ["nextPageToken" .= _lwtNextPageToken,
               "reverseOrder" .= _lwtReverseOrder,
               "name" .= _lwtName,
               "maximumPageSize" .= _lwtMaximumPageSize,
               "domain" .= _lwtDomain,
               "registrationStatus" .= _lwtRegistrationStatus]

instance ToPath ListWorkflowTypes where
        toPath = const "/"

instance ToQuery ListWorkflowTypes where
        toQuery = const mempty

-- | /See:/ 'listWorkflowTypesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'lwtrNextPageToken'
--
-- * 'lwtrTypeInfos'
data ListWorkflowTypesResponse = ListWorkflowTypesResponse'{_lwtrNextPageToken :: Maybe Text, _lwtrTypeInfos :: [WorkflowTypeInfo]} deriving (Eq, Read, Show)

-- | 'ListWorkflowTypesResponse' smart constructor.
listWorkflowTypesResponse :: ListWorkflowTypesResponse
listWorkflowTypesResponse = ListWorkflowTypesResponse'{_lwtrNextPageToken = Nothing, _lwtrTypeInfos = mempty};

-- | If a @NextPageToken@ was returned by a previous call, there are more
-- results available. To retrieve the next page of results, make the call
-- again using the returned token in @nextPageToken@. Keep all other
-- arguments unchanged.
--
-- The configured @maximumPageSize@ determines how many results can be
-- returned in a single call.
lwtrNextPageToken :: Lens' ListWorkflowTypesResponse (Maybe Text)
lwtrNextPageToken = lens _lwtrNextPageToken (\ s a -> s{_lwtrNextPageToken = a});

-- | The list of workflow type information.
lwtrTypeInfos :: Lens' ListWorkflowTypesResponse [WorkflowTypeInfo]
lwtrTypeInfos = lens _lwtrTypeInfos (\ s a -> s{_lwtrTypeInfos = a});
