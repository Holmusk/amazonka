{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.BedrockRuntime.Lens
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.BedrockRuntime.Lens
  ( -- * Operations

    -- ** ApplyGuardrail
    applyGuardrail_outputScope,
    applyGuardrail_guardrailIdentifier,
    applyGuardrail_guardrailVersion,
    applyGuardrail_source,
    applyGuardrail_content,
    applyGuardrailResponse_actionReason,
    applyGuardrailResponse_guardrailCoverage,
    applyGuardrailResponse_httpStatus,
    applyGuardrailResponse_usage,
    applyGuardrailResponse_action,
    applyGuardrailResponse_outputs,
    applyGuardrailResponse_assessments,

    -- ** Converse
    converse_additionalModelRequestFields,
    converse_additionalModelResponseFieldPaths,
    converse_guardrailConfig,
    converse_inferenceConfig,
    converse_messages,
    converse_outputConfig,
    converse_performanceConfig,
    converse_promptVariables,
    converse_requestMetadata,
    converse_serviceTier,
    converse_system,
    converse_toolConfig,
    converse_modelId,
    converseResponse_additionalModelResponseFields,
    converseResponse_performanceConfig,
    converseResponse_serviceTier,
    converseResponse_trace,
    converseResponse_httpStatus,
    converseResponse_output,
    converseResponse_stopReason,
    converseResponse_usage,
    converseResponse_metrics,

    -- ** CountTokens
    countTokens_modelId,
    countTokens_input,
    countTokensResponse_httpStatus,
    countTokensResponse_inputTokens,

    -- ** GetAsyncInvoke
    getAsyncInvoke_invocationArn,
    getAsyncInvokeResponse_clientRequestToken,
    getAsyncInvokeResponse_endTime,
    getAsyncInvokeResponse_failureMessage,
    getAsyncInvokeResponse_lastModifiedTime,
    getAsyncInvokeResponse_httpStatus,
    getAsyncInvokeResponse_invocationArn,
    getAsyncInvokeResponse_modelArn,
    getAsyncInvokeResponse_status,
    getAsyncInvokeResponse_submitTime,
    getAsyncInvokeResponse_outputDataConfig,

    -- ** InvokeGuardrailChecks
    invokeGuardrailChecks_messages,
    invokeGuardrailChecks_checks,
    invokeGuardrailChecksResponse_httpStatus,
    invokeGuardrailChecksResponse_results,
    invokeGuardrailChecksResponse_usage,

    -- ** InvokeModel
    invokeModel_accept,
    invokeModel_body,
    invokeModel_contentType,
    invokeModel_guardrailIdentifier,
    invokeModel_guardrailVersion,
    invokeModel_performanceConfigLatency,
    invokeModel_requestMetadata,
    invokeModel_serviceTier,
    invokeModel_trace,
    invokeModel_modelId,
    invokeModelResponse_performanceConfigLatency,
    invokeModelResponse_serviceTier,
    invokeModelResponse_httpStatus,
    invokeModelResponse_body,
    invokeModelResponse_contentType,

    -- ** ListAsyncInvokes
    listAsyncInvokes_maxResults,
    listAsyncInvokes_nextToken,
    listAsyncInvokes_sortBy,
    listAsyncInvokes_sortOrder,
    listAsyncInvokes_statusEquals,
    listAsyncInvokes_submitTimeAfter,
    listAsyncInvokes_submitTimeBefore,
    listAsyncInvokesResponse_asyncInvokeSummaries,
    listAsyncInvokesResponse_nextToken,
    listAsyncInvokesResponse_httpStatus,

    -- ** StartAsyncInvoke
    startAsyncInvoke_clientRequestToken,
    startAsyncInvoke_tags,
    startAsyncInvoke_modelId,
    startAsyncInvoke_modelInput,
    startAsyncInvoke_outputDataConfig,
    startAsyncInvokeResponse_httpStatus,
    startAsyncInvokeResponse_invocationArn,

    -- * Types

    -- ** AnyToolChoice

    -- ** AppliedGuardrailDetails
    appliedGuardrailDetails_guardrailArn,
    appliedGuardrailDetails_guardrailId,
    appliedGuardrailDetails_guardrailOrigin,
    appliedGuardrailDetails_guardrailOwnership,
    appliedGuardrailDetails_guardrailVersion,

    -- ** AsyncInvokeOutputDataConfig
    asyncInvokeOutputDataConfig_s3OutputDataConfig,

    -- ** AsyncInvokeS3OutputDataConfig
    asyncInvokeS3OutputDataConfig_bucketOwner,
    asyncInvokeS3OutputDataConfig_kmsKeyId,
    asyncInvokeS3OutputDataConfig_s3Uri,

    -- ** AsyncInvokeSummary
    asyncInvokeSummary_clientRequestToken,
    asyncInvokeSummary_endTime,
    asyncInvokeSummary_failureMessage,
    asyncInvokeSummary_lastModifiedTime,
    asyncInvokeSummary_status,
    asyncInvokeSummary_invocationArn,
    asyncInvokeSummary_modelArn,
    asyncInvokeSummary_submitTime,
    asyncInvokeSummary_outputDataConfig,

    -- ** AudioBlock
    audioBlock_error,
    audioBlock_format,
    audioBlock_source,

    -- ** AudioSource
    audioSource_bytes,
    audioSource_s3Location,

    -- ** AutoToolChoice

    -- ** CacheDetail
    cacheDetail_ttl,
    cacheDetail_inputTokens,

    -- ** CachePointBlock
    cachePointBlock_ttl,
    cachePointBlock_type,

    -- ** Citation
    citation_location,
    citation_source,
    citation_sourceContent,
    citation_title,

    -- ** CitationGeneratedContent
    citationGeneratedContent_text,

    -- ** CitationLocation
    citationLocation_documentChar,
    citationLocation_documentChunk,
    citationLocation_documentPage,
    citationLocation_searchResultLocation,
    citationLocation_web,

    -- ** CitationSourceContent
    citationSourceContent_text,

    -- ** CitationsConfig
    citationsConfig_enabled,

    -- ** CitationsContentBlock
    citationsContentBlock_citations,
    citationsContentBlock_content,

    -- ** ContentBlock
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

    -- ** ConverseMetrics
    converseMetrics_latencyMs,

    -- ** ConverseOutput
    converseOutput_message,

    -- ** ConverseTokensRequest
    converseTokensRequest_additionalModelRequestFields,
    converseTokensRequest_messages,
    converseTokensRequest_system,
    converseTokensRequest_toolConfig,

    -- ** ConverseTrace
    converseTrace_guardrail,
    converseTrace_promptRouter,

    -- ** CountTokensInput
    countTokensInput_converse,
    countTokensInput_invokeModel,

    -- ** DocumentBlock
    documentBlock_citations,
    documentBlock_context,
    documentBlock_format,
    documentBlock_name,
    documentBlock_source,

    -- ** DocumentCharLocation
    documentCharLocation_documentIndex,
    documentCharLocation_end,
    documentCharLocation_start,

    -- ** DocumentChunkLocation
    documentChunkLocation_documentIndex,
    documentChunkLocation_end,
    documentChunkLocation_start,

    -- ** DocumentContentBlock
    documentContentBlock_text,

    -- ** DocumentPageLocation
    documentPageLocation_documentIndex,
    documentPageLocation_end,
    documentPageLocation_start,

    -- ** DocumentSource
    documentSource_bytes,
    documentSource_content,
    documentSource_s3Location,
    documentSource_text,

    -- ** ErrorBlock
    errorBlock_message,

    -- ** GuardrailAssessment
    guardrailAssessment_appliedGuardrailDetails,
    guardrailAssessment_automatedReasoningPolicy,
    guardrailAssessment_contentPolicy,
    guardrailAssessment_contextualGroundingPolicy,
    guardrailAssessment_invocationMetrics,
    guardrailAssessment_sensitiveInformationPolicy,
    guardrailAssessment_topicPolicy,
    guardrailAssessment_wordPolicy,

    -- ** GuardrailAutomatedReasoningFinding
    guardrailAutomatedReasoningFinding_impossible,
    guardrailAutomatedReasoningFinding_invalid,
    guardrailAutomatedReasoningFinding_noTranslations,
    guardrailAutomatedReasoningFinding_satisfiable,
    guardrailAutomatedReasoningFinding_tooComplex,
    guardrailAutomatedReasoningFinding_translationAmbiguous,
    guardrailAutomatedReasoningFinding_valid,

    -- ** GuardrailAutomatedReasoningImpossibleFinding
    guardrailAutomatedReasoningImpossibleFinding_contradictingRules,
    guardrailAutomatedReasoningImpossibleFinding_logicWarning,
    guardrailAutomatedReasoningImpossibleFinding_translation,

    -- ** GuardrailAutomatedReasoningInputTextReference
    guardrailAutomatedReasoningInputTextReference_text,

    -- ** GuardrailAutomatedReasoningInvalidFinding
    guardrailAutomatedReasoningInvalidFinding_contradictingRules,
    guardrailAutomatedReasoningInvalidFinding_logicWarning,
    guardrailAutomatedReasoningInvalidFinding_translation,

    -- ** GuardrailAutomatedReasoningLogicWarning
    guardrailAutomatedReasoningLogicWarning_claims,
    guardrailAutomatedReasoningLogicWarning_premises,
    guardrailAutomatedReasoningLogicWarning_type,

    -- ** GuardrailAutomatedReasoningNoTranslationsFinding

    -- ** GuardrailAutomatedReasoningPolicyAssessment
    guardrailAutomatedReasoningPolicyAssessment_findings,

    -- ** GuardrailAutomatedReasoningRule
    guardrailAutomatedReasoningRule_identifier,
    guardrailAutomatedReasoningRule_policyVersionArn,

    -- ** GuardrailAutomatedReasoningSatisfiableFinding
    guardrailAutomatedReasoningSatisfiableFinding_claimsFalseScenario,
    guardrailAutomatedReasoningSatisfiableFinding_claimsTrueScenario,
    guardrailAutomatedReasoningSatisfiableFinding_logicWarning,
    guardrailAutomatedReasoningSatisfiableFinding_translation,

    -- ** GuardrailAutomatedReasoningScenario
    guardrailAutomatedReasoningScenario_statements,

    -- ** GuardrailAutomatedReasoningStatement
    guardrailAutomatedReasoningStatement_logic,
    guardrailAutomatedReasoningStatement_naturalLanguage,

    -- ** GuardrailAutomatedReasoningTooComplexFinding

    -- ** GuardrailAutomatedReasoningTranslation
    guardrailAutomatedReasoningTranslation_claims,
    guardrailAutomatedReasoningTranslation_confidence,
    guardrailAutomatedReasoningTranslation_premises,
    guardrailAutomatedReasoningTranslation_untranslatedClaims,
    guardrailAutomatedReasoningTranslation_untranslatedPremises,

    -- ** GuardrailAutomatedReasoningTranslationAmbiguousFinding
    guardrailAutomatedReasoningTranslationAmbiguousFinding_differenceScenarios,
    guardrailAutomatedReasoningTranslationAmbiguousFinding_options,

    -- ** GuardrailAutomatedReasoningTranslationOption
    guardrailAutomatedReasoningTranslationOption_translations,

    -- ** GuardrailAutomatedReasoningValidFinding
    guardrailAutomatedReasoningValidFinding_claimsTrueScenario,
    guardrailAutomatedReasoningValidFinding_logicWarning,
    guardrailAutomatedReasoningValidFinding_supportingRules,
    guardrailAutomatedReasoningValidFinding_translation,

    -- ** GuardrailChecksConfig
    guardrailChecksConfig_contentFilter,
    guardrailChecksConfig_promptAttack,
    guardrailChecksConfig_sensitiveInformation,

    -- ** GuardrailChecksContentBlock
    guardrailChecksContentBlock_text,

    -- ** GuardrailChecksContentFilterCategoryConfig
    guardrailChecksContentFilterCategoryConfig_category,

    -- ** GuardrailChecksContentFilterConfig
    guardrailChecksContentFilterConfig_categories,

    -- ** GuardrailChecksContentFilterResult
    guardrailChecksContentFilterResult_results,

    -- ** GuardrailChecksContentFilterResultEntry
    guardrailChecksContentFilterResultEntry_category,
    guardrailChecksContentFilterResultEntry_severityScore,

    -- ** GuardrailChecksContentFilterUsage
    guardrailChecksContentFilterUsage_textUnits,

    -- ** GuardrailChecksMessage
    guardrailChecksMessage_role,
    guardrailChecksMessage_content,

    -- ** GuardrailChecksPromptAttackCategoryConfig
    guardrailChecksPromptAttackCategoryConfig_category,

    -- ** GuardrailChecksPromptAttackConfig
    guardrailChecksPromptAttackConfig_categories,

    -- ** GuardrailChecksPromptAttackResult
    guardrailChecksPromptAttackResult_results,

    -- ** GuardrailChecksPromptAttackResultEntry
    guardrailChecksPromptAttackResultEntry_category,
    guardrailChecksPromptAttackResultEntry_severityScore,

    -- ** GuardrailChecksPromptAttackUsage
    guardrailChecksPromptAttackUsage_textUnits,

    -- ** GuardrailChecksResults
    guardrailChecksResults_contentFilter,
    guardrailChecksResults_promptAttack,
    guardrailChecksResults_sensitiveInformation,

    -- ** GuardrailChecksSensitiveInformationConfig
    guardrailChecksSensitiveInformationConfig_entities,

    -- ** GuardrailChecksSensitiveInformationEntityConfig
    guardrailChecksSensitiveInformationEntityConfig_type,

    -- ** GuardrailChecksSensitiveInformationResult
    guardrailChecksSensitiveInformationResult_truncated,
    guardrailChecksSensitiveInformationResult_results,

    -- ** GuardrailChecksSensitiveInformationResultEntry
    guardrailChecksSensitiveInformationResultEntry_type,
    guardrailChecksSensitiveInformationResultEntry_confidenceScore,
    guardrailChecksSensitiveInformationResultEntry_beginOffset,
    guardrailChecksSensitiveInformationResultEntry_endOffset,
    guardrailChecksSensitiveInformationResultEntry_messageIndex,
    guardrailChecksSensitiveInformationResultEntry_contentIndex,

    -- ** GuardrailChecksSensitiveInformationUsage
    guardrailChecksSensitiveInformationUsage_textUnits,

    -- ** GuardrailChecksUsageResults
    guardrailChecksUsageResults_contentFilter,
    guardrailChecksUsageResults_promptAttack,
    guardrailChecksUsageResults_sensitiveInformation,

    -- ** GuardrailConfiguration
    guardrailConfiguration_guardrailIdentifier,
    guardrailConfiguration_guardrailVersion,
    guardrailConfiguration_trace,

    -- ** GuardrailContentBlock
    guardrailContentBlock_image,
    guardrailContentBlock_text,

    -- ** GuardrailContentFilter
    guardrailContentFilter_detected,
    guardrailContentFilter_filterStrength,
    guardrailContentFilter_type,
    guardrailContentFilter_confidence,
    guardrailContentFilter_action,

    -- ** GuardrailContentPolicyAssessment
    guardrailContentPolicyAssessment_filters,

    -- ** GuardrailContextualGroundingFilter
    guardrailContextualGroundingFilter_detected,
    guardrailContextualGroundingFilter_type,
    guardrailContextualGroundingFilter_threshold,
    guardrailContextualGroundingFilter_score,
    guardrailContextualGroundingFilter_action,

    -- ** GuardrailContextualGroundingPolicyAssessment
    guardrailContextualGroundingPolicyAssessment_filters,

    -- ** GuardrailConverseContentBlock
    guardrailConverseContentBlock_image,
    guardrailConverseContentBlock_text,

    -- ** GuardrailConverseImageBlock
    guardrailConverseImageBlock_format,
    guardrailConverseImageBlock_source,

    -- ** GuardrailConverseImageSource
    guardrailConverseImageSource_bytes,

    -- ** GuardrailConverseTextBlock
    guardrailConverseTextBlock_qualifiers,
    guardrailConverseTextBlock_text,

    -- ** GuardrailCoverage
    guardrailCoverage_images,
    guardrailCoverage_textCharacters,

    -- ** GuardrailCustomWord
    guardrailCustomWord_detected,
    guardrailCustomWord_match,
    guardrailCustomWord_action,

    -- ** GuardrailImageBlock
    guardrailImageBlock_format,
    guardrailImageBlock_source,

    -- ** GuardrailImageCoverage
    guardrailImageCoverage_guarded,
    guardrailImageCoverage_total,

    -- ** GuardrailImageSource
    guardrailImageSource_bytes,

    -- ** GuardrailInvocationMetrics
    guardrailInvocationMetrics_guardrailCoverage,
    guardrailInvocationMetrics_guardrailProcessingLatency,
    guardrailInvocationMetrics_usage,

    -- ** GuardrailManagedWord
    guardrailManagedWord_detected,
    guardrailManagedWord_match,
    guardrailManagedWord_type,
    guardrailManagedWord_action,

    -- ** GuardrailOutputContent
    guardrailOutputContent_text,

    -- ** GuardrailPiiEntityFilter
    guardrailPiiEntityFilter_detected,
    guardrailPiiEntityFilter_match,
    guardrailPiiEntityFilter_type,
    guardrailPiiEntityFilter_action,

    -- ** GuardrailRegexFilter
    guardrailRegexFilter_detected,
    guardrailRegexFilter_match,
    guardrailRegexFilter_name,
    guardrailRegexFilter_regex,
    guardrailRegexFilter_action,

    -- ** GuardrailSensitiveInformationPolicyAssessment
    guardrailSensitiveInformationPolicyAssessment_piiEntities,
    guardrailSensitiveInformationPolicyAssessment_regexes,

    -- ** GuardrailTextBlock
    guardrailTextBlock_qualifiers,
    guardrailTextBlock_text,

    -- ** GuardrailTextCharactersCoverage
    guardrailTextCharactersCoverage_guarded,
    guardrailTextCharactersCoverage_total,

    -- ** GuardrailTopic
    guardrailTopic_detected,
    guardrailTopic_name,
    guardrailTopic_type,
    guardrailTopic_action,

    -- ** GuardrailTopicPolicyAssessment
    guardrailTopicPolicyAssessment_topics,

    -- ** GuardrailTraceAssessment
    guardrailTraceAssessment_actionReason,
    guardrailTraceAssessment_inputAssessment,
    guardrailTraceAssessment_modelOutput,
    guardrailTraceAssessment_outputAssessments,

    -- ** GuardrailUsage
    guardrailUsage_automatedReasoningPolicies,
    guardrailUsage_automatedReasoningPolicyUnits,
    guardrailUsage_contentPolicyImageUnits,
    guardrailUsage_topicPolicyUnits,
    guardrailUsage_contentPolicyUnits,
    guardrailUsage_wordPolicyUnits,
    guardrailUsage_sensitiveInformationPolicyUnits,
    guardrailUsage_sensitiveInformationPolicyFreeUnits,
    guardrailUsage_contextualGroundingPolicyUnits,

    -- ** GuardrailWordPolicyAssessment
    guardrailWordPolicyAssessment_customWords,
    guardrailWordPolicyAssessment_managedWordLists,

    -- ** ImageBlock
    imageBlock_error,
    imageBlock_format,
    imageBlock_source,

    -- ** ImageSource
    imageSource_bytes,
    imageSource_s3Location,

    -- ** InferenceConfiguration
    inferenceConfiguration_maxTokens,
    inferenceConfiguration_stopSequences,
    inferenceConfiguration_temperature,
    inferenceConfiguration_topP,

    -- ** InvokeModelTokensRequest
    invokeModelTokensRequest_body,

    -- ** JsonSchemaDefinition
    jsonSchemaDefinition_description,
    jsonSchemaDefinition_name,
    jsonSchemaDefinition_schema,

    -- ** Message
    message_role,
    message_content,

    -- ** ModelInputPayload

    -- ** OutputConfig
    outputConfig_textFormat,

    -- ** OutputFormat
    outputFormat_type,
    outputFormat_structure,

    -- ** OutputFormatStructure
    outputFormatStructure_jsonSchema,

    -- ** PerformanceConfiguration
    performanceConfiguration_latency,

    -- ** PromptRouterTrace
    promptRouterTrace_invokedModelId,

    -- ** PromptVariableValues
    promptVariableValues_text,

    -- ** ReasoningContentBlock
    reasoningContentBlock_reasoningText,
    reasoningContentBlock_redactedContent,

    -- ** ReasoningTextBlock
    reasoningTextBlock_signature,
    reasoningTextBlock_text,

    -- ** S3Location
    s3Location_bucketOwner,
    s3Location_uri,

    -- ** SearchResultBlock
    searchResultBlock_citations,
    searchResultBlock_source,
    searchResultBlock_title,
    searchResultBlock_content,

    -- ** SearchResultContentBlock
    searchResultContentBlock_text,

    -- ** SearchResultLocation
    searchResultLocation_end,
    searchResultLocation_searchResultIndex,
    searchResultLocation_start,

    -- ** ServiceTier
    serviceTier_type,

    -- ** SpecificToolChoice
    specificToolChoice_name,

    -- ** SystemContentBlock
    systemContentBlock_cachePoint,
    systemContentBlock_guardContent,
    systemContentBlock_text,

    -- ** SystemTool
    systemTool_name,

    -- ** Tag
    tag_key,
    tag_value,

    -- ** TokenUsage
    tokenUsage_cacheDetails,
    tokenUsage_cacheReadInputTokens,
    tokenUsage_cacheWriteInputTokens,
    tokenUsage_inputTokens,
    tokenUsage_outputTokens,
    tokenUsage_totalTokens,

    -- ** Tool
    tool_cachePoint,
    tool_systemTool,
    tool_toolSpec,

    -- ** ToolChoice
    toolChoice_any,
    toolChoice_auto,
    toolChoice_tool,

    -- ** ToolConfiguration
    toolConfiguration_toolChoice,
    toolConfiguration_tools,

    -- ** ToolInputSchema
    toolInputSchema_json,

    -- ** ToolResultBlock
    toolResultBlock_status,
    toolResultBlock_type,
    toolResultBlock_toolUseId,
    toolResultBlock_content,

    -- ** ToolResultContentBlock
    toolResultContentBlock_document,
    toolResultContentBlock_image,
    toolResultContentBlock_json,
    toolResultContentBlock_searchResult,
    toolResultContentBlock_text,
    toolResultContentBlock_video,

    -- ** ToolSpecification
    toolSpecification_description,
    toolSpecification_strict,
    toolSpecification_name,
    toolSpecification_inputSchema,

    -- ** ToolUseBlock
    toolUseBlock_type,
    toolUseBlock_toolUseId,
    toolUseBlock_name,
    toolUseBlock_input,

    -- ** VideoBlock
    videoBlock_format,
    videoBlock_source,

    -- ** VideoSource
    videoSource_bytes,
    videoSource_s3Location,

    -- ** WebLocation
    webLocation_domain,
    webLocation_url,
  )
where

import Amazonka.BedrockRuntime.ApplyGuardrail
import Amazonka.BedrockRuntime.Converse
import Amazonka.BedrockRuntime.CountTokens
import Amazonka.BedrockRuntime.GetAsyncInvoke
import Amazonka.BedrockRuntime.InvokeGuardrailChecks
import Amazonka.BedrockRuntime.InvokeModel
import Amazonka.BedrockRuntime.ListAsyncInvokes
import Amazonka.BedrockRuntime.StartAsyncInvoke
import Amazonka.BedrockRuntime.Types.AnyToolChoice
import Amazonka.BedrockRuntime.Types.AppliedGuardrailDetails
import Amazonka.BedrockRuntime.Types.AsyncInvokeOutputDataConfig
import Amazonka.BedrockRuntime.Types.AsyncInvokeS3OutputDataConfig
import Amazonka.BedrockRuntime.Types.AsyncInvokeSummary
import Amazonka.BedrockRuntime.Types.AudioBlock
import Amazonka.BedrockRuntime.Types.AudioSource
import Amazonka.BedrockRuntime.Types.AutoToolChoice
import Amazonka.BedrockRuntime.Types.CacheDetail
import Amazonka.BedrockRuntime.Types.CachePointBlock
import Amazonka.BedrockRuntime.Types.Citation
import Amazonka.BedrockRuntime.Types.CitationGeneratedContent
import Amazonka.BedrockRuntime.Types.CitationLocation
import Amazonka.BedrockRuntime.Types.CitationSourceContent
import Amazonka.BedrockRuntime.Types.CitationsConfig
import Amazonka.BedrockRuntime.Types.CitationsContentBlock
import Amazonka.BedrockRuntime.Types.ContentBlock
import Amazonka.BedrockRuntime.Types.ConverseMetrics
import Amazonka.BedrockRuntime.Types.ConverseOutput
import Amazonka.BedrockRuntime.Types.ConverseTokensRequest
import Amazonka.BedrockRuntime.Types.ConverseTrace
import Amazonka.BedrockRuntime.Types.CountTokensInput
import Amazonka.BedrockRuntime.Types.DocumentBlock
import Amazonka.BedrockRuntime.Types.DocumentCharLocation
import Amazonka.BedrockRuntime.Types.DocumentChunkLocation
import Amazonka.BedrockRuntime.Types.DocumentContentBlock
import Amazonka.BedrockRuntime.Types.DocumentPageLocation
import Amazonka.BedrockRuntime.Types.DocumentSource
import Amazonka.BedrockRuntime.Types.ErrorBlock
import Amazonka.BedrockRuntime.Types.GuardrailAssessment
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningImpossibleFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInputTextReference
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningInvalidFinding
import Amazonka.BedrockRuntime.Types.GuardrailAutomatedReasoningLogicWarning
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
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterCategoryConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterResultEntry
import Amazonka.BedrockRuntime.Types.GuardrailChecksContentFilterUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksMessage
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackCategoryConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackResultEntry
import Amazonka.BedrockRuntime.Types.GuardrailChecksPromptAttackUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksResults
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationEntityConfig
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResult
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationResultEntry
import Amazonka.BedrockRuntime.Types.GuardrailChecksSensitiveInformationUsage
import Amazonka.BedrockRuntime.Types.GuardrailChecksUsageResults
import Amazonka.BedrockRuntime.Types.GuardrailConfiguration
import Amazonka.BedrockRuntime.Types.GuardrailContentBlock
import Amazonka.BedrockRuntime.Types.GuardrailContentFilter
import Amazonka.BedrockRuntime.Types.GuardrailContentPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingFilter
import Amazonka.BedrockRuntime.Types.GuardrailContextualGroundingPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailConverseContentBlock
import Amazonka.BedrockRuntime.Types.GuardrailConverseImageBlock
import Amazonka.BedrockRuntime.Types.GuardrailConverseImageSource
import Amazonka.BedrockRuntime.Types.GuardrailConverseTextBlock
import Amazonka.BedrockRuntime.Types.GuardrailCoverage
import Amazonka.BedrockRuntime.Types.GuardrailCustomWord
import Amazonka.BedrockRuntime.Types.GuardrailImageBlock
import Amazonka.BedrockRuntime.Types.GuardrailImageCoverage
import Amazonka.BedrockRuntime.Types.GuardrailImageSource
import Amazonka.BedrockRuntime.Types.GuardrailInvocationMetrics
import Amazonka.BedrockRuntime.Types.GuardrailManagedWord
import Amazonka.BedrockRuntime.Types.GuardrailOutputContent
import Amazonka.BedrockRuntime.Types.GuardrailPiiEntityFilter
import Amazonka.BedrockRuntime.Types.GuardrailRegexFilter
import Amazonka.BedrockRuntime.Types.GuardrailSensitiveInformationPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailTextBlock
import Amazonka.BedrockRuntime.Types.GuardrailTextCharactersCoverage
import Amazonka.BedrockRuntime.Types.GuardrailTopic
import Amazonka.BedrockRuntime.Types.GuardrailTopicPolicyAssessment
import Amazonka.BedrockRuntime.Types.GuardrailTraceAssessment
import Amazonka.BedrockRuntime.Types.GuardrailUsage
import Amazonka.BedrockRuntime.Types.GuardrailWordPolicyAssessment
import Amazonka.BedrockRuntime.Types.ImageBlock
import Amazonka.BedrockRuntime.Types.ImageSource
import Amazonka.BedrockRuntime.Types.InferenceConfiguration
import Amazonka.BedrockRuntime.Types.InvokeModelTokensRequest
import Amazonka.BedrockRuntime.Types.JsonSchemaDefinition
import Amazonka.BedrockRuntime.Types.Message
import Amazonka.BedrockRuntime.Types.ModelInputPayload
import Amazonka.BedrockRuntime.Types.OutputConfig
import Amazonka.BedrockRuntime.Types.OutputFormat
import Amazonka.BedrockRuntime.Types.OutputFormatStructure
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
import Amazonka.BedrockRuntime.Types.SpecificToolChoice
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
import Amazonka.BedrockRuntime.Types.ToolSpecification
import Amazonka.BedrockRuntime.Types.ToolUseBlock
import Amazonka.BedrockRuntime.Types.VideoBlock
import Amazonka.BedrockRuntime.Types.VideoSource
import Amazonka.BedrockRuntime.Types.WebLocation
