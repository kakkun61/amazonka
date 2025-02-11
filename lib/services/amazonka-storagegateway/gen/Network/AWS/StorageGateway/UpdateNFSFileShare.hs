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
-- Module      : Network.AWS.StorageGateway.UpdateNFSFileShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a Network File System (NFS) file share. This operation is only
-- supported in S3 File Gateways.
--
-- To leave a file share field unchanged, set the corresponding input field
-- to null.
--
-- Updates the following file share settings:
--
-- -   Default storage class for your S3 bucket
--
-- -   Metadata defaults for your S3 bucket
--
-- -   Allowed NFS clients for your file share
--
-- -   Squash settings
--
-- -   Write status of your file share
module Network.AWS.StorageGateway.UpdateNFSFileShare
  ( -- * Creating a Request
    UpdateNFSFileShare (..),
    newUpdateNFSFileShare,

    -- * Request Lenses
    updateNFSFileShare_auditDestinationARN,
    updateNFSFileShare_kmsKey,
    updateNFSFileShare_cacheAttributes,
    updateNFSFileShare_objectACL,
    updateNFSFileShare_kmsEncrypted,
    updateNFSFileShare_defaultStorageClass,
    updateNFSFileShare_fileShareName,
    updateNFSFileShare_notificationPolicy,
    updateNFSFileShare_squash,
    updateNFSFileShare_requesterPays,
    updateNFSFileShare_nFSFileShareDefaults,
    updateNFSFileShare_clientList,
    updateNFSFileShare_guessMIMETypeEnabled,
    updateNFSFileShare_readOnly,
    updateNFSFileShare_fileShareARN,

    -- * Destructuring the Response
    UpdateNFSFileShareResponse (..),
    newUpdateNFSFileShareResponse,

    -- * Response Lenses
    updateNFSFileShareResponse_fileShareARN,
    updateNFSFileShareResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.StorageGateway.Types

-- | UpdateNFSFileShareInput
--
-- /See:/ 'newUpdateNFSFileShare' smart constructor.
data UpdateNFSFileShare = UpdateNFSFileShare'
  { -- | The Amazon Resource Name (ARN) of the storage used for audit logs.
    auditDestinationARN :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
    -- used for Amazon S3 server-side encryption. Storage Gateway does not
    -- support asymmetric CMKs. This value can only be set when @KMSEncrypted@
    -- is @true@. Optional.
    kmsKey :: Prelude.Maybe Prelude.Text,
    -- | Specifies refresh cache information for the file share.
    cacheAttributes :: Prelude.Maybe CacheAttributes,
    -- | A value that sets the access control list (ACL) permission for objects
    -- in the S3 bucket that a S3 File Gateway puts objects into. The default
    -- value is @private@.
    objectACL :: Prelude.Maybe ObjectACL,
    -- | Set to @true@ to use Amazon S3 server-side encryption with your own KMS
    -- key, or @false@ to use a key managed by Amazon S3. Optional.
    --
    -- Valid Values: @true@ | @false@
    kmsEncrypted :: Prelude.Maybe Prelude.Bool,
    -- | The default storage class for objects put into an Amazon S3 bucket by
    -- the S3 File Gateway. The default value is @S3_INTELLIGENT_TIERING@.
    -- Optional.
    --
    -- Valid Values: @S3_STANDARD@ | @S3_INTELLIGENT_TIERING@ |
    -- @S3_STANDARD_IA@ | @S3_ONEZONE_IA@
    defaultStorageClass :: Prelude.Maybe Prelude.Text,
    -- | The name of the file share. Optional.
    --
    -- @FileShareName@ must be set if an S3 prefix name is set in
    -- @LocationARN@, or if an access point or access point alias is used.
    fileShareName :: Prelude.Maybe Prelude.Text,
    -- | The notification policy of the file share. @SettlingTimeInSeconds@
    -- controls the number of seconds to wait after the last point in time a
    -- client wrote to a file before generating an @ObjectUploaded@
    -- notification. Because clients can make many small writes to files, it\'s
    -- best to set this parameter for as long as possible to avoid generating
    -- multiple notifications for the same file in a small time period.
    --
    -- @SettlingTimeInSeconds@ has no effect on the timing of the object
    -- uploading to Amazon S3, only the timing of the notification.
    --
    -- The following example sets @NotificationPolicy@ on with
    -- @SettlingTimeInSeconds@ set to 60.
    --
    -- @{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}@
    --
    -- The following example sets @NotificationPolicy@ off.
    --
    -- @{}@
    notificationPolicy :: Prelude.Maybe Prelude.Text,
    -- | The user mapped to anonymous user.
    --
    -- Valid values are the following:
    --
    -- -   @RootSquash@: Only root is mapped to anonymous user.
    --
    -- -   @NoSquash@: No one is mapped to anonymous user.
    --
    -- -   @AllSquash@: Everyone is mapped to anonymous user.
    squash :: Prelude.Maybe Prelude.Text,
    -- | A value that sets who pays the cost of the request and the cost
    -- associated with data download from the S3 bucket. If this value is set
    -- to @true@, the requester pays the costs; otherwise, the S3 bucket owner
    -- pays. However, the S3 bucket owner always pays the cost of storing data.
    --
    -- @RequesterPays@ is a configuration for the S3 bucket that backs the file
    -- share, so make sure that the configuration on the file share is the same
    -- as the S3 bucket configuration.
    --
    -- Valid Values: @true@ | @false@
    requesterPays :: Prelude.Maybe Prelude.Bool,
    -- | The default values for the file share. Optional.
    nFSFileShareDefaults :: Prelude.Maybe NFSFileShareDefaults,
    -- | The list of clients that are allowed to access the S3 File Gateway. The
    -- list must contain either valid IP addresses or valid CIDR blocks.
    clientList :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | A value that enables guessing of the MIME type for uploaded objects
    -- based on file extensions. Set this value to @true@ to enable MIME type
    -- guessing, otherwise set to @false@. The default value is @true@.
    --
    -- Valid Values: @true@ | @false@
    guessMIMETypeEnabled :: Prelude.Maybe Prelude.Bool,
    -- | A value that sets the write status of a file share. Set this value to
    -- @true@ to set the write status to read-only, otherwise set to @false@.
    --
    -- Valid Values: @true@ | @false@
    readOnly :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of the file share to be updated.
    fileShareARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateNFSFileShare' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'auditDestinationARN', 'updateNFSFileShare_auditDestinationARN' - The Amazon Resource Name (ARN) of the storage used for audit logs.
--
-- 'kmsKey', 'updateNFSFileShare_kmsKey' - The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
-- used for Amazon S3 server-side encryption. Storage Gateway does not
-- support asymmetric CMKs. This value can only be set when @KMSEncrypted@
-- is @true@. Optional.
--
-- 'cacheAttributes', 'updateNFSFileShare_cacheAttributes' - Specifies refresh cache information for the file share.
--
-- 'objectACL', 'updateNFSFileShare_objectACL' - A value that sets the access control list (ACL) permission for objects
-- in the S3 bucket that a S3 File Gateway puts objects into. The default
-- value is @private@.
--
-- 'kmsEncrypted', 'updateNFSFileShare_kmsEncrypted' - Set to @true@ to use Amazon S3 server-side encryption with your own KMS
-- key, or @false@ to use a key managed by Amazon S3. Optional.
--
-- Valid Values: @true@ | @false@
--
-- 'defaultStorageClass', 'updateNFSFileShare_defaultStorageClass' - The default storage class for objects put into an Amazon S3 bucket by
-- the S3 File Gateway. The default value is @S3_INTELLIGENT_TIERING@.
-- Optional.
--
-- Valid Values: @S3_STANDARD@ | @S3_INTELLIGENT_TIERING@ |
-- @S3_STANDARD_IA@ | @S3_ONEZONE_IA@
--
-- 'fileShareName', 'updateNFSFileShare_fileShareName' - The name of the file share. Optional.
--
-- @FileShareName@ must be set if an S3 prefix name is set in
-- @LocationARN@, or if an access point or access point alias is used.
--
-- 'notificationPolicy', 'updateNFSFileShare_notificationPolicy' - The notification policy of the file share. @SettlingTimeInSeconds@
-- controls the number of seconds to wait after the last point in time a
-- client wrote to a file before generating an @ObjectUploaded@
-- notification. Because clients can make many small writes to files, it\'s
-- best to set this parameter for as long as possible to avoid generating
-- multiple notifications for the same file in a small time period.
--
-- @SettlingTimeInSeconds@ has no effect on the timing of the object
-- uploading to Amazon S3, only the timing of the notification.
--
-- The following example sets @NotificationPolicy@ on with
-- @SettlingTimeInSeconds@ set to 60.
--
-- @{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}@
--
-- The following example sets @NotificationPolicy@ off.
--
-- @{}@
--
-- 'squash', 'updateNFSFileShare_squash' - The user mapped to anonymous user.
--
-- Valid values are the following:
--
-- -   @RootSquash@: Only root is mapped to anonymous user.
--
-- -   @NoSquash@: No one is mapped to anonymous user.
--
-- -   @AllSquash@: Everyone is mapped to anonymous user.
--
-- 'requesterPays', 'updateNFSFileShare_requesterPays' - A value that sets who pays the cost of the request and the cost
-- associated with data download from the S3 bucket. If this value is set
-- to @true@, the requester pays the costs; otherwise, the S3 bucket owner
-- pays. However, the S3 bucket owner always pays the cost of storing data.
--
-- @RequesterPays@ is a configuration for the S3 bucket that backs the file
-- share, so make sure that the configuration on the file share is the same
-- as the S3 bucket configuration.
--
-- Valid Values: @true@ | @false@
--
-- 'nFSFileShareDefaults', 'updateNFSFileShare_nFSFileShareDefaults' - The default values for the file share. Optional.
--
-- 'clientList', 'updateNFSFileShare_clientList' - The list of clients that are allowed to access the S3 File Gateway. The
-- list must contain either valid IP addresses or valid CIDR blocks.
--
-- 'guessMIMETypeEnabled', 'updateNFSFileShare_guessMIMETypeEnabled' - A value that enables guessing of the MIME type for uploaded objects
-- based on file extensions. Set this value to @true@ to enable MIME type
-- guessing, otherwise set to @false@. The default value is @true@.
--
-- Valid Values: @true@ | @false@
--
-- 'readOnly', 'updateNFSFileShare_readOnly' - A value that sets the write status of a file share. Set this value to
-- @true@ to set the write status to read-only, otherwise set to @false@.
--
-- Valid Values: @true@ | @false@
--
-- 'fileShareARN', 'updateNFSFileShare_fileShareARN' - The Amazon Resource Name (ARN) of the file share to be updated.
newUpdateNFSFileShare ::
  -- | 'fileShareARN'
  Prelude.Text ->
  UpdateNFSFileShare
newUpdateNFSFileShare pFileShareARN_ =
  UpdateNFSFileShare'
    { auditDestinationARN =
        Prelude.Nothing,
      kmsKey = Prelude.Nothing,
      cacheAttributes = Prelude.Nothing,
      objectACL = Prelude.Nothing,
      kmsEncrypted = Prelude.Nothing,
      defaultStorageClass = Prelude.Nothing,
      fileShareName = Prelude.Nothing,
      notificationPolicy = Prelude.Nothing,
      squash = Prelude.Nothing,
      requesterPays = Prelude.Nothing,
      nFSFileShareDefaults = Prelude.Nothing,
      clientList = Prelude.Nothing,
      guessMIMETypeEnabled = Prelude.Nothing,
      readOnly = Prelude.Nothing,
      fileShareARN = pFileShareARN_
    }

-- | The Amazon Resource Name (ARN) of the storage used for audit logs.
updateNFSFileShare_auditDestinationARN :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Text)
updateNFSFileShare_auditDestinationARN = Lens.lens (\UpdateNFSFileShare' {auditDestinationARN} -> auditDestinationARN) (\s@UpdateNFSFileShare' {} a -> s {auditDestinationARN = a} :: UpdateNFSFileShare)

-- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
-- used for Amazon S3 server-side encryption. Storage Gateway does not
-- support asymmetric CMKs. This value can only be set when @KMSEncrypted@
-- is @true@. Optional.
updateNFSFileShare_kmsKey :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Text)
updateNFSFileShare_kmsKey = Lens.lens (\UpdateNFSFileShare' {kmsKey} -> kmsKey) (\s@UpdateNFSFileShare' {} a -> s {kmsKey = a} :: UpdateNFSFileShare)

