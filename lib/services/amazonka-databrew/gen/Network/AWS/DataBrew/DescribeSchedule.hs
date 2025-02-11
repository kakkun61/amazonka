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
-- Module      : Network.AWS.DataBrew.DescribeSchedule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the definition of a specific DataBrew schedule.
module Network.AWS.DataBrew.DescribeSchedule
  ( -- * Creating a Request
    DescribeSchedule (..),
    newDescribeSchedule,

    -- * Request Lenses
    describeSchedule_name,

    -- * Destructuring the Response
    DescribeScheduleResponse (..),
    newDescribeScheduleResponse,

    -- * Response Lenses
    describeScheduleResponse_lastModifiedDate,
    describeScheduleResponse_createDate,
    describeScheduleResponse_createdBy,
    describeScheduleResponse_resourceArn,
    describeScheduleResponse_cronExpression,
    describeScheduleResponse_lastModifiedBy,
    describeScheduleResponse_jobNames,
    describeScheduleResponse_tags,
    describeScheduleResponse_httpStatus,
    describeScheduleResponse_name,
  )
where

import qualified Network.AWS.Core as Core
import Network.AWS.DataBrew.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeSchedule' smart constructor.
data DescribeSchedule = DescribeSchedule'
  { -- | The name of the schedule to be described.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeSchedule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'describeSchedule_name' - The name of the schedule to be described.
newDescribeSchedule ::
  -- | 'name'
  Prelude.Text ->
  DescribeSchedule
newDescribeSchedule pName_ =
  DescribeSchedule' {name = pName_}

-- | The name of the schedule to be described.
describeSchedule_name :: Lens.Lens' DescribeSchedule Prelude.Text
describeSchedule_name = Lens.lens (\DescribeSchedule' {name} -> name) (\s@DescribeSchedule' {} a -> s {name = a} :: DescribeSchedule)

instance Core.AWSRequest DescribeSchedule where
  type
    AWSResponse DescribeSchedule =
      DescribeScheduleResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeScheduleResponse'
            Prelude.<$> (x Core..?> "LastModifiedDate")
            Prelude.<*> (x Core..?> "CreateDate")
            Prelude.<*> (x Core..?> "CreatedBy")
            Prelude.<*> (x Core..?> "ResourceArn")
            Prelude.<*> (x Core..?> "CronExpression")
            Prelude.<*> (x Core..?> "LastModifiedBy")
            Prelude.<*> (x Core..?> "JobNames" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..?> "Tags" Core..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..:> "Name")
      )

instance Prelude.Hashable DescribeSchedule

instance Prelude.NFData DescribeSchedule

instance Core.ToHeaders DescribeSchedule where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath DescribeSchedule where
  toPath DescribeSchedule' {..} =
    Prelude.mconcat ["/schedules/", Core.toBS name]

instance Core.ToQuery DescribeSchedule where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeScheduleResponse' smart constructor.
data DescribeScheduleResponse = DescribeScheduleResponse'
  { -- | The date and time that the schedule was last modified.
    lastModifiedDate :: Prelude.Maybe Core.POSIX,
    -- | The date and time that the schedule was created.
    createDate :: Prelude.Maybe Core.POSIX,
    -- | The identifier (user name) of the user who created the schedule.
    createdBy :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the schedule.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | The date or dates and time or times when the jobs are to be run for the
    -- schedule. For more information, see
    -- <https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html Cron expressions>
    -- in the /Glue DataBrew Developer Guide/.
    cronExpression :: Prelude.Maybe Prelude.Text,
    -- | The identifier (user name) of the user who last modified the schedule.
    lastModifiedBy :: Prelude.Maybe Prelude.Text,
    -- | The name or names of one or more jobs to be run by using the schedule.
    jobNames :: Prelude.Maybe [Prelude.Text],
    -- | Metadata tags associated with this schedule.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The name of the schedule.
    name :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'DescribeScheduleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastModifiedDate', 'describeScheduleResponse_lastModifiedDate' - The date and time that the schedule was last modified.
--
-- 'createDate', 'describeScheduleResponse_createDate' - The date and time that the schedule was created.
--
-- 'createdBy', 'describeScheduleResponse_createdBy' - The identifier (user name) of the user who created the schedule.
--
-- 'resourceArn', 'describeScheduleResponse_resourceArn' - The Amazon Resource Name (ARN) of the schedule.
--
-- 'cronExpression', 'describeScheduleResponse_cronExpression' - The date or dates and time or times when the jobs are to be run for the
-- schedule. For more information, see
-- <https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html Cron expressions>
-- in the /Glue DataBrew Developer Guide/.
--
-- 'lastModifiedBy', 'describeScheduleResponse_lastModifiedBy' - The identifier (user name) of the user who last modified the schedule.
--
-- 'jobNames', 'describeScheduleResponse_jobNames' - The name or names of one or more jobs to be run by using the schedule.
--
-- 'tags', 'describeScheduleResponse_tags' - Metadata tags associated with this schedule.
--
-- 'httpStatus', 'describeScheduleResponse_httpStatus' - The response's http status code.
--
-- 'name', 'describeScheduleResponse_name' - The name of the schedule.
newDescribeScheduleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'name'
  Prelude.Text ->
  DescribeScheduleResponse
newDescribeScheduleResponse pHttpStatus_ pName_ =
  DescribeScheduleResponse'
    { lastModifiedDate =
        Prelude.Nothing,
      createDate = Prelude.Nothing,
      createdBy = Prelude.Nothing,
      resourceArn = Prelude.Nothing,
      cronExpression = Prelude.Nothing,
      lastModifiedBy = Prelude.Nothing,
      jobNames = Prelude.Nothing,
      tags = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      name = pName_
    }

-- | The date and time that the schedule was last modified.
describeScheduleResponse_lastModifiedDate :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe Prelude.UTCTime)
describeScheduleResponse_lastModifiedDate = Lens.lens (\DescribeScheduleResponse' {lastModifiedDate} -> lastModifiedDate) (\s@DescribeScheduleResponse' {} a -> s {lastModifiedDate = a} :: DescribeScheduleResponse) Prelude.. Lens.mapping Core._Time

