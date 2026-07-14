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
-- Module      : Amazonka.BedrockRuntime.ListAsyncInvokes
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists asynchronous invocations.
--
-- This operation returns paginated results.
module Amazonka.BedrockRuntime.ListAsyncInvokes
  ( -- * Creating a Request
    ListAsyncInvokes (..),
    newListAsyncInvokes,

    -- * Request Lenses
    listAsyncInvokes_maxResults,
    listAsyncInvokes_nextToken,
    listAsyncInvokes_sortBy,
    listAsyncInvokes_sortOrder,
    listAsyncInvokes_statusEquals,
    listAsyncInvokes_submitTimeAfter,
    listAsyncInvokes_submitTimeBefore,

    -- * Destructuring the Response
    ListAsyncInvokesResponse (..),
    newListAsyncInvokesResponse,

    -- * Response Lenses
    listAsyncInvokesResponse_asyncInvokeSummaries,
    listAsyncInvokesResponse_nextToken,
    listAsyncInvokesResponse_httpStatus,
  )
where

import Amazonka.BedrockRuntime.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newListAsyncInvokes' smart constructor.
data ListAsyncInvokes = ListAsyncInvokes'
  { -- | The maximum number of invocations to return in one page of results.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Specify the pagination token from a previous request to retrieve the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | How to sort the response.
    sortBy :: Prelude.Maybe SortAsyncInvocationBy,
    -- | The sorting order for the response.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | Filter invocations by status.
    statusEquals :: Prelude.Maybe AsyncInvokeStatus,
    -- | Include invocations submitted after this time.
    submitTimeAfter :: Prelude.Maybe Data.ISO8601,
    -- | Include invocations submitted before this time.
    submitTimeBefore :: Prelude.Maybe Data.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAsyncInvokes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxResults', 'listAsyncInvokes_maxResults' - The maximum number of invocations to return in one page of results.
--
-- 'nextToken', 'listAsyncInvokes_nextToken' - Specify the pagination token from a previous request to retrieve the
-- next page of results.
--
-- 'sortBy', 'listAsyncInvokes_sortBy' - How to sort the response.
--
-- 'sortOrder', 'listAsyncInvokes_sortOrder' - The sorting order for the response.
--
-- 'statusEquals', 'listAsyncInvokes_statusEquals' - Filter invocations by status.
--
-- 'submitTimeAfter', 'listAsyncInvokes_submitTimeAfter' - Include invocations submitted after this time.
--
-- 'submitTimeBefore', 'listAsyncInvokes_submitTimeBefore' - Include invocations submitted before this time.
newListAsyncInvokes ::
  ListAsyncInvokes
newListAsyncInvokes =
  ListAsyncInvokes'
    { maxResults = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      sortBy = Prelude.Nothing,
      sortOrder = Prelude.Nothing,
      statusEquals = Prelude.Nothing,
      submitTimeAfter = Prelude.Nothing,
      submitTimeBefore = Prelude.Nothing
    }

-- | The maximum number of invocations to return in one page of results.
listAsyncInvokes_maxResults :: Lens.Lens' ListAsyncInvokes (Prelude.Maybe Prelude.Natural)
listAsyncInvokes_maxResults = Lens.lens (\ListAsyncInvokes' {maxResults} -> maxResults) (\s@ListAsyncInvokes' {} a -> s {maxResults = a} :: ListAsyncInvokes)

-- | Specify the pagination token from a previous request to retrieve the
-- next page of results.
listAsyncInvokes_nextToken :: Lens.Lens' ListAsyncInvokes (Prelude.Maybe Prelude.Text)
listAsyncInvokes_nextToken = Lens.lens (\ListAsyncInvokes' {nextToken} -> nextToken) (\s@ListAsyncInvokes' {} a -> s {nextToken = a} :: ListAsyncInvokes)

-- | How to sort the response.
listAsyncInvokes_sortBy :: Lens.Lens' ListAsyncInvokes (Prelude.Maybe SortAsyncInvocationBy)
listAsyncInvokes_sortBy = Lens.lens (\ListAsyncInvokes' {sortBy} -> sortBy) (\s@ListAsyncInvokes' {} a -> s {sortBy = a} :: ListAsyncInvokes)

-- | The sorting order for the response.
listAsyncInvokes_sortOrder :: Lens.Lens' ListAsyncInvokes (Prelude.Maybe SortOrder)
listAsyncInvokes_sortOrder = Lens.lens (\ListAsyncInvokes' {sortOrder} -> sortOrder) (\s@ListAsyncInvokes' {} a -> s {sortOrder = a} :: ListAsyncInvokes)

-- | Filter invocations by status.
listAsyncInvokes_statusEquals :: Lens.Lens' ListAsyncInvokes (Prelude.Maybe AsyncInvokeStatus)
listAsyncInvokes_statusEquals = Lens.lens (\ListAsyncInvokes' {statusEquals} -> statusEquals) (\s@ListAsyncInvokes' {} a -> s {statusEquals = a} :: ListAsyncInvokes)

-- | Include invocations submitted after this time.
listAsyncInvokes_submitTimeAfter :: Lens.Lens' ListAsyncInvokes (Prelude.Maybe Prelude.UTCTime)
listAsyncInvokes_submitTimeAfter = Lens.lens (\ListAsyncInvokes' {submitTimeAfter} -> submitTimeAfter) (\s@ListAsyncInvokes' {} a -> s {submitTimeAfter = a} :: ListAsyncInvokes) Prelude.. Lens.mapping Data._Time

-- | Include invocations submitted before this time.
listAsyncInvokes_submitTimeBefore :: Lens.Lens' ListAsyncInvokes (Prelude.Maybe Prelude.UTCTime)
listAsyncInvokes_submitTimeBefore = Lens.lens (\ListAsyncInvokes' {submitTimeBefore} -> submitTimeBefore) (\s@ListAsyncInvokes' {} a -> s {submitTimeBefore = a} :: ListAsyncInvokes) Prelude.. Lens.mapping Data._Time

instance Core.AWSPager ListAsyncInvokes where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listAsyncInvokesResponse_nextToken
            Prelude.. Lens._Just
        ) =
        Prelude.Nothing
    | Core.stop
        ( rs
            Lens.^? listAsyncInvokesResponse_asyncInvokeSummaries
            Prelude.. Lens._Just
        ) =
        Prelude.Nothing
    | Prelude.otherwise =
        Prelude.Just Prelude.$
          rq
            Prelude.& listAsyncInvokes_nextToken
              Lens..~ rs
              Lens.^? listAsyncInvokesResponse_nextToken
              Prelude.. Lens._Just

