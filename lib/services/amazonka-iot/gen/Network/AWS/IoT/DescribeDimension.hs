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
-- Module      : Network.AWS.IoT.DescribeDimension
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides details about a dimension that is defined in your Amazon Web
-- Services accounts.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions DescribeDimension>
-- action.
module Network.AWS.IoT.DescribeDimension
  ( -- * Creating a Request
    DescribeDimension (..),
    newDescribeDimension,

    -- * Request Lenses
    describeDimension_name,

    -- * Destructuring the Response
    DescribeDimensionResponse (..),
    newDescribeDimensionResponse,

    -- * Response Lenses
    describeDimensionResponse_lastModifiedDate,
    describeDimensionResponse_arn,
    describeDimensionResponse_stringValues,
    describeDimensionResponse_name,
    describeDimensionResponse_creationDate,
    describeDimensionResponse_type,
    describeDimensionResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDimension' smart constructor.
data DescribeDimension = DescribeDimension'
  { -- | The unique identifier for the dimension.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDimension' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'describeDimension_name' - The unique identifier for the dimension.
newDescribeDimension ::
  -- | 'name'
  Prelude.Text ->
  DescribeDimension
newDescribeDimension pName_ =
  DescribeDimension' {name = pName_}

-- | The unique identifier for the dimension.
describeDimension_name :: Lens.Lens' DescribeDimension Prelude.Text
describeDimension_name = Lens.lens (\DescribeDimension' {name} -> name) (\s@DescribeDimension' {} a -> s {name = a} :: DescribeDimension)

instance Core.AWSRequest DescribeDimension where
  type
    AWSResponse DescribeDimension =
      DescribeDimensionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDimensionResponse'
            Prelude.<$> (x Core..?> "lastModifiedDate")
            Prelude.<*> (x Core..?> "arn")
            Prelude.<*> (x Core..?> "stringValues")
            Prelude.<*> (x Core..?> "name")
            Prelude.<*> (x Core..?> "creationDate")
            Prelude.<*> (x Core..?> "type")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDimension

instance Prelude.NFData DescribeDimension

instance Core.ToHeaders DescribeDimension where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeDimension where
  toPath DescribeDimension' {..} =
    Prelude.mconcat ["/dimensions/", Core.toBS name]

instance Core.ToQuery DescribeDimension where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeDimensionResponse' smart constructor.
data DescribeDimensionResponse = DescribeDimensionResponse'
  { -- | The date the dimension was last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The Amazon Resource Name (ARN) for the dimension.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The value or list of values used to scope the dimension. For example,
    -- for topic filters, this is the pattern used to match the MQTT topic
    -- name.
    stringValues :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The unique identifier for the dimension.
    name :: Prelude.Maybe Prelude.Text,
    -- | The date the dimension was created.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The type of the dimension.
    type' :: Prelude.Maybe DimensionType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeDimensionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedDate', 'describeDimensionResponse_lastModifiedDate' - The date the dimension was last modified.
--
-- 'arn', 'describeDimensionResponse_arn' - The Amazon Resource Name (ARN) for the dimension.
--
-- 'stringValues', 'describeDimensionResponse_stringValues' - The value or list of values used to scope the dimension. For example,
-- for topic filters, this is the pattern used to match the MQTT topic
-- name.
--
-- 'name', 'describeDimensionResponse_name' - The unique identifier for the dimension.
--
-- 'creationDate', 'describeDimensionResponse_creationDate' - The date the dimension was created.
--
-- 'type'', 'describeDimensionResponse_type' - The type of the dimension.
--
-- 'httpStatus', 'describeDimensionResponse_httpStatus' - The response's http status code.
newDescribeDimensionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDimensionResponse
newDescribeDimensionResponse pHttpStatus_ =
  DescribeDimensionResponse'
    { lastModifiedDate =
        Prelude.Nothing,
      arn = Prelude.Nothing,
      stringValues = Prelude.Nothing,
      name = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      type' = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The date the dimension was last modified.
describeDimensionResponse_lastModifiedDate :: Lens.Lens' DescribeDimensionResponse (Prelude.Maybe Prelude.UTCTime)
describeDimensionResponse_lastModifiedDate = Lens.lens (\DescribeDimensionResponse' {lastModifiedDate} -> lastModifiedDate) (\s@DescribeDimensionResponse' {} a -> s {lastModifiedDate = a} :: DescribeDimensionResponse) Prelude.. Lens.mapping Core._Time

-- | The Amazon Resource Name (ARN) for the dimension.
describeDimensionResponse_arn :: Lens.Lens' DescribeDimensionResponse (Prelude.Maybe Prelude.Text)
describeDimensionResponse_arn = Lens.lens (\DescribeDimensionResponse' {arn} -> arn) (\s@DescribeDimensionResponse' {} a -> s {arn = a} :: DescribeDimensionResponse)

-- | The value or list of values used to scope the dimension. For example,
-- for topic filters, this is the pattern used to match the MQTT topic
-- name.
describeDimensionResponse_stringValues :: Lens.Lens' DescribeDimensionResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
describeDimensionResponse_stringValues = Lens.lens (\DescribeDimensionResponse' {stringValues} -> stringValues) (\s@DescribeDimensionResponse' {} a -> s {stringValues = a} :: DescribeDimensionResponse) Prelude.. Lens.mapping Lens.coerced

-- | The unique identifier for the dimension.
describeDimensionResponse_name :: Lens.Lens' DescribeDimensionResponse (Prelude.Maybe Prelude.Text)
describeDimensionResponse_name = Lens.lens (\DescribeDimensionResponse' {name} -> name) (\s@DescribeDimensionResponse' {} a -> s {name = a} :: DescribeDimensionResponse)

-- | The date the dimension was created.
describeDimensionResponse_creationDate :: Lens.Lens' DescribeDimensionResponse (Prelude.Maybe Prelude.UTCTime)
describeDimensionResponse_creationDate = Lens.lens (\DescribeDimensionResponse' {creationDate} -> creationDate) (\s@DescribeDimensionResponse' {} a -> s {creationDate = a} :: DescribeDimensionResponse) Prelude.. Lens.mapping Core._Time

-- | The type of the dimension.
describeDimensionResponse_type :: Lens.Lens' DescribeDimensionResponse (Prelude.Maybe DimensionType)
describeDimensionResponse_type = Lens.lens (\DescribeDimensionResponse' {type'} -> type') (\s@DescribeDimensionResponse' {} a -> s {type' = a} :: DescribeDimensionResponse)

-- | The response's http status code.
describeDimensionResponse_httpStatus :: Lens.Lens' DescribeDimensionResponse Prelude.Int
describeDimensionResponse_httpStatus = Lens.lens (\DescribeDimensionResponse' {httpStatus} -> httpStatus) (\s@DescribeDimensionResponse' {} a -> s {httpStatus = a} :: DescribeDimensionResponse)

instance Prelude.NFData DescribeDimensionResponse
