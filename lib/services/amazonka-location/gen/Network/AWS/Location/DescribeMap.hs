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
-- Module      : Network.AWS.Location.DescribeMap
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the map resource details.
module Network.AWS.Location.DescribeMap
  ( -- * Creating a Request
    DescribeMap (..),
    newDescribeMap,

    -- * Request Lenses
    describeMap_mapName,

    -- * Destructuring the Response
    DescribeMapResponse (..),
    newDescribeMapResponse,

    -- * Response Lenses
    describeMapResponse_tags,
    describeMapResponse_httpStatus,
    describeMapResponse_configuration,
    describeMapResponse_createTime,
    describeMapResponse_dataSource,
    describeMapResponse_description,
    describeMapResponse_mapArn,
    describeMapResponse_mapName,
    describeMapResponse_pricingPlan,
    describeMapResponse_updateTime,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeMap' smart constructor.
data DescribeMap = DescribeMap'
  { -- | The name of the map resource.
    mapName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMap' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mapName', 'describeMap_mapName' - The name of the map resource.
newDescribeMap ::
  -- | 'mapName'
  Prelude.Text ->
  DescribeMap
newDescribeMap pMapName_ =
  DescribeMap' {mapName = pMapName_}

-- | The name of the map resource.
describeMap_mapName :: Lens.Lens' DescribeMap Prelude.Text
describeMap_mapName = Lens.lens (\DescribeMap' {mapName} -> mapName) (\s@DescribeMap' {} a -> s {mapName = a} :: DescribeMap)

instance Core.AWSRequest DescribeMap where
  type AWSResponse DescribeMap = DescribeMapResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeMapResponse'
            Prelude.<$> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Configuration")
            Prelude.<*> (x Core..:> "CreateTime")
            Prelude.<*> (x Core..:> "DataSource")
            Prelude.<*> (x Core..:> "Description")
            Prelude.<*> (x Core..:> "MapArn")
            Prelude.<*> (x Core..:> "MapName")
            Prelude.<*> (x Core..:> "PricingPlan")
            Prelude.<*> (x Core..:> "UpdateTime")
      )

instance Prelude.Hashable DescribeMap

instance Prelude.NFData DescribeMap

instance Core.ToHeaders DescribeMap where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeMap where
  toPath DescribeMap' {..} =
    Prelude.mconcat
      ["/maps/v0/maps/", Core.toBS mapName]

instance Core.ToQuery DescribeMap where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeMapResponse' smart constructor.
data DescribeMapResponse = DescribeMapResponse'
  { -- | Tags associated with the map resource.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Specifies the map tile style selected from a partner data provider.
    configuration :: MapConfiguration,
    -- | The timestamp for when the map resource was created in
    -- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
    -- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
    createTime :: Core.POSIX,
    -- | Specifies the data provider for the associated map tiles.
    dataSource :: Prelude.Text,
    -- | The optional description for the map resource.
    description :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) for the map resource. Used to specify a
    -- resource across all AWS.
    --
    -- -   Format example: @arn:aws:geo:region:account-id:maps\/ExampleMap@
    mapArn :: Prelude.Text,
    -- | The map style selected from an available provider.
    mapName :: Prelude.Text,
    -- | The pricing plan selected for the specified map resource.
    --
    -- >  <p>For additional details and restrictions on each pricing plan option, see <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service pricing</a>.</p>
    pricingPlan :: PricingPlan,
    -- | The timestamp for when the map resource was last update in
    -- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
    -- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
    updateTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeMapResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'describeMapResponse_tags' - Tags associated with the map resource.
--
-- 'httpStatus', 'describeMapResponse_httpStatus' - The response's http status code.
--
-- 'configuration', 'describeMapResponse_configuration' - Specifies the map tile style selected from a partner data provider.
--
-- 'createTime', 'describeMapResponse_createTime' - The timestamp for when the map resource was created in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
--
-- 'dataSource', 'describeMapResponse_dataSource' - Specifies the data provider for the associated map tiles.
--
-- 'description', 'describeMapResponse_description' - The optional description for the map resource.
--
-- 'mapArn', 'describeMapResponse_mapArn' - The Amazon Resource Name (ARN) for the map resource. Used to specify a
-- resource across all AWS.
--
-- -   Format example: @arn:aws:geo:region:account-id:maps\/ExampleMap@
--
-- 'mapName', 'describeMapResponse_mapName' - The map style selected from an available provider.
--
-- 'pricingPlan', 'describeMapResponse_pricingPlan' - The pricing plan selected for the specified map resource.
--
-- >  <p>For additional details and restrictions on each pricing plan option, see <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service pricing</a>.</p>
--
-- 'updateTime', 'describeMapResponse_updateTime' - The timestamp for when the map resource was last update in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
newDescribeMapResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'configuration'
  MapConfiguration ->
  -- | 'createTime'
  Prelude.UTCTime ->
  -- | 'dataSource'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  -- | 'mapArn'
  Prelude.Text ->
  -- | 'mapName'
  Prelude.Text ->
  -- | 'pricingPlan'
  PricingPlan ->
  -- | 'updateTime'
  Prelude.UTCTime ->
  DescribeMapResponse
newDescribeMapResponse
  pHttpStatus_
  pConfiguration_
  pCreateTime_
  pDataSource_
  pDescription_
  pMapArn_
  pMapName_
  pPricingPlan_
  pUpdateTime_ =
    DescribeMapResponse'
      { tags = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        configuration = pConfiguration_,
        createTime = Core._Time Lens.# pCreateTime_,
        dataSource = pDataSource_,
        description = pDescription_,
        mapArn = pMapArn_,
        mapName = pMapName_,
        pricingPlan = pPricingPlan_,
        updateTime = Core._Time Lens.# pUpdateTime_
      }

-- | Tags associated with the map resource.
describeMapResponse_tags :: Lens.Lens' DescribeMapResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeMapResponse_tags = Lens.lens (\DescribeMapResponse' {tags} -> tags) (\s@DescribeMapResponse' {} a -> s {tags = a} :: DescribeMapResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeMapResponse_httpStatus :: Lens.Lens' DescribeMapResponse Prelude.Int
describeMapResponse_httpStatus = Lens.lens (\DescribeMapResponse' {httpStatus} -> httpStatus) (\s@DescribeMapResponse' {} a -> s {httpStatus = a} :: DescribeMapResponse)

-- | Specifies the map tile style selected from a partner data provider.
describeMapResponse_configuration :: Lens.Lens' DescribeMapResponse MapConfiguration
describeMapResponse_configuration = Lens.lens (\DescribeMapResponse' {configuration} -> configuration) (\s@DescribeMapResponse' {} a -> s {configuration = a} :: DescribeMapResponse)

-- | The timestamp for when the map resource was created in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
describeMapResponse_createTime :: Lens.Lens' DescribeMapResponse Prelude.UTCTime
describeMapResponse_createTime = Lens.lens (\DescribeMapResponse' {createTime} -> createTime) (\s@DescribeMapResponse' {} a -> s {createTime = a} :: DescribeMapResponse) Prelude.. Core._Time

-- | Specifies the data provider for the associated map tiles.
describeMapResponse_dataSource :: Lens.Lens' DescribeMapResponse Prelude.Text
describeMapResponse_dataSource = Lens.lens (\DescribeMapResponse' {dataSource} -> dataSource) (\s@DescribeMapResponse' {} a -> s {dataSource = a} :: DescribeMapResponse)

-- | The optional description for the map resource.
describeMapResponse_description :: Lens.Lens' DescribeMapResponse Prelude.Text
describeMapResponse_description = Lens.lens (\DescribeMapResponse' {description} -> description) (\s@DescribeMapResponse' {} a -> s {description = a} :: DescribeMapResponse)

-- | The Amazon Resource Name (ARN) for the map resource. Used to specify a
-- resource across all AWS.
--
-- -   Format example: @arn:aws:geo:region:account-id:maps\/ExampleMap@
describeMapResponse_mapArn :: Lens.Lens' DescribeMapResponse Prelude.Text
describeMapResponse_mapArn = Lens.lens (\DescribeMapResponse' {mapArn} -> mapArn) (\s@DescribeMapResponse' {} a -> s {mapArn = a} :: DescribeMapResponse)

-- | The map style selected from an available provider.
describeMapResponse_mapName :: Lens.Lens' DescribeMapResponse Prelude.Text
describeMapResponse_mapName = Lens.lens (\DescribeMapResponse' {mapName} -> mapName) (\s@DescribeMapResponse' {} a -> s {mapName = a} :: DescribeMapResponse)

-- | The pricing plan selected for the specified map resource.
--
-- >  <p>For additional details and restrictions on each pricing plan option, see <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service pricing</a>.</p>
describeMapResponse_pricingPlan :: Lens.Lens' DescribeMapResponse PricingPlan
describeMapResponse_pricingPlan = Lens.lens (\DescribeMapResponse' {pricingPlan} -> pricingPlan) (\s@DescribeMapResponse' {} a -> s {pricingPlan = a} :: DescribeMapResponse)

-- | The timestamp for when the map resource was last update in
-- <https://www.iso.org/iso-8601-date-and-time-format.html ISO 8601>
-- format: @YYYY-MM-DDThh:mm:ss.sssZ@.
describeMapResponse_updateTime :: Lens.Lens' DescribeMapResponse Prelude.UTCTime
describeMapResponse_updateTime = Lens.lens (\DescribeMapResponse' {updateTime} -> updateTime) (\s@DescribeMapResponse' {} a -> s {updateTime = a} :: DescribeMapResponse) Prelude.. Core._Time

instance Prelude.NFData DescribeMapResponse
