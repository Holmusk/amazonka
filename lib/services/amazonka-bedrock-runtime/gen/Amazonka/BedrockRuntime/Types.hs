{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.Types
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _AccessDeniedException,
    _ConflictException,
    _InternalServerException,
    _ModelErrorException,
    _ModelNotReadyException,
    _ModelStreamErrorException,
    _ModelTimeoutException,
    _ResourceNotFoundException,
    _ServiceQuotaExceededException,
    _ServiceUnavailableException,
    _ThrottlingException,
    _ValidationException,

    -- * Re-exported Types
    module Amazonka.BedrockRuntime.Types.Document,

    -- * AsyncInvokeStatus
    AsyncInvokeStatus (..),

    -- * AudioFormat
    AudioFormat (..),

    -- * CachePointType
    CachePointType (..),

    -- * CacheTTL
    CacheTTL (..),

    -- * ConversationRole
    ConversationRole (..),

    -- * DocumentFormat
    DocumentFormat (..),

    -- * GuardrailAction
    GuardrailAction (..),

    -- * GuardrailAutomatedReasoningLogicWarningType
    GuardrailAutomatedReasoningLogicWarningType (..),

    -- * GuardrailChecksContentFilterCategory
    GuardrailChecksContentFilterCategory (..),

    -- * GuardrailChecksPromptAttackCategory
    GuardrailChecksPromptAttackCategory (..),

    -- * GuardrailChecksRole
    GuardrailChecksRole (..),

    -- * GuardrailChecksSensitiveInformationEntityType
    GuardrailChecksSensitiveInformationEntityType (..),

    -- * GuardrailContentFilterConfidence
    GuardrailContentFilterConfidence (..),

    -- * GuardrailContentFilterStrength
    GuardrailContentFilterStrength (..),

    -- * GuardrailContentFilterType
    GuardrailContentFilterType (..),

    -- * GuardrailContentPolicyAction
    GuardrailContentPolicyAction (..),

    -- * GuardrailContentQualifier
    GuardrailContentQualifier (..),

    -- * GuardrailContentSource
    GuardrailContentSource (..),

    -- * GuardrailContextualGroundingFilterType
    GuardrailContextualGroundingFilterType (..),

    -- * GuardrailContextualGroundingPolicyAction
    GuardrailContextualGroundingPolicyAction (..),

    -- * GuardrailConverseContentQualifier
    GuardrailConverseContentQualifier (..),

    -- * GuardrailConverseImageFormat
    GuardrailConverseImageFormat (..),

    -- * GuardrailImageFormat
    GuardrailImageFormat (..),

    -- * GuardrailManagedWordType
    GuardrailManagedWordType (..),

    -- * GuardrailOrigin
    GuardrailOrigin (..),

    -- * GuardrailOutputScope
    GuardrailOutputScope (..),

    -- * GuardrailOwnership
    GuardrailOwnership (..),

    -- * GuardrailPiiEntityType
    GuardrailPiiEntityType (..),

    -- * GuardrailSensitiveInformationPolicyAction
    GuardrailSensitiveInformationPolicyAction (..),

    -- * GuardrailTopicPolicyAction
    GuardrailTopicPolicyAction (..),

    -- * GuardrailTopicType
    GuardrailTopicType (..),

    -- * GuardrailTrace
    GuardrailTrace (..),

    -- * GuardrailWordPolicyAction
    GuardrailWordPolicyAction (..),

    -- * ImageFormat
    ImageFormat (..),

    -- * OutputFormatType
    OutputFormatType (..),

    -- * PerformanceConfigLatency
    PerformanceConfigLatency (..),

    -- * ServiceTierType
    ServiceTierType (..),

    -- * SortAsyncInvocationBy
    SortAsyncInvocationBy (..),

    -- * SortOrder
    SortOrder (..),

    -- * StopReason
    StopReason (..),

    -- * ToolResultStatus
    ToolResultStatus (..),

    -- * ToolUseType
    ToolUseType (..),

    -- * Trace
    Trace (..),

    -- * VideoFormat
    VideoFormat (..),

    -- * AnyToolChoice
    AnyToolChoice (..),
    newAnyToolChoice,

    -- * AppliedGuardrailDetails
    AppliedGuardrailDetails (..),
    newAppliedGuardrailDetails,
    appliedGuardrailDetails_guardrailArn,
    appliedGuardrailDetails_guardrailId,
    appliedGuardrailDetails_guardrailOrigin,
    appliedGuardrailDetails_guardrailOwnership,
    appliedGuardrailDetails_guardrailVersion,

    -- * AsyncInvokeOutputDataConfig
    AsyncInvokeOutputDataConfig (..),
    newAsyncInvokeOutputDataConfig,
    asyncInvokeOutputDataConfig_s3OutputDataConfig,

    -- * AsyncInvokeS3OutputDataConfig
    AsyncInvokeS3OutputDataConfig (..),
    newAsyncInvokeS3OutputDataConfig,
    asyncInvokeS3OutputDataConfig_bucketOwner,
    asyncInvokeS3OutputDataConfig_kmsKeyId,
    asyncInvokeS3OutputDataConfig_s3Uri,

    -- * AsyncInvokeSummary
    AsyncInvokeSummary (..),
    newAsyncInvokeSummary,
    asyncInvokeSummary_clientRequestToken,
    asyncInvokeSummary_endTime,
    asyncInvokeSummary_failureMessage,
    asyncInvokeSummary_lastModifiedTime,
    asyncInvokeSummary_status,
    asyncInvokeSummary_invocationArn,
    asyncInvokeSummary_modelArn,
    asyncInvokeSummary_submitTime,
    asyncInvokeSummary_outputDataConfig,

    -- * AudioBlock
    AudioBlock (..),
    newAudioBlock,
    audioBlock_error,
    audioBlock_format,
    audioBlock_source,

    -- * AudioSource
    AudioSource (..),
    newAudioSource,
    audioSource_bytes,
    audioSource_s3Location,

    -- * AutoToolChoice
    AutoToolChoice (..),
    newAutoToolChoice,

    -- * CacheDetail
    CacheDetail (..),
    newCacheDetail,
    cacheDetail_ttl,
    cacheDetail_inputTokens,

    -- * CachePointBlock
    CachePointBlock (..),
    newCachePointBlock,
    cachePointBlock_ttl,
    cachePointBlock_type,

    -- * Citation
    Citation (..),
    newCitation,
    citation_location,
    citation_source,
    citation_sourceContent,
    citation_title,

    -- * CitationGeneratedContent
    CitationGeneratedContent (..),
    newCitationGeneratedContent,
    citationGeneratedContent_text,

    -- * CitationLocation
    CitationLocation (..),
    newCitationLocation,
    citationLocation_documentChar,
    citationLocation_documentChunk,
    citationLocation_documentPage,
    citationLocation_searchResultLocation,
    citationLocation_web,

    -- * CitationSourceContent
    CitationSourceContent (..),
    newCitationSourceContent,
    citationSourceContent_text,

    -- * CitationsConfig
    CitationsConfig (..),
    newCitationsConfig,
    citationsConfig_enabled,

    -- * CitationsContentBlock
    CitationsContentBlock (..),
    newCitationsContentBlock,
    citationsContentBlock_citations,
    citationsContentBlock_content,

    -- * ContentBlock
    ContentBlock (..),
    newContentBlock,
    contentBlock_audio,
    contentBlock_cachePoint,
    contentBlock_citationsContent,
    contentBlock_document,
    contentBlock_guardContent,
    contentBlock_image,
    contentBlock_reasoningContent,
    contentBlock_searchResult,
    contentBlock_text,
    contentBlock_toolResult,
    contentBlock_toolUse,
    contentBlock_video,

    -- * ConverseMetrics
    ConverseMetrics (..),
    newConverseMetrics,
    converseMetrics_latencyMs,

    -- * ConverseOutput
    ConverseOutput (..),
    newConverseOutput,
    converseOutput_message,

    -- * ConverseTokensRequest
    ConverseTokensRequest (..),
    newConverseTokensRequest,
    converseTokensRequest_additionalModelRequestFields,
    converseTokensRequest_messages,
    converseTokensRequest_system,
    converseTokensRequest_toolConfig,

    -- * ConverseTrace
    ConverseTrace (..),
    newConverseTrace,
    converseTrace_guardrail,
    converseTrace_promptRouter,

    -- * CountTokensInput
    CountTokensInput (..),
    newCountTokensInput,
    countTokensInput_converse,
    countTokensInput_invokeModel,

    -- * DocumentBlock
    DocumentBlock (..),
    newDocumentBlock,
    documentBlock_citations,
    documentBlock_context,
    documentBlock_format,
    documentBlock_name,
    documentBlock_source,

    -- * DocumentCharLocation
    DocumentCharLocation (..),
    newDocumentCharLocation,
    documentCharLocation_documentIndex,
    documentCharLocation_end,
    documentCharLocation_start,

    -- * DocumentChunkLocation
    DocumentChunkLocation (..),
    newDocumentChunkLocation,
    documentChunkLocation_documentIndex,
    documentChunkLocation_end,
    documentChunkLocation_start,

    -- * DocumentContentBlock
    DocumentContentBlock (..),
    newDocumentContentBlock,
    documentContentBlock_text,

    -- * DocumentPageLocation
    DocumentPageLocation (..),
    newDocumentPageLocation,
    documentPageLocation_documentIndex,
    documentPageLocation_end,
    documentPageLocation_start,

    -- * DocumentSource
    DocumentSource (..),
    newDocumentSource,
    documentSource_bytes,
    documentSource_content,
    documentSource_s3Location,
    documentSource_text,

    -- * ErrorBlock
    ErrorBlock (..),
    newErrorBlock,
    errorBlock_message,

    -- * GuardrailAssessment
    GuardrailAssessment (..),
    newGuardrailAssessment,
    guardrailAssessment_appliedGuardrailDetails,
    guardrailAssessment_automatedReasoningPolicy,
    guardrailAssessment_contentPolicy,
    guardrailAssessment_contextualGroundingPolicy,
    guardrailAssessment_invocationMetrics,
    guardrailAssessment_sensitiveInformationPolicy,
    guardrailAssessment_topicPolicy,
    guardrailAssessment_wordPolicy,

    -- * GuardrailAutomatedReasoningFinding
    GuardrailAutomatedReasoningFinding (..),
    newGuardrailAutomatedReasoningFinding,
    guardrailAutomatedReasoningFinding_impossible,
    guardrailAutomatedReasoningFinding_invalid,
    guardrailAutomatedReasoningFinding_noTranslations,
    guardrailAutomatedReasoningFinding_satisfiable,
    guardrailAutomatedReasoningFinding_tooComplex,
    guardrailAutomatedReasoningFinding_translationAmbiguous,
    guardrailAutomatedReasoningFinding_valid,

    -- * GuardrailAutomatedReasoningImpossibleFinding
    GuardrailAutomatedReasoningImpossibleFinding (..),
    newGuardrailAutomatedReasoningImpossibleFinding,
    guardrailAutomatedReasoningImpossibleFinding_contradictingRules,
    guardrailAutomatedReasoningImpossibleFinding_logicWarning,
    guardrailAutomatedReasoningImpossibleFinding_translation,

    -- * GuardrailAutomatedReasoningInputTextReference
    GuardrailAutomatedReasoningInputTextReference (..),
    newGuardrailAutomatedReasoningInputTextReference,
    guardrailAutomatedReasoningInputTextReference_text,

    -- * GuardrailAutomatedReasoningInvalidFinding
    GuardrailAutomatedReasoningInvalidFinding (..),
    newGuardrailAutomatedReasoningInvalidFinding,
    guardrailAutomatedReasoningInvalidFinding_contradictingRules,
    guardrailAutomatedReasoningInvalidFinding_logicWarning,
    guardrailAutomatedReasoningInvalidFinding_translation,

    -- * GuardrailAutomatedReasoningLogicWarning
    GuardrailAutomatedReasoningLogicWarning (..),
    newGuardrailAutomatedReasoningLogicWarning,
    guardrailAutomatedReasoningLogicWarning_claims,
    guardrailAutomatedReasoningLogicWarning_premises,
    guardrailAutomatedReasoningLogicWarning_type,

    -- * GuardrailAutomatedReasoningNoTranslationsFinding
    GuardrailAutomatedReasoningNoTranslationsFinding (..),
    newGuardrailAutomatedReasoningNoTranslationsFinding,

    -- * GuardrailAutomatedReasoningPolicyAssessment
    GuardrailAutomatedReasoningPolicyAssessment (..),
    newGuardrailAutomatedReasoningPolicyAssessment,
    guardrailAutomatedReasoningPolicyAssessment_findings,

    -- * GuardrailAutomatedReasoningRule
    GuardrailAutomatedReasoningRule (..),
    newGuardrailAutomatedReasoningRule,
    guardrailAutomatedReasoningRule_identifier,
    guardrailAutomatedReasoningRule_policyVersionArn,

    -- * GuardrailAutomatedReasoningSatisfiableFinding
    GuardrailAutomatedReasoningSatisfiableFinding (..),
    newGuardrailAutomatedReasoningSatisfiableFinding,
    guardrailAutomatedReasoningSatisfiableFinding_claimsFalseScenario,
    guardrailAutomatedReasoningSatisfiableFinding_claimsTrueScenario,
    guardrailAutomatedReasoningSatisfiableFinding_logicWarning,
    guardrailAutomatedReasoningSatisfiableFinding_translation,

    -- * GuardrailAutomatedReasoningScenario
    GuardrailAutomatedReasoningScenario (..),
    newGuardrailAutomatedReasoningScenario,
    guardrailAutomatedReasoningScenario_statements,

    -- * GuardrailAutomatedReasoningStatement
    GuardrailAutomatedReasoningStatement (..),
    newGuardrailAutomatedReasoningStatement,
    guardrailAutomatedReasoningStatement_logic,
    guardrailAutomatedReasoningStatement_naturalLanguage,

    -- * GuardrailAutomatedReasoningTooComplexFinding
    GuardrailAutomatedReasoningTooComplexFinding (..),
    newGuardrailAutomatedReasoningTooComplexFinding,

    -- * GuardrailAutomatedReasoningTranslation
    GuardrailAutomatedReasoningTranslation (..),
    newGuardrailAutomatedReasoningTranslation,
    guardrailAutomatedReasoningTranslation_claims,
    guardrailAutomatedReasoningTranslation_confidence,
    guardrailAutomatedReasoningTranslation_premises,
    guardrailAutomatedReasoningTranslation_untranslatedClaims,
    guardrailAutomatedReasoningTranslation_untranslatedPremises,

    -- * GuardrailAutomatedReasoningTranslationAmbiguousFinding
    GuardrailAutomatedReasoningTranslationAmbiguousFinding (..),
    newGuardrailAutomatedReasoningTranslationAmbiguousFinding,
    guardrailAutomatedReasoningTranslationAmbiguousFinding_differenceScenarios,
    guardrailAutomatedReasoningTranslationAmbiguousFinding_options,

    -- * GuardrailAutomatedReasoningTranslationOption
    GuardrailAutomatedReasoningTranslationOption (..),
    newGuardrailAutomatedReasoningTranslationOption,
    guardrailAutomatedReasoningTranslationOption_translations,

    -- * GuardrailAutomatedReasoningValidFinding
    GuardrailAutomatedReasoningValidFinding (..),
    newGuardrailAutomatedReasoningValidFinding,
    guardrailAutomatedReasoningValidFinding_claimsTrueScenario,
    guardrailAutomatedReasoningValidFinding_logicWarning,
    guardrailAutomatedReasoningValidFinding_supportingRules,
    guardrailAutomatedReasoningValidFinding_translation,

    -- * GuardrailChecksConfig
    GuardrailChecksConfig (..),
    newGuardrailChecksConfig,
    guardrailChecksConfig_contentFilter,
    guardrailChecksConfig_promptAttack,
    guardrailChecksConfig_sensitiveInformation,

    -- * GuardrailChecksContentBlock
    GuardrailChecksContentBlock (..),
    newGuardrailChecksContentBlock,
    guardrailChecksContentBlock_text,

    -- * GuardrailChecksContentFilterCategoryConfig
    GuardrailChecksContentFilterCategoryConfig (..),
    newGuardrailChecksContentFilterCategoryConfig,
    guardrailChecksContentFilterCategoryConfig_category,

    -- * GuardrailChecksContentFilterConfig
    GuardrailChecksContentFilterConfig (..),
    newGuardrailChecksContentFilterConfig,
    guardrailChecksContentFilterConfig_categories,

    -- * GuardrailChecksContentFilterResult
    GuardrailChecksContentFilterResult (..),
    newGuardrailChecksContentFilterResult,
    guardrailChecksContentFilterResult_results,

    -- * GuardrailChecksContentFilterResultEntry
    GuardrailChecksContentFilterResultEntry (..),
    newGuardrailChecksContentFilterResultEntry,
    guardrailChecksContentFilterResultEntry_category,
    guardrailChecksContentFilterResultEntry_severityScore,

    -- * GuardrailChecksContentFilterUsage
    GuardrailChecksContentFilterUsage (..),
    newGuardrailChecksContentFilterUsage,
    guardrailChecksContentFilterUsage_textUnits,

    -- * GuardrailChecksMessage
    GuardrailChecksMessage (..),
    newGuardrailChecksMessage,
    guardrailChecksMessage_role,
    guardrailChecksMessage_content,

    -- * GuardrailChecksPromptAttackCategoryConfig
    GuardrailChecksPromptAttackCategoryConfig (..),
    newGuardrailChecksPromptAttackCategoryConfig,
    guardrailChecksPromptAttackCategoryConfig_category,

    -- * GuardrailChecksPromptAttackConfig
    GuardrailChecksPromptAttackConfig (..),
    newGuardrailChecksPromptAttackConfig,
    guardrailChecksPromptAttackConfig_categories,

    -- * GuardrailChecksPromptAttackResult
    GuardrailChecksPromptAttackResult (..),
    newGuardrailChecksPromptAttackResult,
    guardrailChecksPromptAttackResult_results,

    -- * GuardrailChecksPromptAttackResultEntry
    GuardrailChecksPromptAttackResultEntry (..),
    newGuardrailChecksPromptAttackResultEntry,
    guardrailChecksPromptAttackResultEntry_category,
    guardrailChecksPromptAttackResultEntry_severityScore,

    -- * GuardrailChecksPromptAttackUsage
    GuardrailChecksPromptAttackUsage (..),
    newGuardrailChecksPromptAttackUsage,
    guardrailChecksPromptAttackUsage_textUnits,

    -- * GuardrailChecksResults
    GuardrailChecksResults (..),
    newGuardrailChecksResults,
    guardrailChecksResults_contentFilter,
    guardrailChecksResults_promptAttack,
    guardrailChecksResults_sensitiveInformation,

    -- * GuardrailChecksSensitiveInformationConfig
    GuardrailChecksSensitiveInformationConfig (..),
    newGuardrailChecksSensitiveInformationConfig,
    guardrailChecksSensitiveInformationConfig_entities,

    -- * GuardrailChecksSensitiveInformationEntityConfig
    GuardrailChecksSensitiveInformationEntityConfig (..),
    newGuardrailChecksSensitiveInformationEntityConfig,
    guardrailChecksSensitiveInformationEntityConfig_type,

    -- * GuardrailChecksSensitiveInformationResult
    GuardrailChecksSensitiveInformationResult (..),
    newGuardrailChecksSensitiveInformationResult,
    guardrailChecksSensitiveInformationResult_truncated,
    guardrailChecksSensitiveInformationResult_results,

    -- * GuardrailChecksSensitiveInformationResultEntry
    GuardrailChecksSensitiveInformationResultEntry (..),
    newGuardrailChecksSensitiveInformationResultEntry,
    guardrailChecksSensitiveInformationResultEntry_type,
    guardrailChecksSensitiveInformationResultEntry_confidenceScore,
    guardrailChecksSensitiveInformationResultEntry_beginOffset,
    guardrailChecksSensitiveInformationResultEntry_endOffset,
    guardrailChecksSensitiveInformationResultEntry_messageIndex,
    guardrailChecksSensitiveInformationResultEntry_contentIndex,

    -- * GuardrailChecksSensitiveInformationUsage
    GuardrailChecksSensitiveInformationUsage (..),
    newGuardrailChecksSensitiveInformationUsage,
    guardrailChecksSensitiveInformationUsage_textUnits,

    -- * GuardrailChecksUsageResults
    GuardrailChecksUsageResults (..),
    newGuardrailChecksUsageResults,
    guardrailChecksUsageResults_contentFilter,
    guardrailChecksUsageResults_promptAttack,
    guardrailChecksUsageResults_sensitiveInformation,

    -- * GuardrailConfiguration
    GuardrailConfiguration (..),
    newGuardrailConfiguration,
    guardrailConfiguration_guardrailIdentifier,
    guardrailConfiguration_guardrailVersion,
    guardrailConfiguration_trace,

    -- * GuardrailContentBlock
    GuardrailContentBlock (..),
    newGuardrailContentBlock,
    guardrailContentBlock_image,
    guardrailContentBlock_text,

    -- * GuardrailContentFilter
    GuardrailContentFilter (..),
    newGuardrailContentFilter,
    guardrailContentFilter_detected,
    guardrailContentFilter_filterStrength,
    guardrailContentFilter_type,
    guardrailContentFilter_confidence,
    guardrailContentFilter_action,

    -- * GuardrailContentPolicyAssessment
    GuardrailContentPolicyAssessment (..),
    newGuardrailContentPolicyAssessment,
    guardrailContentPolicyAssessment_filters,

    -- * GuardrailContextualGroundingFilter
    GuardrailContextualGroundingFilter (..),
    newGuardrailContextualGroundingFilter,
    guardrailContextualGroundingFilter_detected,
    guardrailContextualGroundingFilter_type,
    guardrailContextualGroundingFilter_threshold,
    guardrailContextualGroundingFilter_score,
    guardrailContextualGroundingFilter_action,

    -- * GuardrailContextualGroundingPolicyAssessment
    GuardrailContextualGroundingPolicyAssessment (..),
    newGuardrailContextualGroundingPolicyAssessment,
    guardrailContextualGroundingPolicyAssessment_filters,

    -- * GuardrailConverseContentBlock
    GuardrailConverseContentBlock (..),
    newGuardrailConverseContentBlock,
    guardrailConverseContentBlock_image,
    guardrailConverseContentBlock_text,

    -- * GuardrailConverseImageBlock
    GuardrailConverseImageBlock (..),
    newGuardrailConverseImageBlock,
    guardrailConverseImageBlock_format,
    guardrailConverseImageBlock_source,

    -- * GuardrailConverseImageSource
    GuardrailConverseImageSource (..),
    newGuardrailConverseImageSource,
    guardrailConverseImageSource_bytes,

    -- * GuardrailConverseTextBlock
    GuardrailConverseTextBlock (..),
    newGuardrailConverseTextBlock,
    guardrailConverseTextBlock_qualifiers,
    guardrailConverseTextBlock_text,

    -- * GuardrailCoverage
    GuardrailCoverage (..),
    newGuardrailCoverage,
    guardrailCoverage_images,
    guardrailCoverage_textCharacters,

    -- * GuardrailCustomWord
    GuardrailCustomWord (..),
    newGuardrailCustomWord,
    guardrailCustomWord_detected,
    guardrailCustomWord_match,
    guardrailCustomWord_action,

    -- * GuardrailImageBlock
    GuardrailImageBlock (..),
    newGuardrailImageBlock,
    guardrailImageBlock_format,
    guardrailImageBlock_source,

    -- * GuardrailImageCoverage
    GuardrailImageCoverage (..),
    newGuardrailImageCoverage,
    guardrailImageCoverage_guarded,
    guardrailImageCoverage_total,

    -- * GuardrailImageSource
    GuardrailImageSource (..),
    newGuardrailImageSource,
    guardrailImageSource_bytes,

    -- * GuardrailInvocationMetrics
    GuardrailInvocationMetrics (..),
    newGuardrailInvocationMetrics,
    guardrailInvocationMetrics_guardrailCoverage,
    guardrailInvocationMetrics_guardrailProcessingLatency,
    guardrailInvocationMetrics_usage,

    -- * GuardrailManagedWord
    GuardrailManagedWord (..),
    newGuardrailManagedWord,
    guardrailManagedWord_detected,
    guardrailManagedWord_match,
    guardrailManagedWord_type,
    guardrailManagedWord_action,

    -- * GuardrailOutputContent
    GuardrailOutputContent (..),
    newGuardrailOutputContent,
    guardrailOutputContent_text,

    -- * GuardrailPiiEntityFilter
    GuardrailPiiEntityFilter (..),
    newGuardrailPiiEntityFilter,
    guardrailPiiEntityFilter_detected,
    guardrailPiiEntityFilter_match,
    guardrailPiiEntityFilter_type,
    guardrailPiiEntityFilter_action,

    -- * GuardrailRegexFilter
    GuardrailRegexFilter (..),
    newGuardrailRegexFilter,
    guardrailRegexFilter_detected,
    guardrailRegexFilter_match,
    guardrailRegexFilter_name,
    guardrailRegexFilter_regex,
    guardrailRegexFilter_action,

    -- * GuardrailSensitiveInformationPolicyAssessment
    GuardrailSensitiveInformationPolicyAssessment (..),
    newGuardrailSensitiveInformationPolicyAssessment,
    guardrailSensitiveInformationPolicyAssessment_piiEntities,
    guardrailSensitiveInformationPolicyAssessment_regexes,

    -- * GuardrailTextBlock
    GuardrailTextBlock (..),
    newGuardrailTextBlock,
    guardrailTextBlock_qualifiers,
    guardrailTextBlock_text,

    -- * GuardrailTextCharactersCoverage
    GuardrailTextCharactersCoverage (..),
    newGuardrailTextCharactersCoverage,
    guardrailTextCharactersCoverage_guarded,
    guardrailTextCharactersCoverage_total,

    -- * GuardrailTopic
    GuardrailTopic (..),
    newGuardrailTopic,
    guardrailTopic_detected,
    guardrailTopic_name,
    guardrailTopic_type,
    guardrailTopic_action,

    -- * GuardrailTopicPolicyAssessment
    GuardrailTopicPolicyAssessment (..),
    newGuardrailTopicPolicyAssessment,
    guardrailTopicPolicyAssessment_topics,

    -- * GuardrailTraceAssessment
    GuardrailTraceAssessment (..),
    newGuardrailTraceAssessment,
    guardrailTraceAssessment_actionReason,
    guardrailTraceAssessment_inputAssessment,
    guardrailTraceAssessment_modelOutput,
    guardrailTraceAssessment_outputAssessments,

    -- * GuardrailUsage
    GuardrailUsage (..),
    newGuardrailUsage,
    guardrailUsage_automatedReasoningPolicies,
    guardrailUsage_automatedReasoningPolicyUnits,
    guardrailUsage_contentPolicyImageUnits,
    guardrailUsage_topicPolicyUnits,
    guardrailUsage_contentPolicyUnits,
    guardrailUsage_wordPolicyUnits,
    guardrailUsage_sensitiveInformationPolicyUnits,
    guardrailUsage_sensitiveInformationPolicyFreeUnits,
    guardrailUsage_contextualGroundingPolicyUnits,

    -- * GuardrailWordPolicyAssessment
    GuardrailWordPolicyAssessment (..),
    newGuardrailWordPolicyAssessment,
    guardrailWordPolicyAssessment_customWords,
    guardrailWordPolicyAssessment_managedWordLists,

    -- * ImageBlock
    ImageBlock (..),
    newImageBlock,
    imageBlock_error,
    imageBlock_format,
    imageBlock_source,

    -- * ImageSource
    ImageSource (..),
    newImageSource,
    imageSource_bytes,
    imageSource_s3Location,

    -- * InferenceConfiguration
    InferenceConfiguration (..),
    newInferenceConfiguration,
    inferenceConfiguration_maxTokens,
    inferenceConfiguration_stopSequences,
    inferenceConfiguration_temperature,
    inferenceConfiguration_topP,

    -- * InvokeModelTokensRequest
    InvokeModelTokensRequest (..),
    newInvokeModelTokensRequest,
    invokeModelTokensRequest_body,

    -- * JsonSchemaDefinition
    JsonSchemaDefinition (..),
    newJsonSchemaDefinition,
    jsonSchemaDefinition_description,
    jsonSchemaDefinition_name,
    jsonSchemaDefinition_schema,

    -- * Message
    Message (..),
    newMessage,
    message_role,
    message_content,

    -- * ModelInputPayload
    ModelInputPayload (..),
    newModelInputPayload,

    -- * OutputConfig
    OutputConfig (..),
    newOutputConfig,
    outputConfig_textFormat,

    -- * OutputFormat
    OutputFormat (..),
    newOutputFormat,
    outputFormat_type,
    outputFormat_structure,

    -- * OutputFormatStructure
    OutputFormatStructure (..),
    newOutputFormatStructure,
    outputFormatStructure_jsonSchema,

    -- * PerformanceConfiguration
    PerformanceConfiguration (..),
    newPerformanceConfiguration,
    performanceConfiguration_latency,

    -- * PromptRouterTrace
    PromptRouterTrace (..),
    newPromptRouterTrace,
    promptRouterTrace_invokedModelId,

    -- * PromptVariableValues
    PromptVariableValues (..),
    newPromptVariableValues,
    promptVariableValues_text,

    -- * ReasoningContentBlock
    ReasoningContentBlock (..),
    newReasoningContentBlock,
    reasoningContentBlock_reasoningText,
    reasoningContentBlock_redactedContent,

    -- * ReasoningTextBlock
    ReasoningTextBlock (..),
    newReasoningTextBlock,
    reasoningTextBlock_signature,
    reasoningTextBlock_text,

    -- * S3Location
    S3Location (..),
    newS3Location,
    s3Location_bucketOwner,
    s3Location_uri,

    -- * SearchResultBlock
    SearchResultBlock (..),
    newSearchResultBlock,
    searchResultBlock_citations,
    searchResultBlock_source,
    searchResultBlock_title,
    searchResultBlock_content,

    -- * SearchResultContentBlock
    SearchResultContentBlock (..),
    newSearchResultContentBlock,
    searchResultContentBlock_text,

    -- * SearchResultLocation
    SearchResultLocation (..),
    newSearchResultLocation,
    searchResultLocation_end,
    searchResultLocation_searchResultIndex,
    searchResultLocation_start,

    -- * ServiceTier
    ServiceTier (..),
    newServiceTier,
    serviceTier_type,

    -- * SpecificToolChoice
    SpecificToolChoice (..),
    newSpecificToolChoice,
    specificToolChoice_name,

    -- * SystemContentBlock
    SystemContentBlock (..),
    newSystemContentBlock,
    systemContentBlock_cachePoint,
    systemContentBlock_guardContent,
    systemContentBlock_text,

    -- * SystemTool
    SystemTool (..),
    newSystemTool,
    systemTool_name,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * TokenUsage
    TokenUsage (..),
    newTokenUsage,
    tokenUsage_cacheDetails,
    tokenUsage_cacheReadInputTokens,
    tokenUsage_cacheWriteInputTokens,
    tokenUsage_inputTokens,
    tokenUsage_outputTokens,
    tokenUsage_totalTokens,

    -- * Tool
    Tool (..),
    newTool,
    tool_cachePoint,
    tool_systemTool,
    tool_toolSpec,

    -- * ToolChoice
    ToolChoice (..),
    newToolChoice,
    toolChoice_any,
    toolChoice_auto,
    toolChoice_tool,

    -- * ToolConfiguration
    ToolConfiguration (..),
    newToolConfiguration,
    toolConfiguration_toolChoice,
    toolConfiguration_tools,

    -- * ToolInputSchema
    ToolInputSchema (..),
    newToolInputSchema,
    toolInputSchema_json,

    -- * ToolResultBlock
    ToolResultBlock (..),
    newToolResultBlock,
    toolResultBlock_status,
    toolResultBlock_type,
    toolResultBlock_toolUseId,
    toolResultBlock_content,

    -- * ToolResultContentBlock
    ToolResultContentBlock (..),
    newToolResultContentBlock,
    toolResultContentBlock_document,
    toolResultContentBlock_image,
    toolResultContentBlock_json,
    toolResultContentBlock_searchResult,
    toolResultContentBlock_text,
    toolResultContentBlock_video,

    -- * ToolSpecification
    ToolSpecification (..),
    newToolSpecification,
    toolSpecification_description,
    toolSpecification_strict,
    toolSpecification_name,
    toolSpecification_inputSchema,

    -- * ToolUseBlock
    ToolUseBlock (..),
    newToolUseBlock,
    toolUseBlock_type,
    toolUseBlock_toolUseId,
    toolUseBlock_name,
    toolUseBlock_input,

    -- * VideoBlock
    VideoBlock (..),
    newVideoBlock,
    videoBlock_format,
    videoBlock_source,

    -- * VideoSource
    VideoSource (..),
    newVideoSource,
    videoSource_bytes,
    videoSource_s3Location,

    -- * WebLocation
    WebLocation (..),
    newWebLocation,
    webLocation_domain,
    webLocation_url,
  )
