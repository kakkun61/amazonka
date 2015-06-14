{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE ViewPatterns      #-}

-- Module      : Network.AWS.Glacier.Types
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

module Network.AWS.Glacier.Types
    (
    -- * Service
      Glacier
    -- ** Errors
    , JSONError

    -- * ActionCode
    , ActionCode (..)

    -- * ArchiveCreationOutput
    , ArchiveCreationOutput
    , archiveCreationOutput
    , acoArchiveId
    , acoChecksum
    , acoLocation

    -- * DataRetrievalPolicy
    , DataRetrievalPolicy
    , dataRetrievalPolicy
    , drpRules

    -- * DataRetrievalRule
    , DataRetrievalRule
    , dataRetrievalRule
    , drrStrategy
    , drrBytesPerHour

    -- * DescribeVaultOutput
    , DescribeVaultOutput
    , describeVaultOutput
    , dvoVaultName
    , dvoSizeInBytes
    , dvoLastInventoryDate
    , dvoVaultARN
    , dvoCreationDate
    , dvoNumberOfArchives

    -- * GlacierJobDescription
    , GlacierJobDescription
    , glacierJobDescription
    , gjdArchiveId
    , gjdSHA256TreeHash
    , gjdJobId
    , gjdRetrievalByteRange
    , gjdInventoryRetrievalParameters
    , gjdAction
    , gjdJobDescription
    , gjdSNSTopic
    , gjdVaultARN
    , gjdStatusMessage
    , gjdArchiveSHA256TreeHash
    , gjdCreationDate
    , gjdCompleted
    , gjdCompletionDate
    , gjdArchiveSizeInBytes
    , gjdStatusCode
    , gjdInventorySizeInBytes

    -- * InventoryRetrievalJobDescription
    , InventoryRetrievalJobDescription
    , inventoryRetrievalJobDescription
    , irjdFormat
    , irjdEndDate
    , irjdStartDate
    , irjdMarker
    , irjdLimit

    -- * InventoryRetrievalJobInput
    , InventoryRetrievalJobInput
    , inventoryRetrievalJobInput
    , irjiEndDate
    , irjiStartDate
    , irjiMarker
    , irjiLimit

    -- * JobParameters
    , JobParameters
    , jobParameters
    , jpArchiveId
    , jpRetrievalByteRange
    , jpFormat
    , jpInventoryRetrievalParameters
    , jpSNSTopic
    , jpType
    , jpDescription

    -- * PartListElement
    , PartListElement
    , partListElement
    , pleSHA256TreeHash
    , pleRangeInBytes

    -- * StatusCode
    , StatusCode (..)

    -- * UploadListElement
    , UploadListElement
    , uploadListElement
    , uleMultipartUploadId
    , uleArchiveDescription
    , ulePartSizeInBytes
    , uleVaultARN
    , uleCreationDate

    -- * VaultAccessPolicy
    , VaultAccessPolicy
    , vaultAccessPolicy
    , vapPolicy

    -- * VaultNotificationConfig
    , VaultNotificationConfig
    , vaultNotificationConfig
    , vncSNSTopic
    , vncEvents
    ) where

import Network.AWS.Prelude
import Network.AWS.Sign.V4

-- | Version @2012-06-01@ of the Amazon Glacier SDK.
data Glacier

instance AWSService Glacier where
    type Sg Glacier = V4
    type Er Glacier = JSONError

    service = service'
      where
        service' :: Service Glacier
        service' = Service
            { _svcAbbrev  = "Glacier"
            , _svcPrefix  = "glacier"
            , _svcVersion = "2012-06-01"
            , _svcHandle  = handle
            , _svcRetry   = retry
            }

        handle :: Status
               -> Maybe (LazyByteString -> ServiceError JSONError)
        handle = jsonError statusSuccess service'

        retry :: Retry Glacier
        retry = undefined

        check :: Status
              -> JSONError
              -> Bool
        check (statusCode -> s) (awsErrorCode -> e) = undefined

data ActionCode = InventoryRetrieval | ArchiveRetrieval deriving (Eq, Ord, Read, Show, Enum, Generic)

instance FromText ActionCode where
    parser = takeLowerText >>= \case
        "ArchiveRetrieval" -> pure ArchiveRetrieval
        "InventoryRetrieval" -> pure InventoryRetrieval
        e -> fail ("Failure parsing ActionCode from " ++ show e)

instance ToText ActionCode where
    toText = \case
        ArchiveRetrieval -> "ArchiveRetrieval"
        InventoryRetrieval -> "InventoryRetrieval"

instance Hashable ActionCode
instance ToQuery ActionCode
instance ToHeader ActionCode

instance FromJSON ActionCode where
    parseJSON = parseJSONText "ActionCode"

-- | /See:/ 'archiveCreationOutput' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'acoArchiveId'
--
-- * 'acoChecksum'
--
-- * 'acoLocation'
data ArchiveCreationOutput = ArchiveCreationOutput'{_acoArchiveId :: Maybe Text, _acoChecksum :: Maybe Text, _acoLocation :: Maybe Text} deriving (Eq, Read, Show)

-- | 'ArchiveCreationOutput' smart constructor.
archiveCreationOutput :: ArchiveCreationOutput
archiveCreationOutput = ArchiveCreationOutput'{_acoArchiveId = Nothing, _acoChecksum = Nothing, _acoLocation = Nothing};

-- | The ID of the archive. This value is also included as part of the
-- location.
acoArchiveId :: Lens' ArchiveCreationOutput (Maybe Text)
acoArchiveId = lens _acoArchiveId (\ s a -> s{_acoArchiveId = a});

-- | The checksum of the archive computed by Amazon Glacier.
acoChecksum :: Lens' ArchiveCreationOutput (Maybe Text)
acoChecksum = lens _acoChecksum (\ s a -> s{_acoChecksum = a});

-- | The relative URI path of the newly added archive resource.
acoLocation :: Lens' ArchiveCreationOutput (Maybe Text)
acoLocation = lens _acoLocation (\ s a -> s{_acoLocation = a});

instance FromJSON ArchiveCreationOutput where
        parseJSON
          = withObject "ArchiveCreationOutput"
              (\ x ->
                 ArchiveCreationOutput' <$>
                   x .:? "x-amz-archive-id" <*>
                     x .:? "x-amz-sha256-tree-hash"
                     <*> x .:? "Location")

-- | /See:/ 'dataRetrievalPolicy' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drpRules'
newtype DataRetrievalPolicy = DataRetrievalPolicy'{_drpRules :: Maybe [DataRetrievalRule]} deriving (Eq, Read, Show)

-- | 'DataRetrievalPolicy' smart constructor.
dataRetrievalPolicy :: DataRetrievalPolicy
dataRetrievalPolicy = DataRetrievalPolicy'{_drpRules = Nothing};

-- | The policy rule. Although this is a list type, currently there must be
-- only one rule, which contains a Strategy field and optionally a
-- BytesPerHour field.
drpRules :: Lens' DataRetrievalPolicy (Maybe [DataRetrievalRule])
drpRules = lens _drpRules (\ s a -> s{_drpRules = a});

instance FromJSON DataRetrievalPolicy where
        parseJSON
          = withObject "DataRetrievalPolicy"
              (\ x ->
                 DataRetrievalPolicy' <$> x .:? "Rules" .!= mempty)

instance ToJSON DataRetrievalPolicy where
        toJSON DataRetrievalPolicy'{..}
          = object ["Rules" .= _drpRules]

-- | /See:/ 'dataRetrievalRule' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'drrStrategy'
--
-- * 'drrBytesPerHour'
data DataRetrievalRule = DataRetrievalRule'{_drrStrategy :: Maybe Text, _drrBytesPerHour :: Maybe Integer} deriving (Eq, Read, Show)

-- | 'DataRetrievalRule' smart constructor.
dataRetrievalRule :: DataRetrievalRule
dataRetrievalRule = DataRetrievalRule'{_drrStrategy = Nothing, _drrBytesPerHour = Nothing};

-- | The type of data retrieval policy to set.
--
-- Valid values: BytesPerHour|FreeTier|None
drrStrategy :: Lens' DataRetrievalRule (Maybe Text)
drrStrategy = lens _drrStrategy (\ s a -> s{_drrStrategy = a});

-- | The maximum number of bytes that can be retrieved in an hour.
--
-- This field is required only if the value of the Strategy field is
-- @BytesPerHour@. Your PUT operation will be rejected if the Strategy
-- field is not set to @BytesPerHour@ and you set this field.
drrBytesPerHour :: Lens' DataRetrievalRule (Maybe Integer)
drrBytesPerHour = lens _drrBytesPerHour (\ s a -> s{_drrBytesPerHour = a});

instance FromJSON DataRetrievalRule where
        parseJSON
          = withObject "DataRetrievalRule"
              (\ x ->
                 DataRetrievalRule' <$>
                   x .:? "Strategy" <*> x .:? "BytesPerHour")

instance ToJSON DataRetrievalRule where
        toJSON DataRetrievalRule'{..}
          = object
              ["Strategy" .= _drrStrategy,
               "BytesPerHour" .= _drrBytesPerHour]

-- | /See:/ 'describeVaultOutput' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dvoVaultName'
--
-- * 'dvoSizeInBytes'
--
-- * 'dvoLastInventoryDate'
--
-- * 'dvoVaultARN'
--
-- * 'dvoCreationDate'
--
-- * 'dvoNumberOfArchives'
data DescribeVaultOutput = DescribeVaultOutput'{_dvoVaultName :: Maybe Text, _dvoSizeInBytes :: Maybe Integer, _dvoLastInventoryDate :: Maybe Text, _dvoVaultARN :: Maybe Text, _dvoCreationDate :: Maybe Text, _dvoNumberOfArchives :: Maybe Integer} deriving (Eq, Read, Show)

-- | 'DescribeVaultOutput' smart constructor.
describeVaultOutput :: DescribeVaultOutput
describeVaultOutput = DescribeVaultOutput'{_dvoVaultName = Nothing, _dvoSizeInBytes = Nothing, _dvoLastInventoryDate = Nothing, _dvoVaultARN = Nothing, _dvoCreationDate = Nothing, _dvoNumberOfArchives = Nothing};

-- | The name of the vault.
dvoVaultName :: Lens' DescribeVaultOutput (Maybe Text)
dvoVaultName = lens _dvoVaultName (\ s a -> s{_dvoVaultName = a});

-- | Total size, in bytes, of the archives in the vault as of the last
-- inventory date. This field will return null if an inventory has not yet
-- run on the vault, for example, if you just created the vault.
dvoSizeInBytes :: Lens' DescribeVaultOutput (Maybe Integer)
dvoSizeInBytes = lens _dvoSizeInBytes (\ s a -> s{_dvoSizeInBytes = a});

-- | The UTC date when Amazon Glacier completed the last vault inventory. A
-- string representation of ISO 8601 date format, for example,
-- \"2012-03-20T17:03:43.221Z\".
dvoLastInventoryDate :: Lens' DescribeVaultOutput (Maybe Text)
dvoLastInventoryDate = lens _dvoLastInventoryDate (\ s a -> s{_dvoLastInventoryDate = a});

-- | The Amazon Resource Name (ARN) of the vault.
dvoVaultARN :: Lens' DescribeVaultOutput (Maybe Text)
dvoVaultARN = lens _dvoVaultARN (\ s a -> s{_dvoVaultARN = a});

-- | The UTC date when the vault was created. A string representation of ISO
-- 8601 date format, for example, \"2012-03-20T17:03:43.221Z\".
dvoCreationDate :: Lens' DescribeVaultOutput (Maybe Text)
dvoCreationDate = lens _dvoCreationDate (\ s a -> s{_dvoCreationDate = a});

-- | The number of archives in the vault as of the last inventory date. This
-- field will return @null@ if an inventory has not yet run on the vault,
-- for example, if you just created the vault.
dvoNumberOfArchives :: Lens' DescribeVaultOutput (Maybe Integer)
dvoNumberOfArchives = lens _dvoNumberOfArchives (\ s a -> s{_dvoNumberOfArchives = a});

instance FromJSON DescribeVaultOutput where
        parseJSON
          = withObject "DescribeVaultOutput"
              (\ x ->
                 DescribeVaultOutput' <$>
                   x .:? "VaultName" <*> x .:? "SizeInBytes" <*>
                     x .:? "LastInventoryDate"
                     <*> x .:? "VaultARN"
                     <*> x .:? "CreationDate"
                     <*> x .:? "NumberOfArchives")

-- | /See:/ 'glacierJobDescription' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'gjdArchiveId'
--
-- * 'gjdSHA256TreeHash'
--
-- * 'gjdJobId'
--
-- * 'gjdRetrievalByteRange'
--
-- * 'gjdInventoryRetrievalParameters'
--
-- * 'gjdAction'
--
-- * 'gjdJobDescription'
--
-- * 'gjdSNSTopic'
--
-- * 'gjdVaultARN'
--
-- * 'gjdStatusMessage'
--
-- * 'gjdArchiveSHA256TreeHash'
--
-- * 'gjdCreationDate'
--
-- * 'gjdCompleted'
--
-- * 'gjdCompletionDate'
--
-- * 'gjdArchiveSizeInBytes'
--
-- * 'gjdStatusCode'
--
-- * 'gjdInventorySizeInBytes'
data GlacierJobDescription = GlacierJobDescription'{_gjdArchiveId :: Maybe Text, _gjdSHA256TreeHash :: Maybe Text, _gjdJobId :: Maybe Text, _gjdRetrievalByteRange :: Maybe Text, _gjdInventoryRetrievalParameters :: Maybe InventoryRetrievalJobDescription, _gjdAction :: Maybe ActionCode, _gjdJobDescription :: Maybe Text, _gjdSNSTopic :: Maybe Text, _gjdVaultARN :: Maybe Text, _gjdStatusMessage :: Maybe Text, _gjdArchiveSHA256TreeHash :: Maybe Text, _gjdCreationDate :: Maybe Text, _gjdCompleted :: Maybe Bool, _gjdCompletionDate :: Maybe Text, _gjdArchiveSizeInBytes :: Maybe Integer, _gjdStatusCode :: Maybe StatusCode, _gjdInventorySizeInBytes :: Maybe Integer} deriving (Eq, Read, Show)

-- | 'GlacierJobDescription' smart constructor.
glacierJobDescription :: GlacierJobDescription
glacierJobDescription = GlacierJobDescription'{_gjdArchiveId = Nothing, _gjdSHA256TreeHash = Nothing, _gjdJobId = Nothing, _gjdRetrievalByteRange = Nothing, _gjdInventoryRetrievalParameters = Nothing, _gjdAction = Nothing, _gjdJobDescription = Nothing, _gjdSNSTopic = Nothing, _gjdVaultARN = Nothing, _gjdStatusMessage = Nothing, _gjdArchiveSHA256TreeHash = Nothing, _gjdCreationDate = Nothing, _gjdCompleted = Nothing, _gjdCompletionDate = Nothing, _gjdArchiveSizeInBytes = Nothing, _gjdStatusCode = Nothing, _gjdInventorySizeInBytes = Nothing};

-- | For an ArchiveRetrieval job, this is the archive ID requested for
-- download. Otherwise, this field is null.
gjdArchiveId :: Lens' GlacierJobDescription (Maybe Text)
gjdArchiveId = lens _gjdArchiveId (\ s a -> s{_gjdArchiveId = a});

-- | For an ArchiveRetrieval job, it is the checksum of the archive.
-- Otherwise, the value is null.
--
-- The SHA256 tree hash value for the requested range of an archive. If the
-- Initiate a Job request for an archive specified a tree-hash aligned
-- range, then this field returns a value.
--
-- For the specific case when the whole archive is retrieved, this value is
-- the same as the ArchiveSHA256TreeHash value.
--
-- This field is null in the following situations:
--
-- -   Archive retrieval jobs that specify a range that is not tree-hash
--     aligned.
--
-- -   Archival jobs that specify a range that is equal to the whole
--     archive and the job status is InProgress.
--
-- -   Inventory jobs.
--
gjdSHA256TreeHash :: Lens' GlacierJobDescription (Maybe Text)
gjdSHA256TreeHash = lens _gjdSHA256TreeHash (\ s a -> s{_gjdSHA256TreeHash = a});

-- | An opaque string that identifies an Amazon Glacier job.
gjdJobId :: Lens' GlacierJobDescription (Maybe Text)
gjdJobId = lens _gjdJobId (\ s a -> s{_gjdJobId = a});

-- | The retrieved byte range for archive retrieval jobs in the form
-- \"/StartByteValue/-/EndByteValue/\" If no range was specified in the
-- archive retrieval, then the whole archive is retrieved and
-- /StartByteValue/ equals 0 and /EndByteValue/ equals the size of the
-- archive minus 1. For inventory retrieval jobs this field is null.
gjdRetrievalByteRange :: Lens' GlacierJobDescription (Maybe Text)
gjdRetrievalByteRange = lens _gjdRetrievalByteRange (\ s a -> s{_gjdRetrievalByteRange = a});

-- | Parameters used for range inventory retrieval.
gjdInventoryRetrievalParameters :: Lens' GlacierJobDescription (Maybe InventoryRetrievalJobDescription)
gjdInventoryRetrievalParameters = lens _gjdInventoryRetrievalParameters (\ s a -> s{_gjdInventoryRetrievalParameters = a});

-- | The job type. It is either ArchiveRetrieval or InventoryRetrieval.
gjdAction :: Lens' GlacierJobDescription (Maybe ActionCode)
gjdAction = lens _gjdAction (\ s a -> s{_gjdAction = a});

-- | The job description you provided when you initiated the job.
gjdJobDescription :: Lens' GlacierJobDescription (Maybe Text)
gjdJobDescription = lens _gjdJobDescription (\ s a -> s{_gjdJobDescription = a});

-- | An Amazon Simple Notification Service (Amazon SNS) topic that receives
-- notification.
gjdSNSTopic :: Lens' GlacierJobDescription (Maybe Text)
gjdSNSTopic = lens _gjdSNSTopic (\ s a -> s{_gjdSNSTopic = a});

-- | The Amazon Resource Name (ARN) of the vault from which the archive
-- retrieval was requested.
gjdVaultARN :: Lens' GlacierJobDescription (Maybe Text)
gjdVaultARN = lens _gjdVaultARN (\ s a -> s{_gjdVaultARN = a});

-- | A friendly message that describes the job status.
gjdStatusMessage :: Lens' GlacierJobDescription (Maybe Text)
gjdStatusMessage = lens _gjdStatusMessage (\ s a -> s{_gjdStatusMessage = a});

-- | The SHA256 tree hash of the entire archive for an archive retrieval. For
-- inventory retrieval jobs, this field is null.
gjdArchiveSHA256TreeHash :: Lens' GlacierJobDescription (Maybe Text)
gjdArchiveSHA256TreeHash = lens _gjdArchiveSHA256TreeHash (\ s a -> s{_gjdArchiveSHA256TreeHash = a});

-- | The UTC date when the job was created. A string representation of ISO
-- 8601 date format, for example, \"2012-03-20T17:03:43.221Z\".
gjdCreationDate :: Lens' GlacierJobDescription (Maybe Text)
gjdCreationDate = lens _gjdCreationDate (\ s a -> s{_gjdCreationDate = a});

-- | The job status. When a job is completed, you get the job\'s output.
gjdCompleted :: Lens' GlacierJobDescription (Maybe Bool)
gjdCompleted = lens _gjdCompleted (\ s a -> s{_gjdCompleted = a});

-- | The UTC time that the archive retrieval request completed. While the job
-- is in progress, the value will be null.
gjdCompletionDate :: Lens' GlacierJobDescription (Maybe Text)
gjdCompletionDate = lens _gjdCompletionDate (\ s a -> s{_gjdCompletionDate = a});

-- | For an ArchiveRetrieval job, this is the size in bytes of the archive
-- being requested for download. For the InventoryRetrieval job, the value
-- is null.
gjdArchiveSizeInBytes :: Lens' GlacierJobDescription (Maybe Integer)
gjdArchiveSizeInBytes = lens _gjdArchiveSizeInBytes (\ s a -> s{_gjdArchiveSizeInBytes = a});

-- | The status code can be InProgress, Succeeded, or Failed, and indicates
-- the status of the job.
gjdStatusCode :: Lens' GlacierJobDescription (Maybe StatusCode)
gjdStatusCode = lens _gjdStatusCode (\ s a -> s{_gjdStatusCode = a});

-- | For an InventoryRetrieval job, this is the size in bytes of the
-- inventory requested for download. For the ArchiveRetrieval job, the
-- value is null.
gjdInventorySizeInBytes :: Lens' GlacierJobDescription (Maybe Integer)
gjdInventorySizeInBytes = lens _gjdInventorySizeInBytes (\ s a -> s{_gjdInventorySizeInBytes = a});

instance FromJSON GlacierJobDescription where
        parseJSON
          = withObject "GlacierJobDescription"
              (\ x ->
                 GlacierJobDescription' <$>
                   x .:? "ArchiveId" <*> x .:? "SHA256TreeHash" <*>
                     x .:? "JobId"
                     <*> x .:? "RetrievalByteRange"
                     <*> x .:? "InventoryRetrievalParameters"
                     <*> x .:? "Action"
                     <*> x .:? "JobDescription"
                     <*> x .:? "SNSTopic"
                     <*> x .:? "VaultARN"
                     <*> x .:? "StatusMessage"
                     <*> x .:? "ArchiveSHA256TreeHash"
                     <*> x .:? "CreationDate"
                     <*> x .:? "Completed"
                     <*> x .:? "CompletionDate"
                     <*> x .:? "ArchiveSizeInBytes"
                     <*> x .:? "StatusCode"
                     <*> x .:? "InventorySizeInBytes")

-- | /See:/ 'inventoryRetrievalJobDescription' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'irjdFormat'
--
-- * 'irjdEndDate'
--
-- * 'irjdStartDate'
--
-- * 'irjdMarker'
--
-- * 'irjdLimit'
data InventoryRetrievalJobDescription = InventoryRetrievalJobDescription'{_irjdFormat :: Maybe Text, _irjdEndDate :: Maybe Text, _irjdStartDate :: Maybe Text, _irjdMarker :: Maybe Text, _irjdLimit :: Maybe Text} deriving (Eq, Read, Show)

-- | 'InventoryRetrievalJobDescription' smart constructor.
inventoryRetrievalJobDescription :: InventoryRetrievalJobDescription
inventoryRetrievalJobDescription = InventoryRetrievalJobDescription'{_irjdFormat = Nothing, _irjdEndDate = Nothing, _irjdStartDate = Nothing, _irjdMarker = Nothing, _irjdLimit = Nothing};

-- | The output format for the vault inventory list, which is set by the
-- __InitiateJob__ request when initiating a job to retrieve a vault
-- inventory. Valid values are \"CSV\" and \"JSON\".
irjdFormat :: Lens' InventoryRetrievalJobDescription (Maybe Text)
irjdFormat = lens _irjdFormat (\ s a -> s{_irjdFormat = a});

-- | The end of the date range in UTC for vault inventory retrieval that
-- includes archives created before this date. A string representation of
-- ISO 8601 date format, for example, 2013-03-20T17:03:43Z.
irjdEndDate :: Lens' InventoryRetrievalJobDescription (Maybe Text)
irjdEndDate = lens _irjdEndDate (\ s a -> s{_irjdEndDate = a});

-- | The start of the date range in UTC for vault inventory retrieval that
-- includes archives created on or after this date. A string representation
-- of ISO 8601 date format, for example, 2013-03-20T17:03:43Z.
irjdStartDate :: Lens' InventoryRetrievalJobDescription (Maybe Text)
irjdStartDate = lens _irjdStartDate (\ s a -> s{_irjdStartDate = a});

-- | An opaque string that represents where to continue pagination of the
-- vault inventory retrieval results. You use the marker in a new
-- __InitiateJob__ request to obtain additional inventory items. If there
-- are no more inventory items, this value is @null@. For more information,
-- see
-- <http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering Range Inventory Retrieval>.
irjdMarker :: Lens' InventoryRetrievalJobDescription (Maybe Text)
irjdMarker = lens _irjdMarker (\ s a -> s{_irjdMarker = a});

-- | Specifies the maximum number of inventory items returned per vault
-- inventory retrieval request. This limit is set when initiating the job
-- with the a __InitiateJob__ request.
irjdLimit :: Lens' InventoryRetrievalJobDescription (Maybe Text)
irjdLimit = lens _irjdLimit (\ s a -> s{_irjdLimit = a});

instance FromJSON InventoryRetrievalJobDescription
         where
        parseJSON
          = withObject "InventoryRetrievalJobDescription"
              (\ x ->
                 InventoryRetrievalJobDescription' <$>
                   x .:? "Format" <*> x .:? "EndDate" <*>
                     x .:? "StartDate"
                     <*> x .:? "Marker"
                     <*> x .:? "Limit")

-- | /See:/ 'inventoryRetrievalJobInput' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'irjiEndDate'
--
-- * 'irjiStartDate'
--
-- * 'irjiMarker'
--
-- * 'irjiLimit'
data InventoryRetrievalJobInput = InventoryRetrievalJobInput'{_irjiEndDate :: Maybe Text, _irjiStartDate :: Maybe Text, _irjiMarker :: Maybe Text, _irjiLimit :: Maybe Text} deriving (Eq, Read, Show)

-- | 'InventoryRetrievalJobInput' smart constructor.
inventoryRetrievalJobInput :: InventoryRetrievalJobInput
inventoryRetrievalJobInput = InventoryRetrievalJobInput'{_irjiEndDate = Nothing, _irjiStartDate = Nothing, _irjiMarker = Nothing, _irjiLimit = Nothing};

-- | The end of the date range in UTC for vault inventory retrieval that
-- includes archives created before this date. A string representation of
-- ISO 8601 date format, for example, 2013-03-20T17:03:43Z.
irjiEndDate :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiEndDate = lens _irjiEndDate (\ s a -> s{_irjiEndDate = a});

-- | The start of the date range in UTC for vault inventory retrieval that
-- includes archives created on or after this date. A string representation
-- of ISO 8601 date format, for example, 2013-03-20T17:03:43Z.
irjiStartDate :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiStartDate = lens _irjiStartDate (\ s a -> s{_irjiStartDate = a});

-- | An opaque string that represents where to continue pagination of the
-- vault inventory retrieval results. You use the marker in a new
-- __InitiateJob__ request to obtain additional inventory items. If there
-- are no more inventory items, this value is @null@.
irjiMarker :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiMarker = lens _irjiMarker (\ s a -> s{_irjiMarker = a});

-- | Specifies the maximum number of inventory items returned per vault
-- inventory retrieval request. Valid values are greater than or equal to
-- 1.
irjiLimit :: Lens' InventoryRetrievalJobInput (Maybe Text)
irjiLimit = lens _irjiLimit (\ s a -> s{_irjiLimit = a});

instance ToJSON InventoryRetrievalJobInput where
        toJSON InventoryRetrievalJobInput'{..}
          = object
              ["EndDate" .= _irjiEndDate,
               "StartDate" .= _irjiStartDate,
               "Marker" .= _irjiMarker, "Limit" .= _irjiLimit]

-- | /See:/ 'jobParameters' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'jpArchiveId'
--
-- * 'jpRetrievalByteRange'
--
-- * 'jpFormat'
--
-- * 'jpInventoryRetrievalParameters'
--
-- * 'jpSNSTopic'
--
-- * 'jpType'
--
-- * 'jpDescription'
data JobParameters = JobParameters'{_jpArchiveId :: Maybe Text, _jpRetrievalByteRange :: Maybe Text, _jpFormat :: Maybe Text, _jpInventoryRetrievalParameters :: Maybe InventoryRetrievalJobInput, _jpSNSTopic :: Maybe Text, _jpType :: Maybe Text, _jpDescription :: Maybe Text} deriving (Eq, Read, Show)

-- | 'JobParameters' smart constructor.
jobParameters :: JobParameters
jobParameters = JobParameters'{_jpArchiveId = Nothing, _jpRetrievalByteRange = Nothing, _jpFormat = Nothing, _jpInventoryRetrievalParameters = Nothing, _jpSNSTopic = Nothing, _jpType = Nothing, _jpDescription = Nothing};

-- | The ID of the archive that you want to retrieve. This field is required
-- only if @Type@ is set to archive-retrieval. An error occurs if you
-- specify this request parameter for an inventory retrieval job request.
jpArchiveId :: Lens' JobParameters (Maybe Text)
jpArchiveId = lens _jpArchiveId (\ s a -> s{_jpArchiveId = a});

-- | The byte range to retrieve for an archive retrieval. in the form
-- \"/StartByteValue/-/EndByteValue/\" If not specified, the whole archive
-- is retrieved. If specified, the byte range must be megabyte (1024*1024)
-- aligned which means that /StartByteValue/ must be divisible by 1 MB and
-- /EndByteValue/ plus 1 must be divisible by 1 MB or be the end of the
-- archive specified as the archive byte size value minus 1. If
-- RetrievalByteRange is not megabyte aligned, this operation returns a 400
-- response.
--
-- An error occurs if you specify this field for an inventory retrieval job
-- request.
jpRetrievalByteRange :: Lens' JobParameters (Maybe Text)
jpRetrievalByteRange = lens _jpRetrievalByteRange (\ s a -> s{_jpRetrievalByteRange = a});

-- | When initiating a job to retrieve a vault inventory, you can optionally
-- add this parameter to your request to specify the output format. If you
-- are initiating an inventory job and do not specify a Format field, JSON
-- is the default format. Valid values are \"CSV\" and \"JSON\".
jpFormat :: Lens' JobParameters (Maybe Text)
jpFormat = lens _jpFormat (\ s a -> s{_jpFormat = a});

-- | Input parameters used for range inventory retrieval.
jpInventoryRetrievalParameters :: Lens' JobParameters (Maybe InventoryRetrievalJobInput)
jpInventoryRetrievalParameters = lens _jpInventoryRetrievalParameters (\ s a -> s{_jpInventoryRetrievalParameters = a});

-- | The Amazon SNS topic ARN to which Amazon Glacier sends a notification
-- when the job is completed and the output is ready for you to download.
-- The specified topic publishes the notification to its subscribers. The
-- SNS topic must exist.
jpSNSTopic :: Lens' JobParameters (Maybe Text)
jpSNSTopic = lens _jpSNSTopic (\ s a -> s{_jpSNSTopic = a});

-- | The job type. You can initiate a job to retrieve an archive or get an
-- inventory of a vault. Valid values are \"archive-retrieval\" and
-- \"inventory-retrieval\".
jpType :: Lens' JobParameters (Maybe Text)
jpType = lens _jpType (\ s a -> s{_jpType = a});

-- | The optional description for the job. The description must be less than
-- or equal to 1,024 bytes. The allowable characters are 7-bit ASCII
-- without control codes-specifically, ASCII values 32-126 decimal or
-- 0x20-0x7E hexadecimal.
jpDescription :: Lens' JobParameters (Maybe Text)
jpDescription = lens _jpDescription (\ s a -> s{_jpDescription = a});

instance ToJSON JobParameters where
        toJSON JobParameters'{..}
          = object
              ["ArchiveId" .= _jpArchiveId,
               "RetrievalByteRange" .= _jpRetrievalByteRange,
               "Format" .= _jpFormat,
               "InventoryRetrievalParameters" .=
                 _jpInventoryRetrievalParameters,
               "SNSTopic" .= _jpSNSTopic, "Type" .= _jpType,
               "Description" .= _jpDescription]

-- | /See:/ 'partListElement' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'pleSHA256TreeHash'
--
-- * 'pleRangeInBytes'
data PartListElement = PartListElement'{_pleSHA256TreeHash :: Maybe Text, _pleRangeInBytes :: Maybe Text} deriving (Eq, Read, Show)

-- | 'PartListElement' smart constructor.
partListElement :: PartListElement
partListElement = PartListElement'{_pleSHA256TreeHash = Nothing, _pleRangeInBytes = Nothing};

-- | The SHA256 tree hash value that Amazon Glacier calculated for the part.
-- This field is never @null@.
pleSHA256TreeHash :: Lens' PartListElement (Maybe Text)
pleSHA256TreeHash = lens _pleSHA256TreeHash (\ s a -> s{_pleSHA256TreeHash = a});

-- | The byte range of a part, inclusive of the upper value of the range.
pleRangeInBytes :: Lens' PartListElement (Maybe Text)
pleRangeInBytes = lens _pleRangeInBytes (\ s a -> s{_pleRangeInBytes = a});

instance FromJSON PartListElement where
        parseJSON
          = withObject "PartListElement"
              (\ x ->
                 PartListElement' <$>
                   x .:? "SHA256TreeHash" <*> x .:? "RangeInBytes")

data StatusCode = InProgress | Succeeded | Failed deriving (Eq, Ord, Read, Show, Enum, Generic)

instance FromText StatusCode where
    parser = takeLowerText >>= \case
        "Failed" -> pure Failed
        "InProgress" -> pure InProgress
        "Succeeded" -> pure Succeeded
        e -> fail ("Failure parsing StatusCode from " ++ show e)

instance ToText StatusCode where
    toText = \case
        Failed -> "Failed"
        InProgress -> "InProgress"
        Succeeded -> "Succeeded"

instance Hashable StatusCode
instance ToQuery StatusCode
instance ToHeader StatusCode

instance FromJSON StatusCode where
    parseJSON = parseJSONText "StatusCode"

-- | /See:/ 'uploadListElement' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'uleMultipartUploadId'
--
-- * 'uleArchiveDescription'
--
-- * 'ulePartSizeInBytes'
--
-- * 'uleVaultARN'
--
-- * 'uleCreationDate'
data UploadListElement = UploadListElement'{_uleMultipartUploadId :: Maybe Text, _uleArchiveDescription :: Maybe Text, _ulePartSizeInBytes :: Maybe Integer, _uleVaultARN :: Maybe Text, _uleCreationDate :: Maybe Text} deriving (Eq, Read, Show)

-- | 'UploadListElement' smart constructor.
uploadListElement :: UploadListElement
uploadListElement = UploadListElement'{_uleMultipartUploadId = Nothing, _uleArchiveDescription = Nothing, _ulePartSizeInBytes = Nothing, _uleVaultARN = Nothing, _uleCreationDate = Nothing};

-- | The ID of a multipart upload.
uleMultipartUploadId :: Lens' UploadListElement (Maybe Text)
uleMultipartUploadId = lens _uleMultipartUploadId (\ s a -> s{_uleMultipartUploadId = a});

-- | The description of the archive that was specified in the Initiate
-- Multipart Upload request.
uleArchiveDescription :: Lens' UploadListElement (Maybe Text)
uleArchiveDescription = lens _uleArchiveDescription (\ s a -> s{_uleArchiveDescription = a});

-- | The part size, in bytes, specified in the Initiate Multipart Upload
-- request. This is the size of all the parts in the upload except the last
-- part, which may be smaller than this size.
ulePartSizeInBytes :: Lens' UploadListElement (Maybe Integer)
ulePartSizeInBytes = lens _ulePartSizeInBytes (\ s a -> s{_ulePartSizeInBytes = a});

-- | The Amazon Resource Name (ARN) of the vault that contains the archive.
uleVaultARN :: Lens' UploadListElement (Maybe Text)
uleVaultARN = lens _uleVaultARN (\ s a -> s{_uleVaultARN = a});

-- | The UTC time at which the multipart upload was initiated.
uleCreationDate :: Lens' UploadListElement (Maybe Text)
uleCreationDate = lens _uleCreationDate (\ s a -> s{_uleCreationDate = a});

instance FromJSON UploadListElement where
        parseJSON
          = withObject "UploadListElement"
              (\ x ->
                 UploadListElement' <$>
                   x .:? "MultipartUploadId" <*>
                     x .:? "ArchiveDescription"
                     <*> x .:? "PartSizeInBytes"
                     <*> x .:? "VaultARN"
                     <*> x .:? "CreationDate")

-- | /See:/ 'vaultAccessPolicy' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'vapPolicy'
newtype VaultAccessPolicy = VaultAccessPolicy'{_vapPolicy :: Maybe Text} deriving (Eq, Read, Show)

-- | 'VaultAccessPolicy' smart constructor.
vaultAccessPolicy :: VaultAccessPolicy
vaultAccessPolicy = VaultAccessPolicy'{_vapPolicy = Nothing};

-- | The vault access policy.
vapPolicy :: Lens' VaultAccessPolicy (Maybe Text)
vapPolicy = lens _vapPolicy (\ s a -> s{_vapPolicy = a});

instance FromJSON VaultAccessPolicy where
        parseJSON
          = withObject "VaultAccessPolicy"
              (\ x -> VaultAccessPolicy' <$> x .:? "Policy")

instance ToJSON VaultAccessPolicy where
        toJSON VaultAccessPolicy'{..}
          = object ["Policy" .= _vapPolicy]

-- | /See:/ 'vaultNotificationConfig' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'vncSNSTopic'
--
-- * 'vncEvents'
data VaultNotificationConfig = VaultNotificationConfig'{_vncSNSTopic :: Maybe Text, _vncEvents :: Maybe [Text]} deriving (Eq, Read, Show)

-- | 'VaultNotificationConfig' smart constructor.
vaultNotificationConfig :: VaultNotificationConfig
vaultNotificationConfig = VaultNotificationConfig'{_vncSNSTopic = Nothing, _vncEvents = Nothing};

-- | The Amazon Simple Notification Service (Amazon SNS) topic Amazon
-- Resource Name (ARN).
vncSNSTopic :: Lens' VaultNotificationConfig (Maybe Text)
vncSNSTopic = lens _vncSNSTopic (\ s a -> s{_vncSNSTopic = a});

-- | A list of one or more events for which Amazon Glacier will send a
-- notification to the specified Amazon SNS topic.
vncEvents :: Lens' VaultNotificationConfig (Maybe [Text])
vncEvents = lens _vncEvents (\ s a -> s{_vncEvents = a});

instance FromJSON VaultNotificationConfig where
        parseJSON
          = withObject "VaultNotificationConfig"
              (\ x ->
                 VaultNotificationConfig' <$>
                   x .:? "SNSTopic" <*> x .:? "Events" .!= mempty)

instance ToJSON VaultNotificationConfig where
        toJSON VaultNotificationConfig'{..}
          = object
              ["SNSTopic" .= _vncSNSTopic, "Events" .= _vncEvents]