-- | The date and time that the schedule was created.
describeScheduleResponse_createDate :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe Prelude.UTCTime)
describeScheduleResponse_createDate = Lens.lens (\DescribeScheduleResponse' {createDate} -> createDate) (\s@DescribeScheduleResponse' {} a -> s {createDate = a} :: DescribeScheduleResponse) Prelude.. Lens.mapping Core._Time

-- | The identifier (user name) of the user who created the schedule.
describeScheduleResponse_createdBy :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe Prelude.Text)
describeScheduleResponse_createdBy = Lens.lens (\DescribeScheduleResponse' {createdBy} -> createdBy) (\s@DescribeScheduleResponse' {} a -> s {createdBy = a} :: DescribeScheduleResponse)

-- | The Amazon Resource Name (ARN) of the schedule.
describeScheduleResponse_resourceArn :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe Prelude.Text)
describeScheduleResponse_resourceArn = Lens.lens (\DescribeScheduleResponse' {resourceArn} -> resourceArn) (\s@DescribeScheduleResponse' {} a -> s {resourceArn = a} :: DescribeScheduleResponse)

-- | The date or dates and time or times when the jobs are to be run for the
-- schedule. For more information, see
-- <https://docs.aws.amazon.com/databrew/latest/dg/jobs.cron.html Cron expressions>
-- in the /Glue DataBrew Developer Guide/.
describeScheduleResponse_cronExpression :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe Prelude.Text)
describeScheduleResponse_cronExpression = Lens.lens (\DescribeScheduleResponse' {cronExpression} -> cronExpression) (\s@DescribeScheduleResponse' {} a -> s {cronExpression = a} :: DescribeScheduleResponse)

-- | The identifier (user name) of the user who last modified the schedule.
describeScheduleResponse_lastModifiedBy :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe Prelude.Text)
describeScheduleResponse_lastModifiedBy = Lens.lens (\DescribeScheduleResponse' {lastModifiedBy} -> lastModifiedBy) (\s@DescribeScheduleResponse' {} a -> s {lastModifiedBy = a} :: DescribeScheduleResponse)

-- | The name or names of one or more jobs to be run by using the schedule.
describeScheduleResponse_jobNames :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe [Prelude.Text])
describeScheduleResponse_jobNames = Lens.lens (\DescribeScheduleResponse' {jobNames} -> jobNames) (\s@DescribeScheduleResponse' {} a -> s {jobNames = a} :: DescribeScheduleResponse) Prelude.. Lens.mapping Lens.coerced

-- | Metadata tags associated with this schedule.
describeScheduleResponse_tags :: Lens.Lens' DescribeScheduleResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
describeScheduleResponse_tags = Lens.lens (\DescribeScheduleResponse' {tags} -> tags) (\s@DescribeScheduleResponse' {} a -> s {tags = a} :: DescribeScheduleResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
describeScheduleResponse_httpStatus :: Lens.Lens' DescribeScheduleResponse Prelude.Int
describeScheduleResponse_httpStatus = Lens.lens (\DescribeScheduleResponse' {httpStatus} -> httpStatus) (\s@DescribeScheduleResponse' {} a -> s {httpStatus = a} :: DescribeScheduleResponse)

-- | The name of the schedule.
describeScheduleResponse_name :: Lens.Lens' DescribeScheduleResponse Prelude.Text
describeScheduleResponse_name = Lens.lens (\DescribeScheduleResponse' {name} -> name) (\s@DescribeScheduleResponse' {} a -> s {name = a} :: DescribeScheduleResponse)

instance Prelude.NFData DescribeScheduleResponse