where

import Amazonka.BedrockRuntime.Types.AnyToolChoice
import Amazonka.BedrockRuntime.Types.AppliedGuardrailDetails
import Amazonka.BedrockRuntime.Types.AsyncInvokeOutputDataConfig
import Amazonka.BedrockRuntime.Types.AsyncInvokeS3OutputDataConfig
import Amazonka.BedrockRuntime.Types.AsyncInvokeStatus
import Amazonka.BedrockRuntime.Types.AsyncInvokeSummary
import Amazonka.BedrockRuntime.Types.AudioBlock
import Amazonka.BedrockRuntime.Types.AudioFormat
import Amazonka.BedrockRuntime.Types.AudioSource
import Amazonka.BedrockRuntime.Types.AutoToolChoice
import Amazonka.BedrockRuntime.Types.CacheDetail
import Amazonka.BedrockRuntime.Types.CachePointBlock
import Amazonka.BedrockRuntime.Types.CachePointType
import Amazonka.BedrockRuntime.Types.CacheTTL
import Amazonka.BedrockRuntime.Types.Citation
import Amazonka.BedrockRuntime.Types.CitationGeneratedContent
import Amazonka.BedrockRuntime.Types.CitationLocation
import Amazonka.BedrockRuntime.Types.CitationSourceContent
import Amazonka.BedrockRuntime.Types.CitationsConfig
import Amazonka.BedrockRuntime.Types.CitationsContentBlock
import Amazonka.BedrockRuntime.Types.ContentBlock
import Amazonka.BedrockRuntime.Types.ConversationRole
import Amazonka.BedrockRuntime.Types.ConverseMetrics
import Amazonka.BedrockRuntime.Types.ConverseOutput
import Amazonka.BedrockRuntime.Types.ConverseTokensRequest
import Amazonka.BedrockRuntime.Types.ConverseTrace
import Amazonka.BedrockRuntime.Types.CountTokensInput
import Amazonka.BedrockRuntime.Types.Document
import Amazonka.BedrockRuntime.Types.DocumentBlock
import Amazonka.BedrockRuntime.Types.DocumentCharLocation
import Amazonka.BedrockRuntime.Types.DocumentChunkLocation
import Amazonka.BedrockRuntime.Types.DocumentContentBlock
import Amazonka.BedrockRuntime.Types.DocumentFormat
import Amazonka.BedrockRuntime.Types.DocumentPageLocation
import Amazonka.BedrockRuntime.Types.DocumentSource
import Amazonka.BedrockRuntime.Types.ErrorBlock
import Amazonka.BedrockRuntime.Types.GuardrailAction
import Amazonka.BedrockRuntime.Types.GuardrailAssessment
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningImpossibleFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInputTextReference
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInvalidFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarningType
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningNoTranslationsFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningRule
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningSatisfiableFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningScenario
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningStatement
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTooComplexFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslation
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationAmbiguousFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningTranslationOption
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningValidFinding
import Amazonka.BedrockRuntime.Types.GuardrailChecksConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentBlock
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategory
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategoryConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterResultEntry
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksMessage
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackCategory
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackCategoryConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResultEntry
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksResults
import Amazonka.BedrockRuntime.Types.GuardrailChecksRole
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityType
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResultEntry
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksUsageResults
import Amazonka.BedrockRuntime.Types.GuardrailConfiguration
import Amazonka.BedrockRuntime.Types.GuardrailContentBlock
import Amazonka.BedrockRuntime.Types.GuardrailContentFilter
import Amazonka.BedrockRuntime.Types.GuardrailContentFilterConfidence
import Amazonka.BedrockRuntime.Types.GuardrailContentFilterStrength
import Amazonka.BedrockRuntime.Types.GuardrailContentFilterType
import Amazonka.BedrockRuntime.Types.GuardrailContentPolicyAction
import Amazonka.BedrockRuntime.Types.GuardrailContentPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailContentQualifier
import Amazonka.BedrockRuntime.Types.GuardrailContentSource
import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingFilter
import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingFilterType
import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingPolicyAction
import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailConverseContentBlock
import Amazonka.BedrockRuntime.Types.GuardrailConverseContentQualifier
import Amazonka.BedrockRuntime.Types.GuardrailConverseImageBlock
import Amazonka.BedrockRuntime.Types.GuardrailConverseImageFormat
import Amazonka.BedrockRuntime.Types.GuardrailConverseImageSource
import Amazonka.BedrockRuntime.Types.GuardrailConverseTextBlock
import Amazonka.BedrockRuntime.Types.GuardrailCoverage
import Amazonka.BedrockRuntime.Types.GuardrailCustomWord
import Amazonka.BedrockRuntime.Types.GuardrailImageBlock
import Amazonka.BedrockRuntime.Types.GuardrailImageCoverage
import Amazonka.BedrockRuntime.Types.GuardrailImageFormat
import Amazonka.BedrockRuntime.Types.GuardrailImageSource
import Amazonka.BedrockRuntime.Types.GuardrailInvocationMetrics
import Amazonka.BedrockRuntime.Types.GuardrailManagedWord
import Amazonka.BedrockRuntime.Types.GuardrailManagedWordType
import Amazonka.BedrockRuntime.Types.GuardrailOrigin
import Amazonka.BedrockRuntime.Types.GuardrailOutputContent
import Amazonka.BedrockRuntime.Types.GuardrailOutputScope
import Amazonka.BedrockRuntime.Types.GuardrailOwnership
import Amazonka.BedrockRuntime.Types.GuardrailPiiEntityFilter
import Amazonka.BedrockRuntime.Types.GuardrailPiiEntityType
import Amazonka.BedrockRuntime.Types.GuardrailRegexFilter
import Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAction
import Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailTextBlock
import Amazonka.BedrockRuntime.Types.GuardrailTextCharactersCoverage
import Amazonka.BedrockRuntime.Types.GuardrailTopic
import Amazonka.BedrockRuntime.Types.GuardrailTopicPolicyAction
import Amazonka.BedrockRuntime.Types.GuardrailTopicPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailTopicType
import Amazonka.BedrockRuntime.Types.GuardrailTrace
import Amazonka.BedrockRuntime.Types.GuardrailTraceAssessment
import Amazonka.BedrockRuntime.Types.GuardrailUsage
import Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAction
import Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAssessment
import Amazonka.BedrockRuntime.Types.ImageBlock
import Amazonka.BedrockRuntime.Types.ImageFormat
import Amazonka.BedrockRuntime.Types.ImageSource
import Amazonka.BedrockRuntime.Types.InferenceConfiguration
import Amazonka.BedrockRuntime.Types.InvokeModelTokensRequest
import Amazonka.BedrockRuntime.Types.JsonSchemaDefinition
import Amazonka.BedrockRuntime.Types.Message
import Amazonka.BedrockRuntime.Types.ModelInputPayload
import Amazonka.BedrockRuntime.Types.OutputConfig
import Amazonka.BedrockRuntime.Types.OutputFormat
import Amazonka.BedrockRuntime.Types.OutputFormatStructure
import Amazonka.BedrockRuntime.Types.OutputFormatType
import Amazonka.BedrockRuntime.Types.PerformanceConfigLatency
import Amazonka.BedrockRuntime.Types.PerformanceConfiguration
import Amazonka.BedrockRuntime.Types.PromptRouterTrace
import Amazonka.BedrockRuntime.Types.PromptVariableValues
import Amazonka.BedrockRuntime.Types.ReasoningContentBlock
import Amazonka.BedrockRuntime.Types.ReasoningTextBlock
import Amazonka.BedrockRuntime.Types.S3Location
import Amazonka.BedrockRuntime.Types.SearchResultBlock
import Amazonka.BedrockRuntime.Types.SearchResultContentBlock
import Amazonka.BedrockRuntime.Types.SearchResultLocation
import Amazonka.BedrockRuntime.Types.ServiceTier
import Amazonka.BedrockRuntime.Types.ServiceTierType
import Amazonka.BedrockRuntime.Types.SortAsyncInvocationBy
import Amazonka.BedrockRuntime.Types.SortOrder
import Amazonka.BedrockRuntime.Types.SpecificToolChoice
import Amazonka.BedrockRuntime.Types.StopReason
import Amazonka.BedrockRuntime.Types.SystemContentBlock
import Amazonka.BedrockRuntime.Types.SystemTool
import Amazonka.BedrockRuntime.Types.Tag
import Amazonka.BedrockRuntime.Types.TokenUsage
import Amazonka.BedrockRuntime.Types.Tool
import Amazonka.BedrockRuntime.Types.ToolChoice
import Amazonka.BedrockRuntime.Types.ToolConfiguration
import Amazonka.BedrockRuntime.Types.ToolInputSchema
import Amazonka.BedrockRuntime.Types.ToolResultBlock
import Amazonka.BedrockRuntime.Types.ToolResultContentBlock
import Amazonka.BedrockRuntime.Types.ToolResultStatus
import Amazonka.BedrockRuntime.Types.ToolSpecification
import Amazonka.BedrockRuntime.Types.ToolUseBlock
import Amazonka.BedrockRuntime.Types.ToolUseType
import Amazonka.BedrockRuntime.Types.Trace
import Amazonka.BedrockRuntime.Types.VideoBlock
import Amazonka.BedrockRuntime.Types.VideoFormat
import Amazonka.BedrockRuntime.Types.VideoSource
import Amazonka.BedrockRuntime.Types.WebLocation
import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Sign.V4 as Sign

