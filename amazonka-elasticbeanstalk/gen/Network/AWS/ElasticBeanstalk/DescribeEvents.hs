{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.ElasticBeanstalk.DescribeEvents
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

-- | Returns list of event descriptions matching criteria up to the last 6
-- weeks.
--
-- This action returns the most recent 1,000 events from the specified
-- @NextToken@.
--
-- <http://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_DescribeEvents.html>
module Network.AWS.ElasticBeanstalk.DescribeEvents
    (
    -- * Request
      DescribeEvents
    -- ** Request constructor
    , describeEvents
    -- ** Request lenses
    , deRequestId
    , deTemplateName
    , deStartTime
    , deSeverity
    , deNextToken
    , deVersionLabel
    , deMaxRecords
    , deEnvironmentName
    , deEndTime
    , deApplicationName
    , deEnvironmentId

    -- * Response
    , DescribeEventsResponse
    -- ** Response constructor
    , describeEventsResponse
    -- ** Response lenses
    , derNextToken
    , derEvents
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.ElasticBeanstalk.Types

-- | /See:/ 'describeEvents' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'deRequestId'
--
-- * 'deTemplateName'
--
-- * 'deStartTime'
--
-- * 'deSeverity'
--
-- * 'deNextToken'
--
-- * 'deVersionLabel'
--
-- * 'deMaxRecords'
--
-- * 'deEnvironmentName'
--
-- * 'deEndTime'
--
-- * 'deApplicationName'
--
-- * 'deEnvironmentId'
data DescribeEvents = DescribeEvents'{_deRequestId :: Maybe Text, _deTemplateName :: Maybe Text, _deStartTime :: Maybe ISO8601, _deSeverity :: Maybe EventSeverity, _deNextToken :: Maybe Text, _deVersionLabel :: Maybe Text, _deMaxRecords :: Maybe Nat, _deEnvironmentName :: Maybe Text, _deEndTime :: Maybe ISO8601, _deApplicationName :: Maybe Text, _deEnvironmentId :: Maybe Text} deriving (Eq, Read, Show)

-- | 'DescribeEvents' smart constructor.
describeEvents :: DescribeEvents
describeEvents = DescribeEvents'{_deRequestId = Nothing, _deTemplateName = Nothing, _deStartTime = Nothing, _deSeverity = Nothing, _deNextToken = Nothing, _deVersionLabel = Nothing, _deMaxRecords = Nothing, _deEnvironmentName = Nothing, _deEndTime = Nothing, _deApplicationName = Nothing, _deEnvironmentId = Nothing};

-- | If specified, AWS Elastic Beanstalk restricts the described events to
-- include only those associated with this request ID.
deRequestId :: Lens' DescribeEvents (Maybe Text)
deRequestId = lens _deRequestId (\ s a -> s{_deRequestId = a});

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions
-- to those that are associated with this environment configuration.
deTemplateName :: Lens' DescribeEvents (Maybe Text)
deTemplateName = lens _deTemplateName (\ s a -> s{_deTemplateName = a});

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions
-- to those that occur on or after this time.
deStartTime :: Lens' DescribeEvents (Maybe UTCTime)
deStartTime = lens _deStartTime (\ s a -> s{_deStartTime = a}) . mapping _Time;

-- | If specified, limits the events returned from this call to include only
-- those with the specified severity or higher.
deSeverity :: Lens' DescribeEvents (Maybe EventSeverity)
deSeverity = lens _deSeverity (\ s a -> s{_deSeverity = a});

-- | Pagination token. If specified, the events return the next batch of
-- results.
deNextToken :: Lens' DescribeEvents (Maybe Text)
deNextToken = lens _deNextToken (\ s a -> s{_deNextToken = a});

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions
-- to those associated with this application version.
deVersionLabel :: Lens' DescribeEvents (Maybe Text)
deVersionLabel = lens _deVersionLabel (\ s a -> s{_deVersionLabel = a});

-- | Specifies the maximum number of events that can be returned, beginning
-- with the most recent event.
deMaxRecords :: Lens' DescribeEvents (Maybe Natural)
deMaxRecords = lens _deMaxRecords (\ s a -> s{_deMaxRecords = a}) . mapping _Nat;

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions
-- to those associated with this environment.
deEnvironmentName :: Lens' DescribeEvents (Maybe Text)
deEnvironmentName = lens _deEnvironmentName (\ s a -> s{_deEnvironmentName = a});

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions
-- to those that occur up to, but not including, the @EndTime@.
deEndTime :: Lens' DescribeEvents (Maybe UTCTime)
deEndTime = lens _deEndTime (\ s a -> s{_deEndTime = a}) . mapping _Time;

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions
-- to include only those associated with this application.
deApplicationName :: Lens' DescribeEvents (Maybe Text)
deApplicationName = lens _deApplicationName (\ s a -> s{_deApplicationName = a});

-- | If specified, AWS Elastic Beanstalk restricts the returned descriptions
-- to those associated with this environment.
deEnvironmentId :: Lens' DescribeEvents (Maybe Text)
deEnvironmentId = lens _deEnvironmentId (\ s a -> s{_deEnvironmentId = a});

instance AWSRequest DescribeEvents where
        type Sv DescribeEvents = ElasticBeanstalk
        type Rs DescribeEvents = DescribeEventsResponse
        request = post
        response
          = receiveXMLWrapper "DescribeEventsResult"
              (\ s h x ->
                 DescribeEventsResponse' <$>
                   x .@? "NextToken" <*>
                     (x .@? "Events" .!@ mempty >>=
                        parseXMLList "member"))

instance ToHeaders DescribeEvents where
        toHeaders = const mempty

instance ToPath DescribeEvents where
        toPath = const "/"

instance ToQuery DescribeEvents where
        toQuery DescribeEvents'{..}
          = mconcat
              ["Action" =: ("DescribeEvents" :: ByteString),
               "Version" =: ("2010-12-01" :: ByteString),
               "RequestId" =: _deRequestId,
               "TemplateName" =: _deTemplateName,
               "StartTime" =: _deStartTime,
               "Severity" =: _deSeverity,
               "NextToken" =: _deNextToken,
               "VersionLabel" =: _deVersionLabel,
               "MaxRecords" =: _deMaxRecords,
               "EnvironmentName" =: _deEnvironmentName,
               "EndTime" =: _deEndTime,
               "ApplicationName" =: _deApplicationName,
               "EnvironmentId" =: _deEnvironmentId]

-- | /See:/ 'describeEventsResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'derNextToken'
--
-- * 'derEvents'
data DescribeEventsResponse = DescribeEventsResponse'{_derNextToken :: Maybe Text, _derEvents :: Maybe [EventDescription]} deriving (Eq, Read, Show)

-- | 'DescribeEventsResponse' smart constructor.
describeEventsResponse :: DescribeEventsResponse
describeEventsResponse = DescribeEventsResponse'{_derNextToken = Nothing, _derEvents = Nothing};

-- | If returned, this indicates that there are more results to obtain. Use
-- this token in the next DescribeEvents call to get the next batch of
-- events.
derNextToken :: Lens' DescribeEventsResponse (Maybe Text)
derNextToken = lens _derNextToken (\ s a -> s{_derNextToken = a});

-- | A list of EventDescription.
derEvents :: Lens' DescribeEventsResponse (Maybe [EventDescription])
derEvents = lens _derEvents (\ s a -> s{_derEvents = a});
