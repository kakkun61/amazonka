{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.PinpointEmail.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.PinpointEmail.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _MessageRejected,
    _MailFromDomainNotVerifiedException,
    _NotFoundException,
    _TooManyRequestsException,
    _ConcurrentModificationException,
    _AccountSuspendedException,
    _SendingPausedException,
    _BadRequestException,
    _AlreadyExistsException,
    _LimitExceededException,

    -- * BehaviorOnMxFailure
    BehaviorOnMxFailure (..),

    -- * DeliverabilityDashboardAccountStatus
    DeliverabilityDashboardAccountStatus (..),

    -- * DeliverabilityTestStatus
    DeliverabilityTestStatus (..),

    -- * DimensionValueSource
    DimensionValueSource (..),

    -- * DkimStatus
    DkimStatus (..),

    -- * EventType
    EventType (..),

    -- * IdentityType
    IdentityType (..),

    -- * MailFromDomainStatus
    MailFromDomainStatus (..),

    -- * TlsPolicy
    TlsPolicy (..),

    -- * WarmupStatus
    WarmupStatus (..),

    -- * BlacklistEntry
    BlacklistEntry (..),
    newBlacklistEntry,
    blacklistEntry_listingTime,
    blacklistEntry_rblName,
    blacklistEntry_description,

    -- * Body
    Body (..),
    newBody,
    body_text,
    body_html,

    -- * CloudWatchDestination
    CloudWatchDestination (..),
    newCloudWatchDestination,
    cloudWatchDestination_dimensionConfigurations,

    -- * CloudWatchDimensionConfiguration
    CloudWatchDimensionConfiguration (..),
    newCloudWatchDimensionConfiguration,
    cloudWatchDimensionConfiguration_dimensionName,
    cloudWatchDimensionConfiguration_dimensionValueSource,
    cloudWatchDimensionConfiguration_defaultDimensionValue,

    -- * Content
    Content (..),
    newContent,
    content_charset,
    content_data,

    -- * DailyVolume
    DailyVolume (..),
    newDailyVolume,
    dailyVolume_domainIspPlacements,
    dailyVolume_startDate,
    dailyVolume_volumeStatistics,

    -- * DedicatedIp
    DedicatedIp (..),
    newDedicatedIp,
    dedicatedIp_poolName,
    dedicatedIp_ip,
    dedicatedIp_warmupStatus,
    dedicatedIp_warmupPercentage,

    -- * DeliverabilityTestReport
    DeliverabilityTestReport (..),
    newDeliverabilityTestReport,
    deliverabilityTestReport_subject,
    deliverabilityTestReport_fromEmailAddress,
    deliverabilityTestReport_createDate,
    deliverabilityTestReport_reportId,
    deliverabilityTestReport_reportName,
    deliverabilityTestReport_deliverabilityTestStatus,

    -- * DeliveryOptions
    DeliveryOptions (..),
    newDeliveryOptions,
    deliveryOptions_sendingPoolName,
    deliveryOptions_tlsPolicy,

    -- * Destination
    Destination (..),
    newDestination,
    destination_bccAddresses,
    destination_ccAddresses,
    destination_toAddresses,

    -- * DkimAttributes
    DkimAttributes (..),
    newDkimAttributes,
    dkimAttributes_status,
    dkimAttributes_tokens,
    dkimAttributes_signingEnabled,

    -- * DomainDeliverabilityCampaign
    DomainDeliverabilityCampaign (..),
    newDomainDeliverabilityCampaign,
    domainDeliverabilityCampaign_spamCount,
    domainDeliverabilityCampaign_subject,
    domainDeliverabilityCampaign_esps,
    domainDeliverabilityCampaign_fromAddress,
    domainDeliverabilityCampaign_deleteRate,
    domainDeliverabilityCampaign_campaignId,
    domainDeliverabilityCampaign_sendingIps,
    domainDeliverabilityCampaign_firstSeenDateTime,
    domainDeliverabilityCampaign_inboxCount,
    domainDeliverabilityCampaign_readDeleteRate,
    domainDeliverabilityCampaign_projectedVolume,
    domainDeliverabilityCampaign_imageUrl,
    domainDeliverabilityCampaign_readRate,
    domainDeliverabilityCampaign_lastSeenDateTime,

    -- * DomainDeliverabilityTrackingOption
    DomainDeliverabilityTrackingOption (..),
    newDomainDeliverabilityTrackingOption,
    domainDeliverabilityTrackingOption_domain,
    domainDeliverabilityTrackingOption_subscriptionStartDate,
    domainDeliverabilityTrackingOption_inboxPlacementTrackingOption,

    -- * DomainIspPlacement
    DomainIspPlacement (..),
    newDomainIspPlacement,
    domainIspPlacement_spamPercentage,
    domainIspPlacement_inboxRawCount,
    domainIspPlacement_ispName,
    domainIspPlacement_inboxPercentage,
    domainIspPlacement_spamRawCount,

    -- * EmailContent
    EmailContent (..),
    newEmailContent,
    emailContent_raw,
    emailContent_simple,
    emailContent_template,

    -- * EventDestination
    EventDestination (..),
    newEventDestination,
    eventDestination_pinpointDestination,
    eventDestination_enabled,
    eventDestination_kinesisFirehoseDestination,
    eventDestination_cloudWatchDestination,
    eventDestination_snsDestination,
    eventDestination_name,
    eventDestination_matchingEventTypes,

    -- * EventDestinationDefinition
    EventDestinationDefinition (..),
    newEventDestinationDefinition,
    eventDestinationDefinition_matchingEventTypes,
    eventDestinationDefinition_pinpointDestination,
    eventDestinationDefinition_enabled,
    eventDestinationDefinition_kinesisFirehoseDestination,
    eventDestinationDefinition_cloudWatchDestination,
    eventDestinationDefinition_snsDestination,

    -- * IdentityInfo
    IdentityInfo (..),
    newIdentityInfo,
    identityInfo_identityType,
    identityInfo_identityName,
    identityInfo_sendingEnabled,

    -- * InboxPlacementTrackingOption
    InboxPlacementTrackingOption (..),
    newInboxPlacementTrackingOption,
    inboxPlacementTrackingOption_trackedIsps,
    inboxPlacementTrackingOption_global,

    -- * IspPlacement
    IspPlacement (..),
    newIspPlacement,
    ispPlacement_placementStatistics,
    ispPlacement_ispName,

    -- * KinesisFirehoseDestination
    KinesisFirehoseDestination (..),
    newKinesisFirehoseDestination,
    kinesisFirehoseDestination_iamRoleArn,
    kinesisFirehoseDestination_deliveryStreamArn,

    -- * MailFromAttributes
    MailFromAttributes (..),
    newMailFromAttributes,
    mailFromAttributes_mailFromDomain,
    mailFromAttributes_mailFromDomainStatus,
    mailFromAttributes_behaviorOnMxFailure,

    -- * Message
    Message (..),
    newMessage,
    message_subject,
    message_body,

    -- * MessageTag
    MessageTag (..),
    newMessageTag,
    messageTag_name,
    messageTag_value,

    -- * OverallVolume
    OverallVolume (..),
    newOverallVolume,
    overallVolume_domainIspPlacements,
    overallVolume_volumeStatistics,
    overallVolume_readRatePercent,

    -- * PinpointDestination
    PinpointDestination (..),
    newPinpointDestination,
    pinpointDestination_applicationArn,

    -- * PlacementStatistics
    PlacementStatistics (..),
    newPlacementStatistics,
    placementStatistics_missingPercentage,
    placementStatistics_spamPercentage,
    placementStatistics_spfPercentage,
    placementStatistics_dkimPercentage,
    placementStatistics_inboxPercentage,

    -- * RawMessage
    RawMessage (..),
    newRawMessage,
    rawMessage_data,

    -- * ReputationOptions
    ReputationOptions (..),
    newReputationOptions,
    reputationOptions_lastFreshStart,
    reputationOptions_reputationMetricsEnabled,

    -- * SendQuota
    SendQuota (..),
    newSendQuota,
    sendQuota_maxSendRate,
    sendQuota_sentLast24Hours,
    sendQuota_max24HourSend,

    -- * SendingOptions
    SendingOptions (..),
    newSendingOptions,
    sendingOptions_sendingEnabled,

    -- * SnsDestination
    SnsDestination (..),
    newSnsDestination,
    snsDestination_topicArn,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * Template
    Template (..),
    newTemplate,
    template_templateArn,
    template_templateData,

    -- * TrackingOptions
    TrackingOptions (..),
    newTrackingOptions,
    trackingOptions_customRedirectDomain,

    -- * VolumeStatistics
    VolumeStatistics (..),
    newVolumeStatistics,
    volumeStatistics_inboxRawCount,
    volumeStatistics_projectedSpam,
    volumeStatistics_projectedInbox,
    volumeStatistics_spamRawCount,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.PinpointEmail.Types.BehaviorOnMxFailure
import Network.AWS.PinpointEmail.Types.BlacklistEntry
import Network.AWS.PinpointEmail.Types.Body
import Network.AWS.PinpointEmail.Types.CloudWatchDestination
import Network.AWS.PinpointEmail.Types.CloudWatchDimensionConfiguration
import Network.AWS.PinpointEmail.Types.Content
import Network.AWS.PinpointEmail.Types.DailyVolume
import Network.AWS.PinpointEmail.Types.DedicatedIp
import Network.AWS.PinpointEmail.Types.DeliverabilityDashboardAccountStatus
import Network.AWS.PinpointEmail.Types.DeliverabilityTestReport
import Network.AWS.PinpointEmail.Types.DeliverabilityTestStatus
import Network.AWS.PinpointEmail.Types.DeliveryOptions
import Network.AWS.PinpointEmail.Types.Destination
import Network.AWS.PinpointEmail.Types.DimensionValueSource
import Network.AWS.PinpointEmail.Types.DkimAttributes
import Network.AWS.PinpointEmail.Types.DkimStatus
import Network.AWS.PinpointEmail.Types.DomainDeliverabilityCampaign
import Network.AWS.PinpointEmail.Types.DomainDeliverabilityTrackingOption
import Network.AWS.PinpointEmail.Types.DomainIspPlacement
import Network.AWS.PinpointEmail.Types.EmailContent
import Network.AWS.PinpointEmail.Types.EventDestination
import Network.AWS.PinpointEmail.Types.EventDestinationDefinition
import Network.AWS.PinpointEmail.Types.EventType
import Network.AWS.PinpointEmail.Types.IdentityInfo
import Network.AWS.PinpointEmail.Types.IdentityType
import Network.AWS.PinpointEmail.Types.InboxPlacementTrackingOption
import Network.AWS.PinpointEmail.Types.IspPlacement
import Network.AWS.PinpointEmail.Types.KinesisFirehoseDestination
import Network.AWS.PinpointEmail.Types.MailFromAttributes
import Network.AWS.PinpointEmail.Types.MailFromDomainStatus
import Network.AWS.PinpointEmail.Types.Message
import Network.AWS.PinpointEmail.Types.MessageTag
import Network.AWS.PinpointEmail.Types.OverallVolume
import Network.AWS.PinpointEmail.Types.PinpointDestination
import Network.AWS.PinpointEmail.Types.PlacementStatistics
import Network.AWS.PinpointEmail.Types.RawMessage
import Network.AWS.PinpointEmail.Types.ReputationOptions
import Network.AWS.PinpointEmail.Types.SendQuota
import Network.AWS.PinpointEmail.Types.SendingOptions
import Network.AWS.PinpointEmail.Types.SnsDestination
import Network.AWS.PinpointEmail.Types.Tag
import Network.AWS.PinpointEmail.Types.Template
import Network.AWS.PinpointEmail.Types.TlsPolicy
import Network.AWS.PinpointEmail.Types.TrackingOptions
import Network.AWS.PinpointEmail.Types.VolumeStatistics
import Network.AWS.PinpointEmail.Types.WarmupStatus
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2018-07-26@ of the Amazon Pinpoint Email Service SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core._serviceAbbrev = "PinpointEmail",
      Core._serviceSigner = Sign.v4,
      Core._serviceEndpointPrefix = "email",
      Core._serviceSigningName = "ses",
      Core._serviceVersion = "2018-07-26",
      Core._serviceEndpoint =
        Core.defaultEndpoint defaultService,
      Core._serviceTimeout = Prelude.Just 70,
      Core._serviceCheck = Core.statusSuccess,
      Core._serviceError =
        Core.parseJSONError "PinpointEmail",
      Core._serviceRetry = retry
    }
  where
    retry =
      Core.Exponential
        { Core._retryBase = 5.0e-2,
          Core._retryGrowth = 2,
          Core._retryAttempts = 5,
          Core._retryCheck = check
        }
    check e
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Core.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Core.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Core.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has (Core.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Prelude.otherwise = Prelude.Nothing

-- | The message can\'t be sent because it contains invalid content.
_MessageRejected :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MessageRejected =
  Core._MatchServiceError
    defaultService
    "MessageRejected"
    Prelude.. Core.hasStatus 400

-- | The message can\'t be sent because the sending domain isn\'t verified.
_MailFromDomainNotVerifiedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_MailFromDomainNotVerifiedException =
  Core._MatchServiceError
    defaultService
    "MailFromDomainNotVerifiedException"
    Prelude.. Core.hasStatus 400

-- | The resource you attempted to access doesn\'t exist.
_NotFoundException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_NotFoundException =
  Core._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Core.hasStatus 404

-- | Too many requests have been made to the operation.
_TooManyRequestsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_TooManyRequestsException =
  Core._MatchServiceError
    defaultService
    "TooManyRequestsException"
    Prelude.. Core.hasStatus 429

-- | The resource is being modified by another operation or thread.
_ConcurrentModificationException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_ConcurrentModificationException =
  Core._MatchServiceError
    defaultService
    "ConcurrentModificationException"
    Prelude.. Core.hasStatus 500

-- | The message can\'t be sent because the account\'s ability to send email
-- has been permanently restricted.
_AccountSuspendedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AccountSuspendedException =
  Core._MatchServiceError
    defaultService
    "AccountSuspendedException"
    Prelude.. Core.hasStatus 400

-- | The message can\'t be sent because the account\'s ability to send email
-- is currently paused.
_SendingPausedException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_SendingPausedException =
  Core._MatchServiceError
    defaultService
    "SendingPausedException"
    Prelude.. Core.hasStatus 400

-- | The input you provided is invalid.
_BadRequestException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_BadRequestException =
  Core._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Core.hasStatus 400

-- | The resource specified in your request already exists.
_AlreadyExistsException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_AlreadyExistsException =
  Core._MatchServiceError
    defaultService
    "AlreadyExistsException"
    Prelude.. Core.hasStatus 400

-- | There are too many instances of the specified resource type.
_LimitExceededException :: Core.AsError a => Lens.Getting (Prelude.First Core.ServiceError) a Core.ServiceError
_LimitExceededException =
  Core._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Core.hasStatus 400