-- | Specifies refresh cache information for the file share.
updateNFSFileShare_cacheAttributes :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe CacheAttributes)
updateNFSFileShare_cacheAttributes = Lens.lens (\UpdateNFSFileShare' {cacheAttributes} -> cacheAttributes) (\s@UpdateNFSFileShare' {} a -> s {cacheAttributes = a} :: UpdateNFSFileShare)

-- | A value that sets the access control list (ACL) permission for objects
-- in the S3 bucket that a S3 File Gateway puts objects into. The default
-- value is @private@.
updateNFSFileShare_objectACL :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe ObjectACL)
updateNFSFileShare_objectACL = Lens.lens (\UpdateNFSFileShare' {objectACL} -> objectACL) (\s@UpdateNFSFileShare' {} a -> s {objectACL = a} :: UpdateNFSFileShare)

-- | Set to @true@ to use Amazon S3 server-side encryption with your own KMS
-- key, or @false@ to use a key managed by Amazon S3. Optional.
--
-- Valid Values: @true@ | @false@
updateNFSFileShare_kmsEncrypted :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Bool)
updateNFSFileShare_kmsEncrypted = Lens.lens (\UpdateNFSFileShare' {kmsEncrypted} -> kmsEncrypted) (\s@UpdateNFSFileShare' {} a -> s {kmsEncrypted = a} :: UpdateNFSFileShare)

