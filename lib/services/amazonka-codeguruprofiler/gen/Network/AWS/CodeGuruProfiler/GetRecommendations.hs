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
-- Module      : Network.AWS.CodeGuruProfiler.GetRecommendations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Recommendation.html Recommendation>
-- objects that contain recommendations for a profiling group for a given
-- time period. A list of
-- <https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_Anomaly.html Anomaly>
-- objects that contains details about anomalies detected in the profiling
-- group for the same time period is also returned.
module Network.AWS.CodeGuruProfiler.GetRecommendations
  ( -- * Creating a Request
    GetRecommendations (..),
    newGetRecommendations,

    -- * Request Lenses
    getRecommendations_locale,
    getRecommendations_endTime,
    getRecommendations_profilingGroupName,
    getRecommendations_startTime,

    -- * Destructuring the Response
    GetRecommendationsResponse (..),
    newGetRecommendationsResponse,

    -- * Response Lenses
    getRecommendationsResponse_httpStatus,
    getRecommendationsResponse_anomalies,
    getRecommendationsResponse_profileEndTime,
    getRecommendationsResponse_profileStartTime,
    getRecommendationsResponse_profilingGroupName,
    getRecommendationsResponse_recommendations,
  )
where

import Network.AWS.CodeGuruProfiler.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The structure representing the GetRecommendationsRequest.
--
-- /See:/ 'newGetRecommendations' smart constructor.
data GetRecommendations = GetRecommendations'
  { -- | The language used to provide analysis. Specify using a string that is
    -- one of the following @BCP 47@ language codes.
    --
    -- -   @de-DE@ - German, Germany
    --
    -- -   @en-GB@ - English, United Kingdom
    --
    -- -   @en-US@ - English, United States
    --
    -- -   @es-ES@ - Spanish, Spain
    --
    -- -   @fr-FR@ - French, France
    --
    -- -   @it-IT@ - Italian, Italy
    --
    -- -   @ja-JP@ - Japanese, Japan
    --
    -- -   @ko-KR@ - Korean, Republic of Korea
    --
    -- -   @pt-BR@ - Portugese, Brazil
    --
    -- -   @zh-CN@ - Chinese, China
    --
    -- -   @zh-TW@ - Chinese, Taiwan
    locale :: Prelude.Maybe Prelude.Text,
    -- | The start time of the profile to get analysis data about. You must
    -- specify @startTime@ and @endTime@. This is specified using the ISO 8601
    -- format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
    -- past June 1, 2020 1:15:02 PM UTC.
    endTime :: Core.POSIX,
    -- | The name of the profiling group to get analysis data about.
    profilingGroupName :: Prelude.Text,
    -- | The end time of the profile to get analysis data about. You must specify
    -- @startTime@ and @endTime@. This is specified using the ISO 8601 format.
    -- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
    -- 1, 2020 1:15:02 PM UTC.
    startTime :: Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecommendations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locale', 'getRecommendations_locale' - The language used to provide analysis. Specify using a string that is
-- one of the following @BCP 47@ language codes.
--
-- -   @de-DE@ - German, Germany
--
-- -   @en-GB@ - English, United Kingdom
--
-- -   @en-US@ - English, United States
--
-- -   @es-ES@ - Spanish, Spain
--
-- -   @fr-FR@ - French, France
--
-- -   @it-IT@ - Italian, Italy
--
-- -   @ja-JP@ - Japanese, Japan
--
-- -   @ko-KR@ - Korean, Republic of Korea
--
-- -   @pt-BR@ - Portugese, Brazil
--
-- -   @zh-CN@ - Chinese, China
--
-- -   @zh-TW@ - Chinese, Taiwan
--
-- 'endTime', 'getRecommendations_endTime' - The start time of the profile to get analysis data about. You must
-- specify @startTime@ and @endTime@. This is specified using the ISO 8601
-- format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
-- past June 1, 2020 1:15:02 PM UTC.
--
-- 'profilingGroupName', 'getRecommendations_profilingGroupName' - The name of the profiling group to get analysis data about.
--
-- 'startTime', 'getRecommendations_startTime' - The end time of the profile to get analysis data about. You must specify
-- @startTime@ and @endTime@. This is specified using the ISO 8601 format.
-- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
-- 1, 2020 1:15:02 PM UTC.
newGetRecommendations ::
  -- | 'endTime'
  Prelude.UTCTime ->
  -- | 'profilingGroupName'
  Prelude.Text ->
  -- | 'startTime'
  Prelude.UTCTime ->
  GetRecommendations
newGetRecommendations
  pEndTime_
  pProfilingGroupName_
  pStartTime_ =
    GetRecommendations'
      { locale = Prelude.Nothing,
        endTime = Core._Time Lens.# pEndTime_,
        profilingGroupName = pProfilingGroupName_,
        startTime = Core._Time Lens.# pStartTime_
      }

-- | The language used to provide analysis. Specify using a string that is
-- one of the following @BCP 47@ language codes.
--
-- -   @de-DE@ - German, Germany
--
-- -   @en-GB@ - English, United Kingdom
--
-- -   @en-US@ - English, United States
--
-- -   @es-ES@ - Spanish, Spain
--
-- -   @fr-FR@ - French, France
--
-- -   @it-IT@ - Italian, Italy
--
-- -   @ja-JP@ - Japanese, Japan
--
-- -   @ko-KR@ - Korean, Republic of Korea
--
-- -   @pt-BR@ - Portugese, Brazil
--
-- -   @zh-CN@ - Chinese, China
--
-- -   @zh-TW@ - Chinese, Taiwan
getRecommendations_locale :: Lens.Lens' GetRecommendations (Prelude.Maybe Prelude.Text)
getRecommendations_locale = Lens.lens (\GetRecommendations' {locale} -> locale) (\s@GetRecommendations' {} a -> s {locale = a} :: GetRecommendations)

-- | The start time of the profile to get analysis data about. You must
-- specify @startTime@ and @endTime@. This is specified using the ISO 8601
-- format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
-- past June 1, 2020 1:15:02 PM UTC.
getRecommendations_endTime :: Lens.Lens' GetRecommendations Prelude.UTCTime
getRecommendations_endTime = Lens.lens (\GetRecommendations' {endTime} -> endTime) (\s@GetRecommendations' {} a -> s {endTime = a} :: GetRecommendations) Prelude.. Core._Time

-- | The name of the profiling group to get analysis data about.
getRecommendations_profilingGroupName :: Lens.Lens' GetRecommendations Prelude.Text
getRecommendations_profilingGroupName = Lens.lens (\GetRecommendations' {profilingGroupName} -> profilingGroupName) (\s@GetRecommendations' {} a -> s {profilingGroupName = a} :: GetRecommendations)

-- | The end time of the profile to get analysis data about. You must specify
-- @startTime@ and @endTime@. This is specified using the ISO 8601 format.
-- For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
-- 1, 2020 1:15:02 PM UTC.
getRecommendations_startTime :: Lens.Lens' GetRecommendations Prelude.UTCTime
getRecommendations_startTime = Lens.lens (\GetRecommendations' {startTime} -> startTime) (\s@GetRecommendations' {} a -> s {startTime = a} :: GetRecommendations) Prelude.. Core._Time

instance Core.AWSRequest GetRecommendations where
  type
    AWSResponse GetRecommendations =
      GetRecommendationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRecommendationsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "anomalies" Core..!@ Prelude.mempty)
            Prelude.<*> (x Core..:> "profileEndTime")
            Prelude.<*> (x Core..:> "profileStartTime")
            Prelude.<*> (x Core..:> "profilingGroupName")
            Prelude.<*> ( x Core..?> "recommendations"
                            Core..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable GetRecommendations

instance Prelude.NFData GetRecommendations

instance Core.ToHeaders GetRecommendations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToPath GetRecommendations where
  toPath GetRecommendations' {..} =
    Prelude.mconcat
      [ "/internal/profilingGroups/",
        Core.toBS profilingGroupName,
        "/recommendations"
      ]

instance Core.ToQuery GetRecommendations where
  toQuery GetRecommendations' {..} =
    Prelude.mconcat
      [ "locale" Core.=: locale,
        "endTime" Core.=: endTime,
        "startTime" Core.=: startTime
      ]

-- | The structure representing the GetRecommendationsResponse.
--
-- /See:/ 'newGetRecommendationsResponse' smart constructor.
data GetRecommendationsResponse = GetRecommendationsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The list of anomalies that the analysis has found for this profile.
    anomalies :: [Anomaly],
    -- | The end time of the profile the analysis data is about. This is
    -- specified using the ISO 8601 format. For example,
    -- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    -- 1:15:02 PM UTC.
    profileEndTime :: Core.POSIX,
    -- | The start time of the profile the analysis data is about. This is
    -- specified using the ISO 8601 format. For example,
    -- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
    -- 1:15:02 PM UTC.
    profileStartTime :: Core.POSIX,
    -- | The name of the profiling group the analysis data is about.
    profilingGroupName :: Prelude.Text,
    -- | The list of recommendations that the analysis found for this profile.
    recommendations :: [Recommendation]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'GetRecommendationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getRecommendationsResponse_httpStatus' - The response's http status code.
--
-- 'anomalies', 'getRecommendationsResponse_anomalies' - The list of anomalies that the analysis has found for this profile.
--
-- 'profileEndTime', 'getRecommendationsResponse_profileEndTime' - The end time of the profile the analysis data is about. This is
-- specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
--
-- 'profileStartTime', 'getRecommendationsResponse_profileStartTime' - The start time of the profile the analysis data is about. This is
-- specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
--
-- 'profilingGroupName', 'getRecommendationsResponse_profilingGroupName' - The name of the profiling group the analysis data is about.
--
-- 'recommendations', 'getRecommendationsResponse_recommendations' - The list of recommendations that the analysis found for this profile.
newGetRecommendationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'profileEndTime'
  Prelude.UTCTime ->
  -- | 'profileStartTime'
  Prelude.UTCTime ->
  -- | 'profilingGroupName'
  Prelude.Text ->
  GetRecommendationsResponse
newGetRecommendationsResponse
  pHttpStatus_
  pProfileEndTime_
  pProfileStartTime_
  pProfilingGroupName_ =
    GetRecommendationsResponse'
      { httpStatus =
          pHttpStatus_,
        anomalies = Prelude.mempty,
        profileEndTime =
          Core._Time Lens.# pProfileEndTime_,
        profileStartTime =
          Core._Time Lens.# pProfileStartTime_,
        profilingGroupName = pProfilingGroupName_,
        recommendations = Prelude.mempty
      }

-- | The response's http status code.
getRecommendationsResponse_httpStatus :: Lens.Lens' GetRecommendationsResponse Prelude.Int
getRecommendationsResponse_httpStatus = Lens.lens (\GetRecommendationsResponse' {httpStatus} -> httpStatus) (\s@GetRecommendationsResponse' {} a -> s {httpStatus = a} :: GetRecommendationsResponse)

-- | The list of anomalies that the analysis has found for this profile.
getRecommendationsResponse_anomalies :: Lens.Lens' GetRecommendationsResponse [Anomaly]
getRecommendationsResponse_anomalies = Lens.lens (\GetRecommendationsResponse' {anomalies} -> anomalies) (\s@GetRecommendationsResponse' {} a -> s {anomalies = a} :: GetRecommendationsResponse) Prelude.. Lens.coerced

-- | The end time of the profile the analysis data is about. This is
-- specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
getRecommendationsResponse_profileEndTime :: Lens.Lens' GetRecommendationsResponse Prelude.UTCTime
getRecommendationsResponse_profileEndTime = Lens.lens (\GetRecommendationsResponse' {profileEndTime} -> profileEndTime) (\s@GetRecommendationsResponse' {} a -> s {profileEndTime = a} :: GetRecommendationsResponse) Prelude.. Core._Time

-- | The start time of the profile the analysis data is about. This is
-- specified using the ISO 8601 format. For example,
-- 2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
-- 1:15:02 PM UTC.
getRecommendationsResponse_profileStartTime :: Lens.Lens' GetRecommendationsResponse Prelude.UTCTime
getRecommendationsResponse_profileStartTime = Lens.lens (\GetRecommendationsResponse' {profileStartTime} -> profileStartTime) (\s@GetRecommendationsResponse' {} a -> s {profileStartTime = a} :: GetRecommendationsResponse) Prelude.. Core._Time

-- | The name of the profiling group the analysis data is about.
getRecommendationsResponse_profilingGroupName :: Lens.Lens' GetRecommendationsResponse Prelude.Text
getRecommendationsResponse_profilingGroupName = Lens.lens (\GetRecommendationsResponse' {profilingGroupName} -> profilingGroupName) (\s@GetRecommendationsResponse' {} a -> s {profilingGroupName = a} :: GetRecommendationsResponse)

-- | The list of recommendations that the analysis found for this profile.
getRecommendationsResponse_recommendations :: Lens.Lens' GetRecommendationsResponse [Recommendation]
getRecommendationsResponse_recommendations = Lens.lens (\GetRecommendationsResponse' {recommendations} -> recommendations) (\s@GetRecommendationsResponse' {} a -> s {recommendations = a} :: GetRecommendationsResponse) Prelude.. Lens.coerced

instance Prelude.NFData GetRecommendationsResponse
