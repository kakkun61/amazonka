{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE OverloadedStrings #-}

-- Module      : Network.AWS.IAM.UpdateSAMLProvider
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

-- | Updates the metadata document for an existing SAML provider.
--
-- This operation requires
-- <http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4>.
--
-- <http://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateSAMLProvider.html>
module Network.AWS.IAM.UpdateSAMLProvider
    (
    -- * Request
      UpdateSAMLProvider
    -- ** Request constructor
    , updateSAMLProvider
    -- ** Request lenses
    , usamlpSAMLMetadataDocument
    , usamlpSAMLProviderARN

    -- * Response
    , UpdateSAMLProviderResponse
    -- ** Response constructor
    , updateSAMLProviderResponse
    -- ** Response lenses
    , usamlprSAMLProviderARN
    ) where

import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Prelude
import Network.AWS.IAM.Types

-- | /See:/ 'updateSAMLProvider' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'usamlpSAMLMetadataDocument'
--
-- * 'usamlpSAMLProviderARN'
data UpdateSAMLProvider = UpdateSAMLProvider'{_usamlpSAMLMetadataDocument :: Text, _usamlpSAMLProviderARN :: Text} deriving (Eq, Read, Show)

-- | 'UpdateSAMLProvider' smart constructor.
updateSAMLProvider :: Text -> Text -> UpdateSAMLProvider
updateSAMLProvider pSAMLMetadataDocument pSAMLProviderARN = UpdateSAMLProvider'{_usamlpSAMLMetadataDocument = pSAMLMetadataDocument, _usamlpSAMLProviderARN = pSAMLProviderARN};

-- | An XML document generated by an identity provider (IdP) that supports
-- SAML 2.0. The document includes the issuer\'s name, expiration
-- information, and keys that can be used to validate the SAML
-- authentication response (assertions) that are received from the IdP. You
-- must generate the metadata document using the identity management
-- software that is used as your organization\'s IdP.
usamlpSAMLMetadataDocument :: Lens' UpdateSAMLProvider Text
usamlpSAMLMetadataDocument = lens _usamlpSAMLMetadataDocument (\ s a -> s{_usamlpSAMLMetadataDocument = a});

-- | The Amazon Resource Name (ARN) of the SAML provider to update.
usamlpSAMLProviderARN :: Lens' UpdateSAMLProvider Text
usamlpSAMLProviderARN = lens _usamlpSAMLProviderARN (\ s a -> s{_usamlpSAMLProviderARN = a});

instance AWSRequest UpdateSAMLProvider where
        type Sv UpdateSAMLProvider = IAM
        type Rs UpdateSAMLProvider =
             UpdateSAMLProviderResponse
        request = post
        response
          = receiveXMLWrapper "UpdateSAMLProviderResult"
              (\ s h x ->
                 UpdateSAMLProviderResponse' <$>
                   x .@? "SAMLProviderArn")

instance ToHeaders UpdateSAMLProvider where
        toHeaders = const mempty

instance ToPath UpdateSAMLProvider where
        toPath = const "/"

instance ToQuery UpdateSAMLProvider where
        toQuery UpdateSAMLProvider'{..}
          = mconcat
              ["Action" =: ("UpdateSAMLProvider" :: ByteString),
               "Version" =: ("2010-05-08" :: ByteString),
               "SAMLMetadataDocument" =:
                 _usamlpSAMLMetadataDocument,
               "SAMLProviderArn" =: _usamlpSAMLProviderARN]

-- | /See:/ 'updateSAMLProviderResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'usamlprSAMLProviderARN'
newtype UpdateSAMLProviderResponse = UpdateSAMLProviderResponse'{_usamlprSAMLProviderARN :: Maybe Text} deriving (Eq, Read, Show)

-- | 'UpdateSAMLProviderResponse' smart constructor.
updateSAMLProviderResponse :: UpdateSAMLProviderResponse
updateSAMLProviderResponse = UpdateSAMLProviderResponse'{_usamlprSAMLProviderARN = Nothing};

-- | The Amazon Resource Name (ARN) of the SAML provider that was updated.
usamlprSAMLProviderARN :: Lens' UpdateSAMLProviderResponse (Maybe Text)
usamlprSAMLProviderARN = lens _usamlprSAMLProviderARN (\ s a -> s{_usamlprSAMLProviderARN = a});