-- | The default storage class for objects put into an Amazon S3 bucket by
-- the S3 File Gateway. The default value is @S3_INTELLIGENT_TIERING@.
-- Optional.
--
-- Valid Values: @S3_STANDARD@ | @S3_INTELLIGENT_TIERING@ |
-- @S3_STANDARD_IA@ | @S3_ONEZONE_IA@
updateNFSFileShare_defaultStorageClass :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Text)
updateNFSFileShare_defaultStorageClass = Lens.lens (\UpdateNFSFileShare' {defaultStorageClass} -> defaultStorageClass) (\s@UpdateNFSFileShare' {} a -> s {defaultStorageClass = a} :: UpdateNFSFileShare)

-- | The name of the file share. Optional.
--
-- @FileShareName@ must be set if an S3 prefix name is set in
-- @LocationARN@, or if an access point or access point alias is used.
updateNFSFileShare_fileShareName :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Text)
updateNFSFileShare_fileShareName = Lens.lens (\UpdateNFSFileShare' {fileShareName} -> fileShareName) (\s@UpdateNFSFileShare' {} a -> s {fileShareName = a} :: UpdateNFSFileShare)

-- | The notification policy of the file share. @SettlingTimeInSeconds@
-- controls the number of seconds to wait after the last point in time a
-- client wrote to a file before generating an @ObjectUploaded@
-- notification. Because clients can make many small writes to files, it\'s
-- best to set this parameter for as long as possible to avoid generating
-- multiple notifications for the same file in a small time period.
--
-- @SettlingTimeInSeconds@ has no effect on the timing of the object
-- uploading to Amazon S3, only the timing of the notification.
--
-- The following example sets @NotificationPolicy@ on with
-- @SettlingTimeInSeconds@ set to 60.
--
-- @{\\\"Upload\\\": {\\\"SettlingTimeInSeconds\\\": 60}}@
--
-- The following example sets @NotificationPolicy@ off.
--
-- @{}@
updateNFSFileShare_notificationPolicy :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Text)
updateNFSFileShare_notificationPolicy = Lens.lens (\UpdateNFSFileShare' {notificationPolicy} -> notificationPolicy) (\s@UpdateNFSFileShare' {} a -> s {notificationPolicy = a} :: UpdateNFSFileShare)

