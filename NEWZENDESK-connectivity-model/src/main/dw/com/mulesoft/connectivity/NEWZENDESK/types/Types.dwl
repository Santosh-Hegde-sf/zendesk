%dw 2.7

type OrganizationSubscriptionResponse = {
  organization_subscription?: OrganizationSubscriptionObject <~ {label: "Organization Subscriptions"}
}

type WorkspaceObject = {
  activated?: Boolean ,
  apps?: Array<Object> ,
  conditions?: ConditionsObject ,
  created_at?: String <~ {format: "date-time"},
  description?: String ,
  id?: Number <~ {format: "integer"},
  macro_ids?: Array<Number <~ {format: "integer"}> ,
  macros?: Array<Number <~ {format: "integer"}> ,
  position?: Number <~ {format: "integer"},
  prefer_workspace_app_order?: Boolean ,
  selected_macros?: Array<MacroObject> ,
  ticket_form_id?: Number <~ {format: "integer"},
  title?: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type QueuesResponse = {
  queues?: Array<QueueObject>
}

type TicketMetricEventsResponse = Object

type BatchJobRequest = {
  job?: {
    action?: "patch",
    items?: {
      trigger_categories?: Array<TriggerCategoryBatchRequest>,
      triggers?: Array<TriggerBatchRequest>
    }
  }
}

type AttachmentUpdateInput = {
  malware_access_override?: Boolean 
}

type TargetFailureResponse = {
  target_failure?: TargetFailureObject
}

type MacroCommonObject = {
  actions: Array<ActionObject> ,
  active?: Boolean ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  description?: String | Null,
  id?: Number <~ {format: "integer"},
  position?: Number <~ {format: "integer"},
  restriction?: Object | Null,
  title: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type AssigneeFieldAssignableSearchGroupObject = {
  id?: Number <~ {format: "integer"},
  name?: String 
}

type SatisfactionRatingObject = {
  assignee_id: Number <~ {format: "integer"},
  comment?: String ,
  created_at?: String <~ {format: "date-time"},
  group_id: Number <~ {format: "integer"},
  id?: Number <~ {format: "integer"},
  reason?: String ,
  reason_code?: Number <~ {format: "integer"},
  reason_id?: Number <~ {format: "integer"},
  requester_id: Number <~ {format: "integer"},
  score: String ,
  ticket_id: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type GroupSLAPolicyObject = {
  created_at?: String <~ {format: "date-time"},
  description?: String ,
  filter: GroupSLAPolicyFilterObject ,
  id?: String ,
  policy_metrics?: Array<GroupSLAPolicyMetricObject> ,
  position?: Number <~ {format: "integer"},
  title: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type TriggerDefinitionResponse = {
  definitions?: TriggerDefinitionObject
}

type OrganizationsResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  organizations?: Array<OrganizationObject>,
  previous_page?: String | Null
}

type CustomRoleConfigurationObject = {
  assign_tickets_to_any_group?: Boolean ,
  chat_access?: Boolean ,
  end_user_list_access?: String ,
  end_user_profile_access?: String ,
  explore_access?: String ,
  forum_access?: String ,
  forum_access_restricted_content?: Boolean,
  group_access?: Boolean ,
  light_agent?: Boolean,
  macro_access?: String ,
  manage_business_rules?: Boolean ,
  manage_contextual_workspaces?: Boolean ,
  manage_dynamic_content?: Boolean ,
  manage_extensions_and_channels?: Boolean ,
  manage_facebook?: Boolean ,
  manage_organization_fields?: Boolean ,
  manage_ticket_fields?: Boolean ,
  manage_ticket_forms?: Boolean ,
  manage_user_fields?: Boolean ,
  moderate_forums?: Boolean,
  organization_editing?: Boolean ,
  organization_notes_editing?: Boolean ,
  report_access?: String ,
  side_conversation_create?: Boolean ,
  ticket_access?: String ,
  ticket_comment_access?: String ,
  ticket_deletion?: Boolean ,
  ticket_editing?: Boolean ,
  ticket_merge?: Boolean ,
  ticket_tag_editing?: Boolean ,
  twitter_search_access?: Boolean,
  user_view_access?: String ,
  view_access?: String ,
  view_deleted_tickets?: Boolean ,
  voice_access?: Boolean ,
  voice_dashboard_access?: Boolean 
}

type CustomObjectLimitsResponse = {
  count?: Number <~ {format: "integer"},
  limit?: Number <~ {format: "integer"},
}

type TriggerActionDiffObject = {
  field?: Array<TriggerChangeObject> ,
  value?: Array<TriggerChangeObject> 
}

type TicketImportRequest = {
  ticket?: TicketImportInput
}

type TicketFormObject = {
  active?: Boolean ,
  agent_conditions?: Array<Object> ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  display_name?: String ,
  end_user_conditions?: Array<Object> ,
  end_user_visible?: Boolean ,
  id?: Number <~ {format: "integer"},
  in_all_brands?: Boolean ,
  name: String ,
  position?: Number <~ {format: "integer"},
  raw_display_name?: String ,
  raw_name?: String ,
  restricted_brand_ids?: Array<Number <~ {format: "integer"}> ,
  ticket_field_ids?: Array<Number <~ {format: "integer"}> ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type CustomStatusCreateRequest = {
  custom_status?: CustomStatusCreateInput
}

type OffsetPaginationObject = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null
}

type SLAPolicyFilterDefinitionResponse = {
  definitions?: {
    all?: Array<{ group?: String, operators?: Array<{ title?: String, value?: String }>, target?: String | Null, title?: String, value?: String, values?: { list?: Array<{ title?: String, value?: String | Null }>, "type"?: String } }>,
    any?: Array<{ group?: String, operators?: Array<{ title?: String, value?: String }>, target?: String | Null, title?: String, value?: String, values?: { list?: Array<{ title?: String, value?: String | Null }>, "type"?: String } }>
  }
}

type GroupSLAPolicyFilterConditionObject = {
  field?: String ,
  operator?: String ,
  value?: Array<String | Number <~ {format: "integer"}> 
}

type CustomObjectFieldResponse = {
  custom_object_field?: CustomObjectField
}

type TargetGetSatisfaction = {
  account_name: String,
  email: String,
  password: String ,
  target_url?: String
}

type UserIdentitiesResponse = {
  identities?: Array<UserIdentityObject>
}

type ListTicketCollaboratorsResponse = Object

type CurrentUserResponse = {
  user?: UserObject & {
    authenticity_token?: String 
  }
}

type AccountSettingsGooddataAdvancedAnalyticsObject = {
  enabled?: Boolean
}

type TriggerDefinitionObject = {
  actions?: Array<TriggerActionDefinitionObject>,
  conditions_all?: Array<TriggerConditionDefinitionObjectAll>,
  conditions_any?: Array<TriggerConditionDefinitionObjectAny>
}

type BrandUpdateRequest = {
  brand?: BrandObject <~ {label: "Brands"}
}

type TicketBulkImportRequest = {
  tickets?: Array<TicketImportInput>
}

type OrganizationMetadataObject = {
  tickets_count?: Number <~ {format: "integer"},
  users_count?: Number <~ {format: "integer"},
}

type CustomObjectCreateInput = {
  key?: String ,
  title?: String ,
  title_pluralized?: String 
}

type QueueObject = {
  created_at?: String <~ {format: "date-time"},
  definition?: {
    all?: Array<{ field?: String, operator?: String, value?: String }>,
    any?: Array<{ field?: String, operator?: String, value?: String }>
  } ,
  description?: String ,
  id?: String ,
  name?: String ,
  order?: Number <~ {format: "integer"},
  primary_groups?: {
    count?: Number <~ {format: "integer"},
    groups?: Array<{ id?: Number <~ {format: "integer"}, name?: String }>
  } ,
  priority?: Number <~ {format: "integer"},
  secondary_groups?: {
    count?: Number <~ {format: "integer"},
    groups?: Array<{ id?: Number <~ {format: "integer"}, name?: String }>
  } ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type BulkUpdateDefaultCustomStatusResponse = Object

type TriggerBulkUpdateRequest = {
  triggers?: Array<TriggerBulkUpdateItem>
}

type GroupSLAPoliciesResponse = {
  count?: Number <~ {format: "integer"},
  group_sla_policies?: Array<GroupSLAPolicyObject>,
  next_page?: String | Null,
  previous_page?: String | Null
}

type TicketsResponse = {
  tickets?: Array<TicketObject>
}

type CountOrganizationResponse = {
  count?: CountOrganizationObject
}

type CustomStatusCreateInput = Object

type TicketMetricEventBreachObject = Object

type BrandResponse = {
  brand?: BrandObject <~ {label: "Brands"}
}

type SLAPolicyFilterObject = {
  all?: Array<SLAPolicyFilterConditionObject>,
  any?: Array<SLAPolicyFilterConditionObject>
}

type AttachmentResponse = {
  attachment?: AttachmentObject 
}

type TargetObject = Object

type GroupSLAPolicyMetricObject = {
  business_hours?: Boolean ,
  metric?: String ,
  priority?: String ,
  target?: Number <~ {format: "integer"},
}

type RecoverSuspendedTicketsResponse = {
  tickets?: Array<SuspendedTicketObject>
}

type UpdateResourceResult = {
  action: String ,
  id: Number <~ {format: "integer"},
  status: String ,
  success: Boolean 
}

type UsersResponse = {
  users?: Array<UserObject>
}

type CustomObjectFieldsResponse = {
  custom_object_fields?: Array<CustomObjectField>
}

type MacroAttachmentsResponse = {
  macro_attachments?: Array<MacroAttachmentObject>
}

type OrganizationObject = {
  created_at?: String ,
  details?: String | Null,
  domain_names?: Array<String> ,
  external_id?: String | Null,
  group_id?: Number <~ {format: "integer"} | Null,
  id?: Number <~ {format: "integer"},
  name: String ,
  notes?: String | Null,
  organization_fields?: {
    _?: String | Number
  } | Null,
  shared_comments?: Boolean ,
  shared_tickets?: Boolean ,
  tags?: Array<String> ,
  updated_at?: String ,
  url?: String 
}

type MacroAttachmentResponse = {
  macro_attachment?: MacroAttachmentObject
}

type TicketAuditsResponse = {
  after_cursor?: String,
  after_url?: String,
  audits?: Array<TicketAuditObject>,
  before_cursor?: String,
  before_url?: String
}

type GroupMembershipResponse = {
  group_membership?: GroupMembershipObject
}

type TicketUpdateResponse = {
  ticket?: {}
}

type AccountSettingsObject = {
  active_features?: AccountSettingsActiveFeaturesObject ,
  agents?: AccountSettingsAgentObject ,
  api?: AccountSettingsApiObject ,
  apps?: AccountSettingsAppsObject ,
  billing?: AccountSettingsBillingObject ,
  branding?: AccountSettingsBrandingObject ,
  brands?: AccountSettingsBrandsObject ,
  cdn?: AccountSettingsCdnObject ,
  chat?: AccountSettingsChatObject ,
  cross_sell?: AccountSettingsCrossSellObject ,
  gooddata_advanced_analytics?: AccountSettingsGooddataAdvancedAnalyticsObject ,
  google_apps?: AccountSettingsGoogleAppsObject ,
  groups?: AccountSettingsGroupObject ,
  limits?: AccountSettingsLimitsObject ,
  localization?: AccountSettingsLocalizationObject ,
  lotus?: AccountSettingsLotusObject ,
  metrics?: AccountSettingsMetricsObject ,
  onboarding?: AccountSettingsOnboardingObject ,
  routing?: AccountSettingsRoutingObject ,
  rule?: AccountSettingsRuleObject ,
  side_conversations?: AccountSettingsSideConversationsObject ,
  statistics?: AccountSettingsStatisticsObject ,
  ticket_form?: AccountSettingsTicketFormObject ,
  ticket_sharing_partners?: AccountSettingsTicketSharingPartnersObject ,
  tickets?: AccountSettingsTicketObject ,
  twitter?: AccountSettingsTwitterObject ,
  user?: AccountSettingsUserObject ,
  voice?: AccountSettingsVoiceObject 
}

type TagUrlObject = {
  url?: String 
}

type ViewCountObject = {
  active?: Boolean ,
  fresh?: Boolean ,
  pretty?: String ,
  url?: String ,
  value?: Number <~ {format: "integer"} | Null,
  view_id?: Number <~ {format: "integer"},
}

type TargetFlowdock = {
  api_token: String
}

type ViaObject = {
  channel?: String ,
  source?: {
    from?: {
      address?: String | Null,
      id?: Number <~ {format: "integer"} | Null,
      name?: String | Null,
      title?: String | Null
    },
    rel?: String | Null,
    to?: {
      address?: String,
      name?: String
    }
  } 
}

type AccountSettingsActiveFeaturesObject = {
  advanced_analytics?: Boolean,
  agent_forwarding?: Boolean,
  allow_ccs?: Boolean,
  allow_email_template_customization?: Boolean,
  automatic_answers?: Boolean,
  bcc_archiving?: Boolean,
  benchmark_opt_out?: Boolean,
  business_hours?: Boolean,
  chat?: Boolean,
  chat_about_my_ticket?: Boolean,
  csat_reason_code?: Boolean,
  custom_dkim_domain?: Boolean,
  customer_context_as_default?: Boolean,
  customer_satisfaction?: Boolean,
  dynamic_contents?: Boolean,
  explore?: Boolean,
  explore_on_support_ent_plan?: Boolean,
  explore_on_support_pro_plan?: Boolean,
  facebook?: Boolean,
  facebook_login?: Boolean,
  fallback_composer?: Boolean,
  forum_analytics?: Boolean,
  good_data_and_explore?: Boolean,
  google_login?: Boolean,
  insights?: Boolean,
  is_abusive?: Boolean,
  light_agents?: Boolean,
  markdown?: Boolean,
  on_hold_status?: Boolean,
  organization_access_enabled?: Boolean,
  rich_content_in_emails?: Boolean,
  sandbox?: Boolean,
  satisfaction_prediction?: Boolean,
  suspended_ticket_notification?: Boolean,
  ticket_forms?: Boolean,
  ticket_tagging?: Boolean,
  topic_suggestion?: Boolean,
  twitter?: Boolean,
  twitter_login?: Boolean,
  user_org_fields?: Boolean,
  user_tagging?: Boolean,
  voice?: Boolean
}

type TargetJira = {
  password: String ,
  target_url: String,
  username: String
}

type BulkUpdateDefaultCustomStatusRequest = {
  ids?: String 
}

type SharingAgreementObject = {
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  name?: String ,
  partner_name?: String | Null,
  remote_subdomain?: String ,
  status?: String ,
  "type"?: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type RenewSessionResponse = {
  authenticity_token?: String 
}

type TicketCommentsCountResponse = {
  count?: {
    refreshed_at?: String <~ {format: "date-time"},
    value?: Number <~ {format: "integer"}
  }
}

type TicketUpdateInput = {
  additional_collaborators?: Array<CollaboratorObject> ,
  assignee_email?: String ,
  assignee_id?: Number <~ {format: "integer"},
  attribute_value_ids?: Array<Number <~ {format: "integer"}> ,
  collaborator_ids?: Array<Number <~ {format: "integer"}> ,
  comment?: TicketCommentObject,
  custom_fields?: Array<CustomFieldObject> ,
  custom_status_id?: Number <~ {format: "integer"},
  due_at?: String <~ {format: "date-time"} | Null,
  email_ccs?: Array<EmailCCObject> ,
  external_id?: String ,
  followers?: Array<FollowerObject> ,
  group_id?: Number <~ {format: "integer"},
  organization_id?: Number <~ {format: "integer"},
  priority?: "urgent" | "high" | "normal" | "low" ,
  problem_id?: Number <~ {format: "integer"},
  requester_id?: Number <~ {format: "integer"},
  safe_update?: Boolean ,
  sharing_agreement_ids?: Array<Number <~ {format: "integer"}> ,
  status?: "new" | "open" | "pending" | "hold" | "solved" | "closed" ,
  subject?: String ,
  tags?: Array<String> ,
  "type"?: "problem" | "incident" | "question" | "task" ,
  updated_stamp?: String <~ {format: "date-time"},
  brand_id?: Number <~ {format: "integer"},
  collaborators?: Array<CollaboratorObject> ,
  email_cc_ids?: Array<Number <~ {format: "integer"}> ,
  follower_ids?: Array<Number <~ {format: "integer"}> ,
  macro_ids?: Array<Number <~ {format: "integer"}> ,
  raw_subject?: String ,
  recipient?: String ,
  submitter_id?: Number <~ {format: "integer"},
  ticket_form_id?: Number <~ {format: "integer"},
  via?: ViaObject ,
  via_followup_source_id?: Number <~ {format: "integer"},
  description?: String
}

type SLAPolicyResponse = {
  sla_policy?: SLAPolicyObject
}

type SuspendedTicketsResponse = {
  suspended_tickets?: Array<SuspendedTicketObject>
}

type PushNotificationDevicesInput = Array<String>

type CollaboratorObject = {
  email?: String,
  name?: String
}

type UserIdentityResponse = {
  identity?: UserIdentityObject
}

type AttachmentUpdateRequest = {
  attachment?: AttachmentUpdateInput
}

type TriggerActionObject = {
  field?: String,
  value?: String | Number <~ {format: "integer"} | Array<String | Number <~ {format: "integer"}>
}

type TargetCommonFields = {
  active?: Boolean ,
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  title: String ,
  "type": String 
}

type UserRequest = {
  user: UserInput
}

type UserForEndUser = {
  created_at?: String ,
  email?: String ,
  iana_time_zone?: String ,
  id?: Number <~ {format: "integer"},
  locale?: String ,
  locale_id?: Number <~ {format: "integer"},
  name: String ,
  organization_id?: Number <~ {format: "integer"},
  phone?: String ,
  photo?: Object ,
  role?: String ,
  shared_phone_number?: Boolean ,
  time_zone?: String ,
  updated_at?: String ,
  url?: String ,
  verified?: Boolean 
}

type LocaleResponse = {
  locale?: LocaleObject
}

type RequestObject = {
  assignee_id?: Number <~ {format: "integer"},
  can_be_solved_by_me?: Boolean ,
  collaborator_ids?: Array<Number <~ {format: "integer"}> ,
  created_at?: String <~ {format: "date-time"},
  custom_fields?: Array<{ id?: Number <~ {format: "integer"}, value?: String }> ,
  custom_status_id?: Number <~ {format: "integer"},
  description?: String ,
  due_at?: String <~ {format: "date-time"},
  email_cc_ids?: Array<Number <~ {format: "integer"}> ,
  followup_source_id?: Number <~ {format: "integer"},
  group_id?: Number <~ {format: "integer"},
  id?: Number <~ {format: "integer"},
  is_public?: Boolean ,
  organization_id?: Number <~ {format: "integer"},
  priority?: String ,
  recipient?: String ,
  requester_id?: Number <~ {format: "integer"},
  solved?: Boolean ,
  status?: String ,
  subject: String ,
  ticket_form_id?: Number <~ {format: "integer"},
  "type"?: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  via?: TicketAuditViaObject 
}

type TicketFormsResponse = {
  ticket_forms?: Array<TicketFormObject>
}

type OrganizationsRelatedResponse = {
  organization_related?: OrganizationMetadataObject
}

type MacroInput = {
  actions: Array<ActionObject> ,
  active?: Boolean ,
  description?: String | Null,
  restriction?: {
    id?: Number <~ {format: "integer"},
    ids?: Array<Number <~ {format: "integer"}> ,
    "type"?: String 
  } ,
  title: String 
}

type SystemFieldOptionObject = {
  name?: String ,
  value?: String 
}

type TriggerBulkUpdateItem = {
  active?: Boolean ,
  category_id?: String ,
  id: Number <~ {format: "integer"},
  position?: Number <~ {format: "integer"},
}

type AssigneeFieldAssignableGroupsResponse = {
  count?: Number <~ {format: "integer"},
  groups?: Array<AssigneeFieldAssignableGroupObject>,
  next_page?: String | Null,
  previous_page?: String | Null
}

type CustomFieldOptionObject = {
  id?: Number <~ {format: "integer"},
  name: String ,
  position?: Number <~ {format: "integer"},
  raw_name?: String ,
  url?: String ,
  value: String 
}

type TicketMetricObject = {
  agent_wait_time_in_minutes?: Object ,
  assigned_at?: String <~ {format: "date-time"},
  assignee_stations?: Number <~ {format: "integer"},
  assignee_updated_at?: String <~ {format: "date-time"},
  created_at?: String <~ {format: "date-time"},
  custom_status_updated_at?: String <~ {format: "date-time"},
  first_resolution_time_in_minutes?: Object ,
  full_resolution_time_in_minutes?: Object ,
  group_stations?: Number <~ {format: "integer"},
  id?: Number <~ {format: "integer"},
  initially_assigned_at?: String <~ {format: "date-time"},
  latest_comment_added_at?: String <~ {format: "date-time"},
  on_hold_time_in_minutes?: Object ,
  reopens?: Number <~ {format: "integer"},
  replies?: Number <~ {format: "integer"},
  reply_time_in_minutes?: Object ,
  reply_time_in_seconds?: Object ,
  requester_updated_at?: String <~ {format: "date-time"},
  requester_wait_time_in_minutes?: Object ,
  solved_at?: String <~ {format: "date-time"},
  status_updated_at?: String <~ {format: "date-time"},
  ticket_id?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type Error = {
  code: String,
  detail?: String,
  id?: String,
  links?: Object,
  source?: Object,
  status?: String,
  title: String
}

type SupportAddressesResponse = {
  recipient_addresses?: Array<SupportAddressObject>
}

type DynamicContentVariantObject = {
  active?: Boolean ,
  content: String ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  id?: Number <~ {format: "integer"},
  locale_id: Number <~ {format: "integer"},
  outdated?: Boolean ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type TriggerObject = {
  actions: Array<TriggerActionObject> ,
  active?: Boolean ,
  category_id?: String ,
  conditions: TriggerConditionsObject ,
  created_at?: String ,
  "default"?: Boolean ,
  description?: String ,
  id?: Number <~ {format: "integer"},
  position?: Number <~ {format: "integer"},
  raw_title?: String ,
  title: String ,
  updated_at?: String ,
  url?: String 
}

type TriggerBatchRequest = {
  active?: Boolean,
  category_id?: String,
  id: String,
  position?: Number <~ {format: "int64"}
}

type OrganizationMergeResponse = {
  organization_merge?: {
    id: String,
    loser_id: Number <~ {format: "integer"},
    status: "new" | "in_progress" | "error" | "complete",
    url: String,
    winner_id: Number <~ {format: "integer"}
  }
}

type UserForAdmin = {
  active?: Boolean ,
  alias?: String ,
  chat_only?: Boolean ,
  created_at?: String ,
  custom_role_id?: Number <~ {format: "integer"} | Null,
  default_group_id?: Number <~ {format: "integer"},
  details?: String ,
  email?: String ,
  external_id?: String | Null,
  iana_time_zone?: String ,
  id?: Number <~ {format: "integer"},
  last_login_at?: String ,
  locale?: String ,
  locale_id?: Number <~ {format: "integer"},
  moderator?: Boolean ,
  name: String ,
  notes?: String ,
  only_private_comments?: Boolean ,
  organization_id?: Number <~ {format: "integer"} | Null,
  phone?: String | Null,
  photo?: Object | Null,
  remote_photo_url?: String ,
  report_csv?: Boolean ,
  restricted_agent?: Boolean ,
  role?: String ,
  role_type?: Number <~ {format: "integer"} | Null,
  shared?: Boolean ,
  shared_agent?: Boolean ,
  shared_phone_number?: Boolean | Null,
  signature?: String ,
  suspended?: Boolean ,
  tags?: Array<String> ,
  ticket_restriction?: String | Null,
  time_zone?: String ,
  two_factor_auth_enabled?: Boolean | Null,
  updated_at?: String ,
  url?: String ,
  user_fields?: Object ,
  verified?: Boolean 
}

type SLAPolicyObject = {
  created_at?: String <~ {format: "date-time"},
  description?: String ,
  filter: SLAPolicyFilterObject ,
  id?: Number <~ {format: "integer"},
  policy_metrics?: Array<SLAPolicyMetricObject> ,
  position?: Number <~ {format: "integer"},
  title: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type CustomFieldOptionResponse = {
  custom_field_option?: CustomFieldOptionObject
}

type AutomationObject = {
  actions?: Array<ActionObject> ,
  active?: Boolean ,
  conditions?: ConditionsObject ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  id?: Number <~ {format: "integer"},
  position?: Number <~ {format: "integer"},
  raw_title?: String ,
  title?: String ,
  updated_at?: String <~ {format: "date-time"},
}

type AttachmentThumbnails = {
  thumbnails?: Array<AttachmentBaseObject> 
}

type TicketAuditResponse = {
  audit?: TicketAuditObject
}

type CursorBasedExportIncrementalTicketsResponse = {
  after_cursor?: String | Null,
  after_url?: String | Null,
  before_cursor?: String | Null,
  before_url?: String | Null,
  end_of_stream?: Boolean,
  tickets?: Array<TicketObject>
}

type CustomObjectResponse = {
  custom_object?: CustomObject
}

type CustomObjectsCreateRequest = {
  custom_object?: CustomObjectCreateInput
}

type TriggerCategoryResponse = {
  trigger_category?: TriggerCategory
}

type ResourceCollectionsResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null,
  resource_collections?: Array<ResourceCollectionObject>
}

type SearchResponse = {
  count?: Number <~ {format: "integer"},
  facets?: String | Null,
  next_page?: String | Null,
  previous_page?: String | Null,
  results?: Array<SearchResultObject> 
}

type SLAPolicyMetricObject = {
  business_hours?: Boolean ,
  metric?: String ,
  priority?: String ,
  target?: Number <~ {format: "integer"},
}

type MacroCategoriesResponse = {
  categories?: Array<String>
}

type IncrementalSkillBasedRoutingAttribute = {
  id?: String ,
  name?: String ,
  time?: String <~ {format: "date-time"},
  "type"?: String 
}

type SupportAddressResponse = {
  recipient_address?: SupportAddressObject
}

type DefinitionsResponse = {
  definitions?: {
    conditions_all?: Array<{ group?: String, nullable?: Boolean, operators?: Array<{ terminal?: Boolean, title?: String, value?: String }>, repeatable?: Boolean, subject?: String, title?: String, "type"?: String, values?: Array<{ enabled?: Boolean, title?: String, value?: String }> }>,
    conditions_any?: Array<{ group?: String, nullable?: Boolean, operators?: Array<{ terminal?: Boolean, title?: String, value?: String }>, repeatable?: Boolean, subject?: String, title?: String, "type"?: String, values?: Array<{ enabled?: Boolean, title?: String, value?: String }> }>
  }
}

type TicketsCreateRequest = {
  tickets?: Array<TicketCreateInput>
}

type EssentialsCardResponse = {
  object_layout?: EssentialsCardObject
}

type TriggerRevisionsResponse = {
  after_cursor?: String,
  after_url?: String,
  before_cursor?: String,
  before_url?: String,
  count?: Number <~ {format: "integer"},
  trigger_revisions?: Array<{ author_id?: Number <~ {format: "integer"}, created_at?: String, diff?: { actions?: Array<TriggerActionDiffObject> }
}>
}

type TriggerCategoryRequest = {
  name?: String,
  position?: Number <~ {format: "int64"}
}

type UserFieldObject = Object

type TimeBasedExportIncrementalTicketsResponse = {
  count?: Number <~ {format: "integer"},
  end_of_stream?: Boolean,
  end_time?: Number <~ {format: "integer"},
  next_page?: String | Null,
  tickets?: Array<TicketObject>
}

type UserMergeByIdInput = {
  id?: Number <~ {format: "integer"}
}

type AccountSettingsRoutingObject = {
  autorouting_tag?: String,
  enabled?: Boolean,
  max_email_capacity?: Number <~ {format: "integer"},
  max_messaging_capacity?: Number <~ {format: "integer"},
  reassignment_messaging_enabled?: Boolean,
  reassignment_messaging_timeout?: Number <~ {format: "integer"},
  reassignment_talk_timeout?: Number <~ {format: "integer"}
}

type DynamicContentVariantsResponse = {
  variants?: Array<DynamicContentVariantObject>
}

type IncrementalSkillBasedRouting = {
  attribute_values?: Array<IncrementalSkillBasedRoutingAttributeValue> ,
  attributes?: Array<IncrementalSkillBasedRoutingAttribute> ,
  count?: Number <~ {format: "integer"},
  end_time?: Number <~ {format: "integer"},
  instance_values?: Array<IncrementalSkillBasedRoutingInstanceValue> ,
  next_page?: String 
}

type EssentialsCardsResponse = {
  object_layouts?: Array<EssentialsCardObject>
}

type ListTicketEmailCCsResponse = Object

type ReverseLookupResponse = Object

type CustomObjectRecordsResponse = {
  count?: Number <~ {format: "integer"},
  custom_object_records?: Array<CustomObjectRecord>,
  links?: {
    next: String | Null,
    prev: String | Null
  },
  meta?: {
    after_cursor: String | Null,
    before_cursor: String | Null,
    has_more: Boolean
  }
}

type TriggerConditionsDiffObject = {
  all?: Array<TriggerConditionDiffObject> | Null,
  any?: Array<TriggerConditionDiffObject> | Null
}

type SuspendedTicketsExportResponse = {
  export?: {
    status?: String,
    view_id?: String
  }
}

type AssigneeFieldAssignableGroupObject = {
  description?: String ,
  id?: Number <~ {format: "integer"},
  name?: String 
}

type TargetYammer = {
  group_id?: String,
  token?: String
}

type JobStatusObject = {
  id?: String ,
  job_type?: String ,
  message?: String | Null,
  progress?: Number <~ {format: "integer"} | Null,
  results?: Array<JobStatusResultObject> | Null | {
    success: Boolean 
  } ,
  status?: String ,
  total?: Number <~ {format: "integer"} | Null,
  url?: String 
}

type OrganizationMembershipsResponse = {
  organization_memberships?: Array<OrganizationMembershipObject>
}

type ListTicketProblemsResponse = Object

type CustomObjectRecordResponse = {
  custom_object_record?: CustomObjectRecord
}

type WorkspaceInput = {
  conditions?: ConditionsObject ,
  description?: String ,
  macros?: Array<Number>,
  ticket_form_id?: Number,
  title?: String 
}

type AccountSettingsApiObject = {
  accepted_api_agreement?: Boolean,
  api_password_access?: String,
  api_token_access?: String
}

type SearchExportResponse = {
  facets?: String | Null,
  links?: {
    next?: String | Null,
    prev?: String | Null
  } ,
  meta?: {
    after_cursor?: String | Null,
    before_cursor?: String | Null,
    has_more?: Boolean 
  } ,
  results?: Array<SearchResultObject> 
}

type TriggerResponse = {
  trigger?: TriggerObject
}

type TicketSkipsResponse = {
  skips?: Array<TicketSkipObject>
}

type TicketMergeInput = {
  ids: Array<Number <~ {format: "integer"}> ,
  source_comment?: String ,
  source_comment_is_public?: Boolean ,
  target_comment?: String ,
  target_comment_is_public?: Boolean 
}

type CustomObjectRecordsJobsResponse = {
  job_status?: {
    id?: String,
    message?: String | Null,
    progress?: Number <~ {format: "integer"} | Null,
    results?: Array<CustomObjectRecord> | Null,
    status?: String,
    total?: Number <~ {format: "integer"},
    url?: String
  }
}

type TargetEmail = {
  email: String,
  subject: String
}

type SkillBasedRoutingAttributesResponse = {
  attributes?: Array<SkillBasedRoutingAttributeObject>,
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null
}

type IncrementalSkillBasedRoutingInstanceValue = {
  attribute_value_id?: String ,
  id?: String ,
  instance_id?: String ,
  time?: String <~ {format: "date-time"},
  "type"?: String 
}

type CustomStatusUpdateInput = {
  active?: Boolean ,
  agent_label?: String ,
  description?: String ,
  end_user_description?: String ,
  end_user_label?: String 
}

type UserResponse = {
  user?: UserObject
}

type GroupsCountObject = {
  count?: {
    refreshed_at?: String <~ {format: "date-time"},
    value?: Number <~ {format: "integer"},
  }
}

type TagCountObject = {
  refreshed_at?: String ,
  value?: Number <~ {format: "integer"},
}

type TriggerCategoriesResponse = {
  trigger_categories?: Array<Object>
}

type AccountSettingsMetricsObject = {
  account_size?: String
}

type IncrementalSkillBasedRoutingAttributeValue = {
  attribute_id?: String ,
  id?: String ,
  name?: String ,
  time?: String <~ {format: "date-time"},
  "type"?: String 
}

type TicketMetricEventGroupSLAObject = Object

type SkillBasedRoutingAttributeValueObject = {
  attribute_id?: String ,
  created_at?: String <~ {format: "date-time"},
  id?: String ,
  name?: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type SuspendedTicketObject = {
  attachments?: Array<AttachmentObject> | Null,
  author?: Object ,
  brand_id?: Number <~ {format: "integer"},
  cause?: String ,
  cause_id?: Number <~ {format: "integer"},
  content?: String ,
  created_at?: String <~ {format: "date-time"},
  error_messages?: Array<Object> | Null,
  id?: Number <~ {format: "integer"},
  message_id?: String ,
  recipient?: String ,
  subject?: String ,
  ticket_id?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  via?: ViaObject 
}

type JobStatusResponse = {
  job_status?: JobStatusObject
}

type GroupSLAPolicyResponse = {
  group_sla_policy?: GroupSLAPolicyObject
}

type MacroObject = Object

type SLAPolicyFilterConditionObject = {
  field?: String ,
  operator?: String ,
  value?: String | Array<String | Number <~ {format: "integer"}> 
}

type SkillBasedRoutingAttributeResponse = {
  attribute?: SkillBasedRoutingAttributeObject
}

type TicketFieldObject = {
  active?: Boolean ,
  agent_description?: String ,
  collapsed_for_agents?: Boolean ,
  created_at?: String <~ {format: "date-time"},
  creator_app_name?: String ,
  creator_user_id?: Number <~ {format: "integer"},
  custom_field_options?: Array<CustomFieldOptionObject> ,
  custom_statuses?: Array<TicketFieldCustomStatusObject> ,
  description?: String ,
  editable_in_portal?: Boolean ,
  id?: Number <~ {format: "integer"},
  position?: Number <~ {format: "integer"},
  raw_description?: String ,
  raw_title?: String ,
  raw_title_in_portal?: String ,
  regexp_for_validation?: String | Null,
  relationship_filter?: Object ,
  relationship_target_type?: String ,
  removable?: Boolean ,
  required?: Boolean ,
  required_in_portal?: Boolean ,
  sub_type_id?: Number <~ {format: "integer"},
  system_field_options?: Array<SystemFieldOptionObject> ,
  tag?: String | Null,
  title: String ,
  title_in_portal?: String ,
  "type": String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  visible_in_portal?: Boolean 
}

type OrganizationMembershipResponse = {
  organization_membership?: OrganizationMembershipObject
}

type TriggersResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null,
  triggers?: Array<TriggerObject>
}

type UsersRequest = {
  users: Array<UserInput>
}

type SkillBasedRoutingAttributeObject = {
  created_at?: String <~ {format: "date-time"},
  id?: String ,
  name: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type AccountSettingsBrandingObject = {
  favicon_url?: String | Null,
  header_color?: String,
  header_logo_url?: String | Null,
  page_background_color?: String,
  tab_background_color?: String,
  text_color?: String
}

type ViewExportResponse = {
  export?: {
    status?: String,
    view_id?: Number <~ {format: "integer"}
  }
}

type AccountSettingsRuleObject = {
  macro_most_used?: Boolean,
  macro_order?: String,
  skill_based_filtered_views?: Array<Object>,
  using_skill_based_routing?: Boolean
}

type TriggerConditionsObject = {
  all?: Array<TriggerConditionObject> | Null,
  any?: Array<TriggerConditionObject> | Null
}

type CustomObjectField = Object

type TicketMetricsResponse = {
  ticket_metrics?: Array<TicketMetricObject>
}

type SatisfactionRatingResponse = {
  satisfaction_rating?: Array<SatisfactionRatingObject>
}

type ViewCountsResponse = {
  view_counts?: Array<ViewCountObject>
}

type DeletedUserObject = {
  active: Boolean,
  created_at: String,
  email: String,
  id: Number <~ {format: "integer"},
  locale: String,
  locale_id: Number <~ {format: "integer"},
  name: String,
  organization_id: Number <~ {format: "integer"},
  phone: String | Null,
  photo: Object | Null,
  role: String,
  shared_phone_number: String | Null,
  time_zone: String,
  updated_at: String,
  url: String
}

type BookmarkInput = {
  ticket_id?: Number <~ {format: "integer"},
}

type DynamicContentObject = {
  created_at?: String <~ {format: "date-time"},
  default_locale_id: Number <~ {format: "integer"},
  id?: Number <~ {format: "integer"},
  name: String ,
  outdated?: Boolean ,
  placeholder?: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  variants: Array<DynamicContentVariantObject> 
}

type TicketMetricEventBaseObject = {
  id?: Number <~ {format: "integer"},
  instance_id?: Number <~ {format: "integer"},
  metric?: "agent_work_time" | "pausable_update_time" | "periodic_update_time" | "reply_time" | "requester_wait_time" | "resolution_time" | "group_ownership_time" ,
  ticket_id?: Number <~ {format: "integer"},
  time?: String <~ {format: "date-time"},
  "type"?: "activate" | "pause" | "fulfill" | "apply_sla" | "apply_group_sla" | "breach" | "update_status" | "measure" 
}

type CursorBasedExportIncrementalUsersResponse = {
  after_cursor?: String | Null,
  after_url?: String | Null,
  before_cursor?: String | Null,
  before_url?: String | Null,
  end_of_stream?: Boolean,
  users?: Array<UserObject>
}

type AccountSettingsSideConversationsObject = {
  email_channel?: Boolean,
  msteams_channel?: Boolean,
  show_in_context_panel?: Boolean,
  slack_channel?: Boolean,
  tickets_channel?: Boolean
}

type UserRelatedObject = {
  assigned_tickets?: Number <~ {format: "integer"},
  ccd_tickets?: Number <~ {format: "integer"},
  organization_subscriptions?: Number <~ {format: "integer"},
  requested_tickets?: Number <~ {format: "integer"},
}

type ViewCountResponse = {
  view_count?: ViewCountObject
}

type TargetFailureObject = {
  consecutive_failure_count?: Number <~ {format: "integer"},
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  raw_request?: String ,
  raw_response?: String ,
  status_code?: Number <~ {format: "integer"},
  target_name?: String ,
  url?: String 
}

type DeletedUsersResponse = {
  deleted_users?: Array<DeletedUserObject>
}

type TriggerConditionObject = {
  field?: String,
  operator?: String,
  value?: String | Number <~ {format: "integer"} | Array<String | Number <~ {format: "integer"}>
}

type TrialAccountResponse = {
  account?: TrialAccountObject
}

type BookmarkObject = {
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  ticket?: Object,
  url?: String 
}

type SatisfactionRatingsCountResponse = {
  count?: {
    refreshed_at?: String <~ {format: "date-time"},
    value?: Number <~ {format: "integer"}
  }
}

type SearchResultObject = {
  created_at?: String ,
  "default"?: Boolean ,
  deleted?: Boolean ,
  description?: String ,
  id?: Number <~ {format: "integer"},
  name?: String ,
  result_type?: String ,
  updated_at?: String ,
  url?: String 
}

type DynamicContentsResponse = {
  items?: Array<DynamicContentObject>
}

type BrandsResponse = Object

type TriggerConditionDefinitionObjectAll = {
  group?: String,
  nullable?: Boolean,
  operators?: Array<{ terminal?: Boolean, title?: String, value?: String }>,
  repeatable?: Boolean,
  subject?: String,
  title?: String,
  "type"?: String,
  values?: Array<{ enabled?: Boolean, title?: String, value?: String }>
}

type ListDeletedTicketsResponse = Object

type AccountSettingsBrandsObject = {
  default_brand_id?: Number <~ {format: "integer"},
  require_brand_on_new_tickets?: Boolean
}

type AccountSettingsTwitterObject = {
  shorten_url?: String
}

type AuditLogObject = {
  action?: String ,
  action_label?: String ,
  actor_id?: Number <~ {format: "integer"},
  actor_name?: String ,
  change_description?: String ,
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  ip_address?: String ,
  source_id?: Number <~ {format: "integer"},
  source_label?: String ,
  source_type?: String ,
  url?: String 
}

type TargetClickatell = {
  api_id: String,
  attribute?: String ,
  from?: String,
  method?: String ,
  password: String ,
  target_url?: String ,
  to: String,
  us_small_business_account?: String,
  username: String
}

type Pagination = {
  links?: {
    next?: String,
    prev?: String
  },
  meta?: {
    after_cursor?: String,
    before_cursor?: String,
    has_more?: Boolean
  }
}

type TicketResponse = {
  ticket?: TicketObject
}

type RequestResponse = {
  request?: RequestObject
}

type TicketFieldResponse = {
  ticket_field?: TicketFieldObject
}

type AssigneeFieldAssignableAgentObject = {
  avatar_url?: String | Null,
  id?: Number <~ {format: "integer"},
  name?: String 
}

type TicketCommentResponse = {
  comment?: TicketCommentObject
}

type TimeBasedExportIncrementalUsersResponse = {
  count?: Number <~ {format: "integer"},
  end_of_stream?: Boolean,
  end_time?: Number <~ {format: "integer"},
  next_page?: String | Null,
  users?: Array<UserObject>
}

type AccountSettingsCrossSellObject = {
  show_chat_tooltip?: Boolean,
  xsell_source?: String | Null
}

type UserFieldsResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null,
  user_fields?: Array<UserFieldObject>
}

type TicketObject = {
  allow_attachments?: Boolean  | Null ,
  allow_channelback?: Boolean  | Null ,
  assignee_email?: String  | Null ,
  assignee_id?: Number <~ {format: "integer"} | Null ,
  attribute_value_ids?: Array<Number>  | Null ,
  brand_id?: Number <~ {format: "integer"} | Null ,
  collaborator_ids?: Array<Number>  | Null ,
  collaborators?: Array<CollaboratorObject>  | Null ,
  comment?: Object  | Null ,
  created_at?: String <~ {format: "date-time"} | Null ,
  custom_fields?: Array<{ id?: Number }> | Null ,
  custom_status_id?: Number  | Null ,
  description?: String  | Null ,
  due_at?: String <~ {format: "date-time"} | Null | Null ,
  email_cc_ids?: Array<Number >  | Null ,
  email_ccs?: Object  | Null ,
  external_id?: String  | Null ,
  follower_ids?: Array<Number >  | Null ,
  followers?: Object  | Null ,
  followup_ids?: Array<Number >  | Null ,
  forum_topic_id?: Number  | Null ,
  from_messaging_channel?: Boolean  | Null ,
  group_id?: Number  | Null ,
  has_incidents?: Boolean  | Null ,
  id?: Number  | Null ,
  is_public?: Boolean  | Null ,
  macro_id?: Number  | Null ,
  macro_ids?: Array<Number >  | Null ,
  metadata?: Object ,
  organization_id?: Number  | Null ,
  priority?: "urgent" | "high" | "normal" | "low"  | Null ,
  problem_id?: Number  | Null ,
  raw_subject?: String  | Null ,
  recipient?: String  | Null ,
  requester?: Object  | Null ,
  requester_id: Number  | Null ,
  safe_update?: Boolean  | Null ,
  satisfaction_rating?: Object  | Null ,
  sharing_agreement_ids?: Array<Number >  | Null ,
  status?: "new" | "open" | "pending" | "hold" | "solved" | "closed"  | Null ,
  subject?: String  | Null ,
  submitter_id?: Number  | Null ,
  tags?: Array<String>  | Null ,
  ticket_form_id?: Number  | Null ,
  "type"?: "problem" | "incident" | "question" | "task"  | Null ,
  updated_at?: String <~ {format: "date-time"} | Null ,
  updated_stamp?: String  | Null ,
  url?: String  | Null ,
  via?: {
    channel?: String  | Null ,
    source?: Object 
  } ,
  via_followup_source_id?: Number  | Null ,
  via_id?: Number  | Null ,
  voice_comment?: Object 
}

type ConditionsObject = {
  all?: Array<ConditionObject> ,
  any?: Array<ConditionObject> 
}

type OrganizationMergeRequest = {
  organization_merge?: {
    winner_id?: Number ,
  }
}

type GroupMembershipsResponse = {
  group_memberships?: Array<GroupMembershipObject>
}

type CustomObjectsResponse = {
  custom_objects?: Array<CustomObject>
}

type AccountSettingsAppsObject = {
  create_private?: Boolean,
  create_public?: Boolean,
  use?: Boolean
}

type UserInput = Object

type QueueResponse = {
  queue?: QueueObject
}

type TriggerCategoryRequestRequired = {
  name: Any
}

type CustomObjectRecordsCreateRequest = {
  custom_object_record?: CustomObjectRecord
}

type CustomObjectRecord = {
  created_at?: String <~ {format: "date-time"},
  created_by_user_id?: String ,
  custom_object_fields?: Object,
  custom_object_key?: String ,
  external_id?: String | Null,
  id?: String ,
  name: String ,
  updated_at?: String <~ {format: "date-time"},
  updated_by_user_id?: String ,
  url?: String 
}

type AccountSettingsAgentObject = {
  agent_home?: Boolean,
  agent_workspace?: Boolean,
  aw_self_serve_migration_enabled?: Boolean,
  focus_mode?: Boolean,
  idle_timeout_enabled?: Boolean,
  unified_agent_statuses?: Boolean
}

type CustomObjectRecordsUpsertRequest = {
  custom_object_record?: CustomObjectRecord
}

type BookmarkCreateRequest = {
  bookmark?: BookmarkInput
}

type AccountSettingsBillingObject = {
  backend?: String
}

type WorkspaceResponse = Object

type JobStatusResultObject = Object

type TargetsResponse = {
  targets?: Array<TargetObject>
}

type TicketImportInput = {
  assignee_id?: Number <~ {format: "integer"},
  comments?: Array<{ value?: String}> ,
  description?: String ,
  requester_id?: Number <~ {format: "integer"},
  subject?: String ,
  tags?: Array<String> 
}

type OrganizationMergeListResponse = {
  organization_merges?: Array<{ id?: String, loser_id?: Number <~ {format: "integer"}, status?: "new" | "in_progress" | "error" | "complete", url?: String, winner_id?: Number <~ {format: "integer"} }>
}

type TriggerConditionDefinitionObjectAny = {
  group?: String,
  nullable?: Boolean,
  operators?: Array<{ terminal?: Boolean, title?: String, value?: String }>,
  repeatable?: Boolean,
  subject?: String,
  title?: String,
  "type"?: String
}

type TicketAuditViaObject = {
  channel?: String ,
  source?: Object 
}

type EssentialsCardObject = {
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  fields: Array<Object> ,
  id?: String | Null,
  key?: String ,
  layout?: String ,
  max_count?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
}

type ActivityResponse = {
  activity?: ActivityObject <~ {label: "Ticket Activities"}
}

type MacroResponse = {
  macro?: MacroObject
}

type UserFieldResponse = {
  user_field?: UserFieldObject
}

type TrialAccountObject = {
  name?: String ,
  subdomain?: String ,
  url?: String 
}

type TwitterChannelsResponse = {
  monitored_twitter_handles?: Array<TwitterChannelObject>
}

type TicketMetricEventSLAObject = Object

type GroupMembershipObject = {
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  group_id: Number <~ {format: "integer"},
  id?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  user_id: Number <~ {format: "integer"},
}

type AccountSettingsResponse = {
  settings?: AccountSettingsObject
}

type CreateResourceResult = {
  id: Number <~ {format: "integer"},
  index: Number <~ {format: "integer"},
}

type UserRelatedResponse = {
  user_related?: UserRelatedObject
}

type TriggerConditionDiffObject = {
  field?: Array<TriggerChangeObject> ,
  operator?: Array<TriggerChangeObject> ,
  value?: Array<TriggerChangeObject> 
}

type AccountSettingsGoogleAppsObject = {
  has_google_apps?: Boolean,
  has_google_apps_admin?: Boolean
}

type TagsResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null,
  tags?: Array<TagListTagObject>
}

type ResourceCollectionObject = {
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  resources?: Array<{ deleted?: Boolean, identifier?: String, resource_id?: Number <~ {format: "integer"}, "type"?: String }> ,
  updated_at?: String <~ {format: "date-time"},
}

type CountResponse = {
  count?: {
    refreshed_at?: String,
    value?: Number <~ {format: "integer"}
  }
}

type ChannelFrameworkPushResultsResponse = {
  results?: Array<ChannelFrameworkResultObject> 
}

type GroupSLAPolicyFilterDefinitionResponse = {
  definitions?: {
    all?: Array<{ group?: String, operators?: Array<{ title?: String, value?: String }>, title?: String, value?: String, values?: { list?: Array<{ title?: String, value?: Number <~ {format: "integer"} | Null }>, "type"?: String } }>
  }
}

type ChannelFrameworkResultObject = {
  external_resource_id?: String ,
  status?: ChannelFrameworkResultStatusObject 
}

type OrganizationFieldResponse = {
  organization_field?: OrganizationFieldObject
}

type TicketMetricsByTicketMetricIdResponse = {
  ticket_metric?: Array<TicketMetricObject>
}

type AccountSettingsChatObject = {
  available?: Boolean,
  enabled?: Boolean,
  integrated?: Boolean,
  maximum_request_count?: Number <~ {format: "integer"},
  welcome_message?: String
}

type ActionObject = {
  field?: String ,
  value?: String 
}

type Errors = {
  errors?: Array<Error>
}

type TargetFailuresResponse = {
  target_failures?: Array<TargetFailureObject>
}

type CustomFieldOptionsResponse = {
  count?: Number <~ {format: "integer"},
  custom_field_options?: Array<CustomFieldOptionObject>,
  next_page?: String | Null,
  previous_page?: String | Null
}

type AccountSettingsUserObject = {
  agent_created_welcome_emails?: Boolean,
  end_user_phone_number_validation?: Boolean,
  have_gravatars_enabled?: Boolean,
  language_selection?: Boolean,
  multiple_organizations?: Boolean,
  tagging?: Boolean,
  time_zone_selection?: Boolean
}

type SessionResponse = {
  session?: Array<SessionObject>
}

type AccountSettingsLotusObject = {
  pod_id?: Number <~ {format: "integer"},
  prefer_lotus?: Boolean,
  reporting?: Boolean
}

type AccountSettingsCdnObject = {
  cdn_provider?: String,
  fallback_cdn_provider?: String,
  hosts?: Array<{ name?: String, url?: String }>
}

type UserIdentityObject = {
  created_at?: String <~ {format: "date-time"},
  deliverable_state?: String ,
  id?: Number <~ {format: "integer"},
  primary?: Boolean ,
  "type": "email" | "twitter" | "facebook" | "google" | "phone_number" | "agent_forwarding" | "any_channel" | "foreign" | "sdk" ,
  undeliverable_count?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  user_id: Number <~ {format: "integer"},
  value: String ,
  verified?: Boolean 
}

type ConditionObject = {
  field?: String ,
  operator?: String ,
  value?: String 
}

type CustomStatusResponse = {
  custom_status?: CustomStatusObject
}

type RecoverSuspendedTicketUnprocessableContentResponse = {
  ticket?: Array<SuspendedTicketObject>
}

type TagListTagObject = {
  count?: Number <~ {format: "integer"},
  name?: String 
}

type TargetHTTP = {
  content_type: String ,
  method: String ,
  password?: String ,
  target_url: String,
  username?: String
}

type AccountSettingsVoiceObject = {
  agent_confirmation_when_forwarding?: Boolean,
  agent_wrap_up_after_calls?: Boolean,
  enabled?: Boolean,
  logging?: Boolean,
  maximum_queue_size?: Number <~ {format: "integer"},
  maximum_queue_wait_time?: Number <~ {format: "integer"},
  only_during_business_hours?: Boolean,
  outbound_enabled?: Boolean,
  recordings_public?: Boolean,
  uk_mobile_forwarding?: Boolean
}

type ComplianceDeletionStatusObject = {
  account_subdomain: String,
  action: String,
  application: String,
  created_at: String,
  executer_id: Number <~ {format: "integer"} | Null,
  user_id: Number <~ {format: "integer"}
}

type BrandCreateRequest = {
  brand?: BrandObject <~ {label: "Brands"}
}

type SatisfactionReasonObject = {
  created_at?: String <~ {format: "date-time"},
  deleted_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  raw_value?: String ,
  reason_code?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  value: String 
}

type TriggerSnapshotObject = {
  actions?: Array<TriggerActionObject> ,
  active?: Boolean ,
  conditions?: TriggerConditionsObject ,
  description?: String | Null,
  title?: String 
}

type SuspendedTicketsAttachmentsResponse = {
  upload?: {
    attachments?: Array<AttachmentObject>,
    token?: String 
  }
}

type TargetBasecamp = {
  message_id?: String ,
  password?: String ,
  project_id: String ,
  resource: String ,
  target_url: String ,
  todo_list_id?: String ,
  token: String ,
  username?: String 
}

type TriggerActionDefinitionObject = {
  group?: String,
  nullable?: Boolean,
  repeatable?: Boolean,
  subject?: String,
  title?: String,
  "type"?: String,
  values?: Array<{ enabled?: Boolean, title?: String, value?: String }>
}

type RecoverSuspendedTicketResponse = {
  ticket?: Array<SuspendedTicketObject>
}

type TicketSkipObject = {
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  reason?: String ,
  ticket?: Object ,
  ticket_id?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
  user_id?: Number <~ {format: "integer"},
}

type TicketFieldsResponse = {
  ticket_fields?: Array<TicketFieldObject>
}

type TriggerRevisionResponse = {
  trigger_revision?: {
    author_id?: Number <~ {format: "integer"},
    created_at?: String,
    id?: Number <~ {format: "integer"},
    snapshot?: {
      actions?: Array<TriggerActionObject>,
      active?: Boolean,
      conditions?: TriggerConditionsObject ,
      description?: String | Null,
      title?: String
    },
    url?: String
  }
}

type TriggerCategory = {
  created_at?: String,
  id?: String,
  name?: String,
  position?: Number <~ {format: "int64"},
  updated_at?: String
}

type SearchCountResponse = {
  count?: Number <~ {format: "integer"}
}

type SLAPoliciesResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null,
  sla_policies?: Array<SLAPolicyObject>
}

type ChannelFrameworkResultStatusObject = {
  code?: String ,
  description?: String 
}

type TicketCreateInput = {
  additional_collaborators?: Array<CollaboratorObject> ,
  assignee_email?: String ,
  assignee_id?: Number <~ {format: "integer"},
  attribute_value_ids?: Array<Number <~ {format: "integer"}> ,
  collaborator_ids?: Array<Number <~ {format: "integer"}> ,
  comment?: TicketCommentObject,
  custom_fields?: Array<CustomFieldObject> ,
  custom_status_id?: Number <~ {format: "integer"},
  due_at?: String <~ {format: "date-time"} | Null,
  email_ccs?: Array<EmailCCObject> ,
  external_id?: String ,
  followers?: Array<FollowerObject> ,
  group_id?: Number <~ {format: "integer"},
  organization_id?: Number <~ {format: "integer"},
  priority?: "urgent" | "high" | "normal" | "low" ,
  problem_id?: Number <~ {format: "integer"},
  requester_id?: Number <~ {format: "integer"},
  safe_update?: Boolean ,
  sharing_agreement_ids?: Array<Number <~ {format: "integer"}> ,
  status?: "new" | "open" | "pending" | "hold" | "solved" | "closed" ,
  subject?: String ,
  tags?: Array<String> ,
  "type"?: "problem" | "incident" | "question" | "task" ,
  updated_stamp?: String <~ {format: "date-time"},
  brand_id?: Number <~ {format: "integer"},
  collaborators?: Array<CollaboratorObject> ,
  email_cc_ids?: Array<Number <~ {format: "integer"}> ,
  follower_ids?: Array<Number <~ {format: "integer"}> ,
  macro_ids?: Array<Number <~ {format: "integer"}> ,
  raw_subject?: String ,
  recipient?: String ,
  submitter_id?: Number <~ {format: "integer"},
  ticket_form_id?: Number <~ {format: "integer"},
  via?: ViaObject ,
  via_followup_source_id?: Number <~ {format: "integer"},
  description: String,
  test?:String
}

type TicketCreateVoicemailTicketVoiceCommentInput = {
  answered_by_id?: Number <~ {format: "integer"},
  call_duration?: Number <~ {format: "integer"},
  from?: String ,
  location?: String ,
  recording_url?: String ,
  started_at?: String <~ {format: "date-time"},
  to?: String ,
  transcription_text?: String 
}

type ActivityObject = {
  actor?: Object ,
  actor_id?: Number <~ {format: "integer"},
  created_at?: String ,
  id?: Number <~ {format: "integer"},
  object?: Object ,
  target?: Object ,
  title?: String ,
  updated_at?: String ,
  url?: String ,
  user?: Object ,
  user_id?: Number <~ {format: "integer"},
  verb?: String 
}

type DynamicContentResponse = {
  item?: DynamicContentObject <~ {label: "Dynamic Content Items"}
}

type TicketCommentObject = {
  attachments?: Array<AttachmentObject> ,
  audit_id?: Number <~ {format: "integer"},
  author_id?: Number <~ {format: "integer"},
  body?: String ,
  created_at?: String <~ {format: "date-time"},
  html_body?: String ,
  id?: Number <~ {format: "integer"},
  metadata?: Object ,
  plain_body?: String ,
  public?: Boolean ,
  "type"?: String ,
  uploads?: Array<String> ,
  via?: TicketAuditViaObject 
}

type TargetResponse = {
  target?: TargetObject
}

type TicketAuditsCountResponse = {
  count?: {
    refreshed_at?: String <~ {format: "date-time"},
    value?: Number <~ {format: "integer"}
  }
}

type CreateOrganizationRequest = {
  organization: OrganizationObject
}

type CustomStatusesResponse = {
  custom_statuses?: Array<CustomStatusObject>
}

type UserCreateInput = {
  custom_role_id?: Number <~ {format: "integer"},
  email: String,
  external_id?: String,
  identities?: Array<{ "type": String, value: String }>,
  name: String,
  organization?: {
    name: String
  },
  organization_id?: Number <~ {format: "integer"},
  role?: String
}

type ViewObject = {
  active?: Boolean ,
  conditions?: Object ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  description?: String ,
  execution?: Object ,
  id?: Number <~ {format: "integer"},
  position?: Number <~ {format: "integer"},
  restriction?: Object ,
  title?: String ,
  updated_at?: String <~ {format: "date-time"},
}

type OrganizationFieldsResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  organization_fields?: Array<OrganizationFieldObject>,
  previous_page?: String | Null
}

type CustomStatusObject = {
  active?: Boolean ,
  agent_label: String ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  description?: String ,
  end_user_description?: String ,
  end_user_label?: String ,
  id?: Number <~ {format: "integer"},
  raw_agent_label?: String ,
  raw_description?: String ,
  raw_end_user_description?: String ,
  raw_end_user_label?: String ,
  status_category: "new" | "open" | "pending" | "hold" | "solved" ,
  updated_at?: String <~ {format: "date-time"},
}

type TwitterChannelResponse = {
  monitored_twitter_handle?: TwitterChannelObject <~ {label: "Monitored X handles"}
}

type DynamicContentVariantResponse = {
  variant?: DynamicContentVariantObject
}

type TriggerChangeObject = {
  change?: String ,
  content?: Boolean | String | Number <~ {format: "integer"} | Array<String | Number <~ {format: "integer"} | Boolean> 
}

type SharingAgreementsResponse = {
  sharing_agreements?: Array<SharingAgreementObject>
}

type AccountSettingsLocalizationObject = {
  locale_ids?: Array<Number <~ {format: "integer"}>
}

type AccountSettingsTicketSharingPartnersObject = {
  support_addresses?: Array<String>
}

type GroupObject = {
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  deleted?: Boolean ,
  description?: String ,
  id?: Number <~ {format: "integer"},
  is_public?: Boolean ,
  name: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type CountOrganizationObject = {
  refreshed_at?: String,
  value?: Number <~ {format: "integer"}
}

type HostMappingObject = {
  cname?: String ,
  expected_cnames?: Array<String> ,
  is_valid?: Boolean ,
  reason?: String 
}

type TicketCreateVoicemailTicketRequest = {
  display_to_agent?: Number <~ {format: "integer"},
  ticket?: Object 
}

type TicketCreateRequest = {
  ticket?: TicketCreateInput
}

type ActivitiesCountResponse = {
  count?: {
    refreshed_at?: String <~ {format: "date-time"},
    value?: Number <~ {format: "integer"}
  }
}

type OrganizationSubscriptionCreateRequest = {
  organization_subscription?: OrganizationSubscriptionInput
}

type OrganizationSubscriptionsResponse = Object

type TwitterChannelTwicketStatusResponse = {
  statuses?: Array<{ favorited?: Boolean, id?: Number <~ {format: "integer"}, retweeted?: Boolean, user_followed?: Boolean }>
}

type AccountSettingsLimitsObject = {
  attachment_size?: Number <~ {format: "integer"}
}

type RelationshipFilterDefinition = {
  conditions_all?: Array<TriggerConditionDefinitionObjectAll>,
  conditions_any?: Array<TriggerConditionDefinitionObjectAny>
}

type MacroAttachmentObject = {
  content_type?: String ,
  content_url?: String ,
  created_at?: String <~ {format: "date-time"},
  filename?: String ,
  id?: Number <~ {format: "integer"},
  size?: Number <~ {format: "integer"},
}

type TargetURL = {
  attribute: String,
  method?: String ,
  password?: String ,
  target_url: String,
  username?: String
}

type TicketFieldCustomStatusObject = {
  active?: Boolean ,
  agent_label?: String ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  description?: String ,
  end_user_description?: String ,
  end_user_label?: String ,
  id?: Number <~ {format: "integer"},
  status_category?: "new" | "open" | "pending" | "hold" | "solved" ,
  updated_at?: String <~ {format: "date-time"},
}

type AccountSettingsGroupObject = {
  check_group_name_uniqueness?: Boolean
}

type OrganizationFieldObject = Object

type JobStatusesResponse = {
  job_statuses: Array<JobStatusObject>
}

type AttachmentBaseObject = {
  content_type?: String ,
  content_url?: String ,
  deleted?: Boolean ,
  file_name?: String ,
  height?: String ,
  id?: Number <~ {format: "integer"},
  inline?: Boolean ,
  malware_access_override?: Boolean ,
  malware_scan_result?: String ,
  mapped_content_url?: String ,
  size?: Number <~ {format: "integer"},
  url?: String ,
  width?: String 
}

type TagsByObjectIdResponse = {
  tags: Array<String> 
}

type TagCountResponse = {
  count?: TagCountObject
}

type SessionObject = {
  authenticated_at?: String | Null,
  id: Number <~ {format: "integer"},
  last_seen_at?: String | Null,
  url?: String | Null,
  user_id?: Number <~ {format: "integer"} | Null
}

type ExportIncrementalTicketEventsResponse = {
  count?: Number <~ {format: "integer"},
  end_of_stream?: Boolean,
  end_time?: Number <~ {format: "integer"},
  next_page?: String | Null,
  ticket_events?: Array<TicketMetricEventBaseObject>
}

type AuditObject = {
  author_id?: Number <~ {format: "integer"},
  created_at?: String <~ {format: "date-time"},
  events?: Array<{ body?: String, field_name?: String, id?: Number <~ {format: "integer"}, "type"?: String, value?: String | Number <~ {format: "integer"} }>,
  id?: Number <~ {format: "integer"},
  metadata?: Object,
  ticket_id?: Number <~ {format: "integer"},
  via?: ViaObject 
}

type CustomObjectRecordsBulkCreateRequest = {
  job?: {
    action?: String,
    items?: Array<CustomObjectRecord> 
  }
}

type SkillBasedRoutingTicketFulfilledResponse = {
  fulfilled_ticket_ids?: Array<Number <~ {format: "integer"}>
}

type CustomRolesResponse = {
  custom_roles?: Array<CustomRoleObject>
}

type SkillBasedRoutingAttributeValueResponse = {
  attribute_value?: SkillBasedRoutingAttributeValueObject
}

type TriggerCategoryBatchRequest = {
  id: String,
  position: Number <~ {format: "int64"}
}

type ViewsCountResponse = {
  count?: {
    refreshed_at?: String <~ {format: "date-time"},
    value?: Number <~ {format: "integer"}
  }
}

type GroupSLAPolicyFilterObject = {
  all?: Array<GroupSLAPolicyFilterConditionObject>
}

type AccountSettingsTicketObject = {
  accepted_new_collaboration_tos?: Boolean,
  agent_collision?: Boolean,
  agent_invitation_enabled?: Boolean,
  agent_ticket_deletion?: Boolean,
  allow_group_reset?: Boolean,
  assign_default_organization?: Boolean,
  assign_tickets_upon_solve?: Boolean,
  auto_translation_enabled?: Boolean,
  auto_updated_ccs_followers_rules?: Boolean,
  chat_sla_enablement?: Boolean,
  collaboration?: Boolean,
  comments_public_by_default?: Boolean,
  email_attachments?: Boolean,
  emoji_autocompletion?: Boolean,
  follower_and_email_cc_collaborations?: Boolean,
  has_color_text?: Boolean,
  is_first_comment_private_enabled?: Boolean,
  light_agent_email_ccs_allowed?: Boolean,
  list_empty_views?: Boolean,
  list_newest_comments_first?: Boolean,
  markdown_ticket_comments?: Boolean,
  maximum_personal_views_to_list?: Number <~ {format: "integer"},
  private_attachments?: Boolean,
  rich_text_comments?: Boolean,
  status_hold?: Boolean,
  tagging?: Boolean,
  using_skill_based_routing?: Boolean
}

type TicketChatCommentRedactionResponse = {
  chat_event?: {
    id?: Number <~ {format: "integer"},
    "type"?: String ,
    value?: {
      chat_id?: String ,
      history?: Array<Object> ,
      visitor_id?: String 
    } 
  } 
}

type OrganizationResponse = {
  organization?: OrganizationObject
}

type AuditLogsResponse = {
  audit_logs?: Array<AuditLogObject>
}

type RequestsResponse = {
  requests?: Array<RequestObject>
}

type TriggerCategoryRuleCounts = {
  active_count?: Number <~ {format: "int64"},
  inactive_count?: Number <~ {format: "int64"}
}

type TwitterChannelObject = {
  allow_reply?: Boolean ,
  avatar_url?: String ,
  brand_id?: Number <~ {format: "integer"},
  can_reply?: Boolean ,
  created_at?: String <~ {format: "date-time"},
  id: Number <~ {format: "integer"},
  name?: String ,
  screen_name: String ,
  twitter_user_id: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
}

type ComplianceDeletionStatusesResponse = {
  compliance_deletion_statuses?: Array<ComplianceDeletionStatusObject>
}

type BatchErrorItem = Object

type CustomObject = {
  created_at?: String <~ {format: "date-time"},
  created_by_user_id?: String ,
  description?: String ,
  key: String ,
  raw_description?: String ,
  raw_title?: String ,
  raw_title_pluralized?: String ,
  title: String ,
  title_pluralized: String ,
  updated_at?: String <~ {format: "date-time"},
  updated_by_user_id?: String ,
  url?: String 
}

type TargetTwitter = {
  secret?: String ,
  token?: String
}

type LocalesResponse = {
  locales?: Array<LocaleObject>
}

type AuditLogResponse = {
  audit_log?: AuditLogObject
}

type AttachmentObject = Object

type UserObject = Object

type SuspendedTicketResponse = {
  suspended_ticket?: Array<SuspendedTicketObject>
}

type TicketAuditsResponseNoneCursor = {
  audits?: Array<TicketAuditObject>,
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null
}

type TicketCreateVoicemailTicketInput = {
  comment?: TicketCommentObject,
  priority?: "urgent" | "high" | "normal" | "low" ,
  via_id?: 44 | 45 | 46 ,
  voice_comment?: Object 
}

type ExportIncrementalOrganizationsResponse = {
  count?: Number <~ {format: "integer"},
  end_of_stream?: Boolean,
  end_time?: Number <~ {format: "integer"},
  next_page?: String | Null,
  organizations?: Array<OrganizationObject>
}

type BatchJobResponse = {
  errors?: Array<BatchErrorItem>,
  results?: {
    trigger_categories?: Array<TriggerCategory>,
    triggers?: Array<TriggerObject>
  },
  status?: "complete" | "failed"
}

type UserMergePropertiesInput = {
  email?: String,
  name?: String,
  organization_id?: Number <~ {format: "integer"},
  password?: String
}

type SatisfactionReasonResponse = {
  reason?: Array<SatisfactionReasonObject>
}

type TicketMetricEventUpdateStatusObject = Object

type UserPasswordRequirementsResponse = {
  requirements?: Array<String>
}

type TicketRelatedInformation = {
  followup_source_ids?: Array<String>,
  from_archive?: Boolean ,
  incidents?: Number <~ {format: "integer"},
  topic_id?: String | Null,
  twitter?: Object 
}

type AssigneeFieldAssignableGroupAgentsResponse = {
  agents?: Array<AssigneeFieldAssignableAgentObject>,
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null
}

type ActivitiesResponse = {
  activities?: Array<ActivityObject>,
  actors?: Array<Object>,
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null,
  users?: Array<Object>
}

type TargetPivotal = {
  owner_by?: String,
  project_id: String,
  requested_by?: String,
  story_labels?: String,
  story_title: String,
  story_type: String,
  token: String
}

type CustomObjectFieldsCreateRequest = {
  custom_object_field?: CustomObjectField
}

type SatisfactionReasonsResponse = {
  reasons?: Array<SatisfactionReasonObject>
}

type ViewResponse = {
  columns?: Array<Object>,
  groups?: Array<Object>,
  rows?: Array<Object>,
  view?: ViewObject
}

type ResourceCollectionResponse = {
  resource_collection?: ResourceCollectionObject
}

type TicketCommentsResponse = {
  comments?: Array<TicketCommentObject>
}

type MacrosResponse = Object

type CustomRoleResponse = {
  custom_role?: CustomRoleObject <~ {label: "Custom Agent Roles"}
}

type ActionsObject = {
  actions?: Array<ActionObject>
}

type UrlObject = {
  url?: String
}

type SharingAgreementResponse = {
  sharing_agreement?: SharingAgreementObject
}

type TicketFieldCountResponse = {
  count?: {
    refreshed_at?: String <~ {format: "date-time"},
    value?: Number <~ {format: "integer"}
  }
}

type MacroUpdateManyInput = {
  macros?: Array<{ active?: Boolean }>
}

type AutomationResponse = {
  automation?: AutomationObject
}

type AccountSettingsStatisticsObject = {
  forum?: Boolean,
  rule_usage?: Boolean,
  search?: Boolean
}

type PushNotificationDevicesRequest = {
  push_notification_devices?: PushNotificationDevicesInput
}

type DeletedUserResponse = {
  deleted_user?: DeletedUserObject
}

type TicketSkipCreation = {
  skip?: TicketSkipObject
}

type SatisfactionRatingsResponse = {
  satisfaction_ratings?: Array<SatisfactionRatingObject>
}

type TargetCampfire = {
  preserve_format?: Boolean,
  room: String,
  ssl?: Boolean,
  subdomain: String,
  token: String
}

type RelationshipFilterDefinitionResponse = {
  definitions?: RelationshipFilterDefinition
}

type BookmarkResponse = {
  bookmark?: BookmarkObject <~ {label: "Bookmarks"}
}

type BrandObject = {
  active?: Boolean ,
  brand_url?: String ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  has_help_center?: Boolean ,
  help_center_state?: "enabled" | "disabled" | "restricted" ,
  host_mapping?: String ,
  id?: Number <~ {format: "integer"},
  is_deleted?: Boolean ,
  logo?: AttachmentObject ,
  name: String ,
  signature_template?: String ,
  subdomain: String ,
  ticket_form_ids?: Array<Number <~ {format: "integer"}> ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type TicketMetricTimeObject = {
  business?: Number <~ {format: "integer"},
  calendar?: Number <~ {format: "integer"},
}

type BookmarksResponse = Object

type EmailCCObject = Object

type AutomationsResponse = {
  automations?: Array<AutomationObject>,
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null
}

type OrganizationSubscriptionObject = {
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  organization_id?: Number <~ {format: "integer"},
  user_id?: Number <~ {format: "integer"},
}

type OrganizationMembershipObject = {
  created_at?: String <~ {format: "date-time"},
  "default": Boolean | Null,
  id?: Number <~ {format: "integer"},
  organization_id: Number <~ {format: "integer"},
  organization_name?: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String ,
  user_id: Number <~ {format: "integer"},
  view_tickets?: Boolean 
}

type ListTicketFollowersResponse = Object

type AttachmentUploadResponse = {
  upload?: {
    attachment?: AttachmentObject ,
    attachments?: Array<AttachmentObject>,
    token?: String 
  }
}

type TriggerWithCategoryRequest = {
  trigger?: TriggerObject & TriggerCategory | TriggerCategoryId
}

type CustomFieldObject = {
  active?: Boolean ,
  created_at?: String <~ {format: "date-time"},
  custom_field_options?: Array<CustomFieldOptionObject> ,
  description?: String ,
  id?: Number <~ {format: "integer"},
  key: String ,
  position?: Number <~ {format: "integer"},
  raw_description?: String ,
  raw_title?: String ,
  regexp_for_validation?: String | Null,
  relationship_filter?: Object ,
  relationship_target_type?: String ,
  system?: Boolean ,
  tag?: String ,
  title: String ,
  "type": String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type AccountSettingsOnboardingObject = {
  checklist_onboarding_version?: Number <~ {format: "integer"},
  onboarding_segments?: String | Null,
  product_sign_up?: String | Null
}

type AssigneeFieldAssignableSearchAgentObject = {
  group?: String ,
  group_id?: Number <~ {format: "integer"},
  id?: Number <~ {format: "integer"},
  name?: String ,
  photo_url?: String | Null
}

type GroupResponse = {
  group?: GroupObject
}

type LocaleObject = {
  created_at?: String <~ {format: "date-time"},
  id?: Number <~ {format: "integer"},
  locale?: String ,
  name?: String ,
  updated_at?: String <~ {format: "date-time"},
  url?: String 
}

type TicketFormResponse = {
  ticket_form?: TicketFormObject
}

type FollowerObject = {
  action?: "put" | "delete",
  user_email?: String,
  user_id?: String
}

type ViewsResponse = {
  count?: Number <~ {format: "integer"},
  next_page?: String | Null,
  previous_page?: String | Null,
  views?: Array<ViewObject>
}

type OrganizationSubscriptionInput = {
  organization_id?: Number <~ {format: "integer"},
  user_id?: Number <~ {format: "integer"},
}

type TriggerCategoryId = String

type AuthorObject = {
  email?: String ,
  id?: Number <~ {format: "integer"},
  name?: String 
}

type MacroApplyTicketResponse = {
  result?: {
    ticket?: {
      assignee_id?: Number <~ {format: "integer"},
      comment?: {
        body?: String,
        public?: Boolean,
        scoped_body?: Array<Array<String>>
      },
      fields?: {
        id?: Number <~ {format: "integer"},
        value?: String
      },
      group_id?: Number <~ {format: "integer"},
      id?: Number <~ {format: "integer"},
      url?: String
    }
  }
}

type SkillBasedRoutingAttributeDefinitions = {
  definitions?: {
    conditions_all?: Array<{ subject?: String, title?: String }>,
    conditions_any?: Array<{ subject?: String, title?: String }>
  }
}

type AccountSettingsTicketFormObject = {
  raw_ticket_forms_instructions?: String,
  ticket_forms_instructions?: String
}

type ListTicketIncidentsResponse = Object

type SkillBasedRoutingAttributeValuesResponse = {
  attribute_values?: Array<SkillBasedRoutingAttributeValueObject>
}

type SupportAddressObject = {
  brand_id?: Number <~ {format: "integer"},
  cname_status?: "unknown" | "verified" | "failed" ,
  created_at?: String <~ {format: "date-time"},
  "default"?: Boolean ,
  dns_results?: "verified" | "failed" ,
  domain_verification_code?: String ,
  domain_verification_status?: "unknown" | "verified" | "failed" ,
  email: String ,
  forwarding_status?: "unknown" | "waiting" | "verified" | "failed" ,
  id?: Number <~ {format: "integer"},
  name?: String ,
  spf_status?: "unknown" | "verified" | "failed" ,
  updated_at?: String <~ {format: "date-time"},
}

type CustomStatusUpdateRequest = {
  custom_status?: CustomStatusUpdateInput
}

type TicketAuditObject = {
  author_id?: Number <~ {format: "integer"},
  created_at?: String <~ {format: "date-time"},
  events?: Array<Object> ,
  id?: Number <~ {format: "integer"},
  metadata?: Object ,
  ticket_id?: Number <~ {format: "integer"},
  via?: TicketAuditViaObject 
}

type AssigneeFieldAssignableGroupsAndAgentsSearchResponse = {
  agents?: Array<AssigneeFieldAssignableSearchAgentObject>,
  count?: Number <~ {format: "integer"},
  groups?: Array<AssigneeFieldAssignableSearchGroupObject>
}

type SessionsResponse = {
  sessions?: Array<SessionObject>
}

type CustomRoleObject = {
  configuration?: CustomRoleConfigurationObject ,
  created_at?: String <~ {format: "date-time"},
  description?: String ,
  id?: Number <~ {format: "integer"},
  name: String ,
  role_type: Number <~ {format: "integer"},
  team_member_count?: Number <~ {format: "integer"},
  updated_at?: String <~ {format: "date-time"},
}

type GroupsResponse = {
  groups?: Array<GroupObject>
}

type TicketUpdateRequest = {
  ticket?: TicketUpdateInput
}