instance Core.AWSRequest ListAsyncInvokes where
  type
    AWSResponse ListAsyncInvokes =
      ListAsyncInvokesResponse
  request overrides =
    Request.get (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAsyncInvokesResponse'
            Prelude.<$> ( x
                            Data..?> "asyncInvokeSummaries"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Data..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAsyncInvokes where
  hashWithSalt _salt ListAsyncInvokes' {..} =
    _salt
      `Prelude.hashWithSalt` maxResults
      `Prelude.hashWithSalt` nextToken
      `Prelude.hashWithSalt` sortBy
      `Prelude.hashWithSalt` sortOrder
      `Prelude.hashWithSalt` statusEquals
      `Prelude.hashWithSalt` submitTimeAfter
      `Prelude.hashWithSalt` submitTimeBefore

instance Prelude.NFData ListAsyncInvokes where
  rnf ListAsyncInvokes' {..} =
    Prelude.rnf maxResults `Prelude.seq`
      Prelude.rnf nextToken `Prelude.seq`
        Prelude.rnf sortBy `Prelude.seq`
          Prelude.rnf sortOrder `Prelude.seq`
            Prelude.rnf statusEquals `Prelude.seq`
              Prelude.rnf submitTimeAfter `Prelude.seq`
                Prelude.rnf submitTimeBefore

instance Data.ToHeaders ListAsyncInvokes where
  toHeaders = Prelude.const Prelude.mempty

instance Data.ToPath ListAsyncInvokes where
  toPath = Prelude.const "/async-invoke"

instance Data.ToQuery ListAsyncInvokes where
  toQuery ListAsyncInvokes' {..} =
    Prelude.mconcat
      [ "maxResults" Data.=: maxResults,
        "nextToken" Data.=: nextToken,
        "sortBy" Data.=: sortBy,
        "sortOrder" Data.=: sortOrder,
        "statusEquals" Data.=: statusEquals,
        "submitTimeAfter" Data.=: submitTimeAfter,
        "submitTimeBefore" Data.=: submitTimeBefore
      ]

-- | /See:/ 'newListAsyncInvokesResponse' smart constructor.
data ListAsyncInvokesResponse = ListAsyncInvokesResponse'
  { -- | A list of invocation summaries.
    asyncInvokeSummaries :: Prelude.Maybe [AsyncInvokeSummary],
    -- | Specify the pagination token from a previous request to retrieve the
    -- next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListAsyncInvokesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'asyncInvokeSummaries', 'listAsyncInvokesResponse_asyncInvokeSummaries' - A list of invocation summaries.
--
-- 'nextToken', 'listAsyncInvokesResponse_nextToken' - Specify the pagination token from a previous request to retrieve the
-- next page of results.
--
-- 'httpStatus', 'listAsyncInvokesResponse_httpStatus' - The response's http status code.
newListAsyncInvokesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAsyncInvokesResponse
newListAsyncInvokesResponse pHttpStatus_ =
  ListAsyncInvokesResponse'
    { asyncInvokeSummaries =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of invocation summaries.
listAsyncInvokesResponse_asyncInvokeSummaries :: Lens.Lens' ListAsyncInvokesResponse (Prelude.Maybe [AsyncInvokeSummary])
listAsyncInvokesResponse_asyncInvokeSummaries = Lens.lens (\ListAsyncInvokesResponse' {asyncInvokeSummaries} -> asyncInvokeSummaries) (\s@ListAsyncInvokesResponse' {} a -> s {asyncInvokeSummaries = a} :: ListAsyncInvokesResponse) Prelude.. Lens.mapping Lens.coerced

-- | Specify the pagination token from a previous request to retrieve the
-- next page of results.
listAsyncInvokesResponse_nextToken :: Lens.Lens' ListAsyncInvokesResponse (Prelude.Maybe Prelude.Text)
listAsyncInvokesResponse_nextToken = Lens.lens (\ListAsyncInvokesResponse' {nextToken} -> nextToken) (\s@ListAsyncInvokesResponse' {} a -> s {nextToken = a} :: ListAsyncInvokesResponse)

-- | The response's http status code.
listAsyncInvokesResponse_httpStatus :: Lens.Lens' ListAsyncInvokesResponse Prelude.Int
listAsyncInvokesResponse_httpStatus = Lens.lens (\ListAsyncInvokesResponse' {httpStatus} -> httpStatus) (\s@ListAsyncInvokesResponse' {} a -> s {httpStatus = a} :: ListAsyncInvokesResponse)

instance Prelude.NFData ListAsyncInvokesResponse where
  rnf ListAsyncInvokesResponse' {..} =
    Prelude.rnf asyncInvokeSummaries `Prelude.seq`
      Prelude.rnf nextToken `Prelude.seq`
        Prelude.rnf httpStatus