-- | The user mapped to anonymous user.
--
-- Valid values are the following:
--
-- -   @RootSquash@: Only root is mapped to anonymous user.
--
-- -   @NoSquash@: No one is mapped to anonymous user.
--
-- -   @AllSquash@: Everyone is mapped to anonymous user.
updateNFSFileShare_squash :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Text)
updateNFSFileShare_squash = Lens.lens (\UpdateNFSFileShare' {squash} -> squash) (\s@UpdateNFSFileShare' {} a -> s {squash = a} :: UpdateNFSFileShare)

-- | A value that sets who pays the cost of the request and the cost
-- associated with data download from the S3 bucket. If this value is set
-- to @true@, the requester pays the costs; otherwise, the S3 bucket owner
-- pays. However, the S3 bucket owner always pays the cost of storing data.
--
-- @RequesterPays@ is a configuration for the S3 bucket that backs the file
-- share, so make sure that the configuration on the file share is the same
-- as the S3 bucket configuration.
--
-- Valid Values: @true@ | @false@
updateNFSFileShare_requesterPays :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Bool)
updateNFSFileShare_requesterPays = Lens.lens (\UpdateNFSFileShare' {requesterPays} -> requesterPays) (\s@UpdateNFSFileShare' {} a -> s {requesterPays = a} :: UpdateNFSFileShare)

