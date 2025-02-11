{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AmplifyBackend.Lens
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AmplifyBackend.Lens
  ( -- * Operations

    -- ** CloneBackend
    cloneBackend_appId,
    cloneBackend_backendEnvironmentName,
    cloneBackend_targetEnvironmentName,
    cloneBackendResponse_status,
    cloneBackendResponse_jobId,
    cloneBackendResponse_operation,
    cloneBackendResponse_error,
    cloneBackendResponse_appId,
    cloneBackendResponse_backendEnvironmentName,
    cloneBackendResponse_httpStatus,

    -- ** DeleteToken
    deleteToken_sessionId,
    deleteToken_appId,
    deleteTokenResponse_isSuccess,
    deleteTokenResponse_httpStatus,

    -- ** CreateBackendConfig
    createBackendConfig_backendManagerAppId,
    createBackendConfig_appId,
    createBackendConfigResponse_status,
    createBackendConfigResponse_jobId,
    createBackendConfigResponse_appId,
    createBackendConfigResponse_backendEnvironmentName,
    createBackendConfigResponse_httpStatus,

    -- ** ListBackendJobs
    listBackendJobs_status,
    listBackendJobs_jobId,
    listBackendJobs_operation,
    listBackendJobs_nextToken,
    listBackendJobs_maxResults,
    listBackendJobs_appId,
    listBackendJobs_backendEnvironmentName,
    listBackendJobsResponse_nextToken,
    listBackendJobsResponse_jobs,
    listBackendJobsResponse_httpStatus,

    -- ** GetBackend
    getBackend_backendEnvironmentName,
    getBackend_appId,
    getBackendResponse_error,
    getBackendResponse_appName,
    getBackendResponse_amplifyMetaConfig,
    getBackendResponse_appId,
    getBackendResponse_amplifyFeatureFlags,
    getBackendResponse_backendEnvironmentList,
    getBackendResponse_backendEnvironmentName,
    getBackendResponse_httpStatus,

    -- ** GetBackendAuth
    getBackendAuth_appId,
    getBackendAuth_backendEnvironmentName,
    getBackendAuth_resourceName,
    getBackendAuthResponse_resourceName,
    getBackendAuthResponse_error,
    getBackendAuthResponse_appId,
    getBackendAuthResponse_resourceConfig,
    getBackendAuthResponse_backendEnvironmentName,
    getBackendAuthResponse_httpStatus,

    -- ** CreateBackendAuth
    createBackendAuth_appId,
    createBackendAuth_resourceName,
    createBackendAuth_backendEnvironmentName,
    createBackendAuth_resourceConfig,
    createBackendAuthResponse_status,
    createBackendAuthResponse_jobId,
    createBackendAuthResponse_operation,
    createBackendAuthResponse_error,
    createBackendAuthResponse_appId,
    createBackendAuthResponse_backendEnvironmentName,
    createBackendAuthResponse_httpStatus,

    -- ** RemoveBackendConfig
    removeBackendConfig_appId,
    removeBackendConfigResponse_error,
    removeBackendConfigResponse_httpStatus,

    -- ** CreateBackend
    createBackend_resourceName,
    createBackend_resourceConfig,
    createBackend_appId,
    createBackend_backendEnvironmentName,
    createBackend_appName,
    createBackendResponse_status,
    createBackendResponse_jobId,
    createBackendResponse_operation,
    createBackendResponse_error,
    createBackendResponse_appId,
    createBackendResponse_backendEnvironmentName,
    createBackendResponse_httpStatus,

    -- ** GenerateBackendAPIModels
    generateBackendAPIModels_appId,
    generateBackendAPIModels_backendEnvironmentName,
    generateBackendAPIModels_resourceName,
    generateBackendAPIModelsResponse_status,
    generateBackendAPIModelsResponse_jobId,
    generateBackendAPIModelsResponse_operation,
    generateBackendAPIModelsResponse_error,
    generateBackendAPIModelsResponse_appId,
    generateBackendAPIModelsResponse_backendEnvironmentName,
    generateBackendAPIModelsResponse_httpStatus,

    -- ** UpdateBackendConfig
    updateBackendConfig_loginAuthConfig,
    updateBackendConfig_appId,
    updateBackendConfigResponse_error,
    updateBackendConfigResponse_appId,
    updateBackendConfigResponse_backendManagerAppId,
    updateBackendConfigResponse_loginAuthConfig,
    updateBackendConfigResponse_httpStatus,

    -- ** CreateToken
    createToken_appId,
    createTokenResponse_ttl,
    createTokenResponse_appId,
    createTokenResponse_sessionId,
    createTokenResponse_challengeCode,
    createTokenResponse_httpStatus,

    -- ** GetBackendAPI
    getBackendAPI_resourceConfig,
    getBackendAPI_appId,
    getBackendAPI_backendEnvironmentName,
    getBackendAPI_resourceName,
    getBackendAPIResponse_resourceName,
    getBackendAPIResponse_error,
    getBackendAPIResponse_appId,
    getBackendAPIResponse_resourceConfig,
    getBackendAPIResponse_backendEnvironmentName,
    getBackendAPIResponse_httpStatus,

    -- ** UpdateBackendJob
    updateBackendJob_status,
    updateBackendJob_operation,
    updateBackendJob_appId,
    updateBackendJob_backendEnvironmentName,
    updateBackendJob_jobId,
    updateBackendJobResponse_status,
    updateBackendJobResponse_jobId,
    updateBackendJobResponse_operation,
    updateBackendJobResponse_error,
    updateBackendJobResponse_updateTime,
    updateBackendJobResponse_appId,
    updateBackendJobResponse_backendEnvironmentName,
    updateBackendJobResponse_createTime,
    updateBackendJobResponse_httpStatus,

    -- ** UpdateBackendAPI
    updateBackendAPI_resourceConfig,
    updateBackendAPI_appId,
    updateBackendAPI_backendEnvironmentName,
    updateBackendAPI_resourceName,
    updateBackendAPIResponse_status,
    updateBackendAPIResponse_jobId,
    updateBackendAPIResponse_operation,
    updateBackendAPIResponse_error,
    updateBackendAPIResponse_appId,
    updateBackendAPIResponse_backendEnvironmentName,
    updateBackendAPIResponse_httpStatus,

    -- ** DeleteBackendAPI
    deleteBackendAPI_resourceConfig,
    deleteBackendAPI_appId,
    deleteBackendAPI_backendEnvironmentName,
    deleteBackendAPI_resourceName,
    deleteBackendAPIResponse_status,
    deleteBackendAPIResponse_jobId,
    deleteBackendAPIResponse_operation,
    deleteBackendAPIResponse_error,
    deleteBackendAPIResponse_appId,
    deleteBackendAPIResponse_backendEnvironmentName,
    deleteBackendAPIResponse_httpStatus,

    -- ** GetBackendJob
    getBackendJob_appId,
    getBackendJob_backendEnvironmentName,
    getBackendJob_jobId,
    getBackendJobResponse_status,
    getBackendJobResponse_jobId,
    getBackendJobResponse_operation,
    getBackendJobResponse_error,
    getBackendJobResponse_updateTime,
    getBackendJobResponse_appId,
    getBackendJobResponse_backendEnvironmentName,
    getBackendJobResponse_createTime,
    getBackendJobResponse_httpStatus,

    -- ** DeleteBackend
    deleteBackend_appId,
    deleteBackend_backendEnvironmentName,
    deleteBackendResponse_status,
    deleteBackendResponse_jobId,
    deleteBackendResponse_operation,
    deleteBackendResponse_error,
    deleteBackendResponse_appId,
    deleteBackendResponse_backendEnvironmentName,
    deleteBackendResponse_httpStatus,

    -- ** DeleteBackendAuth
    deleteBackendAuth_appId,
    deleteBackendAuth_backendEnvironmentName,
    deleteBackendAuth_resourceName,
    deleteBackendAuthResponse_status,
    deleteBackendAuthResponse_jobId,
    deleteBackendAuthResponse_operation,
    deleteBackendAuthResponse_error,
    deleteBackendAuthResponse_appId,
    deleteBackendAuthResponse_backendEnvironmentName,
    deleteBackendAuthResponse_httpStatus,

    -- ** UpdateBackendAuth
    updateBackendAuth_appId,
    updateBackendAuth_backendEnvironmentName,
    updateBackendAuth_resourceName,
    updateBackendAuth_resourceConfig,
    updateBackendAuthResponse_status,
    updateBackendAuthResponse_jobId,
    updateBackendAuthResponse_operation,
    updateBackendAuthResponse_error,
    updateBackendAuthResponse_appId,
    updateBackendAuthResponse_backendEnvironmentName,
    updateBackendAuthResponse_httpStatus,

    -- ** GetToken
    getToken_sessionId,
    getToken_appId,
    getTokenResponse_ttl,
    getTokenResponse_appId,
    getTokenResponse_sessionId,
    getTokenResponse_challengeCode,
    getTokenResponse_httpStatus,

    -- ** RemoveAllBackends
    removeAllBackends_cleanAmplifyApp,
    removeAllBackends_appId,
    removeAllBackendsResponse_status,
    removeAllBackendsResponse_jobId,
    removeAllBackendsResponse_operation,
    removeAllBackendsResponse_error,
    removeAllBackendsResponse_appId,
    removeAllBackendsResponse_httpStatus,

    -- ** CreateBackendAPI
    createBackendAPI_appId,
    createBackendAPI_resourceName,
    createBackendAPI_backendEnvironmentName,
    createBackendAPI_resourceConfig,
    createBackendAPIResponse_status,
    createBackendAPIResponse_jobId,
    createBackendAPIResponse_operation,
    createBackendAPIResponse_error,
    createBackendAPIResponse_appId,
    createBackendAPIResponse_backendEnvironmentName,
    createBackendAPIResponse_httpStatus,

    -- ** GetBackendAPIModels
    getBackendAPIModels_appId,
    getBackendAPIModels_backendEnvironmentName,
    getBackendAPIModels_resourceName,
    getBackendAPIModelsResponse_status,
    getBackendAPIModelsResponse_models,
    getBackendAPIModelsResponse_httpStatus,

    -- ** ImportBackendAuth
    importBackendAuth_identityPoolId,
    importBackendAuth_appId,
    importBackendAuth_backendEnvironmentName,
    importBackendAuth_userPoolId,
    importBackendAuth_nativeClientId,
    importBackendAuth_webClientId,
    importBackendAuthResponse_status,
    importBackendAuthResponse_jobId,
    importBackendAuthResponse_operation,
    importBackendAuthResponse_error,
    importBackendAuthResponse_appId,
    importBackendAuthResponse_backendEnvironmentName,
    importBackendAuthResponse_httpStatus,

    -- * Types

    -- ** BackendAPIAppSyncAuthSettings
    backendAPIAppSyncAuthSettings_openIDProviderName,
    backendAPIAppSyncAuthSettings_openIDClientId,
    backendAPIAppSyncAuthSettings_openIDIssueURL,
    backendAPIAppSyncAuthSettings_cognitoUserPoolId,
    backendAPIAppSyncAuthSettings_openIDAuthTTL,
    backendAPIAppSyncAuthSettings_description,
    backendAPIAppSyncAuthSettings_expirationTime,
    backendAPIAppSyncAuthSettings_openIDIatTTL,

    -- ** BackendAPIAuthType
    backendAPIAuthType_settings,
    backendAPIAuthType_mode,

    -- ** BackendAPIConflictResolution
    backendAPIConflictResolution_resolutionStrategy,

    -- ** BackendAPIResourceConfig
    backendAPIResourceConfig_apiName,
    backendAPIResourceConfig_service,
    backendAPIResourceConfig_transformSchema,
    backendAPIResourceConfig_additionalAuthTypes,
    backendAPIResourceConfig_conflictResolution,
    backendAPIResourceConfig_defaultAuthType,

    -- ** BackendAuthAppleProviderConfig
    backendAuthAppleProviderConfig_clientId,
    backendAuthAppleProviderConfig_privateKey,
    backendAuthAppleProviderConfig_keyId,
    backendAuthAppleProviderConfig_teamId,

    -- ** BackendAuthSocialProviderConfig
    backendAuthSocialProviderConfig_clientId,
    backendAuthSocialProviderConfig_clientSecret,

    -- ** BackendJobRespObj
    backendJobRespObj_status,
    backendJobRespObj_jobId,
    backendJobRespObj_operation,
    backendJobRespObj_error,
    backendJobRespObj_updateTime,
    backendJobRespObj_createTime,
    backendJobRespObj_appId,
    backendJobRespObj_backendEnvironmentName,

    -- ** CreateBackendAuthForgotPasswordConfig
    createBackendAuthForgotPasswordConfig_emailSettings,
    createBackendAuthForgotPasswordConfig_smsSettings,
    createBackendAuthForgotPasswordConfig_deliveryMethod,

    -- ** CreateBackendAuthIdentityPoolConfig
    createBackendAuthIdentityPoolConfig_unauthenticatedLogin,
    createBackendAuthIdentityPoolConfig_identityPoolName,

    -- ** CreateBackendAuthMFAConfig
    createBackendAuthMFAConfig_settings,
    createBackendAuthMFAConfig_mfaMode,

    -- ** CreateBackendAuthOAuthConfig
    createBackendAuthOAuthConfig_socialProviderSettings,
    createBackendAuthOAuthConfig_domainPrefix,
    createBackendAuthOAuthConfig_redirectSignOutURIs,
    createBackendAuthOAuthConfig_redirectSignInURIs,
    createBackendAuthOAuthConfig_oAuthGrantType,
    createBackendAuthOAuthConfig_oAuthScopes,

    -- ** CreateBackendAuthPasswordPolicyConfig
    createBackendAuthPasswordPolicyConfig_additionalConstraints,
    createBackendAuthPasswordPolicyConfig_minimumLength,

    -- ** CreateBackendAuthResourceConfig
    createBackendAuthResourceConfig_identityPoolConfigs,
    createBackendAuthResourceConfig_authResources,
    createBackendAuthResourceConfig_userPoolConfigs,
    createBackendAuthResourceConfig_service,

    -- ** CreateBackendAuthUserPoolConfig
    createBackendAuthUserPoolConfig_passwordPolicy,
    createBackendAuthUserPoolConfig_mfa,
    createBackendAuthUserPoolConfig_forgotPassword,
    createBackendAuthUserPoolConfig_oAuth,
    createBackendAuthUserPoolConfig_requiredSignUpAttributes,
    createBackendAuthUserPoolConfig_signInMethod,
    createBackendAuthUserPoolConfig_userPoolName,

    -- ** EmailSettings
    emailSettings_emailSubject,
    emailSettings_emailMessage,

    -- ** LoginAuthConfigReqObj
    loginAuthConfigReqObj_awsUserPoolsWebClientId,
    loginAuthConfigReqObj_awsCognitoIdentityPoolId,
    loginAuthConfigReqObj_awsUserPoolsId,
    loginAuthConfigReqObj_awsCognitoRegion,

    -- ** ResourceConfig

    -- ** Settings
    settings_smsMessage,
    settings_mfaTypes,

    -- ** SmsSettings
    smsSettings_smsMessage,

    -- ** SocialProviderSettings
    socialProviderSettings_loginWithAmazon,
    socialProviderSettings_signInWithApple,
    socialProviderSettings_facebook,
    socialProviderSettings_google,

    -- ** UpdateBackendAuthForgotPasswordConfig
    updateBackendAuthForgotPasswordConfig_emailSettings,
    updateBackendAuthForgotPasswordConfig_smsSettings,
    updateBackendAuthForgotPasswordConfig_deliveryMethod,

    -- ** UpdateBackendAuthIdentityPoolConfig
    updateBackendAuthIdentityPoolConfig_unauthenticatedLogin,

    -- ** UpdateBackendAuthMFAConfig
    updateBackendAuthMFAConfig_settings,
    updateBackendAuthMFAConfig_mfaMode,

    -- ** UpdateBackendAuthOAuthConfig
    updateBackendAuthOAuthConfig_socialProviderSettings,
    updateBackendAuthOAuthConfig_domainPrefix,
    updateBackendAuthOAuthConfig_oAuthScopes,
    updateBackendAuthOAuthConfig_oAuthGrantType,
    updateBackendAuthOAuthConfig_redirectSignOutURIs,
    updateBackendAuthOAuthConfig_redirectSignInURIs,

    -- ** UpdateBackendAuthPasswordPolicyConfig
    updateBackendAuthPasswordPolicyConfig_additionalConstraints,
    updateBackendAuthPasswordPolicyConfig_minimumLength,

    -- ** UpdateBackendAuthResourceConfig
    updateBackendAuthResourceConfig_identityPoolConfigs,
    updateBackendAuthResourceConfig_authResources,
    updateBackendAuthResourceConfig_userPoolConfigs,
    updateBackendAuthResourceConfig_service,

    -- ** UpdateBackendAuthUserPoolConfig
    updateBackendAuthUserPoolConfig_passwordPolicy,
    updateBackendAuthUserPoolConfig_mfa,
    updateBackendAuthUserPoolConfig_forgotPassword,
    updateBackendAuthUserPoolConfig_oAuth,
  )
where

import Network.AWS.AmplifyBackend.CloneBackend
import Network.AWS.AmplifyBackend.CreateBackend
import Network.AWS.AmplifyBackend.CreateBackendAPI
import Network.AWS.AmplifyBackend.CreateBackendAuth
import Network.AWS.AmplifyBackend.CreateBackendConfig
import Network.AWS.AmplifyBackend.CreateToken
import Network.AWS.AmplifyBackend.DeleteBackend
import Network.AWS.AmplifyBackend.DeleteBackendAPI
import Network.AWS.AmplifyBackend.DeleteBackendAuth
import Network.AWS.AmplifyBackend.DeleteToken
import Network.AWS.AmplifyBackend.GenerateBackendAPIModels
import Network.AWS.AmplifyBackend.GetBackend
import Network.AWS.AmplifyBackend.GetBackendAPI
import Network.AWS.AmplifyBackend.GetBackendAPIModels
import Network.AWS.AmplifyBackend.GetBackendAuth
import Network.AWS.AmplifyBackend.GetBackendJob
import Network.AWS.AmplifyBackend.GetToken
import Network.AWS.AmplifyBackend.ImportBackendAuth
import Network.AWS.AmplifyBackend.ListBackendJobs
import Network.AWS.AmplifyBackend.RemoveAllBackends
import Network.AWS.AmplifyBackend.RemoveBackendConfig
import Network.AWS.AmplifyBackend.Types.BackendAPIAppSyncAuthSettings
import Network.AWS.AmplifyBackend.Types.BackendAPIAuthType
import Network.AWS.AmplifyBackend.Types.BackendAPIConflictResolution
import Network.AWS.AmplifyBackend.Types.BackendAPIResourceConfig
import Network.AWS.AmplifyBackend.Types.BackendAuthAppleProviderConfig
import Network.AWS.AmplifyBackend.Types.BackendAuthSocialProviderConfig
import Network.AWS.AmplifyBackend.Types.BackendJobRespObj
import Network.AWS.AmplifyBackend.Types.CreateBackendAuthForgotPasswordConfig
import Network.AWS.AmplifyBackend.Types.CreateBackendAuthIdentityPoolConfig
import Network.AWS.AmplifyBackend.Types.CreateBackendAuthMFAConfig
import Network.AWS.AmplifyBackend.Types.CreateBackendAuthOAuthConfig
import Network.AWS.AmplifyBackend.Types.CreateBackendAuthPasswordPolicyConfig
import Network.AWS.AmplifyBackend.Types.CreateBackendAuthResourceConfig
import Network.AWS.AmplifyBackend.Types.CreateBackendAuthUserPoolConfig
import Network.AWS.AmplifyBackend.Types.EmailSettings
import Network.AWS.AmplifyBackend.Types.LoginAuthConfigReqObj
import Network.AWS.AmplifyBackend.Types.ResourceConfig
import Network.AWS.AmplifyBackend.Types.Settings
import Network.AWS.AmplifyBackend.Types.SmsSettings
import Network.AWS.AmplifyBackend.Types.SocialProviderSettings
import Network.AWS.AmplifyBackend.Types.UpdateBackendAuthForgotPasswordConfig
import Network.AWS.AmplifyBackend.Types.UpdateBackendAuthIdentityPoolConfig
import Network.AWS.AmplifyBackend.Types.UpdateBackendAuthMFAConfig
import Network.AWS.AmplifyBackend.Types.UpdateBackendAuthOAuthConfig
import Network.AWS.AmplifyBackend.Types.UpdateBackendAuthPasswordPolicyConfig
import Network.AWS.AmplifyBackend.Types.UpdateBackendAuthResourceConfig
import Network.AWS.AmplifyBackend.Types.UpdateBackendAuthUserPoolConfig
import Network.AWS.AmplifyBackend.UpdateBackendAPI
import Network.AWS.AmplifyBackend.UpdateBackendAuth
import Network.AWS.AmplifyBackend.UpdateBackendConfig
import Network.AWS.AmplifyBackend.UpdateBackendJob
