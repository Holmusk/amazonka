{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Amazonka.BedrockRuntime
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Derived from API version @2023-09-30@ of the AWS service descriptions, licensed under Apache 2.0.
--
-- Describes the API operations for running inference using Amazon Bedrock
-- models.
module Amazonka.BedrockRuntime
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    -- $errors

    -- ** AccessDeniedException
    _AccessDeniedException,

    -- ** ConflictException
    _ConflictException,

    -- ** InternalServerException
    _InternalServerException,

    -- ** ModelErrorException
    _ModelErrorException,

    -- ** ModelNotReadyException
    _ModelNotReadyException,

    -- ** ModelStreamErrorException
    _ModelStreamErrorException,

    -- ** ModelTimeoutException
    _ModelTimeoutException,

    -- ** ResourceNotFoundException
    _ResourceNotFoundException,

    -- ** ServiceQuotaExceededException
    _ServiceQuotaExceededException,

    -- ** ServiceUnavailableException
    _ServiceUnavailableException,

    -- ** ThrottlingException
    _ThrottlingException,

    -- ** ValidationException
    _ValidationException,

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** ApplyGuardrail
    ApplyGuardrail (ApplyGuardrail'),
    newApplyGuardrail,
    ApplyGuardrailResponse (ApplyGuardrailResponse'),
    newApplyGuardrailResponse,

    -- ** Converse
    Converse (Converse'),
    newConverse,
    ConverseResponse (ConverseResponse'),
    newConverseResponse,

    -- ** CountTokens
    CountTokens (CountTokens'),
    newCountTokens,
    CountTokensResponse (CountTokensResponse'),
    newCountTokensResponse,

    -- ** GetAsyncInvoke
    GetAsyncInvoke (GetAsyncInvoke'),
    newGetAsyncInvoke,
    GetAsyncInvokeResponse (GetAsyncInvokeResponse'),
    newGetAsyncInvokeResponse,

    -- ** InvokeGuardrailChecks
    InvokeGuardrailChecks (InvokeGuardrailChecks'),
    newInvokeGuardrailChecks,
    InvokeGuardrailChecksResponse (InvokeGuardrailChecksResponse'),
    newInvokeGuardrailChecksResponse,

    -- ** InvokeModel
    InvokeModel (InvokeModel'),
    newInvokeModel,
    InvokeModelResponse (InvokeModelResponse'),
    newInvokeModelResponse,

    -- ** ListAsyncInvokes (Paginated)
    ListAsyncInvokes (ListAsyncInvokes'),
    newListAsyncInvokes,
    ListAsyncInvokesResponse (ListAsyncInvokesResponse'),
    newListAsyncInvokesResponse,

    -- ** StartAsyncInvoke
    StartAsyncInvoke (StartAsyncInvoke'),
    newStartAsyncInvoke,
    StartAsyncInvokeResponse (StartAsyncInvokeResponse'),
    newStartAsyncInvokeResponse,

    -- * Types

    -- ** AsyncInvokeStatus
    AsyncInvokeStatus (..),

    -- ** AudioFormat
    AudioFormat (..),

    -- ** CachePointType
    CachePointType (..),

    -- ** CacheTTL
    CacheTTL (..),

    -- ** ConversationRole
    ConversationRole (..),

    -- ** DocumentFormat
    DocumentFormat (..),

    -- ** GuardrailAction
    GuardrailAction (..),

    -- ** GuardrailAutomatedReasoningLogicWarningType
    GuardrailAutomatedReasoningLogicWarningType (..),

    -- ** GuardrailChecksContentFilterCategory
    GuardrailChecksContentFilterCategory (..),

    -- ** GuardrailChecksPromptAttackCategory
    GuardrailChecksPromptAttackCategory (..),

    -- ** GuardrailChecksRole
    GuardrailChecksRole (..),

    -- ** GuardrailChecksSensitiveInformationEntityType
    GuardrailChecksSensitiveInformationEntityType (..),

    -- ** GuardrailContentFilterConfidence
    GuardrailContentFilterConfidence (..),

    -- ** GuardrailContentFilterStrength
    GuardrailContentFilterStrength (..),

    -- ** GuardrailContentFilterType
    GuardrailContentFilterType (..),

    -- ** GuardrailContentPolicyAction
    GuardrailContentPolicyAction (..),

    -- ** GuardrailContentQualifier
    GuardrailContentQualifier (..),

    -- ** GuardrailContentSource
    GuardrailContentSource (..),

    -- ** GuardrailContextualGroundingFilterType
    GuardrailContextualGroundingFilterType (..),

    -- ** GuardrailContextualGroundingPolicyAction
    GuardrailContextualGroundingPolicyAction (..),

    -- ** GuardrailConverseContentQualifier
    GuardrailConverseContentQualifier (..),

    -- ** GuardrailConverseImageFormat
    GuardrailConverseImageFormat (..),

    -- ** GuardrailImageFormat
    GuardrailImageFormat (..),

    -- ** GuardrailManagedWordType
    GuardrailManagedWordType (..),

    -- ** GuardrailOrigin
    GuardrailOrigin (..),

    -- ** GuardrailOutputScope
    GuardrailOutputScope (..),

    -- ** GuardrailOwnership
    GuardrailOwnership (..),

    -- ** GuardrailPiiEntityType
    GuardrailPiiEntityType (..),

    -- ** GuardrailSensitiveInformationPolicyAction
    GuardrailSensitiveInformationPolicyAction (..),

    -- ** GuardrailTopicPolicyAction
    GuardrailTopicPolicyAction (..),

    -- ** GuardrailTopicType
    GuardrailTopicType (..),

    -- ** GuardrailTrace
    GuardrailTrace (..),

    -- ** GuardrailWordPolicyAction
    GuardrailWordPolicyAction (..),

    -- ** ImageFormat
    ImageFormat (..),

    -- ** OutputFormatType
    OutputFormatType (..),

    -- ** PerformanceConfigLatency
    PerformanceConfigLatency (..),

    -- ** ServiceTierType
    ServiceTierType (..),

    -- ** SortAsyncInvocationBy
    SortAsyncInvocationBy (..),

    -- ** SortOrder
    SortOrder (..),

    -- ** StopReason
    StopReason (..),

    -- ** ToolResultStatus
    ToolResultStatus (..),

    -- ** ToolUseType
    ToolUseType (..),

    -- ** Trace
    Trace (..),

    -- ** VideoFormat
    VideoFormat (..),

    -- ** AnyToolChoice
    AnyToolChoice (AnyToolChoice'),
    newAnyToolChoice,

    -- ** AppliedGuardrailDetails
    AppliedGuardrailDetails (AppliedGuardrailDetails'),
    newAppliedGuardrailDetails,

    -- ** AsyncInvokeOutputDataConfig
    AsyncInvokeOutputDataConfig (AsyncInvokeOutputDataConfig'),
    newAsyncInvokeOutputDataConfig,

    -- ** AsyncInvokeS3OutputDataConfig
    AsyncInvokeS3OutputDataConfig (AsyncInvokeS3OutputDataConfig'),
    newAsyncInvokeS3OutputDataConfig,

    -- ** AsyncInvokeSummary
    AsyncInvokeSummary (AsyncInvokeSummary'),
    newAsyncInvokeSummary,

    -- ** AudioBlock
    AudioBlock (AudioBlock'),
    newAudioBlock,

    -- ** AudioSource
    AudioSource (AudioSource'),
    newAudioSource,

    -- ** AutoToolChoice
    AutoToolChoice (AutoToolChoice'),
    newAutoToolChoice,

    -- ** CacheDetail
    CacheDetail (CacheDetail'),
    newCacheDetail,

    -- ** CachePointBlock
    CachePointBlock (CachePointBlock'),
    newCachePointBlock,

    -- ** Citation
    Citation (Citation'),
    newCitation,

    -- ** CitationGeneratedContent
    CitationGeneratedContent (CitationGeneratedContent'),
    newCitationGeneratedContent,

    -- ** CitationLocation
    CitationLocation (CitationLocation'),
    newCitationLocation,

    -- ** CitationSourceContent
    CitationSourceContent (CitationSourceContent'),
    newCitationSourceContent,

    -- ** CitationsConfig
    CitationsConfig (CitationsConfig'),
    newCitationsConfig,

    -- ** CitationsContentBlock
    CitationsContentBlock (CitationsContentBlock'),
    newCitationsContentBlock,

    -- ** ContentBlock
    ContentBlock (ContentBlock'),
    newContentBlock,

    -- ** ConverseMetrics
    ConverseMetrics (ConverseMetrics'),
    newConverseMetrics,

    -- ** ConverseOutput
    ConverseOutput (ConverseOutput'),
    newConverseOutput,

    -- ** ConverseTokensRequest
    ConverseTokensRequest (ConverseTokensRequest'),
    newConverseTokensRequest,

    -- ** ConverseTrace
    ConverseTrace (ConverseTrace'),
    newConverseTrace,

    -- ** CountTokensInput
    CountTokensInput (CountTokensInput'),
    newCountTokensInput,

    -- ** Document
    Document (Document'),
    newDocument,

    -- ** DocumentBlock
    DocumentBlock (DocumentBlock'),
    newDocumentBlock,

    -- ** DocumentCharLocation
    DocumentCharLocation (DocumentCharLocation'),
    newDocumentCharLocation,

    -- ** DocumentChunkLocation
    DocumentChunkLocation (DocumentChunkLocation'),
    newDocumentChunkLocation,

    -- ** DocumentContentBlock
    DocumentContentBlock (DocumentContentBlock'),
    newDocumentContentBlock,

    -- ** DocumentPageLocation
    DocumentPageLocation (DocumentPageLocation'),
    newDocumentPageLocation,

    -- ** DocumentSource
    DocumentSource (DocumentSource'),
    newDocumentSource,

    -- ** ErrorBlock
    ErrorBlock (ErrorBlock'),
    newErrorBlock,

    -- ** GuardrailAssessment
    GuardrailAssessment (GuardrailAssessment'),
    newGuardrailAssessment,

    -- ** GuardrailAutomatedReasoningFinding
    GuardrailAutomatedReasoningFinding (GuardrailAutomatedReasoningFinding'),
    newGuardrailAutomatedReasoningFinding,

    -- ** GuardrailAutomatedReasoningImpossibleFinding
    GuardrailAutomatedReasoningImpossibleFinding (GuardrailAutomatedReasoningImpossibleFinding'),
    newGuardrailAutomatedReasoningImpossibleFinding,

    -- ** GuardrailAutomatedReasoningInputTextReference
    GuardrailAutomatedReasoningInputTextReference (GuardrailAutomatedReasoningInputTextReference'),
    newGuardrailAutomatedReasoningInputTextReference,

    -- ** GuardrailAutomatedReasoningInvalidFinding
    GuardrailAutomatedReasoningInvalidFinding (GuardrailAutomatedReasoningInvalidFinding'),
    newGuardrailAutomatedReasoningInvalidFinding,

    -- ** GuardrailAutomatedReasoningLogicWarning
    GuardrailAutomatedReasoningLogicWarning (GuardrailAutomatedReasoningLogicWarning'),
    newGuardrailAutomatedReasoningLogicWarning,

    -- ** GuardrailAutomatedReasoningNoTranslationsFinding
    GuardrailAutomatedReasoningNoTranslationsFinding (GuardrailAutomatedReasoningNoTranslationsFinding'),
    newGuardrailAutomatedReasoningNoTranslationsFinding,

    -- ** GuardrailAutomatedReasoningPolicyAssessment
    GuardrailAutomatedReasoningPolicyAssessment (GuardrailAutomatedReasoningPolicyAssessment'),
    newGuardrailAutomatedReasoningPolicyAssessment,

    -- ** GuardrailAutomatedReasoningRule
    GuardrailAutomatedReasoningRule (GuardrailAutomatedReasoningRule'),
    newGuardrailAutomatedReasoningRule,

    -- ** GuardrailAutomatedReasoningSatisfiableFinding
    GuardrailAutomatedReasoningSatisfiableFinding (GuardrailAutomatedReasoningSatisfiableFinding'),
    newGuardrailAutomatedReasoningSatisfiableFinding,

    -- ** GuardrailAutomatedReasoningScenario
    GuardrailAutomatedReasoningScenario (GuardrailAutomatedReasoningScenario'),
    newGuardrailAutomatedReasoningScenario,

    -- ** GuardrailAutomatedReasoningStatement
    GuardrailAutomatedReasoningStatement (GuardrailAutomatedReasoningStatement'),
    newGuardrailAutomatedReasoningStatement,

    -- ** GuardrailAutomatedReasoningTooComplexFinding
    GuardrailAutomatedReasoningTooComplexFinding (GuardrailAutomatedReasoningTooComplexFinding'),
    newGuardrailAutomatedReasoningTooComplexFinding,

    -- ** GuardrailAutomatedReasoningTranslation
    GuardrailAutomatedReasoningTranslation (GuardrailAutomatedReasoningTranslation'),
    newGuardrailAutomatedReasoningTranslation,

    -- ** GuardrailAutomatedReasoningTranslationAmbiguousFinding
    GuardrailAutomatedReasoningTranslationAmbiguousFinding (GuardrailAutomatedReasoningTranslationAmbiguousFinding'),
    newGuardrailAutomatedReasoningTranslationAmbiguousFinding,

    -- ** GuardrailAutomatedReasoningTranslationOption
    GuardrailAutomatedReasoningTranslationOption (GuardrailAutomatedReasoningTranslationOption'),
    newGuardrailAutomatedReasoningTranslationOption,

    -- ** GuardrailAutomatedReasoningValidFinding
    GuardrailAutomatedReasoningValidFinding (GuardrailAutomatedReasoningValidFinding'),
    newGuardrailAutomatedReasoningValidFinding,

    -- ** GuardrailChecksConfig
    GuardrailChecksConfig (GuardrailChecksConfig'),
    newGuardrailChecksConfig,

    -- ** GuardrailChecksContentBlock
    GuardrailChecksContentBlock (GuardrailChecksContentBlock'),
    newGuardrailChecksContentBlock,

    -- ** GuardrailChecksContentFilterCategoryConfig
    GuardrailChecksContentFilterCategoryConfig (GuardrailChecksContentFilterCategoryConfig'),
    newGuardrailChecksContentFilterCategoryConfig,

    -- ** GuardrailChecksContentFilterConfig
    GuardrailChecksContentFilterConfig (GuardrailChecksContentFilterConfig'),
    newGuardrailChecksContentFilterConfig,

    -- ** GuardrailChecksContentFilterResult
    GuardrailChecksContentFilterResult (GuardrailChecksContentFilterResult'),
    newGuardrailChecksContentFilterResult,

    -- ** GuardrailChecksContentFilterResultEntry
    GuardrailChecksContentFilterResultEntry (GuardrailChecksContentFilterResultEntry'),
    newGuardrailChecksContentFilterResultEntry,

    -- ** GuardrailChecksContentFilterUsage
    GuardrailChecksContentFilterUsage (GuardrailChecksContentFilterUsage'),
    newGuardrailChecksContentFilterUsage,

    -- ** GuardrailChecksMessage
    GuardrailChecksMessage (GuardrailChecksMessage'),
    newGuardrailChecksMessage,

    -- ** GuardrailChecksPromptAttackCategoryConfig
    GuardrailChecksPromptAttackCategoryConfig (GuardrailChecksPromptAttackCategoryConfig'),
    newGuardrailChecksPromptAttackCategoryConfig,

    -- ** GuardrailChecksPromptAttackConfig
    GuardrailChecksPromptAttackConfig (GuardrailChecksPromptAttackConfig'),
    newGuardrailChecksPromptAttackConfig,

    -- ** GuardrailChecksPromptAttackResult
    GuardrailChecksPromptAttackResult (GuardrailChecksPromptAttackResult'),
    newGuardrailChecksPromptAttackResult,

    -- ** GuardrailChecksPromptAttackResultEntry
    GuardrailChecksPromptAttackResultEntry (GuardrailChecksPromptAttackResultEntry'),
    newGuardrailChecksPromptAttackResultEntry,

    -- ** GuardrailChecksPromptAttackUsage
    GuardrailChecksPromptAttackUsage (GuardrailChecksPromptAttackUsage'),
    newGuardrailChecksPromptAttackUsage,

    -- ** GuardrailChecksResults
    GuardrailChecksResults (GuardrailChecksResults'),
    newGuardrailChecksResults,

    -- ** GuardrailChecksSensitiveInformationConfig
    GuardrailChecksSensitiveInformationConfig (GuardrailChecksSensitiveInformationConfig'),
    newGuardrailChecksSensitiveInformationConfig,

    -- ** GuardrailChecksSensitiveInformationEntityConfig
    GuardrailChecksSensitiveInformationEntityConfig (GuardrailChecksSensitiveInformationEntityConfig'),
    newGuardrailChecksSensitiveInformationEntityConfig,

    -- ** GuardrailChecksSensitiveInformationResult
    GuardrailChecksSensitiveInformationResult (GuardrailChecksSensitiveInformationResult'),
    newGuardrailChecksSensitiveInformationResult,

    -- ** GuardrailChecksSensitiveInformationResultEntry
    GuardrailChecksSensitiveInformationResultEntry (GuardrailChecksSensitiveInformationResultEntry'),
    newGuardrailChecksSensitiveInformationResultEntry,

    -- ** GuardrailChecksSensitiveInformationUsage
    GuardrailChecksSensitiveInformationUsage (GuardrailChecksSensitiveInformationUsage'),
    newGuardrailChecksSensitiveInformationUsage,

    -- ** GuardrailChecksUsageResults
    GuardrailChecksUsageResults (GuardrailChecksUsageResults'),
    newGuardrailChecksUsageResults,

    -- ** GuardrailConfiguration
    GuardrailConfiguration (GuardrailConfiguration'),
    newGuardrailConfiguration,

    -- ** GuardrailContentBlock
    GuardrailContentBlock (GuardrailContentBlock'),
    newGuardrailContentBlock,

    -- ** GuardrailContentFilter
    GuardrailContentFilter (GuardrailContentFilter'),
    newGuardrailContentFilter,

    -- ** GuardrailContentPolicyAssessment
    GuardrailContentPolicyAssessment (GuardrailContentPolicyAssessment'),
    newGuardrailContentPolicyAssessment,

    -- ** GuardrailContextualGroundingFilter
    GuardrailContextualGroundingFilter (GuardrailContextualGroundingFilter'),
    newGuardrailContextualGroundingFilter,

    -- ** GuardrailContextualGroundingPolicyAssessment
    GuardrailContextualGroundingPolicyAssessment (GuardrailContextualGroundingPolicyAssessment'),
    newGuardrailContextualGroundingPolicyAssessment,

    -- ** GuardrailConverseContentBlock
    GuardrailConverseContentBlock (GuardrailConverseContentBlock'),
    newGuardrailConverseContentBlock,

    -- ** GuardrailConverseImageBlock
    GuardrailConverseImageBlock (GuardrailConverseImageBlock'),
    newGuardrailConverseImageBlock,

    -- ** GuardrailConverseImageSource
    GuardrailConverseImageSource (GuardrailConverseImageSource'),
    newGuardrailConverseImageSource,

    -- ** GuardrailConverseTextBlock
    GuardrailConverseTextBlock (GuardrailConverseTextBlock'),
    newGuardrailConverseTextBlock,

    -- ** GuardrailCoverage
    GuardrailCoverage (GuardrailCoverage'),
    newGuardrailCoverage,

    -- ** GuardrailCustomWord
    GuardrailCustomWord (GuardrailCustomWord'),
    newGuardrailCustomWord,

    -- ** GuardrailImageBlock
    GuardrailImageBlock (GuardrailImageBlock'),
    newGuardrailImageBlock,

    -- ** GuardrailImageCoverage
    GuardrailImageCoverage (GuardrailImageCoverage'),
    newGuardrailImageCoverage,

    -- ** GuardrailImageSource
    GuardrailImageSource (GuardrailImageSource'),
    newGuardrailImageSource,

    -- ** GuardrailInvocationMetrics
    GuardrailInvocationMetrics (GuardrailInvocationMetrics'),
    newGuardrailInvocationMetrics,

    -- ** GuardrailManagedWord
    GuardrailManagedWord (GuardrailManagedWord'),
    newGuardrailManagedWord,

    -- ** GuardrailOutputContent
    GuardrailOutputContent (GuardrailOutputContent'),
    newGuardrailOutputContent,

    -- ** GuardrailPiiEntityFilter
    GuardrailPiiEntityFilter (GuardrailPiiEntityFilter'),
    newGuardrailPiiEntityFilter,

    -- ** GuardrailRegexFilter
    GuardrailRegexFilter (GuardrailRegexFilter'),
    newGuardrailRegexFilter,

    -- ** GuardrailSensitiveInformationPolicyAssessment
    GuardrailSensitiveInformationPolicyAssessment (GuardrailSensitiveInformationPolicyAssessment'),
    newGuardrailSensitiveInformationPolicyAssessment,

    -- ** GuardrailTextBlock
    GuardrailTextBlock (GuardrailTextBlock'),
    newGuardrailTextBlock,

    -- ** GuardrailTextCharactersCoverage
    GuardrailTextCharactersCoverage (GuardrailTextCharactersCoverage'),
    newGuardrailTextCharactersCoverage,

    -- ** GuardrailTopic
    GuardrailTopic (GuardrailTopic'),
    newGuardrailTopic,

    -- ** GuardrailTopicPolicyAssessment
    GuardrailTopicPolicyAssessment (GuardrailTopicPolicyAssessment'),
    newGuardrailTopicPolicyAssessment,

    -- ** GuardrailTraceAssessment
    GuardrailTraceAssessment (GuardrailTraceAssessment'),
    newGuardrailTraceAssessment,

    -- ** GuardrailUsage
    GuardrailUsage (GuardrailUsage'),
    newGuardrailUsage,

    -- ** GuardrailWordPolicyAssessment
    GuardrailWordPolicyAssessment (GuardrailWordPolicyAssessment'),
    newGuardrailWordPolicyAssessment,

    -- ** ImageBlock
    ImageBlock (ImageBlock'),
    newImageBlock,

    -- ** ImageSource
    ImageSource (ImageSource'),
    newImageSource,

    -- ** InferenceConfiguration
    InferenceConfiguration (InferenceConfiguration'),
    newInferenceConfiguration,

    -- ** InvokeModelTokensRequest
    InvokeModelTokensRequest (InvokeModelTokensRequest'),
    newInvokeModelTokensRequest,

    -- ** JsonSchemaDefinition
    JsonSchemaDefinition (JsonSchemaDefinition'),
    newJsonSchemaDefinition,

    -- ** Message
    Message (Message'),
    newMessage,

    -- ** ModelInputPayload
    ModelInputPayload (ModelInputPayload'),
    newModelInputPayload,

    -- ** OutputConfig
    OutputConfig (OutputConfig'),
    newOutputConfig,

    -- ** OutputFormat
    OutputFormat (OutputFormat'),
    newOutputFormat,

    -- ** OutputFormatStructure
    OutputFormatStructure (OutputFormatStructure'),
    newOutputFormatStructure,

    -- ** PerformanceConfiguration
    PerformanceConfiguration (PerformanceConfiguration'),
    newPerformanceConfiguration,

    -- ** PromptRouterTrace
    PromptRouterTrace (PromptRouterTrace'),
    newPromptRouterTrace,

    -- ** PromptVariableValues
    PromptVariableValues (PromptVariableValues'),
    newPromptVariableValues,

    -- ** ReasoningContentBlock
    ReasoningContentBlock (ReasoningContentBlock'),
    newReasoningContentBlock,

    -- ** ReasoningTextBlock
    ReasoningTextBlock (ReasoningTextBlock'),
    newReasoningTextBlock,

    -- ** S3Location
    S3Location (S3Location'),
    newS3Location,

    -- ** SearchResultBlock
    SearchResultBlock (SearchResultBlock'),
    newSearchResultBlock,

    -- ** SearchResultContentBlock
    SearchResultContentBlock (SearchResultContentBlock'),
    newSearchResultContentBlock,

    -- ** SearchResultLocation
    SearchResultLocation (SearchResultLocation'),
    newSearchResultLocation,

    -- ** ServiceTier
    ServiceTier (ServiceTier'),
    newServiceTier,

    -- ** SpecificToolChoice
    SpecificToolChoice (SpecificToolChoice'),
    newSpecificToolChoice,

    -- ** SystemContentBlock
    SystemContentBlock (SystemContentBlock'),
    newSystemContentBlock,

    -- ** SystemTool
    SystemTool (SystemTool'),
    newSystemTool,

    -- ** Tag
    Tag (Tag'),
    newTag,

    -- ** TokenUsage
    TokenUsage (TokenUsage'),
    newTokenUsage,

    -- ** Tool
    Tool (Tool'),
    newTool,

    -- ** ToolChoice
    ToolChoice (ToolChoice'),
    newToolChoice,

    -- ** ToolConfiguration
    ToolConfiguration (ToolConfiguration'),
    newToolConfiguration,

    -- ** ToolInputSchema
    ToolInputSchema (ToolInputSchema'),
    newToolInputSchema,

    -- ** ToolResultBlock
    ToolResultBlock (ToolResultBlock'),
    newToolResultBlock,

    -- ** ToolResultContentBlock
    ToolResultContentBlock (ToolResultContentBlock'),
    newToolResultContentBlock,

    -- ** ToolSpecification
    ToolSpecification (ToolSpecification'),
    newToolSpecification,

    -- ** ToolUseBlock
    ToolUseBlock (ToolUseBlock'),
    newToolUseBlock,

    -- ** VideoBlock
    VideoBlock (VideoBlock'),
    newVideoBlock,

    -- ** VideoSource
    VideoSource (VideoSource'),
    newVideoSource,

    -- ** WebLocation
    WebLocation (WebLocation'),
    newWebLocation,
  )
where

import Amazonka.BedrockRuntime.ApplyGuardrail
import Amazonka.BedrockRuntime.Converse
import Amazonka.BedrockRuntime.CountTokens
import Amazonka.BedrockRuntime.GetAsyncInvoke
import Amazonka.BedrockRuntime.InvokeGuardrailChecks
import Amazonka.BedrockRuntime.InvokeModel
import Amazonka.BedrockRuntime.Lens
import Amazonka.BedrockRuntime.ListAsyncInvokes
import Amazonka.BedrockRuntime.StartAsyncInvoke
import Amazonka.BedrockRuntime.Types
import Amazonka.BedrockRuntime.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'BedrockRuntime'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
