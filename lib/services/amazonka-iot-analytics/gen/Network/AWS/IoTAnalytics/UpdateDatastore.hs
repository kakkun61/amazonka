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
-- Module      : Network.AWS.IoTAnalytics.UpdateDatastore
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used to update the settings of a data store.
module Network.AWS.IoTAnalytics.UpdateDatastore
  ( -- * Creating a Request
    UpdateDatastore (..),
    newUpdateDatastore,

    -- * Request Lenses
    updateDatastore_fileFormatConfiguration,
    updateDatastore_retentionPeriod,
    updateDatastore_datastoreStorage,
    updateDatastore_datastoreName,

    -- * Destructuring the Response
    UpdateDatastoreResponse (..),
    newUpdateDatastoreResponse,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoTAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateDatastore' smart constructor.
data UpdateDatastore = UpdateDatastore'
  { -- | Contains the configuration information of file formats. IoT Analytics
    -- data stores support JSON and <https://parquet.apache.org/ Parquet>.
    --
    -- The default file format is JSON. You can specify only one format.
    --
    -- You can\'t change the file format after you create the data store.
    fileFormatConfiguration :: Prelude.Maybe FileFormatConfiguration,
    -- | How long, in days, message data is kept for the data store. The
    -- retention period can\'t be updated if the data store\'s Amazon S3
    -- storage is customer-managed.
    retentionPeriod :: Prelude.Maybe RetentionPeriod,
    -- | Where data in a data store is stored.. You can choose @serviceManagedS3@
    -- storage, @customerManagedS3@ storage, or @iotSiteWiseMultiLayerStorage@
    -- storage. The default is @serviceManagedS3@. You can\'t change the choice
    -- of Amazon S3 storage after your data store is created.
    datastoreStorage :: Prelude.Maybe DatastoreStorage,
    -- | The name of the data store to be updated.
    datastoreName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDatastore' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'fileFormatConfiguration', 'updateDatastore_fileFormatConfiguration' - Contains the configuration information of file formats. IoT Analytics
-- data stores support JSON and <https://parquet.apache.org/ Parquet>.
--
-- The default file format is JSON. You can specify only one format.
--
-- You can\'t change the file format after you create the data store.
--
-- 'retentionPeriod', 'updateDatastore_retentionPeriod' - How long, in days, message data is kept for the data store. The
-- retention period can\'t be updated if the data store\'s Amazon S3
-- storage is customer-managed.
--
-- 'datastoreStorage', 'updateDatastore_datastoreStorage' - Where data in a data store is stored.. You can choose @serviceManagedS3@
-- storage, @customerManagedS3@ storage, or @iotSiteWiseMultiLayerStorage@
-- storage. The default is @serviceManagedS3@. You can\'t change the choice
-- of Amazon S3 storage after your data store is created.
--
-- 'datastoreName', 'updateDatastore_datastoreName' - The name of the data store to be updated.
newUpdateDatastore ::
  -- | 'datastoreName'
  Prelude.Text ->
  UpdateDatastore
newUpdateDatastore pDatastoreName_ =
  UpdateDatastore'
    { fileFormatConfiguration =
        Prelude.Nothing,
      retentionPeriod = Prelude.Nothing,
      datastoreStorage = Prelude.Nothing,
      datastoreName = pDatastoreName_
    }

-- | Contains the configuration information of file formats. IoT Analytics
-- data stores support JSON and <https://parquet.apache.org/ Parquet>.
--
-- The default file format is JSON. You can specify only one format.
--
-- You can\'t change the file format after you create the data store.
updateDatastore_fileFormatConfiguration :: Lens.Lens' UpdateDatastore (Prelude.Maybe FileFormatConfiguration)
updateDatastore_fileFormatConfiguration = Lens.lens (\UpdateDatastore' {fileFormatConfiguration} -> fileFormatConfiguration) (\s@UpdateDatastore' {} a -> s {fileFormatConfiguration = a} :: UpdateDatastore)

-- | How long, in days, message data is kept for the data store. The
-- retention period can\'t be updated if the data store\'s Amazon S3
-- storage is customer-managed.
updateDatastore_retentionPeriod :: Lens.Lens' UpdateDatastore (Prelude.Maybe RetentionPeriod)
updateDatastore_retentionPeriod = Lens.lens (\UpdateDatastore' {retentionPeriod} -> retentionPeriod) (\s@UpdateDatastore' {} a -> s {retentionPeriod = a} :: UpdateDatastore)

-- | Where data in a data store is stored.. You can choose @serviceManagedS3@
-- storage, @customerManagedS3@ storage, or @iotSiteWiseMultiLayerStorage@
-- storage. The default is @serviceManagedS3@. You can\'t change the choice
-- of Amazon S3 storage after your data store is created.
updateDatastore_datastoreStorage :: Lens.Lens' UpdateDatastore (Prelude.Maybe DatastoreStorage)
updateDatastore_datastoreStorage = Lens.lens (\UpdateDatastore' {datastoreStorage} -> datastoreStorage) (\s@UpdateDatastore' {} a -> s {datastoreStorage = a} :: UpdateDatastore)

-- | The name of the data store to be updated.
updateDatastore_datastoreName :: Lens.Lens' UpdateDatastore Prelude.Text
updateDatastore_datastoreName = Lens.lens (\UpdateDatastore' {datastoreName} -> datastoreName) (\s@UpdateDatastore' {} a -> s {datastoreName = a} :: UpdateDatastore)

instance Core.AWSRequest UpdateDatastore where
  type
    AWSResponse UpdateDatastore =
      UpdateDatastoreResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveNull UpdateDatastoreResponse'

instance Prelude.Hashable UpdateDatastore

instance Prelude.NFData UpdateDatastore

instance Core.ToHeaders UpdateDatastore where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToJSON UpdateDatastore where
  toJSON UpdateDatastore' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("fileFormatConfiguration" Core..=)
              Prelude.<$> fileFormatConfiguration,
            ("retentionPeriod" Core..=)
              Prelude.<$> retentionPeriod,
            ("datastoreStorage" Core..=)
              Prelude.<$> datastoreStorage
          ]
      )

instance Core.ToPath UpdateDatastore where
  toPath UpdateDatastore' {..} =
    Prelude.mconcat
      ["/datastores/", Core.toBS datastoreName]

instance Core.ToQuery UpdateDatastore where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateDatastoreResponse' smart constructor.
data UpdateDatastoreResponse = UpdateDatastoreResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'UpdateDatastoreResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUpdateDatastoreResponse ::
  UpdateDatastoreResponse
newUpdateDatastoreResponse = UpdateDatastoreResponse'

instance Prelude.NFData UpdateDatastoreResponse
