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
-- Module      : Network.AWS.IoT.DescribeEventConfigurations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes event configurations.
--
-- Requires permission to access the
-- <https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions DescribeEventConfigurations>
-- action.
module Network.AWS.IoT.DescribeEventConfigurations
  ( -- * Creating a Request
    DescribeEventConfigurations (..),
    newDescribeEventConfigurations,

    -- * Destructuring the Response
    DescribeEventConfigurationsResponse (..),
    newDescribeEventConfigurationsResponse,

    -- * Response Lenses
    describeEventConfigurationsResponse_lastModifiedDate,
    describeEventConfigurationsResponse_eventConfigurations,
    describeEventConfigurationsResponse_creationDate,
    describeEventConfigurationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeEventConfigurations' smart constructor.
data DescribeEventConfigurations = DescribeEventConfigurations'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventConfigurations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDescribeEventConfigurations ::
  DescribeEventConfigurations
newDescribeEventConfigurations =
  DescribeEventConfigurations'

instance Core.AWSRequest DescribeEventConfigurations where
  type
    AWSResponse DescribeEventConfigurations =
      DescribeEventConfigurationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEventConfigurationsResponse'
            Prelude.<$> (x Core..?> "lastModifiedDate")
            Prelude.<*> ( x Core..?> "eventConfigurations"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "creationDate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEventConfigurations

instance Prelude.NFData DescribeEventConfigurations

instance Core.ToHeaders DescribeEventConfigurations where
  toHeaders = Prelude.const Prelude.mempty

instance Core.ToPath DescribeEventConfigurations where
  toPath = Prelude.const "/event-configurations"

instance Core.ToQuery DescribeEventConfigurations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEventConfigurationsResponse' smart constructor.
data DescribeEventConfigurationsResponse = DescribeEventConfigurationsResponse'
  { -- | The date the event configurations were last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The event configurations.
    eventConfigurations :: Prelude.Maybe (Prelude.HashMap EventType Configuration),
    -- | The creation date of the event configuration.
    creationDate :: Prelude.Maybe Core.POSIX,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventConfigurationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedDate', 'describeEventConfigurationsResponse_lastModifiedDate' - The date the event configurations were last modified.
--
-- 'eventConfigurations', 'describeEventConfigurationsResponse_eventConfigurations' - The event configurations.
--
-- 'creationDate', 'describeEventConfigurationsResponse_creationDate' - The creation date of the event configuration.
--
-- 'httpStatus', 'describeEventConfigurationsResponse_httpStatus' - The response's http status code.
newDescribeEventConfigurationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventConfigurationsResponse
newDescribeEventConfigurationsResponse pHttpStatus_ =
  DescribeEventConfigurationsResponse'
    { lastModifiedDate =
        Prelude.Nothing,
      eventConfigurations = Prelude.Nothing,
      creationDate = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The date the event configurations were last modified.
describeEventConfigurationsResponse_lastModifiedDate :: Lens.Lens' DescribeEventConfigurationsResponse (Prelude.Maybe Prelude.UTCTime)
describeEventConfigurationsResponse_lastModifiedDate = Lens.lens (\DescribeEventConfigurationsResponse' {lastModifiedDate} -> lastModifiedDate) (\s@DescribeEventConfigurationsResponse' {} a -> s {lastModifiedDate = a} :: DescribeEventConfigurationsResponse) Prelude.. Lens.mapping Core._Time

-- | The event configurations.
describeEventConfigurationsResponse_eventConfigurations :: Lens.Lens' DescribeEventConfigurationsResponse (Prelude.Maybe (Prelude.HashMap EventType Configuration))
describeEventConfigurationsResponse_eventConfigurations = Lens.lens (\DescribeEventConfigurationsResponse' {eventConfigurations} -> eventConfigurations) (\s@DescribeEventConfigurationsResponse' {} a -> s {eventConfigurations = a} :: DescribeEventConfigurationsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The creation date of the event configuration.
describeEventConfigurationsResponse_creationDate :: Lens.Lens' DescribeEventConfigurationsResponse (Prelude.Maybe Prelude.UTCTime)
describeEventConfigurationsResponse_creationDate = Lens.lens (\DescribeEventConfigurationsResponse' {creationDate} -> creationDate) (\s@DescribeEventConfigurationsResponse' {} a -> s {creationDate = a} :: DescribeEventConfigurationsResponse) Prelude.. Lens.mapping Core._Time

-- | The response's http status code.
describeEventConfigurationsResponse_httpStatus :: Lens.Lens' DescribeEventConfigurationsResponse Prelude.Int
describeEventConfigurationsResponse_httpStatus = Lens.lens (\DescribeEventConfigurationsResponse' {httpStatus} -> httpStatus) (\s@DescribeEventConfigurationsResponse' {} a -> s {httpStatus = a} :: DescribeEventConfigurationsResponse)

instance
  Prelude.NFData
    DescribeEventConfigurationsResponse