-- | API version @2023-09-30@ of the Amazon Bedrock Runtime SDK configuration.
defaultService :: Core.Service
defaultService =
  Core.Service
    { Core.abbrev = "BedrockRuntime",
      Core.signer = Sign.v4,
      Core.endpointPrefix = "bedrock-runtime",
      Core.signingName = "bedrock",
      Core.version = "2023-09-30",
      Core.s3AddressingStyle = Core.S3AddressingStyleAuto,
      Core.endpoint = Core.defaultEndpoint defaultService,
      Core.timeout = Prelude.Just 70,
      Core.check = Core.statusSuccess,
      Core.error = Core.parseJSONError "BedrockRuntime",
      Core.retry = retry
    }
  where
    retry =
      Core.Exponential
        { Core.base = 5.0e-2,
          Core.growth = 2,
          Core.attempts = 5,
          Core.check = check
        }
    check e
      | Lens.has (Core.hasStatus 502) e =
          Prelude.Just "bad_gateway"
      | Lens.has (Core.hasStatus 504) e =
          Prelude.Just "gateway_timeout"
      | Lens.has (Core.hasStatus 500) e =
          Prelude.Just "general_server_error"
      | Lens.has (Core.hasStatus 509) e =
          Prelude.Just "limit_exceeded"
      | Lens.has
          ( Core.hasCode "RequestThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
          Prelude.Just "request_throttled_exception"
      | Lens.has (Core.hasStatus 503) e =
          Prelude.Just "service_unavailable"
      | Lens.has
          ( Core.hasCode "ThrottledException"
              Prelude.. Core.hasStatus 400
          )
          e =
          Prelude.Just "throttled_exception"
      | Lens.has
          ( Core.hasCode "Throttling"
              Prelude.. Core.hasStatus 400
          )
          e =
          Prelude.Just "throttling"
      | Lens.has
          ( Core.hasCode "ThrottlingException"
              Prelude.. Core.hasStatus 400
          )
          e =
          Prelude.Just "throttling_exception"
      | Lens.has
          ( Core.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Core.hasStatus 400
          )
          e =
          Prelude.Just "throughput_exceeded"
      | Lens.has (Core.hasStatus 429) e =
          Prelude.Just "too_many_requests"
      | Prelude.otherwise = Prelude.Nothing

-- | The request is denied because you do not have sufficient permissions to
-- perform the requested action. For troubleshooting this error, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-access-denied AccessDeniedException>
-- in the Amazon Bedrock User Guide
_AccessDeniedException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_AccessDeniedException =
  Core._MatchServiceError
    defaultService
    "AccessDeniedException"
    Prelude.. Core.hasStatus 403

-- | Error occurred because of a conflict while performing an operation.
_ConflictException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ConflictException =
  Core._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Core.hasStatus 400

-- | An internal server error occurred. For troubleshooting this error, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-internal-failure InternalFailure>
-- in the Amazon Bedrock User Guide
_InternalServerException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_InternalServerException =
  Core._MatchServiceError
    defaultService
    "InternalServerException"
    Prelude.. Core.hasStatus 500

-- | The request failed due to an error while processing the model.
_ModelErrorException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ModelErrorException =
  Core._MatchServiceError
    defaultService
    "ModelErrorException"
    Prelude.. Core.hasStatus 424

-- | The model specified in the request is not ready to serve inference
-- requests. The AWS SDK will automatically retry the operation up to 5
-- times. For information about configuring automatic retries, see
-- <https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html Retry behavior>
-- in the /AWS SDKs and Tools/ reference guide.
_ModelNotReadyException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ModelNotReadyException =
  Core._MatchServiceError
    defaultService
    "ModelNotReadyException"
    Prelude.. Core.hasStatus 429

-- | An error occurred while streaming the response. Retry your request.
_ModelStreamErrorException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ModelStreamErrorException =
  Core._MatchServiceError
    defaultService
    "ModelStreamErrorException"
    Prelude.. Core.hasStatus 424

-- | The request took too long to process. Processing time exceeded the model
-- timeout length.
_ModelTimeoutException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ModelTimeoutException =
  Core._MatchServiceError
    defaultService
    "ModelTimeoutException"
    Prelude.. Core.hasStatus 408

-- | The specified resource ARN was not found. For troubleshooting this
-- error, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-resource-not-found ResourceNotFound>
-- in the Amazon Bedrock User Guide
_ResourceNotFoundException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ResourceNotFoundException =
  Core._MatchServiceError
    defaultService
    "ResourceNotFoundException"
    Prelude.. Core.hasStatus 404

-- | Your request exceeds the service quota for your account. You can view
-- your quotas at
-- <https://docs.aws.amazon.com/servicequotas/latest/userguide/gs-request-quota.html Viewing service quotas>.
-- You can resubmit your request later.
_ServiceQuotaExceededException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ServiceQuotaExceededException =
  Core._MatchServiceError
    defaultService
    "ServiceQuotaExceededException"
    Prelude.. Core.hasStatus 400

-- | The service isn\'t currently available. For troubleshooting this error,
-- see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-service-unavailable ServiceUnavailable>
-- in the Amazon Bedrock User Guide
_ServiceUnavailableException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ServiceUnavailableException =
  Core._MatchServiceError
    defaultService
    "ServiceUnavailableException"
    Prelude.. Core.hasStatus 503

-- | Your request was denied due to exceeding the account quotas for /Amazon
-- Bedrock/. For troubleshooting this error, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-throttling-exception ThrottlingException>
-- in the Amazon Bedrock User Guide
_ThrottlingException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ThrottlingException =
  Core._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Core.hasStatus 429

-- | The input fails to satisfy the constraints specified by /Amazon
-- Bedrock/. For troubleshooting this error, see
-- <https://docs.aws.amazon.com/bedrock/latest/userguide/troubleshooting-api-error-codes.html#ts-validation-error ValidationError>
-- in the Amazon Bedrock User Guide
_ValidationException :: (Core.AsError a) => Lens.Fold a Core.ServiceError
_ValidationException =
  Core._MatchServiceError
    defaultService
    "ValidationException"
    Prelude.. Core.hasStatus 400