-- | The default values for the file share. Optional.
updateNFSFileShare_nFSFileShareDefaults :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe NFSFileShareDefaults)
updateNFSFileShare_nFSFileShareDefaults = Lens.lens (\UpdateNFSFileShare' {nFSFileShareDefaults} -> nFSFileShareDefaults) (\s@UpdateNFSFileShare' {} a -> s {nFSFileShareDefaults = a} :: UpdateNFSFileShare)

-- | The list of clients that are allowed to access the S3 File Gateway. The
-- list must contain either valid IP addresses or valid CIDR blocks.
updateNFSFileShare_clientList :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
updateNFSFileShare_clientList = Lens.lens (\UpdateNFSFileShare' {clientList} -> clientList) (\s@UpdateNFSFileShare' {} a -> s {clientList = a} :: UpdateNFSFileShare) Prelude.. Lens.mapping Lens.coerced

-- | A value that enables guessing of the MIME type for uploaded objects
-- based on file extensions. Set this value to @true@ to enable MIME type
-- guessing, otherwise set to @false@. The default value is @true@.
--
-- Valid Values: @true@ | @false@
updateNFSFileShare_guessMIMETypeEnabled :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Bool)
updateNFSFileShare_guessMIMETypeEnabled = Lens.lens (\UpdateNFSFileShare' {guessMIMETypeEnabled} -> guessMIMETypeEnabled) (\s@UpdateNFSFileShare' {} a -> s {guessMIMETypeEnabled = a} :: UpdateNFSFileShare)

-- | A value that sets the write status of a file share. Set this value to
-- @true@ to set the write status to read-only, otherwise set to @false@.
--
-- Valid Values: @true@ | @false@
updateNFSFileShare_readOnly :: Lens.Lens' UpdateNFSFileShare (Prelude.Maybe Prelude.Bool)
updateNFSFileShare_readOnly = Lens.lens (\UpdateNFSFileShare' {readOnly} -> readOnly) (\s@UpdateNFSFileShare' {} a -> s {readOnly = a} :: UpdateNFSFileShare)

