{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.GenerateDataKeyPairWithoutPlaintext
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a unique asymmetric data key pair. The
-- @GenerateDataKeyPairWithoutPlaintext@ operation returns a plaintext
-- public key and a copy of the private key that is encrypted under the
-- symmetric KMS key you specify. Unlike GenerateDataKeyPair, this
-- operation does not return a plaintext private key.
--
-- You can use the public key that @GenerateDataKeyPairWithoutPlaintext@
-- returns to encrypt data or verify a signature outside of KMS. Then,
-- store the encrypted private key with the data. When you are ready to
-- decrypt data or sign a message, you can use the Decrypt operation to
-- decrypt the encrypted private key.
--
-- To generate a data key pair, you must specify a symmetric KMS key to
-- encrypt the private key in a data key pair. You cannot use an asymmetric
-- KMS key or a KMS key in a custom key store. To get the type and origin
-- of your KMS key, use the DescribeKey operation.
--
-- Use the @KeyPairSpec@ parameter to choose an RSA or Elliptic Curve (ECC)
-- data key pair. KMS recommends that your use ECC key pairs for signing,
-- and use RSA key pairs for either encryption or signing, but not both.
-- However, KMS cannot enforce any restrictions on the use of data key
-- pairs outside of KMS.
--
-- @GenerateDataKeyPairWithoutPlaintext@ returns a unique data key pair for
-- each request. The bytes in the key are not related to the caller or KMS
-- key that is used to encrypt the private key. The public key is a
-- DER-encoded X.509 SubjectPublicKeyInfo, as specified in
-- <https://tools.ietf.org/html/rfc5280 RFC 5280>.
--
-- You can use the optional encryption context to add additional security
-- to the encryption operation. If you specify an @EncryptionContext@, you
-- must specify the same encryption context (a case-sensitive exact match)
-- when decrypting the encrypted data key. Otherwise, the request to
-- decrypt fails with an @InvalidCiphertextException@. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context>
-- in the /Key Management Service Developer Guide/.
--
-- The KMS key that you use for this operation must be in a compatible key
-- state. For details, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html Key state: Effect on your KMS key>
-- in the /Key Management Service Developer Guide/.
--
-- __Cross-account use__: Yes. To perform this operation with a KMS key in
-- a different Amazon Web Services account, specify the key ARN or alias
-- ARN in the value of the @KeyId@ parameter.
--
-- __Required permissions__:
-- <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:GenerateDataKeyPairWithoutPlaintext>
-- (key policy)
--
-- __Related operations:__
--
-- -   Decrypt
--
-- -   Encrypt
--
-- -   GenerateDataKey
--
-- -   GenerateDataKeyPair
--
-- -   GenerateDataKeyWithoutPlaintext
module Network.AWS.KMS.GenerateDataKeyPairWithoutPlaintext
  ( -- * Creating a Request
    GenerateDataKeyPairWithoutPlaintext (..),
    newGenerateDataKeyPairWithoutPlaintext,

    -- * Request Lenses
    generateDataKeyPairWithoutPlaintext_encryptionContext,
    generateDataKeyPairWithoutPlaintext_grantTokens,
    generateDataKeyPairWithoutPlaintext_keyId,
    generateDataKeyPairWithoutPlaintext_keyPairSpec,

    -- * Destructuring the Response
    GenerateDataKeyPairWithoutPlaintextResponse (..),
    newGenerateDataKeyPairWithoutPlaintextResponse,

    -- * Response Lenses
    generateDataKeyPairWithoutPlaintextResponse_keyId,
    generateDataKeyPairWithoutPlaintextResponse_publicKey,
    generateDataKeyPairWithoutPlaintextResponse_keyPairSpec,
    generateDataKeyPairWithoutPlaintextResponse_privateKeyCiphertextBlob,
    generateDataKeyPairWithoutPlaintextResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.KMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGenerateDataKeyPairWithoutPlaintext' smart constructor.
data GenerateDataKeyPairWithoutPlaintext = GenerateDataKeyPairWithoutPlaintext'
  { -- | Specifies the encryption context that will be used when encrypting the
    -- private key in the data key pair.
    --
    -- An /encryption context/ is a collection of non-secret key-value pairs
    -- that represents additional authenticated data. When you use an
    -- encryption context to encrypt data, you must specify the same (an exact
    -- case-sensitive match) encryption context to decrypt the data. An
    -- encryption context is optional when encrypting with a symmetric KMS key,
    -- but it is highly recommended.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context>
    -- in the /Key Management Service Developer Guide/.
    encryptionContext :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A list of grant tokens.
    --
    -- Use a grant token when your permission to call this operation comes from
    -- a new grant that has not yet achieved /eventual consistency/. For more
    -- information, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token Grant token>
    -- and
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token Using a grant token>
    -- in the /Key Management Service Developer Guide/.
    grantTokens :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the KMS key that encrypts the private key in the data key
    -- pair. You must specify a symmetric KMS key. You cannot use an asymmetric
    -- KMS key or a KMS key in a custom key store. To get the type and origin
    -- of your KMS key, use the DescribeKey operation.
    --
    -- To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN.
    -- When using an alias name, prefix it with @\"alias\/\"@. To specify a KMS
    -- key in a different Amazon Web Services account, you must use the key ARN
    -- or alias ARN.
    --
    -- For example:
    --
    -- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
    --
    -- -   Key ARN:
    --     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
    --
    -- -   Alias name: @alias\/ExampleAlias@
    --
    -- -   Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias\/ExampleAlias@
    --
    -- To get the key ID and key ARN for a KMS key, use ListKeys or
    -- DescribeKey. To get the alias name and alias ARN, use ListAliases.
    keyId :: Prelude.Text,
    -- | Determines the type of data key pair that is generated.
    --
    -- The KMS rule that restricts the use of asymmetric RSA KMS keys to
    -- encrypt and decrypt or to sign and verify (but not both), and the rule
    -- that permits you to use ECC KMS keys only to sign and verify, are not
    -- effective on data key pairs, which are used outside of KMS.
    keyPairSpec :: DataKeyPairSpec
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GenerateDataKeyPairWithoutPlaintext' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionContext', 'generateDataKeyPairWithoutPlaintext_encryptionContext' - Specifies the encryption context that will be used when encrypting the
-- private key in the data key pair.
--
-- An /encryption context/ is a collection of non-secret key-value pairs
-- that represents additional authenticated data. When you use an
-- encryption context to encrypt data, you must specify the same (an exact
-- case-sensitive match) encryption context to decrypt the data. An
-- encryption context is optional when encrypting with a symmetric KMS key,
-- but it is highly recommended.
--
-- For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context>
-- in the /Key Management Service Developer Guide/.
--
-- 'grantTokens', 'generateDataKeyPairWithoutPlaintext_grantTokens' - A list of grant tokens.
--
-- Use a grant token when your permission to call this operation comes from
-- a new grant that has not yet achieved /eventual consistency/. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token Grant token>
-- and
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token Using a grant token>
-- in the /Key Management Service Developer Guide/.
--
-- 'keyId', 'generateDataKeyPairWithoutPlaintext_keyId' - Specifies the KMS key that encrypts the private key in the data key
-- pair. You must specify a symmetric KMS key. You cannot use an asymmetric
-- KMS key or a KMS key in a custom key store. To get the type and origin
-- of your KMS key, use the DescribeKey operation.
--
-- To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN.
-- When using an alias name, prefix it with @\"alias\/\"@. To specify a KMS
-- key in a different Amazon Web Services account, you must use the key ARN
-- or alias ARN.
--
-- For example:
--
-- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Key ARN:
--     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Alias name: @alias\/ExampleAlias@
--
-- -   Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias\/ExampleAlias@
--
-- To get the key ID and key ARN for a KMS key, use ListKeys or
-- DescribeKey. To get the alias name and alias ARN, use ListAliases.
--
-- 'keyPairSpec', 'generateDataKeyPairWithoutPlaintext_keyPairSpec' - Determines the type of data key pair that is generated.
--
-- The KMS rule that restricts the use of asymmetric RSA KMS keys to
-- encrypt and decrypt or to sign and verify (but not both), and the rule
-- that permits you to use ECC KMS keys only to sign and verify, are not
-- effective on data key pairs, which are used outside of KMS.
newGenerateDataKeyPairWithoutPlaintext ::
  -- | 'keyId'
  Prelude.Text ->
  -- | 'keyPairSpec'
  DataKeyPairSpec ->
  GenerateDataKeyPairWithoutPlaintext
newGenerateDataKeyPairWithoutPlaintext
  pKeyId_
  pKeyPairSpec_ =
    GenerateDataKeyPairWithoutPlaintext'
      { encryptionContext =
          Prelude.Nothing,
        grantTokens = Prelude.Nothing,
        keyId = pKeyId_,
        keyPairSpec = pKeyPairSpec_
      }

-- | Specifies the encryption context that will be used when encrypting the
-- private key in the data key pair.
--
-- An /encryption context/ is a collection of non-secret key-value pairs
-- that represents additional authenticated data. When you use an
-- encryption context to encrypt data, you must specify the same (an exact
-- case-sensitive match) encryption context to decrypt the data. An
-- encryption context is optional when encrypting with a symmetric KMS key,
-- but it is highly recommended.
--
-- For more information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context Encryption Context>
-- in the /Key Management Service Developer Guide/.
generateDataKeyPairWithoutPlaintext_encryptionContext :: Lens.Lens' GenerateDataKeyPairWithoutPlaintext (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
generateDataKeyPairWithoutPlaintext_encryptionContext = Lens.lens (\GenerateDataKeyPairWithoutPlaintext' {encryptionContext} -> encryptionContext) (\s@GenerateDataKeyPairWithoutPlaintext' {} a -> s {encryptionContext = a} :: GenerateDataKeyPairWithoutPlaintext) Prelude.. Lens.mapping Lens.coerced

-- | A list of grant tokens.
--
-- Use a grant token when your permission to call this operation comes from
-- a new grant that has not yet achieved /eventual consistency/. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token Grant token>
-- and
-- <https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token Using a grant token>
-- in the /Key Management Service Developer Guide/.
generateDataKeyPairWithoutPlaintext_grantTokens :: Lens.Lens' GenerateDataKeyPairWithoutPlaintext (Prelude.Maybe [Prelude.Text])
generateDataKeyPairWithoutPlaintext_grantTokens = Lens.lens (\GenerateDataKeyPairWithoutPlaintext' {grantTokens} -> grantTokens) (\s@GenerateDataKeyPairWithoutPlaintext' {} a -> s {grantTokens = a} :: GenerateDataKeyPairWithoutPlaintext) Prelude.. Lens.mapping Lens.coerced

-- | Specifies the KMS key that encrypts the private key in the data key
-- pair. You must specify a symmetric KMS key. You cannot use an asymmetric
-- KMS key or a KMS key in a custom key store. To get the type and origin
-- of your KMS key, use the DescribeKey operation.
--
-- To specify a KMS key, use its key ID, key ARN, alias name, or alias ARN.
-- When using an alias name, prefix it with @\"alias\/\"@. To specify a KMS
-- key in a different Amazon Web Services account, you must use the key ARN
-- or alias ARN.
--
-- For example:
--
-- -   Key ID: @1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Key ARN:
--     @arn:aws:kms:us-east-2:111122223333:key\/1234abcd-12ab-34cd-56ef-1234567890ab@
--
-- -   Alias name: @alias\/ExampleAlias@
--
-- -   Alias ARN: @arn:aws:kms:us-east-2:111122223333:alias\/ExampleAlias@
--
-- To get the key ID and key ARN for a KMS key, use ListKeys or
-- DescribeKey. To get the alias name and alias ARN, use ListAliases.
generateDataKeyPairWithoutPlaintext_keyId :: Lens.Lens' GenerateDataKeyPairWithoutPlaintext Prelude.Text
generateDataKeyPairWithoutPlaintext_keyId = Lens.lens (\GenerateDataKeyPairWithoutPlaintext' {keyId} -> keyId) (\s@GenerateDataKeyPairWithoutPlaintext' {} a -> s {keyId = a} :: GenerateDataKeyPairWithoutPlaintext)

-- | Determines the type of data key pair that is generated.
--
-- The KMS rule that restricts the use of asymmetric RSA KMS keys to
-- encrypt and decrypt or to sign and verify (but not both), and the rule
-- that permits you to use ECC KMS keys only to sign and verify, are not
-- effective on data key pairs, which are used outside of KMS.
generateDataKeyPairWithoutPlaintext_keyPairSpec :: Lens.Lens' GenerateDataKeyPairWithoutPlaintext DataKeyPairSpec
generateDataKeyPairWithoutPlaintext_keyPairSpec = Lens.lens (\GenerateDataKeyPairWithoutPlaintext' {keyPairSpec} -> keyPairSpec) (\s@GenerateDataKeyPairWithoutPlaintext' {} a -> s {keyPairSpec = a} :: GenerateDataKeyPairWithoutPlaintext)

instance
  Core.AWSRequest
    GenerateDataKeyPairWithoutPlaintext
  where
  type
    AWSResponse GenerateDataKeyPairWithoutPlaintext =
      GenerateDataKeyPairWithoutPlaintextResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GenerateDataKeyPairWithoutPlaintextResponse'
            Prelude.<$> (x Core..?> "KeyId")
              Prelude.<*> (x Core..?> "PublicKey")
              Prelude.<*> (x Core..?> "KeyPairSpec")
              Prelude.<*> (x Core..?> "PrivateKeyCiphertextBlob")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GenerateDataKeyPairWithoutPlaintext

instance
  Prelude.NFData
    GenerateDataKeyPairWithoutPlaintext

instance
  Core.ToHeaders
    GenerateDataKeyPairWithoutPlaintext
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "TrentService.GenerateDataKeyPairWithoutPlaintext" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance
  Core.ToJSON
    GenerateDataKeyPairWithoutPlaintext
  where
  toJSON GenerateDataKeyPairWithoutPlaintext' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("EncryptionContext" Core..=)
              Prelude.<$> encryptionContext,
            ("GrantTokens" Core..=) Prelude.<$> grantTokens,
            Prelude.Just ("KeyId" Core..= keyId),
            Prelude.Just ("KeyPairSpec" Core..= keyPairSpec)
          ]
      )

instance
  Core.ToPath
    GenerateDataKeyPairWithoutPlaintext
  where
  toPath = Prelude.const "/"

instance
  Core.ToQuery
    GenerateDataKeyPairWithoutPlaintext
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGenerateDataKeyPairWithoutPlaintextResponse' smart constructor.
data GenerateDataKeyPairWithoutPlaintextResponse = GenerateDataKeyPairWithoutPlaintextResponse'
  { -- | The Amazon Resource Name
    -- (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN>)
    -- of the KMS key that encrypted the private key.
    keyId :: Prelude.Maybe Prelude.Text,
    -- | The public key (in plaintext).
    publicKey :: Prelude.Maybe Core.Base64,
    -- | The type of data key pair that was generated.
    keyPairSpec :: Prelude.Maybe DataKeyPairSpec,
    -- | The encrypted copy of the private key. When you use the HTTP API or the
    -- Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is
    -- not Base64-encoded.
    privateKeyCiphertextBlob :: Prelude.Maybe Core.Base64,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GenerateDataKeyPairWithoutPlaintextResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyId', 'generateDataKeyPairWithoutPlaintextResponse_keyId' - The Amazon Resource Name
-- (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN>)
-- of the KMS key that encrypted the private key.
--
-- 'publicKey', 'generateDataKeyPairWithoutPlaintextResponse_publicKey' - The public key (in plaintext).--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'keyPairSpec', 'generateDataKeyPairWithoutPlaintextResponse_keyPairSpec' - The type of data key pair that was generated.
--
-- 'privateKeyCiphertextBlob', 'generateDataKeyPairWithoutPlaintextResponse_privateKeyCiphertextBlob' - The encrypted copy of the private key. When you use the HTTP API or the
-- Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is
-- not Base64-encoded.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'httpStatus', 'generateDataKeyPairWithoutPlaintextResponse_httpStatus' - The response's http status code.
newGenerateDataKeyPairWithoutPlaintextResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GenerateDataKeyPairWithoutPlaintextResponse
newGenerateDataKeyPairWithoutPlaintextResponse
  pHttpStatus_ =
    GenerateDataKeyPairWithoutPlaintextResponse'
      { keyId =
          Prelude.Nothing,
        publicKey = Prelude.Nothing,
        keyPairSpec = Prelude.Nothing,
        privateKeyCiphertextBlob =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The Amazon Resource Name
-- (<https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN key ARN>)
-- of the KMS key that encrypted the private key.
generateDataKeyPairWithoutPlaintextResponse_keyId :: Lens.Lens' GenerateDataKeyPairWithoutPlaintextResponse (Prelude.Maybe Prelude.Text)
generateDataKeyPairWithoutPlaintextResponse_keyId = Lens.lens (\GenerateDataKeyPairWithoutPlaintextResponse' {keyId} -> keyId) (\s@GenerateDataKeyPairWithoutPlaintextResponse' {} a -> s {keyId = a} :: GenerateDataKeyPairWithoutPlaintextResponse)

-- | The public key (in plaintext).--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
generateDataKeyPairWithoutPlaintextResponse_publicKey :: Lens.Lens' GenerateDataKeyPairWithoutPlaintextResponse (Prelude.Maybe Prelude.ByteString)
generateDataKeyPairWithoutPlaintextResponse_publicKey = Lens.lens (\GenerateDataKeyPairWithoutPlaintextResponse' {publicKey} -> publicKey) (\s@GenerateDataKeyPairWithoutPlaintextResponse' {} a -> s {publicKey = a} :: GenerateDataKeyPairWithoutPlaintextResponse) Prelude.. Lens.mapping Core._Base64

-- | The type of data key pair that was generated.
generateDataKeyPairWithoutPlaintextResponse_keyPairSpec :: Lens.Lens' GenerateDataKeyPairWithoutPlaintextResponse (Prelude.Maybe DataKeyPairSpec)
generateDataKeyPairWithoutPlaintextResponse_keyPairSpec = Lens.lens (\GenerateDataKeyPairWithoutPlaintextResponse' {keyPairSpec} -> keyPairSpec) (\s@GenerateDataKeyPairWithoutPlaintextResponse' {} a -> s {keyPairSpec = a} :: GenerateDataKeyPairWithoutPlaintextResponse)

-- | The encrypted copy of the private key. When you use the HTTP API or the
-- Amazon Web Services CLI, the value is Base64-encoded. Otherwise, it is
-- not Base64-encoded.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
generateDataKeyPairWithoutPlaintextResponse_privateKeyCiphertextBlob :: Lens.Lens' GenerateDataKeyPairWithoutPlaintextResponse (Prelude.Maybe Prelude.ByteString)
generateDataKeyPairWithoutPlaintextResponse_privateKeyCiphertextBlob = Lens.lens (\GenerateDataKeyPairWithoutPlaintextResponse' {privateKeyCiphertextBlob} -> privateKeyCiphertextBlob) (\s@GenerateDataKeyPairWithoutPlaintextResponse' {} a -> s {privateKeyCiphertextBlob = a} :: GenerateDataKeyPairWithoutPlaintextResponse) Prelude.. Lens.mapping Core._Base64

-- | The response's http status code.
generateDataKeyPairWithoutPlaintextResponse_httpStatus :: Lens.Lens' GenerateDataKeyPairWithoutPlaintextResponse Prelude.Int
generateDataKeyPairWithoutPlaintextResponse_httpStatus = Lens.lens (\GenerateDataKeyPairWithoutPlaintextResponse' {httpStatus} -> httpStatus) (\s@GenerateDataKeyPairWithoutPlaintextResponse' {} a -> s {httpStatus = a} :: GenerateDataKeyPairWithoutPlaintextResponse)

instance
  Prelude.NFData
    GenerateDataKeyPairWithoutPlaintextResponse