-- | The Amazon Resource Name (ARN) of the file share to be updated.
updateNFSFileShare_fileShareARN :: Lens.Lens' UpdateNFSFileShare Prelude.Text
updateNFSFileShare_fileShareARN = Lens.lens (\UpdateNFSFileShare' {fileShareARN} -> fileShareARN) (\s@UpdateNFSFileShare' {} a -> s {fileShareARN = a} :: UpdateNFSFileShare)

instance Core.AWSRequest UpdateNFSFileShare where
  type
    AWSResponse UpdateNFSFileShare =
      UpdateNFSFileShareResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateNFSFileShareResponse'
            Prelude.<$> (x Core..?> "FileShareARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateNFSFileShare

instance Prelude.NFData UpdateNFSFileShare

instance Core.ToHeaders UpdateNFSFileShare where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "StorageGateway_20130630.UpdateNFSFileShare" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON UpdateNFSFileShare where
  toJSON UpdateNFSFileShare' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("AuditDestinationARN" Core..=)
              Prelude.<$> auditDestinationARN,
            ("KMSKey" Core..=) Prelude.<$> kmsKey,
            ("CacheAttributes" Core..=)
              Prelude.<$> cacheAttributes,
            ("ObjectACL" Core..=) Prelude.<$> objectACL,
            ("KMSEncrypted" Core..=) Prelude.<$> kmsEncrypted,
            ("DefaultStorageClass" Core..=)
              Prelude.<$> defaultStorageClass,
            ("FileShareName" Core..=) Prelude.<$> fileShareName,
            ("NotificationPolicy" Core..=)
              Prelude.<$> notificationPolicy,
            ("Squash" Core..=) Prelude.<$> squash,
            ("RequesterPays" Core..=) Prelude.<$> requesterPays,
            ("NFSFileShareDefaults" Core..=)
              Prelude.<$> nFSFileShareDefaults,
            ("ClientList" Core..=) Prelude.<$> clientList,
            ("GuessMIMETypeEnabled" Core..=)
              Prelude.<$> guessMIMETypeEnabled,
            ("ReadOnly" Core..=) Prelude.<$> readOnly,
            Prelude.Just ("FileShareARN" Core..= fileShareARN)
          ]
      )

instance Core.ToPath UpdateNFSFileShare where
  toPath = Prelude.const "/"

instance Core.ToQuery UpdateNFSFileShare where
  toQuery = Prelude.const Prelude.mempty

-- | UpdateNFSFileShareOutput
--
-- /See:/ 'newUpdateNFSFileShareResponse' smart constructor.
data UpdateNFSFileShareResponse = UpdateNFSFileShareResponse'
  { -- | The Amazon Resource Name (ARN) of the updated file share.
    fileShareARN :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateNFSFileShareResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fileShareARN', 'updateNFSFileShareResponse_fileShareARN' - The Amazon Resource Name (ARN) of the updated file share.
--
-- 'httpStatus', 'updateNFSFileShareResponse_httpStatus' - The response's http status code.
newUpdateNFSFileShareResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateNFSFileShareResponse
newUpdateNFSFileShareResponse pHttpStatus_ =
  UpdateNFSFileShareResponse'
    { fileShareARN =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the updated file share.
updateNFSFileShareResponse_fileShareARN :: Lens.Lens' UpdateNFSFileShareResponse (Prelude.Maybe Prelude.Text)
updateNFSFileShareResponse_fileShareARN = Lens.lens (\UpdateNFSFileShareResponse' {fileShareARN} -> fileShareARN) (\s@UpdateNFSFileShareResponse' {} a -> s {fileShareARN = a} :: UpdateNFSFileShareResponse)

-- | The response's http status code.
updateNFSFileShareResponse_httpStatus :: Lens.Lens' UpdateNFSFileShareResponse Prelude.Int
updateNFSFileShareResponse_httpStatus = Lens.lens (\UpdateNFSFileShareResponse' {httpStatus} -> httpStatus) (\s@UpdateNFSFileShareResponse' {} a -> s {httpStatus = a} :: UpdateNFSFileShareResponse)

instance Prelude.NFData UpdateNFSFileShareResponse
