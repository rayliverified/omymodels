from datetime import date, datetime
from typing import Any, Optional

from pydantic import BaseModel, Field


class AchievementEventsItem(BaseModel):
    id: int
    achievement_id: Optional[str]
    user_id: int
    status: Optional[str]
    progress: Optional[int] = 0
    goal: Optional[int] = 0
    start_date: Optional[datetime]
    end_date: Optional[datetime]
    data: Optional[str]
    created_at: datetime = datetime.now()


class ActifyTableItem(BaseModel):
    email: str
    firstname: Optional[str]
    lastname: Optional[str]
    city: str
    state: str
    zipcode: str
    phone_number: Optional[str]
    ip: str
    user_agent: str
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class ActivationTargetsInterviewFormItem(BaseModel):
    id: int
    user_id: int
    routine_activities: Optional[Any]
    enjoyable_activities: Optional[Any]
    family_values: Optional[Any]
    partner_values: Optional[Any]
    friends_values: Optional[Any]
    religion_values: Optional[Any]
    meaningful_work: Optional[Any]
    education_values: Optional[Any]
    cultural_roots: Optional[Any]
    recreation_values: Optional[Any]
    volunteer_activity: Optional[Any]
    physical_health_values: Optional[Any]
    security_and_safety: Optional[Any]
    life_organization: Optional[Any]
    life_before_became_depressed: Optional[str]
    life_if_not_depressed: Optional[str]
    hours_of_sleep: Optional[str]
    take_naps: Optional[str]
    getting_up_fairly_consistent: Optional[str]
    typical_day_in_eating: Optional[str]
    types_of_foods_been_eating: Optional[str]
    changed_eating_habits_since_depression: Optional[str]
    daily_schedule_different_since_depression: Optional[str]
    consistent_problems_or_difficulties: Optional[str]
    other_activities_that_improve_mood: Optional[str]
    completed: Optional[bool] = False
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class AcuityAppointmentsItem(BaseModel):
    id: int
    appointment_id: Optional[str]
    record_id: Optional[str]
    email: str
    first_name: Optional[str] = ""
    last_name: Optional[str] = ""
    phone: Optional[str] = ""
    payload: Optional[Any]
    response: Optional[Any]
    created_at: datetime = datetime.now()
    canceled: Optional[bool]


class AcuitySchedulerSeenAtItem(BaseModel):
    id: int
    device_id: Optional[str]
    session_id: Optional[str]
    user_id: Optional[int]
    source: Optional[str]
    created_at: datetime = datetime.now()


class AdherencePredictionsItem(BaseModel):
    id: int
    user_id: int
    created_at: datetime = datetime.now()
    prediction_score: Optional[float]
    prediction_label: Optional[str]
    message_status: Optional[str]
    message_status_reason: Optional[str]
    message: Optional[str]
    premium_chat_id: Optional[int]
    sent_at: Optional[datetime]
    follow_up_message_status: Optional[str]
    follow_up_message_status_reason: Optional[str]
    follow_up_premium_chat_id: Optional[int]
    follow_up_sent_at: Optional[datetime]


class AdmdClinicianPortalItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    clinician_email: Optional[str]
    appointment_type: Optional[str]
    background_info_reported_current_address: Optional[str]
    background_info_consent_reviewed: Optional[bool]
    background_info_verified_identity: Optional[bool]
    background_history_json: Optional[Any]
    background_info_prior_ocd_by_prof: Optional[str]
    background_info_prior_non_ocd_diagnosis: Optional[str]
    background_info_misdiagnosed_ocd: Optional[str]
    background_info_outpatient_treatment: Optional[str]
    background_info_prior_diagnosis_json: Optional[Any]
    background_info_denied: Optional[bool]
    background_info_trauma_history_json: Optional[Any]
    background_info_family_history_json: Optional[Any]
    background_info_medication_status: Optional[str]
    background_info_current_relationship_status: Optional[str]
    background_info_medical_history: Optional[str]
    background_info_legal_problems: Optional[str]
    background_info_history_json: Optional[Any]
    background_info_followup_changes_to_medication: Optional[str]
    background_info_followup_changes_to_medication_details: Optional[str]
    background_info_followup_changes_to_doctor_visits: Optional[str]
    background_info_followup_changes_to_doctor_visits_text: Optional[str]
    ocd_tab_diamond_all_screenings_negative: Optional[bool]
    ocd_tab_diamond_details: Optional[str]
    ocd_tab_subtype_harm: Optional[str]
    ocd_tab_subtype_contamination: Optional[str]
    ocd_tab_subtype_sexual: Optional[str]
    ocd_tab_subtype_religious: Optional[str]
    ocd_tab_subtype_symmetry: Optional[str]
    ocd_tab_subtype_somatic: Optional[str]
    ocd_tab_subtype_other: Optional[str]
    ocd_tab_subtype_json: Optional[Any]
    ocd_tab_dsm_part_a: Optional[bool]
    ocd_tab_dsm_part_b: Optional[bool]
    ocd_tab_dsm_distress: Optional[int]
    ocd_tab_dsm_functional_impairment: Optional[int]
    ocd_tab_dsm_distress_domains: Optional[Any]
    ocd_tab_dsm_part_c: Optional[bool]
    ocd_tab_dsm_part_d: Optional[bool]
    ocd_tab_dsm_insight: Optional[str]
    ocd_tab_dsm_tic_related: Optional[str]
    medical_within_normal_limits: Optional[bool]
    medical_json: Optional[Any]
    risk_assessment_json: Optional[Any]
    summary_json: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class AdminsItem(BaseModel):
    id: int
    type: int
    email: str
    password: str
    name: str


class AdvancedInsightsRemappingItem(BaseModel):
    id: int
    admd_email: str
    is_test_user: Optional[bool]
    remapped_user_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class AdvocateChatTemplatesItem(BaseModel):
    id: int
    title: str
    body: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()


class AdvocateRiskLogItem(BaseModel):
    id: int
    user_id: int
    risk_status: Optional[str]
    reasoning: Optional[str]
    reasoning_details: Optional[str]
    action_taken: Optional[str]
    engagement_consensus: Optional[str]
    notes: Optional[str]
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]
    completed_at: Optional[datetime]
    completed_by: Optional[str]
    claimed_by: Optional[str]
    claimed_at: Optional[datetime]
    cohort_month: Optional[str]
    probability_at_cohort_assigment: Optional[float]
    assigned_by: Optional[str]
    assigned_at: Optional[datetime]


class AdvocateRiskLogUpdatesItem(BaseModel):
    id: int
    user_id: int
    updated_at: datetime = datetime.now()
    column_updated: str
    new_value: str


class AdvocateTrialConversionItem(BaseModel):
    id: int
    user_id: int
    conversion_at: datetime = datetime.now()
    user_messages_sent: int


class AdvocatesItem(BaseModel):
    id: int
    email: str
    deleted: Optional[bool] = False
    user_id: Optional[int]
    first_name: Optional[str] = ""
    last_name: Optional[str] = ""
    description: Optional[str]
    image_id: Optional[str] = ""
    image_height: Optional[int]
    image_width: Optional[int]
    link: Optional[str] = ""
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    available_for_chat: bool = False


class AiSuggestedAppointmentsItem(BaseModel):
    id: int
    user_id: int
    clinician_email: str
    ma_id: int
    is_suggested: bool = False
    suggested_slots: Any
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class AmitaTextsItem(BaseModel):
    id: int
    phone_number: str
    createdAt: datetime = datetime.now()


class AnonymousInsuranceEligibilityChecksItem(BaseModel):
    id: int
    apero_provider_id: Optional[str]
    apero_trading_partner_id: str
    state: str
    first_name: str
    last_name: str
    dob: date
    member_id: str
    group_number: Optional[str]
    apero_response: Optional[Any]
    created_at: datetime = datetime.now()
    is_eligible: int
    reason: Optional[str]


class AnxietyLevelItem(BaseModel):
    id: int
    scheduledID: str
    level: int
    index: int
    time: int
    userID: Optional[int]
    created_at: datetime = datetime.now()


class AperoCoverageSyncLedgerItem(BaseModel):
    id: int
    user_id: int
    apero_coverage_id: str
    mismatch_type: str
    reviewed_at: datetime = datetime.now()
    reviewed_by: str


class AperoCoveragesItem(BaseModel):
    id: int
    apero_coverage_id: str
    apero_patient_id: str
    payload: Optional[Any]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class AperoEligibilityChecksItem(BaseModel):
    id: int
    user_id: Optional[int]
    member_appointments_id: Optional[int]
    member_billing_coverages_id: Optional[int]
    member_billing_insurances_id: Optional[int]
    premium_clinicians_email: str
    intake_insurances_id: int
    source: str
    authorizer: str
    eligibility_id: str
    provider: str
    group_number: Optional[str]
    member_dob: str
    effective_date: str
    trading_partner_id: str
    active_coverage: Optional[bool]
    rejected: Optional[bool]
    overall_rejection: Optional[str]
    subscriber_rejections: Optional[Any]
    communication_rejections: Optional[Any]
    result: Optional[Any]
    created_at: datetime = datetime.now()
    elig_reviewed_outcome: Optional[str]
    elig_reviewed_at: Optional[datetime]
    elig_reviewed_by: Optional[str]


class AperoFacilitiesItem(BaseModel):
    id: int
    apero_facility_id: str
    apero_name: str
    payload: Optional[Any]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()
    group_name: Optional[str]


class AperoLineApplicationsItem(BaseModel):
    id: int
    apero_line_application_id: str
    apero_line_item_id: Optional[str]
    apero_payment_id: Optional[str]
    payload: Optional[Any]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class AperoLineItemsItem(BaseModel):
    id: int
    apero_line_item_id: Optional[str]
    apero_visit_id: Optional[str]
    linked_ehr_id: Optional[str]
    payload: Optional[Any]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class AperoPartnersItem(BaseModel):
    id: int
    trading_partner: str
    human_name: str


class AperoPatientsItem(BaseModel):
    id: int
    apero_patient_id: str
    linked_ehr_id: Optional[str]
    payload: Optional[Any]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class AperoProvidersItem(BaseModel):
    id: int
    apero_provider_id: str
    email: Optional[str]
    payload: Optional[Any]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class AperoSyncsStatusItem(BaseModel):
    id: int
    sync_name: str
    mysql_records: Optional[int]
    bquery_records: Optional[int]
    num_new_records: Optional[int]
    num_deletions: Optional[int]
    num_updates: Optional[int]
    is_dryrun: Optional[bool]
    status: Optional[str]
    run_started_ts: datetime = datetime.now()
    run_completed_ts: Optional[datetime]
    error_message: Optional[str]


class AperoVisitsItem(BaseModel):
    id: int
    apero_visit_id: str
    apero_facility_id: Optional[str]
    apero_provider_id: Optional[str]
    apero_patient_id: Optional[str]
    linked_ehr_id: Optional[str]
    payload: Optional[Any]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class AppInstallationsItem(BaseModel):
    id: int
    deviceId: str
    deviceId_created_at: datetime = datetime.now()
    reason: str
    userID: Optional[int]
    deviceType: str
    bundleName: str
    version: str
    buildID: str
    model_name: str
    os_version: str
    timezone: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class AppOpensItem(BaseModel):
    id: int
    deviceID: str
    sessionID: str
    firstOpen: Optional[bool] = False
    userID: Optional[int]
    tokenID: Optional[int]
    reauthed: Optional[bool] = False
    f_register: Optional[bool] = Field(alias="register", default=False)
    login: Optional[bool] = False
    logout: Optional[bool] = False
    auth_at: Optional[datetime]
    deauth_at: Optional[datetime]
    deviceType: str
    bundleName: str
    version: str
    buildID: str
    modelName: str
    osVersion: str
    locale: Optional[str]
    timezone: Optional[str]
    ipAddress: Optional[str]
    country: Optional[str]
    state: Optional[str]
    city: Optional[str]
    zip: Optional[str]
    latitude: Optional[float]
    longitude: Optional[float]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    ended_at: Optional[datetime]
    ft_test: Optional[bool]
    xForwarded: Optional[str]
    remote: Optional[str]
    xCFip: Optional[str]


class AppOpensGeoItem(BaseModel):
    app_open_id: int
    country: Optional[str]
    state: Optional[str]
    city: Optional[str]
    zip: Optional[str]
    latitude: Optional[float]
    longitude: Optional[float]
    created_at: datetime = datetime.now()


class AppSessionsItem(BaseModel):
    id: int
    deviceID: str
    sessionID: str
    userID: Optional[int]
    tokenID: Optional[int]
    created_at: datetime = datetime.now()
    ended_at: datetime = datetime.now()


class AppleSignInLedgerItem(BaseModel):
    id: int
    apple_user_identifier: str
    user_id: int
    email: Optional[str]
    is_private_email: bool
    registration: bool
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class AppleSignInUsersItem(BaseModel):
    id: int
    apple_user_identifier: str
    user_id: int
    email: Optional[str]
    is_private_email: bool
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class AppointmentBillingCoverageAuditItem(BaseModel):
    id: int
    member_appointment_id: int
    member_billing_coverage_id: Optional[int]
    created_at: datetime = datetime.now()
    created_by: str


class AppointmentCancellationReasonsItem(BaseModel):
    id: int
    reason: str
    detail: Optional[str]
    created_at: datetime = datetime.now()
    created_by: Optional[str]


class AppointmentConfirmationStatusItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    status: Optional[str]
    cancellation_reason: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class AppointmentNoteReviewNotesItem(BaseModel):
    id: int
    user_id: int
    clinician_email: Optional[str]
    member_appointments_id: int
    note_text: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class AppointmentTypeChangeRecommendationsItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: int
    recommendation_payload: Optional[Any]
    is_accepted: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class AppsFlyersItem(BaseModel):
    id: int
    apps_flyer_id: str
    device_id: str
    user_id: Optional[int]
    created_at: datetime = datetime.now()


class AssignedClinicianChangesItem(BaseModel):
    id: int
    user_id: int
    clinician_user_id: Optional[int]
    clinician_email: Optional[str]
    action: Optional[str]
    authorizer: Optional[str]
    created_at: datetime = datetime.now()


class AssignedToProtocolComplianceItem(BaseModel):
    id: int
    user_id: int
    not_compliant_reason: str
    not_compliant_reason_details: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]


class AthenaCareInterestSubmissionsItem(BaseModel):
    id: int
    first_name: Optional[str]
    last_name: Optional[str]
    phone: Optional[str]
    email: Optional[str]
    dob: Optional[date]
    other_services: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class AttributionEventsItem(BaseModel):
    id: int
    attr_src: str
    attr_id: str
    attr_type: str
    user_id: int
    created_at: datetime = datetime.now()
    created_by: Optional[str]


class AuthOtpItem(BaseModel):
    id: int
    user_id: int
    otp: str
    destroyed_at: Optional[datetime]
    redeemed_at: Optional[datetime]
    user_agent_issued_to: Optional[str]
    ip_address_issued_to: Optional[str]
    user_agent_redeemed: Optional[str]
    ip_address_redeemed: Optional[str]
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class AutoMaxDaLogItem(BaseModel):
    id: int
    email: str
    old_max_das_in_week: Optional[int]
    new_max_das_in_week: Optional[int]
    logged_at: Optional[datetime] = datetime.now()
    raw_max_das: Optional[float]
    gap: Optional[float]
    multiplier: Optional[float]
    avg_weekly_hrs: Optional[float]
    num_weeks_in_avg: Optional[int]
    outlier_percent: Optional[float]
    committed_hours: Optional[float]
    committed_hours_times_multiplier: Optional[float]
    outlier_hours_cutoff: Optional[float]
    start_of_this_week_in_UTC: Optional[datetime]
    num_weeks: Optional[float]
    now_clinician_tz: Optional[datetime]
    timezone: Optional[str]
    max_das_in_week: Optional[int]
    default_max_das: Optional[float]
    default_committed_hours: Optional[float]
    committed_hours_multiplier: Optional[float]


class AutomatedEmailMessagesItem(BaseModel):
    id: int
    intake_call_id: int
    sent: bool
    sent_fail_reason: Optional[str]
    email: Optional[str]
    message_description: Optional[str]
    user_id: Optional[int]
    created_at: datetime = datetime.now()


class AutomatedTextMessagesItem(BaseModel):
    id: int
    intake_call_id: int
    sent: bool
    sent_fail_reason: Optional[str]
    phone_number: Optional[str]
    message_description: Optional[str]
    created_at: datetime = datetime.now()


class AvatarsItem(BaseModel):
    id: int
    avatar_id: str
    avatar_url: str


class BankTransactionsItem(BaseModel):
    id: int
    record: Optional[Any]
    record_hash: Optional[str]
    created_at: datetime = datetime.now()


class BgDiagnosticsItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    bg_consent_reviewed: Optional[bool]
    bg_linked_account_roi_reviewed: Optional[bool]
    bg_verified_identity: Optional[bool]
    bg_demographic: Optional[str]
    bg_presenting_problem: Optional[str]
    bg_coping_skills: Optional[str]
    bg_patient_goals: Optional[str]
    bg_prior_ocd_by_prof: Optional[str]
    bg_prior_non_ocd_diagnosis: Optional[str]
    bg_misdiagnosed_ocd: Optional[str]
    bg_misdiagnosed_conditions_json: Optional[Any]
    bg_misdiagnosed_conditions_other: Optional[str]
    bg_outpatient_treatment: Optional[str]
    bg_outpatient_treatment_text: Optional[str]
    bg_trauma_denied: Optional[bool]
    bg_trauma_items: Optional[Any]
    bg_trauma_other: Optional[str]
    bg_family_history_json: Optional[Any]
    bg_medication_status: Optional[str]
    bg_medication_status_text: Optional[str]
    bg_current_relationship_status: Optional[str]
    bg_current_relationship_status_text: Optional[str]
    bg_medical_history: Optional[str]
    bg_medical_history_text: Optional[str]
    bg_medical_past_er_visits_text: Optional[str]
    bg_ocd_criteria_time: Optional[str]
    bg_ocd_criteria_units: Optional[str]
    bg_brain_trauma: Optional[bool]
    bg_legal_problems: Optional[str]
    bg_legal_problems_text: Optional[str]
    ocd_tab_diamond_all_screenings_negative: Optional[bool]
    ocd_tab_diamond_details: Optional[str]
    ocd_tab_subtype_harm: Optional[str]
    ocd_tab_subtype_contamination: Optional[str]
    ocd_tab_subtype_sexual: Optional[str]
    ocd_tab_subtype_religious: Optional[str]
    ocd_tab_subtype_symmetry: Optional[str]
    ocd_tab_subtype_somatic: Optional[str]
    ocd_tab_subtype_other: Optional[str]
    ocd_tab_dsm_part_a: Optional[bool]
    ocd_tab_dsm_part_b: Optional[bool]
    ocd_tab_dsm_distress: Optional[int]
    ocd_tab_dsm_functional_impairment: Optional[int]
    ocd_tab_dsm_distress_domains: Optional[Any]
    ocd_tab_dsm_part_c: Optional[bool]
    ocd_tab_dsm_part_d: Optional[bool]
    ocd_tab_dsm_insight: Optional[str]
    ocd_tab_dsm_tic_related: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    bg_prior_non_ocd_diagnosis_text: Optional[str]
    ocd_tab_subtype_harm_text: Optional[str]
    ocd_tab_subtype_contamination_text: Optional[str]
    ocd_tab_subtype_sexual_text: Optional[str]
    ocd_tab_subtype_religious_text: Optional[str]
    ocd_tab_subtype_symmetry_text: Optional[str]
    ocd_tab_subtype_somatic_text: Optional[str]
    ocd_tab_subtype_other_text: Optional[str]
    ocd_tab_subtype: Optional[str]
    bg_verbal_consent_given: Optional[int]
    bg_verbal_consent_given_by: Optional[str]
    ocd_assessment_details: Optional[str]
    bg_brain_trauma_text: Optional[str]
    bg_additional_healthcare_providers: Optional[str]
    bg_socioeconomic_status: Optional[str]
    bg_preferred_language: Optional[str]
    bg_preferred_language_other: Optional[str]
    bg_ethnicity: Optional[Any]
    bg_ethnicity_other: Optional[str]
    bg_religious_background: Optional[str]
    bg_religious_background_other: Optional[str]
    bg_employment_status: Optional[str]
    bg_employment_status_other: Optional[str]
    bg_student_status: Optional[str]
    bg_student_status_other: Optional[str]
    bg_gender_identity: Optional[str]
    bg_gender_identity_other: Optional[str]
    bg_sexual_orientation: Optional[str]
    bg_sexual_orientation_other: Optional[str]
    bg_military_served: Optional[str]
    bg_military_served_details: Optional[str]
    bg_special_therapy_services: Optional[str]
    bg_special_therapy_services_details: Optional[str]
    bg_prior_ocd_by_prof_details: Optional[str]
    bg_living_situation: Optional[str]
    bg_living_situation_details: Optional[str]
    bg_children_status: Optional[str]
    bg_children_status_details: Optional[str]
    bg_primary_support_people: Optional[str]
    bg_quality_of_work_relationships: Optional[str]
    bg_quality_of_family_relationships: Optional[str]
    bg_quality_of_social_relationships: Optional[str]
    bg_share_progress_with_other_providers: Optional[str]
    bg_share_progress_with_other_providers_text: Optional[str]
    bg_years_of_education: Optional[str]
    completed: Optional[bool] = False
    bg_family_history_details: Optional[str]
    bg_additional_healthcare_providers_json: Optional[Any]
    cloned_from_form_id: Optional[int]
    bg_meet_ocd_criteria: Optional[str]
    bg_has_additional_healthcare_providers: Optional[str]
    bg_satisfied_with_med_provider: Optional[str]
    version: Optional[int]
    bg_primary_support_people_yes_no: Optional[str]
    bg_current_stressors: Optional[str]
    bg_current_stressors_text: Optional[str]
    bg_pertinent_info: Optional[str]
    bg_close_family_relationships: Optional[str]
    bg_psychiatric_history: Optional[str]
    bg_mental_health_hospitalization_yes_no: Optional[str]
    bg_mental_health_hospitalization_text: Optional[str]
    bg_psychiatric_history_reviewed: Optional[bool]
    bg_bio_history_reviewed: Optional[bool]
    bg_life_goals_post_treatment: Optional[str]
    bg_advance_directive_status: Optional[str]


class BillingGeneralLedgerItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: int
    event: str
    result: Optional[Any]
    authorizer: str
    run_group: str
    created_at: datetime = datetime.now()


class BillingProvidersItem(BaseModel):
    id: int
    name: str
    npi: Optional[int]
    tax_id: Optional[str]
    taxonomy_code: Optional[str]
    address_1: Optional[str]
    address_2: Optional[str]
    city: Optional[str]
    state: Optional[str]
    zip_code: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class BiohavenHistoryTableItem(BaseModel):
    id: int
    email: str
    city: str
    state: str
    zipcode: str
    timestamp: datetime = datetime.now()
    diagnosed_with_ocd: Optional[bool]
    taking_ssri_or_clomipramine: Optional[bool]
    between_18_and_65: Optional[bool]
    passed_screen: Optional[bool]
    name: str
    firstname: Optional[str]
    lastname: Optional[str]
    ip: str
    user_agent: str
    phone_number: Optional[str]


class BiohavenRootTableItem(BaseModel):
    email: str
    name: str
    firstname: Optional[str]
    lastname: Optional[str]
    city: str
    state: str
    zipcode: str
    timestamp: datetime = datetime.now()
    passed_screen: Optional[bool]
    changed_answer: Optional[bool]
    biohaven_site_info: Optional[str]
    biohaven_site_distance: Optional[str]
    followup_status: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    biohaven_site_id: Optional[str]
    phone_number: Optional[str]


class BlockWordsItem(BaseModel):
    id: int
    word: str
    created_at: datetime = datetime.now()


class BlockedUsersItem(BaseModel):
    id: int
    user_id: int
    blocked_user_id: int
    created_at: datetime = datetime.now()


class BookmarksItem(BaseModel):
    id: int
    userID: int
    postID: int
    createdAt: datetime = datetime.now()
    updatedAt: datetime = datetime.now()


class BootstrapLogItem(BaseModel):
    id: int
    user_id: int
    assigned_clinician_user_id: int
    clinician_email: str
    intake_specialist: Optional[str]
    created_at: datetime = datetime.now()
    action: Optional[str]
    is_primary_provider: Optional[bool]
    action_category: Optional[str]
    notes: Optional[str]


class BundleConfigItem(BaseModel):
    id: int
    user_id: int
    bundle_start_date: Optional[date]
    bundle_start_ma_id: Optional[int]
    bundle_end_date: Optional[date]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class BundlePeriodConfigItem(BaseModel):
    id: int
    user_id: int
    authorization_code: Optional[str]
    bundle_config_id: int
    bundle_period_config_status: Optional[str] = "draft"
    period_start_date_incl: Optional[date]
    period_end_date_incl: Optional[date]
    num_appts: Optional[int]
    num_assessments: Optional[int]
    num_contact_notes: Optional[int]
    num_support_groups: Optional[int]
    num_therapist_conversations: Optional[int]
    num_member_advocate_conversations: Optional[int]
    raw_events: Optional[Any]
    finalized_at: Optional[datetime]
    bundle_period_ma_id: int
    apero_visit_id: Optional[str]
    apero_visit_created_at: Optional[datetime]
    bundle_code: Optional[str]
    revenue_assignment: Optional[int]
    num_appointments: Optional[int]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class BundlePeriodConfigAppointmentsLedgerAuditItem(BaseModel):
    id: int
    user_id: int
    ma_id: int
    bundle_period_config_id: int
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]


class CalculatedClinicianPtoItem(BaseModel):
    id: int
    clinician_email: str
    date: date
    pto_hours: int
    adjusted_by: Optional[str]
    adjustment_reason: Optional[str]


class CalendarDatesItem(BaseModel):
    id: int
    day: Optional[date]


class CalendarVisitsItem(BaseModel):
    id: int
    session_id: str
    guid: Optional[str]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    referrer: Optional[str]
    user_agent: Optional[str]
    device_category: Optional[str]
    source: Optional[str]
    is_iframe: Optional[bool]
    version: Optional[str]
    last_screen: Optional[str]
    last_screen_seen_at: Optional[datetime] = datetime.now()
    submitted: Optional[bool]
    created_at: datetime = datetime.now()
    channel: Optional[str]
    scheduled_from_page_url: Optional[str]
    scheduled_from_cta_name: Optional[str]
    feature_flags: Optional[Any]
    entrance_page_url: Optional[str]


class CallbackCalendarDailyItem(BaseModel):
    id: int
    start_date: datetime
    schedule: str
    is_deleted: Optional[bool] = False
    timezone: str
    created_author: Optional[str]
    created_at: datetime = datetime.now()
    is_exclusive: Optional[bool] = False


class CallbackCalendarWeeklyItem(BaseModel):
    id: int
    start_date: datetime
    end_date: Optional[datetime]
    sunday_schedule: Optional[str]
    monday_schedule: Optional[str]
    tuesday_schedule: Optional[str]
    wednesday_schedule: Optional[str]
    thursday_schedule: Optional[str]
    friday_schedule: Optional[str]
    saturday_schedule: Optional[str]
    timezone: str
    is_deleted: Optional[bool] = False
    created_author: Optional[str]
    created_at: datetime = datetime.now()


class CamTestsItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    cam_test: Optional[str]
    supervisor: Optional[str]
    cam_date: Optional[date]
    notes: Optional[str]
    result: Optional[bool]


class CancellationLedgerItem(BaseModel):
    id: int
    ma_id: int
    user_id: int
    start_ts: Optional[datetime]
    end_ts: Optional[datetime]
    session_type: Optional[str]
    session_length: Optional[str]
    clinician_email: str
    cancelled_at: datetime
    cancelled_by: str
    cancelled_reason: str
    cancelled_within_24_hours: bool
    not_late_reason: Optional[str]
    cancelled_via_reschedule: bool
    waived_late_cancellation: bool
    waived_late_cancellation_reason: str
    late_cancellation_metadata: Any
    counts_toward_utilization_credit: Optional[bool]
    counts_toward_utilization_credit_reason: Optional[str]
    ledger_record_created_by: str
    ledger_record_created_at: datetime = datetime.now()
    is_deleted: Optional[bool]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_reason: Optional[str]


class CandidateApplicationsItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    candidate_id: str
    application_id: str
    job_id: str
    hash: str
    candidate: Optional[Any]
    application: Optional[Any]
    job: Optional[Any]


class CareCoordinationAccessCodesItem(BaseModel):
    id: int
    user_id: int
    access_code: str
    member_provider_id: Optional[int]
    name: Optional[str]
    reason: Optional[str]
    information_access: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    revoked_at: Optional[datetime]


class CareCoordinationAccessLedgerItem(BaseModel):
    id: int
    access_code_id: int
    email: str
    name: str
    token: str
    reason: str
    created_at: datetime = datetime.now()


class CareteamCanAssignCallsItem(BaseModel):
    id: int
    email: Optional[str]
    can_assign_calls: Optional[bool]
    created_at: datetime = datetime.now()


class CaseloadActionPlansItem(BaseModel):
    id: int
    user_id: int
    clinician_email: str
    action_plan: str
    applied_week: date
    created_at: datetime = datetime.now()
    created_by: str


class CaseloadReviewSeverityHistoryItem(BaseModel):
    id: int
    user_id: int
    clinician_email: str
    severity_category: str
    date: "date" = date.today()
    is_scheduling_compliant: Optional[int]
    current_scheduling_frequency: Optional[str]
    current_action_plan: Optional[str]
    current_action_plan_created_at: Optional[datetime]
    is_current_action_plan_expired: Optional[int]


class CeleryTaskmetaItem(BaseModel):
    id: int
    task_id: Optional[str]
    status: Optional[str]
    result: Optional[str]
    date_done: Optional[datetime]
    traceback: Optional[str]
    name: Optional[str]
    args: Optional[str]
    kwargs: Optional[str]
    worker: Optional[str]
    retries: Optional[int]
    queue: Optional[str]


class CeleryTasksetmetaItem(BaseModel):
    id: int
    taskset_id: Optional[str]
    result: Optional[bytes]
    date_done: Optional[datetime]


class ChatChannelFileMessageMappingsItem(BaseModel):
    id: int
    chat_channel_file_id: int
    message_id: int


class ChatChannelFilesItem(BaseModel):
    id: int
    chat_channel_id: int
    url: str
    name: str
    mimetype: str
    size_bytes: int
    created_at: Optional[datetime] = datetime.now()


class ChatChannelMemberAdvocateRegionsItem(BaseModel):
    id: int
    chat_channels_id: int
    member_advocate_region_id: int
    created_at: datetime = datetime.now()


class ChatChannelScheduledMessagesItem(BaseModel):
    id: int
    content: str
    sent_by_user_id: Optional[int]
    sent_by_user_type: Optional[str]
    type: str = "text"
    chat_channel_id: Optional[int]
    scheduled_to_send_at: Optional[datetime]
    attachment_data: Optional[Any]
    status: Optional[str]


class ChatChannelsItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    archived_at: Optional[datetime]
    deleted_at: Optional[datetime]
    channel_type: Optional[str]
    primary_user_id: int
    visibility: Optional[str] = "global_show"
    pending_at: Optional[datetime]
    claimed_by_user_id: Optional[int]
    claimed_at: Optional[datetime]
    latest_message_id: Optional[int]
    linked_accounts_id: Optional[int]
    linked_accounts_label: Optional[str]
    provider_user_id: Optional[int]
    locked_at: Optional[datetime]
    reminder_text_sent_at: Optional[datetime]


class ChatChannelsEventsItem(BaseModel):
    id: int
    chat_channel_id: int
    event_name: str
    triggered_by_user_id: int
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class ChatChannelsMetricsLogItem(BaseModel):
    id: int
    user_id: int
    chat_channel_id: int
    message_id: Optional[int]
    column_updated: str
    old_time_value: Optional[datetime]
    new_time_value: Optional[datetime]
    created_at: Optional[datetime] = datetime.now()
    user_type: Optional[str]


class ChatChannelsUsersItem(BaseModel):
    id: int
    chat_channel_id: int
    seen_at: datetime = datetime.now()
    user_id: int
    user_type: Optional[str]
    clinician_email: Optional[str]
    member_advocate_email: Optional[str]
    deleted_at: Optional[date]
    draft_text: Optional[str]
    draft_edited_at: Optional[datetime]
    support_email: Optional[str]


class ChatChannelsWhispersItem(BaseModel):
    id: int
    chat_channel_id: int
    content: str
    created_by_user_id: int
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    type: Optional[str]
    ehr_notification_id: Optional[int]
    cta_key: Optional[str]
    is_collapsed: Optional[int]
    source: Optional[str]


class ChatMessageIndicatorDismissalItem(BaseModel):
    id: int
    user_id: int
    channel_id: Optional[int]
    message_id: int
    indicator_type: Optional[str]
    dismissed_at: datetime = datetime.now()


class ChatUserReactionsItem(BaseModel):
    id: int
    message_id: int
    channel_id: int
    user_id: int
    reaction_type: str
    created_at: datetime = datetime.now()


class ChatWebAlertDismissalItem(BaseModel):
    id: int
    user_id: Optional[int]
    alert_type: Optional[int]
    dismissed_at: datetime = datetime.now()


class CheckpointsItem(BaseModel):
    checkpoint_key: str
    checkpoint_value: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClaimFollowUpsItem(BaseModel):
    id: int
    flowdash_id: Optional[str]
    assigned_to: Optional[str]
    claim_stage: Optional[str]
    current_balance: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicalAdvisorsLogItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    created_author: Optional[str]
    clinician_email: str
    meeting_date: datetime
    meeting_clinical_advisor: str
    meeting_type: str
    meeting_category: str
    meeting_length: int
    concern_flag: Optional[bool]
    is_deleted: Optional[bool]
    meeting_notes: Optional[str]


class ClinicalFormsAbnConsentItem(BaseModel):
    id: int
    user_id: int
    therapy_option: Optional[str]
    additional_info: Optional[str]
    signature: Optional[str]
    accepted_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class ClinicalFormsDass21Item(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    session_type: str
    protocol_type: Optional[str]
    q1_wind_down: Optional[int]
    q2_dry_mouth: Optional[int]
    q3_positive_feelings: Optional[int]
    q4_difficulty_breathing: Optional[int]
    q5_no_initiative: Optional[int]
    q6_overreacts: Optional[int]
    q7_trembling: Optional[int]
    q8_nervous: Optional[int]
    q9_foolish_panic: Optional[int]
    q10_no_hope: Optional[int]
    q11_agitated: Optional[int]
    q12_cannot_relax: Optional[int]
    q13_feels_blue: Optional[int]
    q14_patience: Optional[int]
    q15_panic: Optional[int]
    q16_no_enthusiasm: Optional[int]
    q17_worthless: Optional[int]
    q18_touchy: Optional[int]
    q19_heart_awareness: Optional[int]
    q20_scared: Optional[int]
    q21_meaningless_life: Optional[int]
    completed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool]
    deleted_at: Optional[datetime]
    deleted_member_appointments_id: Optional[int]


class ClinicalFormsDiamondItem(BaseModel):
    id: int
    user_id: int
    admd_clinician_portal_id: int
    q1_frequent_thoughts: Optional[str]
    q2_repetitive_behaviors: Optional[str]
    q3_worry_appearance: Optional[str]
    q4_socially_anxious: Optional[str]
    q5_panic_attack: Optional[str]
    q6_excessivly_worry: Optional[str]
    q7_problematically_happy: Optional[str]
    q8_depressed_2_years: Optional[str]
    q9_unmotivated_2_weeks: Optional[str]
    q10_event_trauma: Optional[str]
    q11_drug_abuse: Optional[str]
    q12_strange_beliefs: Optional[str]
    q13_sensory_experience: Optional[str]
    q14_physical_health: Optional[str]
    q15_alcohol: Optional[str]
    q16_spastic_movements: Optional[str]
    completed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicalFormsDiamondAdultItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    session_type: str
    protocol_type: Optional[str]
    q1_adult_frequent_thoughts: Optional[bool]
    q2_adult_repetitive_behaviors: Optional[bool]
    q3_adult_worry_appearance: Optional[bool]
    q4_adult_excessively_cluttered: Optional[bool]
    q5_adult_hair_pulling: Optional[bool]
    q6_adult_skin_picking: Optional[bool]
    q7_adult_socially_anxious: Optional[bool]
    q8_adult_panic_attack: Optional[bool]
    q9_adult_fearful_of_escape: Optional[bool]
    q10_adult_worry_about_many_things: Optional[bool]
    q11_adult_afraid_of_objects_situations_activities: Optional[bool]
    q12_adult_afraid_to_be_away_from_a_person: Optional[bool]
    q13_adult_problematically_happy: Optional[bool]
    q14_adult_depressed_2_years: Optional[bool]
    q15_adult_unmotivated_2_weeks: Optional[bool]
    q16_adult_women_only_really_depressed_during_period: Optional[bool]
    q17_adult_event_trauma: Optional[bool]
    q18_adult_hard_time_with_stressful_experience: Optional[bool]
    q19_adult_strange_beliefs: Optional[bool]
    q20_adult_sensory_experience: Optional[bool]
    q21_adult_avoid_eating_due_to_weight: Optional[bool]
    q22_adult_eating_binges: Optional[bool]
    q23_adult_eat_very_little: Optional[bool]
    q24_adult_physical_health: Optional[bool]
    q25_adult_worry_of_serious_medical_illness: Optional[bool]
    q26_adult_alcohol: Optional[bool]
    q27_adult_drug_abuse: Optional[bool]
    q28_adult_difficulty_paying_attn: Optional[bool]
    q29_adult_difficult_sitting_still: Optional[bool]
    q30_adult_spastic_movements: Optional[bool]
    q1_adult_frequent_thoughts_positive: Optional[bool]
    q2_adult_repetitive_behaviors_positive: Optional[bool]
    q3_adult_worry_appearance_positive: Optional[bool]
    q4_adult_excessively_cluttered_positive: Optional[bool]
    q5_adult_hair_pulling_positive: Optional[bool]
    q6_adult_skin_picking_positive: Optional[bool]
    q7_adult_socially_anxious_positive: Optional[bool]
    q8_adult_panic_attack_positive: Optional[bool]
    q9_adult_fearful_of_escape_positive: Optional[bool]
    q10_adult_worry_about_many_things_positive: Optional[bool]
    q11_adult_afraid_of_objects_situations_activities_positive: Optional[bool]
    q12_adult_afraid_to_be_away_from_a_person_positive: Optional[bool]
    q13_adult_problematically_happy_positive: Optional[bool]
    q14_adult_depressed_2_years_positive: Optional[bool]
    q15_adult_unmotivated_2_weeks_positive: Optional[bool]
    q16_adult_women_only_really_depressed_during_period_positive: Optional[bool]
    q17_adult_event_trauma_positive: Optional[bool]
    q18_adult_hard_time_with_stressful_experience_positive: Optional[bool]
    q19_adult_strange_beliefs_positive: Optional[bool]
    q20_adult_sensory_experience_positive: Optional[bool]
    q21_adult_avoid_eating_due_to_weight_positive: Optional[bool]
    q22_adult_eating_binges_positive: Optional[bool]
    q23_adult_eat_very_little_positive: Optional[bool]
    q24_adult_physical_health_positive: Optional[bool]
    q25_adult_worry_of_serious_medical_illness_positive: Optional[bool]
    q26_adult_alcohol_positive: Optional[bool]
    q27_adult_drug_abuse_positive: Optional[bool]
    q28_adult_difficulty_paying_attn_positive: Optional[bool]
    q29_adult_difficult_sitting_still_positive: Optional[bool]
    q30_adult_spastic_movements_positive: Optional[bool]
    completed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool]
    q1_adult_frequent_thoughts_details: Optional[str]
    q2_adult_repetitive_behaviors_details: Optional[str]
    q3_adult_worry_appearance_details: Optional[str]
    q4_adult_excessively_cluttered_details: Optional[str]
    q5_adult_hair_pulling_details: Optional[str]
    q6_adult_skin_picking_details: Optional[str]
    q7_adult_socially_anxious_details: Optional[str]
    q8_adult_panic_attack_details: Optional[str]
    q9_adult_fearful_of_escape_details: Optional[str]
    q10_adult_worry_about_many_things_details: Optional[str]
    q11_adult_afraid_of_objects_situations_activities_details: Optional[str]
    q12_adult_afraid_to_be_away_from_a_person_details: Optional[str]
    q13_adult_problematically_happy_details: Optional[str]
    q14_adult_depressed_2_years_details: Optional[str]
    q15_adult_unmotivated_2_weeks_details: Optional[str]
    q16_adult_women_only_really_depressed_during_period_details: Optional[str]
    q17_adult_event_trauma_details: Optional[str]
    q18_adult_hard_time_with_stressful_experience_details: Optional[str]
    q19_adult_strange_beliefs_details: Optional[str]
    q20_adult_sensory_experience_details: Optional[str]
    q21_adult_avoid_eating_due_to_weight_details: Optional[str]
    q22_adult_eating_binges_details: Optional[str]
    q23_adult_eat_very_little_details: Optional[str]
    q24_adult_physical_health_details: Optional[str]
    q25_adult_worry_of_serious_medical_illness_details: Optional[str]
    q26_adult_alcohol_details: Optional[str]
    q27_adult_drug_abuse_details: Optional[str]
    q28_adult_difficulty_paying_attn_details: Optional[str]
    q29_adult_difficult_sitting_still_details: Optional[str]
    q30_adult_spastic_movements_details: Optional[str]
    cloned_from_form_id: Optional[int]
    q31_adult_frequent_thoughts_details_text: Optional[str]
    q32_adult_frequent_thoughts_come_up: Optional[int]
    q33_adult_frequent_thoughts_bother: Optional[int]
    q34_adult_frequent_thoughts_ignore: Optional[int]
    q35_adult_repetitive_behaviors_stop_doing: Optional[int]
    q36_adult_repetitive_behaviors_afraid: Optional[str]
    q37_adult_alcohol_anyone_said: Optional[int]
    q38_adult_alcohol_caused_problems: Optional[int]
    q39_adult_drug_abuse_anyone_said: Optional[int]
    q40_adult_drug_abuse_caused_problems: Optional[int]
    q41_adult_skin_picking_scars: Optional[int]
    q42_adult_spastic_movements_some_body_part: Optional[int]
    q43_adult_spastic_movements_multiple_body_parts: Optional[int]
    q44_adult_spastic_movements_making_sounds: Optional[int]
    q45_adult_excessively_cluttered_others_throw_away: Optional[int]
    q46_adult_excessively_cluttered_important_to_save: Optional[int]
    q47_adult_unmotivated_lost_interest: Optional[int]
    q48_adult_felt_overly_confident: Optional[int]
    q49_adult_felt_extremely_irritable: Optional[int]
    q50_adult_avoid_eating_other_things: Optional[int]
    q51_adult_eat_very_little_eating_habits: Optional[int]
    q52_adult_socially_anxious_when_people_observe: Optional[int]
    q53_adult_panic_attack_sudden_rush: Optional[int]
    q54_adult_panic_attack_come_without_reason: Optional[int]
    q55_adult_worry_excessive: Optional[int]
    q56_adult_worry_anxiety_cause_concerns: Optional[int]
    q57_adult_physical_health_interfered: Optional[int]
    q58_adult_physical_health_excessive_worry: Optional[int]
    q59_adult_worry_appearance_spend_time_doing_things: Optional[int]
    q60_adult_hair_pulling_visible_hair_loss: Optional[int]
    q61_adult_worry_of_serious_medical_illness_get_alarmed: Optional[int]
    q62_adult_event_trauma_experience_incidents: Optional[int]
    q63_adult_depressed_2_years_occur_on_more_days: Optional[int]
    q64_adult_eating_binges_behaviors_prevent_weight_gain: Optional[int]
    q1_adult_frequent_thoughts_diagnostic_assessment: Optional[str]
    q2_adult_repetitive_behaviors_diagnostic_assessment: Optional[str]
    q3_adult_worry_appearance_diagnostic_assessment: Optional[str]
    q4_adult_excessively_cluttered_diagnostic_assessment: Optional[str]
    q5_adult_hair_pulling_diagnostic_assessment: Optional[str]
    q6_adult_skin_picking_diagnostic_assessment: Optional[str]
    q7_adult_socially_anxious_diagnostic_assessment: Optional[str]
    q8_adult_panic_attack_diagnostic_assessment: Optional[str]
    q9_adult_fearful_of_escape_diagnostic_assessment: Optional[str]
    q10_adult_worry_about_many_things_diagnostic_assessment: Optional[str]
    q11_adult_afraid_of_objects_diagnostic_assessment: Optional[str]
    q13_adult_problematically_happy_diagnostic_assessment: Optional[str]
    q14_adult_depressed_2_years_diagnostic_assessment: Optional[str]
    q15_adult_unmotivated_2_weeks_diagnostic_assessment: Optional[str]
    q17_adult_event_trauma_diagnostic_assessment: Optional[str]
    q19_adult_strange_beliefs_diagnostic_assessment: Optional[str]
    q20_adult_sensory_experience_diagnostic_assessment: Optional[str]
    q21_adult_avoid_eating_due_to_weight_diagnostic_assessment: Optional[str]
    q22_adult_eating_binges_diagnostic_assessment: Optional[str]
    q23_adult_eat_very_little_diagnostic_assessment: Optional[str]
    q24_adult_physical_health_diagnostic_assessment: Optional[str]
    q25_adult_worry_of_serious_medical_illness_diagnostic_assessment: Optional[str]
    q26_adult_alcohol_diagnostic_assessment: Optional[str]
    q27_adult_drug_abuse_diagnostic_assessment: Optional[str]
    q30_adult_spastic_movements_diagnostic_assessment: Optional[str]
    q65_adult_frequent_thoughts_description: Optional[Any]
    q65_adult_frequent_thoughts_description_other: Optional[str]
    q66_adult_repetitive_behaviors_description: Optional[Any]
    q66_adult_repetitive_behaviors_description_other: Optional[str]
    member_answered: Optional[Any]
    is_diamond_adult_reviewed: Optional[bool]
    q67_adult_eating_binges_frequency: Optional[int]
    q68_adult_event_trauma_direct_experience: Optional[int]
    q68_adult_event_trauma_direct_experience_details: Optional[str]
    q69_adult_event_trauma_witnessed: Optional[int]
    q69_adult_event_trauma_witnessed_details: Optional[str]
    q70_adult_event_trauma_been_exposed: Optional[int]
    q70_adult_event_trauma_been_exposed_details: Optional[str]
    q71_adult_event_trauma_symptoms: Optional[Any]
    q71_adult_event_trauma_symptoms_details: Optional[str]
    q72_adult_event_trauma_avoidance_types: Optional[Any]
    q72_adult_event_trauma_avoidance_types_details: Optional[str]
    q73_adult_event_trauma_negative_changes: Optional[Any]
    q73_adult_event_trauma_negative_changes_details: Optional[str]
    q74_adult_event_trauma_reactivity_changes: Optional[Any]
    q74_adult_event_trauma_reactivity_changes_details: Optional[str]
    q75_adult_event_trauma_duration: Optional[int]
    q75_adult_event_trauma_duration_details: Optional[str]
    q76_adult_event_trauma_distress: Optional[int]
    q76_adult_event_trauma_distress_details: Optional[str]
    q77_adult_event_trauma_attributable: Optional[int]


class ClinicalFormsDiamondYouthItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    session_type: str
    protocol_type: Optional[str]
    q1_youth_frequent_thoughts: Optional[bool]
    q2_youth_repetitive_behaviors: Optional[bool]
    q3_youth_worry_appearance: Optional[bool]
    q4_youth_excessively_cluttered: Optional[bool]
    q5_youth_hair_pulling: Optional[bool]
    q6_youth_skin_picking: Optional[bool]
    q7_youth_refuse_to_speak: Optional[bool]
    q8_youth_embarassed_around_others: Optional[bool]
    q9_youth_uncomfortable_feelings: Optional[bool]
    q10_youth_fearful_of_escape: Optional[bool]
    q11_youth_worry_about_many_things: Optional[bool]
    q12_youth_afraid_of_objects_situations_activities: Optional[bool]
    q13_youth_afraid_to_be_away_from_a_person: Optional[bool]
    q14_youth_problematically_happy: Optional[bool]
    q15_youth_depressed_2_years: Optional[bool]
    q16_youth_unmotivated_2_weeks: Optional[bool]
    q17_youth_temper: Optional[bool]
    q18_youth_women_only_really_depressed_during_period: Optional[bool]
    q19_youth_event_trauma: Optional[bool]
    q20_youth_hard_time_with_stressful_experience: Optional[bool]
    q21_youth_strange_beliefs: Optional[bool]
    q22_youth_sensory_experience: Optional[bool]
    q23_youth_avoid_eating_due_to_weight: Optional[bool]
    q24_youth_eating_binges: Optional[bool]
    q25_youth_eat_very_little: Optional[bool]
    q26_youth_physical_health: Optional[bool]
    q27_youth_worry_of_serious_medical_illness: Optional[bool]
    q28_youth_alcohol: Optional[bool]
    q29_youth_drug_abuse: Optional[bool]
    q30_youth_difficulty_paying_attn: Optional[bool]
    q31_youth_difficult_sitting_still: Optional[bool]
    q32_youth_spastic_movements: Optional[bool]
    q33_youth_hurt_people: Optional[bool]
    q34_youth_feel_angry_or_cranky: Optional[bool]
    q35_youth_broken_law: Optional[bool]
    q1_youth_frequent_thoughts_positive: Optional[bool]
    q2_youth_repetitive_behaviors_positive: Optional[bool]
    q3_youth_worry_appearance_positive: Optional[bool]
    q4_youth_excessively_cluttered_positive: Optional[bool]
    q5_youth_hair_pulling_positive: Optional[bool]
    q6_youth_skin_picking_positive: Optional[bool]
    q7_youth_refuse_to_speak_positive: Optional[bool]
    q8_youth_embarassed_around_others_positive: Optional[bool]
    q9_youth_uncomfortable_feelings_positive: Optional[bool]
    q10_youth_fearful_of_escape_positive: Optional[bool]
    q11_youth_worry_about_many_things_positive: Optional[bool]
    q12_youth_afraid_of_objects_situations_activities_positive: Optional[bool]
    q13_youth_afraid_to_be_away_from_a_person_positive: Optional[bool]
    q14_youth_problematically_happy_positive: Optional[bool]
    q15_youth_depressed_2_years_positive: Optional[bool]
    q16_youth_unmotivated_2_weeks_positive: Optional[bool]
    q17_youth_temper_positive: Optional[bool]
    q18_youth_women_only_really_depressed_during_period_positive: Optional[bool]
    q19_youth_event_trauma_positive: Optional[bool]
    q20_youth_hard_time_with_stressful_experience_positive: Optional[bool]
    q21_youth_strange_beliefs_positive: Optional[bool]
    q22_youth_sensory_experience_positive: Optional[bool]
    q23_youth_avoid_eating_due_to_weight_positive: Optional[bool]
    q24_youth_eating_binges_positive: Optional[bool]
    q25_youth_eat_very_little_positive: Optional[bool]
    q26_youth_physical_health_positive: Optional[bool]
    q27_youth_worry_of_serious_medical_illness_positive: Optional[bool]
    q28_youth_alcohol_positive: Optional[bool]
    q29_youth_drug_abuse_positive: Optional[bool]
    q30_youth_difficulty_paying_attn_positive: Optional[bool]
    q31_youth_difficult_sitting_still_positive: Optional[bool]
    q32_youth_spastic_movements_positive: Optional[bool]
    q33_youth_hurt_people_positive: Optional[bool]
    q34_youth_feel_angry_or_cranky_positive: Optional[bool]
    q35_youth_broken_law_positive: Optional[bool]
    completed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool]
    q1_youth_frequent_thoughts_details: Optional[str]
    q2_youth_repetitive_behaviors_details: Optional[str]
    q3_youth_worry_appearance_details: Optional[str]
    q4_youth_excessively_cluttered_details: Optional[str]
    q5_youth_hair_pulling_details: Optional[str]
    q6_youth_skin_picking_details: Optional[str]
    q7_youth_refuse_to_speak_details: Optional[str]
    q8_youth_embarassed_around_others_details: Optional[str]
    q9_youth_uncomfortable_feelings_details: Optional[str]
    q10_youth_fearful_of_escape_details: Optional[str]
    q11_youth_worry_about_many_things_details: Optional[str]
    q12_youth_afraid_of_objects_situations_activities_details: Optional[str]
    q13_youth_afraid_to_be_away_from_a_person_details: Optional[str]
    q14_youth_problematically_happy_details: Optional[str]
    q15_youth_depressed_2_years_details: Optional[str]
    q16_youth_unmotivated_2_weeks_details: Optional[str]
    q17_youth_temper_details: Optional[str]
    q18_youth_women_only_really_depressed_during_period_details: Optional[str]
    q19_youth_event_trauma_details: Optional[str]
    q20_youth_hard_time_with_stressful_experience_details: Optional[str]
    q21_youth_strange_beliefs_details: Optional[str]
    q22_youth_sensory_experience_details: Optional[str]
    q23_youth_avoid_eating_due_to_weight_details: Optional[str]
    q24_youth_eating_binges_details: Optional[str]
    q25_youth_eat_very_little_details: Optional[str]
    q26_youth_physical_health_details: Optional[str]
    q27_youth_worry_of_serious_medical_illness_details: Optional[str]
    q28_youth_alcohol_details: Optional[str]
    q29_youth_drug_abuse_details: Optional[str]
    q30_youth_difficulty_paying_attn_details: Optional[str]
    q31_youth_difficult_sitting_still_details: Optional[str]
    q32_youth_spastic_movements_details: Optional[str]
    q33_youth_hurt_people_details: Optional[str]
    q34_youth_feel_angry_or_cranky_details: Optional[str]
    q35_youth_broken_law_details: Optional[str]
    cloned_from_form_id: Optional[int]
    q36_youth_frequent_thoughts_details_text: Optional[str]
    q37_youth_frequent_thoughts_come_up: Optional[int]
    q38_youth_frequent_thoughts_bother: Optional[int]
    q39_youth_repetitive_behaviors_stop_doing: Optional[int]
    q40_youth_repetitive_behaviors_afraid: Optional[str]
    q41_youth_alcohol_anyone_said: Optional[int]
    q42_youth_alcohol_caused_problems: Optional[int]
    q43_youth_drug_abuse_anyone_said: Optional[int]
    q44_youth_drug_abuse_caused_problems: Optional[int]
    q45_youth_hair_pulling_hair_is_all_gone: Optional[int]
    q46_youth_skin_picking_scars: Optional[int]
    q47_youth_spastic_movements_some_body_part: Optional[int]
    q48_youth_spastic_movements_multiple_body_parts: Optional[int]
    q49_youth_spastic_movements_making_sounds: Optional[int]
    q50_youth_excessively_cluttered_past_month: Optional[int]
    q51_youth_excessively_cluttered_others_throw_away: Optional[int]
    q52_youth_excessively_cluttered_important_to_save: Optional[int]
    q53_youth_event_trauma_led_intrusive_thoughts: Optional[int]
    q54_youth_depressed_2_years_or_more: Optional[int]
    q55_youth_depressed_2_years_feel_most: Optional[int]
    q56_youth_unmotivated_2_weeks_lost_interest: Optional[int]
    q57_youth_problematically_happy_elevated_mood: Optional[int]
    q58_youth_problematically_happy_felt_powerful: Optional[int]
    q59_youth_problematically_happy_cranky_mood: Optional[int]
    q60_youth_avoid_eating_due_to_weight_actions: Optional[int]
    q61_youth_eat_very_little_friends_family_worried: Optional[int]
    q62_youth_refuse_to_speak_caused_problem: Optional[int]
    q63_youth_embarassed_around_others_avoid_situations: Optional[int]
    q64_youth_uncomfortable_feelings_occurred_for_no_reason: Optional[int]
    q65_youth_worry_about_many_things_more_than_others: Optional[int]
    q66_youth_worry_about_many_things_feel_tense: Optional[int]
    q67_youth_feared_experiences_bring_anxiety: Optional[int]
    q68_youth_fear_is_above_and_beyond: Optional[int]
    q69_youth_afraid_to_be_away_from_person_caused_problems: Optional[int]
    q70_youth_worry_medical_illness_done_avoide_things: Optional[int]
    q71_youth_physical_health_caused_problems: Optional[int]
    q72_youth_worry_appearance_spent_time: Optional[int]
    q73_youth_temper_outbursts: Optional[int]
    q74_youth_temper_angry_most_of_the_day: Optional[int]
    q75_youth_difficulty_paying_attn_caused_problems: Optional[int]
    q76_youth_difficulty_paying_attn_problems_six_months: Optional[int]
    q77_youth_difficult_sitting_still_caused_problems: Optional[int]
    q78_youth_difficult_sitting_still_last_six_months: Optional[int]
    q79_youth_hurt_people_make_plans: Optional[int]
    q80_youth_feel_angry_or_cranky_lost_temper: Optional[int]
    q1_youth_frequent_thoughts_diagnostic_assessment: Optional[str]
    q2_youth_repetitive_behaviors_diagnostic_assessment: Optional[str]
    q3_youth_worry_appearance_diagnostic_assessment: Optional[str]
    q4_youth_excessively_cluttered_diagnostic_assessment: Optional[str]
    q5_youth_hair_pulling_diagnostic_assessment: Optional[str]
    q6_youth_skin_picking_diagnostic_assessment: Optional[str]
    q7_youth_refuse_to_speak_diagnostic_assessment: Optional[str]
    q8_youth_embarassed_around_others_diagnostic_assessment: Optional[str]
    q9_youth_uncomfortable_feelings_diagnostic_assessment: Optional[str]
    q10_youth_fearful_of_escape_diagnostic_assessment: Optional[str]
    q11_youth_worry_about_many_things_diagnostic_assessment: Optional[str]
    q12_youth_afraid_of_objects_diagnostic_assessment: Optional[str]
    q13_youth_afraid_to_be_away_from_a_person_diagnostic_assessment: Optional[str]
    q14_youth_problematically_happy_diagnostic_assessment: Optional[str]
    q15_youth_depressed_2_years_diagnostic_assessment: Optional[str]
    q16_youth_unmotivated_2_weeks_diagnostic_assessment: Optional[str]
    q17_youth_temper_diagnostic_assessment: Optional[str]
    q19_youth_event_trauma_diagnostic_assessment: Optional[str]
    q20_youth_hard_time_with_stressful_exp_diagnostic_assessment: Optional[str]
    q21_youth_strange_beliefs_diagnostic_assessment: Optional[str]
    q22_youth_sensory_experience_diagnostic_assessment: Optional[str]
    q23_youth_avoid_eating_due_to_weight_diagnostic_assessment: Optional[str]
    q24_youth_eating_binges_diagnostic_assessment: Optional[str]
    q25_youth_eat_very_little_diagnostic_assessment: Optional[str]
    q26_youth_physical_health_diagnostic_assessment: Optional[str]
    q27_youth_worry_of_serious_medical_illness_diagnostic_assessment: Optional[str]
    q28_youth_alcohol_diagnostic_assessment: Optional[str]
    q29_youth_drug_abuse_diagnostic_assessment: Optional[str]
    q30_youth_difficulty_paying_attn_diagnostic_assessment: Optional[str]
    q31_youth_difficult_sitting_still_diagnostic_assessment: Optional[str]
    q32_youth_spastic_movements_diagnostic_assessment: Optional[str]
    q33_youth_hurt_people_diagnostic_assessment: Optional[str]
    q34_youth_feel_angry_or_cranky_diagnostic_assessment: Optional[str]
    q35_youth_broken_law_diagnostic_assessment: Optional[str]
    q81_youth_frequent_thoughts_description: Optional[Any]
    q81_youth_frequent_thoughts_description_other: Optional[str]
    q82_youth_repetitive_behaviors_description: Optional[Any]
    q82_youth_repetitive_behaviors_description_other: Optional[str]
    member_answered: Optional[Any]
    is_diamond_youth_reviewed: Optional[bool]
    q83_youth_event_trauma_direct_experience: Optional[int]
    q83_youth_event_trauma_direct_experience_details: Optional[str]
    q84_youth_event_trauma_witnessed: Optional[int]
    q84_youth_event_trauma_witnessed_details: Optional[str]
    q85_youth_event_trauma_been_exposed: Optional[int]
    q85_youth_event_trauma_been_exposed_details: Optional[str]
    q86_youth_event_trauma_symptoms: Optional[Any]
    q86_youth_event_trauma_symptoms_details: Optional[str]
    q87_youth_event_trauma_avoidance_types: Optional[Any]
    q87_youth_event_trauma_avoidance_types_details: Optional[str]
    q88_youth_event_trauma_negative_changes: Optional[Any]
    q88_youth_event_trauma_negative_changes_details: Optional[str]
    q89_youth_event_trauma_reactivity_changes: Optional[Any]
    q89_youth_event_trauma_reactivity_changes_details: Optional[str]
    q90_youth_event_trauma_duration: Optional[int]
    q90_youth_event_trauma_duration_details: Optional[str]
    q91_youth_event_trauma_distress: Optional[int]
    q91_youth_event_trauma_distress_details: Optional[str]
    q92_youth_event_trauma_attributable: Optional[int]


class ClinicalFormsDocsItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    session_type: str
    protocol_type: Optional[str]
    q1_time_contamination: Optional[int]
    q2_avoid_contamination: Optional[int]
    q3_distress_contamination: Optional[int]
    q4_routine_contamination: Optional[int]
    q5_disregard_contamination: Optional[int]
    q6_time_harm: Optional[int]
    q7_avoid_harm: Optional[int]
    q8_distress_harm: Optional[int]
    q9_routine_harm: Optional[int]
    q10_disregard_harm: Optional[int]
    q11_time_thoughts: Optional[int]
    q12_avoid_thoughts: Optional[int]
    q13_distress_thoughts: Optional[int]
    q14_routine_thoughts: Optional[int]
    q15_disregard_thoughts: Optional[str]
    q16_time_symmetry: Optional[int]
    q17_avoid_symmetry: Optional[int]
    q18_distress_symmetry: Optional[int]
    q19_routine_symmetry: Optional[int]
    q20_disregard_symmetry: Optional[int]
    completed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool]
    deleted_at: Optional[datetime]
    deleted_member_appointments_id: Optional[int]


class ClinicalFormsNocd411ConsentItem(BaseModel):
    id: int
    user_id: int
    accepted_at: Optional[datetime]
    signature: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    member_payment_agreement_signature: Optional[str]


class ClinicalFormsNoticeOfPrivacyPracticesItem(BaseModel):
    id: int
    user_id: int
    accepted_at: Optional[datetime]
    signature: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]


class ClinicalFormsOcicvrConsentItem(BaseModel):
    id: int
    user_id: int
    signature: Optional[str]
    accepted: int = 0
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicalFormsQlesItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    session_type: str
    protocol_type: Optional[str]
    q_physical_health: Optional[int]
    q_mood: Optional[int]
    q_work: Optional[int]
    q_household_activities: Optional[int]
    q_social_relationships: Optional[int]
    q_family_relationships: Optional[int]
    q_leisure_time: Optional[int]
    q_daily_function: Optional[int]
    q_sexual_drive: Optional[int]
    q_economic_status: Optional[int]
    q_living_situation: Optional[int]
    q_getting_around: Optional[int]
    q_visions: Optional[int]
    q_well_being: Optional[int]
    q_medication: Optional[str]
    q_life_satisfaction: Optional[int]
    completed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool]
    deleted_at: Optional[datetime]
    deleted_member_appointments_id: Optional[int]


class ClinicalFormsRoiItem(BaseModel):
    id: int
    user_id: int
    roi_name: Optional[str]
    roi_organization: Optional[str]
    roi_details: Optional[Any]
    roi_signature_base64: Optional[str]
    relation_to_patient: Optional[str]
    patient_name: Optional[str]
    patient_dob: Optional[str]
    signer_relation_to_patient: Optional[str]
    completed_at: Optional[datetime]
    is_deleted: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    roi_address: Optional[str]
    roi_phone: Optional[str]
    roi_fax: Optional[str]
    roi_email: Optional[str]
    created_by: Optional[str]
    linked_account_id: Optional[int]
    approved_by_clinician_id: Optional[int]
    approved_by_clinician_at: Optional[datetime]
    delete_reason: Optional[str]
    deleted_by: Optional[str]


class ClinicalFormsSupportPlanAttestationItem(BaseModel):
    id: int
    user_id: int
    protocol_type: Optional[str]
    signature: Optional[str]
    accepted_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class ClinicalFormsTherapyConsentItem(BaseModel):
    id: int
    user_id: int
    enrollment_agreement_accepted_at: Optional[datetime]
    enrollment_agreement_relationship: Optional[str]
    patient_name: Optional[str]
    patient_date_of_birth: Optional[str]
    enrollment_agreement_signature_base64: Optional[str]
    verified_demographics_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    emergency_contact_name: Optional[str]
    emergency_contact_relation: Optional[str]
    emergency_contact_phone: Optional[str]
    first_parent_signature: Optional[str]
    first_parent_name: Optional[str]
    first_parent_email: Optional[str]
    first_parent_phone: Optional[str]
    second_parent_name: Optional[str]
    second_parent_email: Optional[str]
    second_parent_phone: Optional[str]
    parent_legal_category: Optional[str]
    is_secondary_consent_required: Optional[int]
    is_able_to_consent_alone: Optional[int]
    patient_phone: Optional[str]
    patient_email: Optional[str]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]
    member_payment_agreement_signature: Optional[str]
    id_image: Optional[str]


class ClinicalFormsTreatmentPlanAcknowledgementItem(BaseModel):
    id: int
    user_id: int
    signature: Optional[str]
    accepted_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class ClinicalRegionsItem(BaseModel):
    id: int
    name: str
    manager_email: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicalSupervisorContactNotesItem(BaseModel):
    id: int
    clinician_supervisor_email: Optional[str]
    note_date: datetime = datetime.now()
    note_text: Optional[str]
    clinician_associate_user_id: int
    clinician_associate_email: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicianActionPlanItem(BaseModel):
    id: int
    action_plan_id: int
    clinician_email: str
    focus_area: Optional[str]
    meeting_date: Optional[date]
    action_plan_notes: Optional[str]
    action_plan_details: Optional[str]
    week_notes: Optional[str]
    send_email: Optional[bool]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    action: Optional[str]
    completed_by: Optional[str]
    completed_at: Optional[datetime]
    is_draft: Optional[bool]


class ClinicianActionPlanWeeklyOverviewItem(BaseModel):
    id: int
    clinician_email: str
    status: Optional[str]
    start_of_week: Optional[date]
    end_of_week: Optional[date]
    focus_area: Optional[str]
    completed_by: Optional[str]
    completed_at: Optional[datetime]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianActivitiesItem(BaseModel):
    id: int
    activity_category: str
    notes_template: Optional[str]


class ClinicianActivityLogItem(BaseModel):
    id: int
    clinician_user_id: int
    clinician_email: Optional[str]
    activity_id: int
    activity_category: Optional[str]
    activity_host: Optional[str]
    activity_other_attendees: Optional[str]
    activity_notes: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    activity_date: Optional[datetime]


class ClinicianAppointmentNotificationQueueItem(BaseModel):
    id: int
    appointment_id: int
    clinician_email: str
    user_id: int
    send_status: Optional[str] = "queued"
    send_status_reason: Optional[str]
    sent_at: Optional[datetime]
    created_at: datetime = datetime.now()


class ClinicianAvailabilityRequestsItem(BaseModel):
    id: int
    request_type: str
    request_table: Optional[str]
    request_table_record_id: Optional[int]
    request_state: Optional[str]
    requested_at: datetime = datetime.now()
    requested_by: Optional[str]
    request_state_terminated_at: Optional[datetime]
    request_state_terminated_by: Optional[str]
    new_override_id: Optional[int]


class ClinicianAvailabilityRequestsNotesItem(BaseModel):
    id: int
    availability_requests_id: Optional[int]
    note: Optional[str]
    created_by: Optional[str]
    created_at: datetime = datetime.now()


class ClinicianCalendarComputedIntervalsItem(BaseModel):
    id: int
    clinician_email: str
    schedule_date: date
    interval_type: Optional[str]
    start_time: Optional[datetime]
    end_time: Optional[datetime]
    interval_length: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class ClinicianCheckInNotesItem(BaseModel):
    id: int
    check_in_id: int
    content: str
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianCheckInsItem(BaseModel):
    id: int
    clinician_email: str
    title: str
    type: str
    starts_at: datetime
    duration_in_mins: int
    host: str
    override_id: Optional[int]
    gcal_event_id: Optional[str]
    meeting_url: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    completed_by: Optional[str]
    completed_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]


class ClinicianConquerorGoalsItem(BaseModel):
    id: int
    clinician_email: str
    new_conqueror_goal: Optional[int]
    sustained_conqueror_goal: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicianConquerorMilestonesItem(BaseModel):
    id: int
    milestone: int
    clinician_email: str
    achieved_at: datetime
    celebrated_at: Optional[datetime]
    created_at: datetime = datetime.now()


class ClinicianCustomTemplatesItem(BaseModel):
    id: int
    template_id: Optional[str]
    clinician_email: Optional[str]
    title: Optional[str]
    template: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicianDirItem(BaseModel):
    id: int
    state: Optional[str]
    name: Optional[str]
    jobTitle: Optional[str]
    url: Optional[str]
    image: Optional[str]
    resources: Optional[Any]
    status: Optional[str]
    notes: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ClinicianEstimatorsItem(BaseModel):
    id: int
    estimator: str
    clinician_email: str
    estimate: float
    metadata: Optional[Any]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ClinicianEvaluationNotesItem(BaseModel):
    id: int
    evaluation_id: int
    content: str
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianEvaluationTrainingAreasItem(BaseModel):
    id: int
    evaluation_id: int
    category: Optional[str]
    title: Optional[str]
    description: str
    level: str
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianEvaluationTrainingCheckInNotesItem(BaseModel):
    id: int
    check_in_id: int
    content: str
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianEvaluationTrainingCheckInsItem(BaseModel):
    id: int
    evaluation_id: int
    starts_at: datetime
    duration_in_mins: int
    host: str
    override_id: Optional[int]
    gcal_event_id: Optional[str]
    meeting_url: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    completed_by: Optional[str]
    completed_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianEvaluationTrainingGoalsItem(BaseModel):
    id: int
    evaluation_id: int
    training_area_id: int
    title: Optional[str]
    description: str
    target_metric: str
    due_at: Optional[datetime]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    completed_by: Optional[str]
    completed_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    target_metric_value: Optional[int]
    target_metric_unit: Optional[str]


class ClinicianEvaluationsItem(BaseModel):
    id: int
    clinician_email: str
    version: int
    milestone_day: int
    data: Any
    status: str
    assigned_to: Optional[str]
    questionnaire_due_at: Optional[datetime]
    questionnaire_completed_by: Optional[str]
    questionnaire_completed_at: Optional[datetime]
    questionnaire_review_due_at: Optional[datetime]
    questionnaire_review_completed_by: Optional[str]
    questionnaire_review_completed_at: Optional[datetime]
    shared_with_therapist_at: Optional[datetime]
    shared_with_therapist_by: Optional[str]
    completed_by: Optional[str]
    completed_at: Optional[datetime]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    is_priority: Optional[bool]


class ClinicianNonAdherenceReportItem(BaseModel):
    id: int
    clinician_id: int
    member_id: int
    reason: str
    window_start_date: date
    window_end_date: date
    current_scheduling_frequency: str
    created_at: datetime = datetime.now()


class ClinicianNotesItem(BaseModel):
    id: int
    clinician_email: str
    note: str
    category: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()
    remind_at: Optional[datetime]
    resolved_at: Optional[datetime]
    resolved_by: Optional[str]
    resolved_reason: Optional[str]


class ClinicianOverrideAvailabilityItem(BaseModel):
    id: int
    clinician_email: str
    date: Optional[datetime]
    schedule: str
    holiday_id: Optional[int]
    schedule_timezone: Optional[str]
    notes: Optional[str]
    creates_availability: Optional[bool] = True
    created_by: str
    is_deleted: Optional[bool]
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    updated_at: datetime = datetime.now()
    override_type: Optional[str] = "General"
    is_draft: Optional[bool] = False
    counts_towards_pto: Optional[bool] = False
    start_schedule_datetime: Optional[datetime] = Field(exclude=True)
    end_schedule_datetime: Optional[datetime] = Field(exclude=True)
    duration_minutes: Optional[int] = Field(exclude=True)
    expires_at: Optional[datetime]
    deleted_by: Optional[str]
    created_for_cams: Optional[bool] = False


class ClinicianOverrideWeeklyAvailabilityItem(BaseModel):
    id: int
    clinician_email: str
    start_date: datetime
    end_date: Optional[datetime]
    sunday_schedule: Optional[str] = ""
    monday_schedule: Optional[str] = ""
    tuesday_schedule: Optional[str] = ""
    wednesday_schedule: Optional[str] = ""
    thursday_schedule: Optional[str] = ""
    friday_schedule: Optional[str] = ""
    saturday_schedule: Optional[str] = ""
    notes: Optional[str]
    creates_availability: Optional[bool] = True
    created_by: str
    is_deleted: Optional[bool]
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    updated_at: datetime = datetime.now()
    weekly_cadence: Optional[str] = "weekly"
    is_draft: Optional[bool] = False
    deleted_by: Optional[str]


class ClinicianOverrideWeeklyAvailabilitySplitsItem(BaseModel):
    id: int
    cowa_id: Optional[int]
    clinician_email: Optional[str]
    schedule_date: Optional[date]
    start_schedule_datetime: Optional[datetime]
    end_schedule_datetime: Optional[datetime]
    creates_availability: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    day_name: Optional[str] = Field(exclude=True)
    week: Optional[date] = Field(exclude=True)


class ClinicianOverrideWeeklyMaxDasItem(BaseModel):
    id: int
    clinician_email: str
    start_date: date
    end_date: date
    max_das: int
    notes: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianParamRangesItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    param_name: Optional[str]
    param_int_value: Optional[float]
    param_string_value: Optional[str]
    start_date: date
    end_date: date
    created_at: Optional[datetime] = datetime.now()
    created_by: Optional[str]
    created_reason: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    updated_by: Optional[str]
    updated_reason: Optional[str]
    is_deleted: Optional[bool]


class ClinicianPrioritySlotWaitlistItem(BaseModel):
    id: int
    clinician_id: int
    clinician_email: str
    slot_day_of_week: str
    slot_start_time: int
    slot_end_time: int
    priority_members: Any
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]
    deleted_at: Optional[datetime]


class ClinicianPriorityWaitlistsItem(BaseModel):
    id: int
    clinician_email: str
    title: str
    start_date: datetime
    end_date: Optional[datetime]
    user_ids: Optional[Any]
    sunday_schedule: Optional[str] = ""
    monday_schedule: Optional[str] = ""
    tuesday_schedule: Optional[str] = ""
    wednesday_schedule: Optional[str] = ""
    thursday_schedule: Optional[str] = ""
    friday_schedule: Optional[str] = ""
    saturday_schedule: Optional[str] = ""
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]


class ClinicianProfessionalDisclosureDocumentItem(BaseModel):
    id: int
    clinician_email: str
    license_state: str
    license_number: str
    license_expiry: date
    clinician_signed_at: Optional[datetime]
    supervisor_email: Optional[str]
    supervisor_signed_at: Optional[datetime]
    status: str = "not_started"
    payload: Optional[Any]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ClinicianProgressCurrentStatsItem(BaseModel):
    id: int
    clinician_email: str
    date: date
    quarter: Optional[str]
    charts_closed_perc: Optional[float]
    outcomes_perc: Optional[float]
    retention_6_perc: Optional[float]
    retention_12_perc: Optional[float]
    assigned_to_rec_freq_perc: Optional[float]
    avg_survey_rating: Optional[float]
    assessment_completion_perc: Optional[float]
    messaging_timely_perc: Optional[float]
    messaging_frequency_perc: Optional[float]
    messaging_responsiveness_perc: Optional[float]
    rescheduled_rate_perc: Optional[float]
    cancellation_rate_perc: Optional[float]
    members_with_upcoming_sessions_perc: Optional[float]
    sustained_conquerors: Optional[int]
    sustained_conquerors_bonus_amount: Optional[float]
    treatment_conquerors: Optional[int]
    treatment_conquerors_bonus_amount: Optional[float]
    v6_bonus_amount: Optional[float]
    v6_bonus_met_members: Optional[int]
    v6_bonus_elig_members: Optional[int]
    v18_bonus_amount: Optional[float]
    v18_bonus_met_members: Optional[int]
    v18_bonus_elig_members: Optional[int]
    scheduled_to_freq_perc: Optional[float]
    seen_at_freq_perc: Optional[float]
    projected_bonus_amount: Optional[float]
    avg_unadjusted_hours: Optional[float]
    committed_hours: Optional[float]
    adjusted_hours: Optional[float]
    avg_utilization_perc: Optional[float]
    weeks_left_in_qtr: Optional[int]
    min_hrs_needed: Optional[float]
    min_hrs_needed_per_wk: Optional[float]
    min_hrs_needed_per_wk_to_27: Optional[float]
    min_hrs_needed_per_wk_to_28_5: Optional[float]
    min_hrs_needed_per_wk_to_30: Optional[float]
    min_on_time_notes_needed: Optional[int]
    five_star_ratings: Optional[int]
    four_star_ratings: Optional[int]
    three_star_ratings: Optional[int]
    two_star_ratings: Optional[int]
    one_star_ratings: Optional[int]
    total_ratings: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]


class ClinicianRequestedMoveUpsItem(BaseModel):
    id: int
    clinician_email: str
    user_id: int
    current_stage: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]


class ClinicianScorecardsItem(BaseModel):
    id: int
    version: int
    clinician_email: str
    assigned_to: Optional[str]
    data: Optional[Any]
    total_score: Optional[float]
    max_score: float
    needs_training: Optional[bool]
    completed_at: Optional[datetime]
    completed_by: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime] = datetime.now()
    updated_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]


class ClinicianShopifyDiscountCodesItem(BaseModel):
    id: int
    email: str
    code: str
    title: str
    description: str
    shopify_customer_id: str
    created_at: datetime = datetime.now()


class ClinicianTaskSubmissionsItem(BaseModel):
    id: int
    therapist_email: str
    clinician_task_templates_id: int
    description: str
    due_date: Optional[datetime]
    done: Optional[datetime]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianTaskSubmissionsHistoryItem(BaseModel):
    id: int
    version: int
    therapist_email: str
    clinician_task_templates_id: int
    description: str
    due_date: Optional[datetime]
    done: Optional[datetime]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianTaskTemplatesItem(BaseModel):
    id: int
    name: str
    description: str
    tags: Optional[Any]
    task_type: str = "generalized"
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]
    deleted_at: Optional[datetime]


class ClinicianTemplateMessagesItem(BaseModel):
    id: int
    clinician_email: str
    message_content: Optional[str]
    template_message_type: Optional[str]
    is_deleted: Optional[int] = 0
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_custom_template: Optional[int]


class ClinicianTokensItem(BaseModel):
    id: int
    email: str
    idtoken: str
    google_payload: Optional[Any]
    auth_token: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    auditing: Optional[str]
    auditor: Optional[str]


class ClinicianUniversalZoomLinkItem(BaseModel):
    id: int
    clinician_email: str
    zoom_id: str
    zoom_join_link: str
    zoom_password: str
    zoom_host: str
    zoom_payload: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ClinicianUserZoomLinkItem(BaseModel):
    id: int
    clinician_user_id: int
    user_id: int
    zoom_id: Optional[str]
    zoom_join_link: Optional[str]
    zoom_password: Optional[str]
    zoom_host: Optional[str]
    zoom_payload: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ClinicianUtilizationReviewLogItem(BaseModel):
    id: int
    clinician_email: str
    live_status: str
    reviewed_by: str
    reviewed_date: Optional[datetime] = datetime.now()
    utilization_reason: str
    utilization_reason_details: Optional[str]
    three_week_average_utilization_percent: float


class ClinicianViewedUsersItem(BaseModel):
    id: int
    uuid: str
    email: str
    user_id: int
    elapsed_time: int
    created_at: datetime = datetime.now()


class CliniciansAvailabilityItem(BaseModel):
    id: int
    email: str
    clinician_timezone: Optional[str] = ""
    sunday_schedule: Optional[str] = ""
    monday_schedule: Optional[str] = ""
    tuesday_schedule: Optional[str] = ""
    wednesday_schedule: Optional[str] = ""
    thursday_schedule: Optional[str] = ""
    friday_schedule: Optional[str] = ""
    saturday_schedule: Optional[str] = ""
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class CliniciansAvailabilityDailyItem(BaseModel):
    id: int
    user_id: int
    email: str
    appointment_date: date
    da_length: int
    slots_raw_daily: Optional[int] = 0
    slots_adj_daily: Optional[int] = 0
    slots_adj_weekly: Optional[int] = 0
    timeranges: Optional[str] = ""
    timeranges_da: Optional[str] = ""
    timezone: Optional[str] = ""
    created_at: datetime


class CohortItem(BaseModel):
    id: int
    cohort_name: str
    start_date: Optional[date]


class CommunityBannerCohortRanksItem(BaseModel):
    id: int
    community_banner_id: int
    cohort: str
    rank: int
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class CommunityBannerViewsItem(BaseModel):
    id: int
    community_banner_id: int
    rank: int
    user_id: int
    created_at: datetime = datetime.now()


class CommunityBannersItem(BaseModel):
    id: int
    name: Optional[str]
    unseen_image_url: str
    seen_image_url: str
    cta_url: str
    minimum_ios_version: Optional[str]
    minimum_android_version: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class CommunityLikeNotificationsItem(BaseModel):
    id: int
    thread_id: int
    post_id: int
    source_user_id: int
    target_user_id: int
    sent_notification_id: Optional[str]
    not_sent_reason: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class CommunityPostNotificationsItem(BaseModel):
    id: int
    thread_id: int
    source_user_id: int
    target_user_id: int
    sent_notification_id: Optional[str]
    not_sent_reason: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class CommunityReplyNotificationsItem(BaseModel):
    id: int
    thread_id: int
    post_id: Optional[int]
    reply_id: int
    source_user_id: int
    target_user_id: int
    sent_notification_id: Optional[str]
    not_sent_reason: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class CommunityThreadSubscriptionsItem(BaseModel):
    id: int
    user_id: int
    thread_id: int
    post_id: Optional[int]
    subscription_type: Optional[str] = "reply"
    created_at: datetime = datetime.now()


class ConditionsItem(BaseModel):
    id: int
    condition: str
    created_at: datetime = datetime.now()
    created_author: Optional[str]


class ConnectedCallsTableItem(BaseModel):
    id: int
    intake_calls_id: int
    user_id: int
    member_appointments_id: int
    created_at: datetime = datetime.now()


class ConquererPrimaryFormForOutcomesItem(BaseModel):
    id: int
    user_id: Optional[int]
    forms_table_id: int
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    forms_table_id_subscore: Optional[str]
    created_by: Optional[str]
    updated_by: Optional[str]
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class ConquererPrimaryFormForOutcomesLedgerItem(BaseModel):
    id: int
    conquerer_primary_form_for_outcomes_id: int
    user_id: Optional[int]
    forms_table_id: Optional[int]
    forms_table_id_subscore: Optional[str]
    created_by: Optional[str]
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    transaction_type: str


class ConquerorAdvocacyItem(BaseModel):
    id: int
    user_id: int
    social_platform: Optional[str]
    other_social_platform: Optional[str]
    screenshot_url: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ContactNoteItem(BaseModel):
    id: int
    user_id: int
    clinician_email: Optional[str]
    contact_at: datetime = datetime.now()
    contact_name: Optional[str]
    contacted_party_relationship: Optional[str]
    contact_method: Optional[str]
    contact_reason: Optional[str]
    contact_details: Optional[str]
    risk_assessment_json: Optional[Any]
    time_spent_in_mins: Optional[int]
    is_deleted: Optional[bool]
    created_at: datetime = datetime.now()


class ContractorItemizedPayrollItem(BaseModel):
    id: int
    payroll_name: str
    clinician_email: str
    service_category: str
    service_type: str
    service_date: datetime
    appointment_id: Optional[int]
    member_user_id: Optional[int]
    member_initials: Optional[str]
    cpt_code: Optional[str]
    minutes: int
    hourly_rate: int
    compensation: int
    note: Optional[str]
    is_deleted: Optional[bool]


class CredentialingProgressItem(BaseModel):
    id: int
    clinician_user_id: int
    state_insurance_id: int
    credentialing_status: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class CronSyncTimestampsItem(BaseModel):
    id: int
    sync_name: str
    sync_status: Optional[str] = "unknown"
    last_seen_timestamp: datetime
    sync_started_at: datetime
    synced_ended_at: datetime = datetime.now()
    records_synced: int = 0


class CrpUsersItem(BaseModel):
    user_id: int
    bootstrapped_at: Optional[datetime]
    enabled_at: Optional[datetime]
    created_at: Optional[datetime] = datetime.now()


class CurrentPlanInfoItem(BaseModel):
    user_id: int
    estimated_time_before_improvements: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class CustomClinicianTasksItem(BaseModel):
    id: int
    task_id: str
    clinician_email: Optional[str]
    title: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_resolved: Optional[bool] = False
    is_deleted: Optional[bool] = False


class CycledPostsItem(BaseModel):
    id: int
    post_id: int
    body: str
    user_id: int
    post_type_data: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class DailyMetricsItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    date: Optional[date]
    utilization_score: Optional[float]
    outcomes: Optional[float]
    charts_closed: Optional[float]
    adherence_3_15: Optional[float]
    adherence_12_90: Optional[float]
    perc_compliant: Optional[float]
    baseline_scores: Optional[float]
    rating: Optional[float]
    perc_sched_compliant: Optional[float]
    perc_seen_compliant: Optional[float]
    perc_messaged_timely: Optional[float]
    total_member_count: Optional[int]
    not_discharged_member_count: Optional[int]
    hours_next_week: Optional[float]
    hours_this_week: Optional[float]
    hours_last_week: Optional[float]
    utilization_next_week: Optional[float]
    utilization_this_week: Optional[float]
    utilization_last_week: Optional[float]
    first_sessions_next_week: Optional[int]
    first_sessions_this_week: Optional[int]
    first_sessions_last_week: Optional[int]
    three_week_avg_hours: Optional[float]
    three_week_avg_utilization: Optional[float]
    treatment_conqueror_count: Optional[int]
    treatment_conqueror_bonus_amount: Optional[float]
    sustained_conqueror_count: Optional[int]
    sustained_conqueror_bonus_amount: Optional[float]
    treatment_adherence_bonus_amount: Optional[float]
    treatment_adherence_bonus_member_count: Optional[int]
    projected_bonus_amount: Optional[float]
    avg_adjusted_weekly_hours: Optional[float]
    committed_hours: Optional[float]
    written_at: datetime = datetime.now()
    unadjusted_hours: Optional[float]
    adjusted_hours: Optional[float]
    next_session_booking_rate: Optional[float]
    reschedule_rate: Optional[float]
    cancellation_rate: Optional[float]
    retention_6_sessions: Optional[float]
    retention_6_sessions_bonus: Optional[float]
    all_time_members: Optional[int]
    active_members: Optional[int]


class DataMigrationItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    source_id: int
    source_table: str
    dest_id: Optional[int]
    dest_table: str


class DataProfileItem(BaseModel):
    id: int
    user_id: int
    ab_test_type: str
    saw_flow_popup: Optional[bool]
    saw_flow_popup_at: Optional[datetime]
    saw_flow_dynamic_module: Optional[bool]
    saw_flow_dynamic_module_at: Optional[datetime]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    clicked_get_started: Optional[bool]
    symptom_severity: Optional[int]
    state: Optional[str]
    year_of_birth: Optional[int]
    goes_to_college: Optional[bool]
    college: Optional[str]
    insurance: Optional[str]
    other_conditions: Optional[str]
    has_clinician: Optional[bool]
    current_clinician: Optional[str]
    exited_screen: Optional[str]
    completed: Optional[bool] = False
    exited_from_flow_popup: Optional[bool]
    completed_from_flow_popup: Optional[bool]
    exited_from_flow_dynamic_module: Optional[bool]
    completed_from_flow_dynamic_module: Optional[bool]
    created_at: datetime = datetime.now()
    latest_open: datetime = datetime.now()


class DateStridesItem(BaseModel):
    id: int
    day: date
    day_name: Optional[str] = Field(exclude=True)
    week: Optional[date] = Field(exclude=True)
    month: Optional[date] = Field(exclude=True)
    year: Optional[date] = Field(exclude=True)


class DayTableMappingItem(BaseModel):
    id: int
    day: Optional[date]
    day_of_week: Optional[str]
    week_prior_sunday: Optional[date]
    week_prior_prior_sunday: Optional[date] = Field(exclude=True)
    week_next_sunday: Optional[date] = Field(exclude=True)
    month_for_day: Optional[date]
    days_since_start_of_month: Optional[int]
    days_to_end_of_month: Optional[int]
    quarter_for_day: Optional[date]
    quarter_for_week_utilization: Optional[date]
    year_for_day: Optional[date]
    year_for_week_utilization: Optional[date]
    week_status: Optional[str]
    is_holiday: bool = False
    holiday_description: Optional[str]


class DefaultCompulsionsForObsessionsItem(BaseModel):
    default_compulsion_id: str = ""
    default_obsession_id: Optional[str] = ""
    compulsion: str


class DefaultExposuresForTriggersItem(BaseModel):
    default_exposure_id: str = ""
    default_trigger_id: Optional[str] = ""
    exposure: str


class DefaultObsessionsForSubtypesItem(BaseModel):
    default_obsession_id: str = ""
    default_subtype_id: Optional[str] = ""
    obsession: str


class DefaultProfileBioImagesItem(BaseModel):
    id: int
    image_url: str


class DefaultRatesItem(BaseModel):
    id: int
    currency: str
    cash_pay_90_min: int
    cash_pay_60_min: int
    cash_pay_45_min: int
    cash_pay_30_min: int
    created_at: datetime = datetime.now()
    ended_at: Optional[datetime]
    created_by: str
    archived_at: Optional[datetime]
    archived_by: Optional[str]


class DefaultSubtypesItem(BaseModel):
    default_subtype_id: str = ""
    subtype: str


class DefaultTriggersForObsessionsItem(BaseModel):
    default_trigger_id: str = ""
    default_obsession_id: Optional[str] = ""
    trigger: str


class DeleteAccountRequestsItem(BaseModel):
    id: int
    user_id: int
    flow: str
    user_delete_reason: Optional[str]
    freshdesk_ticket_id: Optional[int]
    created_at: datetime = datetime.now()
    resolved_at: Optional[datetime]


class DevicePermissionsItem(BaseModel):
    id: int
    deviceId: str
    userId: int
    permission: str
    status: str
    created_at: datetime = datetime.now()


class DiagnosisApprovalNotesItem(BaseModel):
    id: int
    text: str
    created_by: str
    created_at: datetime = datetime.now()
    appointment_id: Optional[int]


class DiagnosticAssessmentAccessItem(BaseModel):
    id: int
    ip_address: str
    utm_nocd: str
    country: Optional[str]
    state: Optional[str]
    created_at: datetime = datetime.now()


class DictationToolConsentFormsItem(BaseModel):
    id: int
    user_id: int
    status: str
    member_name: Optional[str]
    member_dob: Optional[str]
    member_signature: Optional[str]
    member_accepted_at: Optional[datetime]
    member_declined_at: Optional[datetime]
    member_withdrawn_at: Optional[datetime]
    is_able_to_consent_alone: Optional[bool]
    is_secondary_consent_required: Optional[bool]
    relation_to_member: Optional[str]
    guardian_1_legal_category: Optional[str]
    guardian_1_signature: Optional[str]
    guardian_1_name: Optional[str]
    guardian_1_phone: Optional[str]
    guardian_1_email: Optional[str]
    guardian_1_accepted_at: Optional[datetime]
    guardian_1_declined_at: Optional[datetime]
    guardian_1_withdrawn_at: Optional[datetime]
    guardian_2_guid: Optional[str]
    guardian_2_name: Optional[str]
    guardian_2_phone: Optional[str]
    guardian_2_email: Optional[str]
    guardian_2_signature: Optional[str]
    guardian_2_accepted_at: Optional[datetime]
    guardian_2_declined_at: Optional[datetime]
    guardian_2_withdrawn_at: Optional[datetime]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]


class DischargeNoteItem(BaseModel):
    id: int
    user_id: int
    clinician_email: Optional[str]
    discharge_at: datetime = datetime.now()
    discharge_reason: Optional[str]
    discharge_barriers_and_notes: Optional[str]
    discharge_care_and_referrals: Optional[str]
    adhered_to_treatment_plan: Optional[str]
    is_deleted: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]
    updated_by: Optional[str]


class DischargeNoteNeededItem(BaseModel):
    id: int
    user_id: int
    clinician_email: str
    reason: str
    existing_discharge_note_id: Optional[int]
    completed_discharge_note_id: Optional[int]
    effective_date: date
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    note: Optional[str]


class DischargeNoteRequestsItem(BaseModel):
    id: int
    user_id: int
    clinician_email: Optional[str]
    discharge_reason: Optional[str]
    discharge_barriers_and_notes: Optional[str]
    discharge_care_and_referrals: Optional[str]
    adhered_to_treatment_plan: Optional[str]
    reviewer_notes: Optional[str]
    status: Optional[str]
    discharge_note_id: Optional[int]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]


class DmImagesItem(BaseModel):
    id: int
    dynamic_module_id: int
    message: Optional[str]
    link_url: str
    image_url: str
    image_public_id: str
    image_width: int
    image_height: int
    aspect_ratio: float
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]


class DmMessagesItem(BaseModel):
    id: int
    dynamic_module_id: int
    message: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]


class DmPostCommunityItem(BaseModel):
    id: int
    dynamic_module_id: int
    post_id: int
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]


class DmRegistryItem(BaseModel):
    dm_registry_id: int
    dynamic_module_id: int
    user_id: int
    view_count: int = 1
    position_timestamp: Optional[datetime]
    position_post_id: Optional[int]
    feed_segment_layout_id: Optional[int]
    feed_segment_guid: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class DmRegistryV2Item(BaseModel):
    dm_registry_id: int
    post_id: int
    user_id: int
    view_count: int = 1
    position_timestamp: Optional[datetime]
    position_post_id: Optional[int]
    feed_segment_layout_id: Optional[int]
    feed_segment_guid: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class DmSessionsTagsItem(BaseModel):
    id: int
    user_id: int
    type: str
    name: Optional[str]


class DoNotContactItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    user_id: Optional[int]
    email: Optional[str]
    phone: Optional[str]
    braze_email_marketing_synced_at: Optional[datetime]
    braze_sms_marketing_synced_at: Optional[datetime]
    braze_sms_transactional_synced_at: Optional[datetime]
    textline_sms_synced_at: Optional[datetime]
    mailgun_email_synced_at: Optional[datetime]


class DocspringSendsItem(BaseModel):
    id: int
    email: Optional[str]
    user_id: Optional[int]
    category: str
    template: str
    payload: Optional[Any]
    created_at: datetime = datetime.now()
    authorizer: Optional[str]


class DocumentItem(BaseModel):
    id: int
    version: int = 1
    name: str
    template_id: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    human_id: str
    member_visibility: Optional[str] = "latest"


class DynamicContextMenuActionPermissionsItem(BaseModel):
    id: int
    user_id: int
    action_name: str
    created_at: datetime = datetime.now()


class DynamicContextMenuActionsItem(BaseModel):
    id: int
    action_name: str
    use_post_annotations: bool
    user_level_annotation: bool
    refresh_element: Optional[bool] = True
    take_action_title: str
    undo_action_title: str
    take_action_success_message: Optional[str] = ""
    undo_action_success_message: Optional[str] = ""
    created_at: datetime = datetime.now()


class DynamicCtasItem(BaseModel):
    id: int
    cta_name: str
    variant_a: str
    variant_b: Optional[str]


class DynamicFeedFiltersItem(BaseModel):
    id: int
    filter_name: str
    title: str
    created_at: datetime = datetime.now()


class DynamicFeedFiltersPermissionsItem(BaseModel):
    id: int
    user_id: int
    filter_name: str
    created_at: datetime = datetime.now()


class DynamicModulesItem(BaseModel):
    dynamic_module_id: int
    post_id: Optional[int]
    start_at: datetime
    end_at: datetime
    rank: int = 1
    refresh_duration: int = 0
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class DynamicQueryRunnerItem(BaseModel):
    id: int
    name: str
    query: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    record_view_type: Optional[str]
    dynamic_column_settings: Optional[bool]
    column_settings: Optional[Any]


class EarlierSessionsAuditLogItem(BaseModel):
    id: int
    clinician_email: str
    slot: datetime
    chosen_candidate_user_id: Optional[int]
    chosen_candidate: Optional[Any]
    candidates: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class EhrAiSuggestionsItem(BaseModel):
    id: int
    ma_id: int
    ehr_section: str
    question_field_type: str
    question_id: str
    question: str
    output: Optional[Any]
    transcript_reference: Optional[str]
    accepted: Optional[bool]
    evaluated: Optional[bool]
    evaluated_at: Optional[datetime]
    evaluated_comments: Optional[str]
    accepted_at: Optional[datetime]
    feedback_text: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    trace_id: Optional[str]


class EhrNotificationsItem(BaseModel):
    id: int
    ehr_user_id: int
    title: str
    description: Optional[str]
    type: str
    payload: Optional[Any]
    member_user_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]
    remind_at: Optional[datetime]
    resolved_at: Optional[datetime]


class EhrRoleItem(BaseModel):
    id: int
    role: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class EhrUsersRolesItem(BaseModel):
    id: int
    user_id: int
    role_id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class EligibilityTasksNotesItem(BaseModel):
    id: int
    eligibility_tasks_id: int
    eligibility_tasks_user_id: int
    note: str
    created_at: Optional[datetime] = datetime.now()
    created_by: str
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]


class EligibleClaimSubmissionsItem(BaseModel):
    id: int
    member_appointments_id: int
    user_id: int
    success: bool
    eligible_id: str
    reference_id: str
    request_payload: Optional[Any]
    response_payload: Optional[Any]
    created_at: datetime = datetime.now()


class EligibleClaimWebhooksItem(BaseModel):
    id: int
    event: str
    reference_id: str
    event_id: str
    payload: Optional[Any]
    created_at: datetime = datetime.now()


class EmailBlocksItem(BaseModel):
    email: str
    block_reason: str
    moderator_email: str
    created_at: datetime = datetime.now()


class EmailChangesItem(BaseModel):
    id: int
    user_id: int
    replaced_by_user_id: Optional[int]
    replaced_user_id: Optional[int]
    prior_email: Optional[str]
    post_email: Optional[str]
    action: Optional[str]
    authorizer: Optional[str]
    created_at: datetime = datetime.now()


class EmailQueueItem(BaseModel):
    id: int
    user_id: int
    template_name: str
    subject: str
    body: Optional[str]
    variable_schema: Optional[Any]
    is_basic: Optional[bool]
    is_html: Optional[bool]
    from_mail: str
    to_mail: str
    reply_to: str
    tags: Optional[Any]
    cc_list: Optional[Any]
    bcc_list: Optional[Any]
    label: Optional[str]
    sent: Optional[bool] = False
    sent_at: Optional[datetime]
    created_at: datetime = datetime.now()


class EmailTemplatesItem(BaseModel):
    id: int
    template_name: str
    subject: str
    template_variable_schema: Optional[Any]
    template_html: str
    version: Optional[int] = 1
    created_by: str
    created_at: datetime = datetime.now()
    category: Optional[str]


class EmployeeReviewsItem(BaseModel):
    id: int
    role: str
    body: Optional[str]
    rating: Optional[bool]
    reply_body: Optional[str]
    reply_date: Optional[datetime]
    is_hidden: Optional[bool] = False
    internal_notes: Optional[str]
    source: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class EmployeeShopifyDiscountCodesItem(BaseModel):
    id: int
    email: str
    code: str
    year: int
    created_at: datetime = datetime.now()


class EnrollmentStatusChangesItem(BaseModel):
    id: int
    flowdash_stage: Optional[str]
    provider_credentialing_id: int
    transitioned_at: Optional[datetime] = datetime.now()
    assigned_to: Optional[str]


class EpisodesItem(BaseModel):
    id: int
    userID: int
    compulsionID: str
    f_from: int = Field(alias="from", default=0)
    had: int = 0
    heartRate: int = 0
    epsDate: Optional[datetime]
    lat: float
    lng: float
    locationAddress: str
    obsessionID: str
    triggerID: str
    intense: str
    compulsionTime: int
    placeID: str
    endIntensity: int
    epsId: str
    updated: float
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ErpEntriesItem(BaseModel):
    id: int
    userID: int
    entryDescription: str
    name: str
    scheduledID: str
    exposureMessageID: str
    createdDate: Optional[datetime]
    entryID: str
    updated: float
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool] = False


class ErpEntryAudioItem(BaseModel):
    recordID: int
    entryID: str
    name: str
    fileData: str
    updated: float


class ErpEntryPicturesItem(BaseModel):
    pictID: int
    entryID: str
    name: str
    fileData: str
    updated: float


class ErpPollItem(BaseModel):
    id: int
    user_id: int
    hidden_exit_screen: Optional[bool]
    q1_have_you_heard_of_erp_response: Optional[bool]
    q2_have_you_tried_erp_response: Optional[bool]
    q3_did_erp_work: Optional[bool]
    q4_what_was_biggest_challenge_with_erp: Optional[str]
    next_click_on_share_story: Optional[bool]
    next_click_on_what_is_erp: Optional[bool]
    next_click_on_how_does_erp_work: Optional[bool]
    next_click_on_how_to_do_erp_effectively: Optional[bool]
    next_click_on_testimonial: Optional[bool]
    clicked_call_us_now: Optional[bool]
    completed_flow: Optional[bool]
    completed_screen: Optional[str]
    exited_flow: Optional[bool]
    exited_screen: Optional[str]
    created_at: datetime = datetime.now()


class EventScreenEndItem(BaseModel):
    id: int
    deviceID: str
    sessionID: str
    userID: Optional[int]
    screenNameAudit: Optional[str]
    screenName: str
    screenKey: str
    cta: Optional[str]
    backClicked: Optional[bool] = False
    exitClicked: Optional[bool] = False
    closedApp: Optional[bool] = False
    autoEnded: Optional[bool] = False
    SSCallBeforeSE: Optional[bool] = False
    client_ts: datetime = datetime.now()
    created_at: datetime = datetime.now()


class EventScreenStartItem(BaseModel):
    id: int
    deviceID: str
    sessionID: str
    userID: Optional[int]
    screenName: str
    screenKey: str
    prevScreenName: Optional[str]
    prevScreenKey: Optional[str]
    fKey: Optional[str]
    fKeyInt: Optional[int]
    fKeyString: Optional[str]
    SECallBeforeSS: Optional[bool] = False
    client_ts: datetime = datetime.now()
    created_at: datetime = datetime.now()


class EventsItem(BaseModel):
    id: int
    deviceID: str
    sessionID: str
    traceID: str
    userID: Optional[int]
    event: str
    fKey: Optional[str]
    fKeyColName: Optional[str]
    fKeyInt: Optional[int]
    fKeyString: Optional[str]
    metadata: Optional[Any]
    client_ts: datetime = datetime.now()
    created_at: datetime = datetime.now()


class ExerciseImagesItem(BaseModel):
    id: int
    exercise_tool_id: int
    image_url: str
    aspect_ratio: Optional[float]
    created_at: datetime = datetime.now()
    title: str = ""


class ExerciseLinksItem(BaseModel):
    id: int
    exercise_tool_id: int
    url: str
    title: str = ""
    description: Optional[str]
    image_url: Optional[str]
    image_aspect_ratio: Optional[float]
    favicon_url: Optional[str]
    created_at: datetime = datetime.now()


class ExerciseLooptapesItem(BaseModel):
    id: int
    exercise_tool_id: int
    looptape_url: str
    title: str
    duration_seconds: Optional[int]
    created_at: datetime = datetime.now()


class ExerciseMigrateLooptapesUserDevicesItem(BaseModel):
    id: int
    user_id: int
    device_id: str
    number_of_looptapes: int
    completed_migration: Optional[bool] = False
    created_at: datetime = datetime.now()


class ExerciseMigratedLooptapesItem(BaseModel):
    id: int
    user_id: int
    record_id: str
    exercise_tool_id: int
    created_at: datetime = datetime.now()


class ExerciseScriptsItem(BaseModel):
    id: int
    exercise_tool_id: int
    title: str
    body: str
    created_at: datetime = datetime.now()


class ExerciseToolSelectionsItem(BaseModel):
    id: int
    user_id: int
    exercise_tool_id: int
    exposure_id: str
    created_at: datetime = datetime.now()


class ExerciseToolsItem(BaseModel):
    id: int
    user_id: int
    tool_type: str
    trigger_id: Optional[str]
    from_therapist: Optional[bool] = False
    created_at: datetime = datetime.now()
    created_by: Optional[str]
    updated_by: Optional[str]


class ExerciseUsersItem(BaseModel):
    id: int
    user_id: int
    accepted_self_guided_disclaimer: bool
    show_hierarchy_onboarding: bool
    show_exercise_tutorial: Optional[bool] = True
    created_at: datetime = datetime.now()


class ExerciseVideosItem(BaseModel):
    id: int
    exercise_tool_id: int
    video_url: str
    image_url: Optional[str]
    aspect_ratio: Optional[float]
    filestack_job_id: Optional[str]
    uuid: Optional[str]
    video_status: Optional[str] = "PROCESSING"
    completed_processing_at: Optional[datetime]
    processing: Optional[bool] = True
    created_at: datetime = datetime.now()


class ExercisesItem(BaseModel):
    id: int
    userID: int
    scheduledID: str
    placeID: str
    exposureMessageID: str
    type: int
    heartRate: int
    actualExerciseGoalTime: float
    exerciseGoalTime: float
    anxiety: int
    intensityGoal: int
    currentGoal: bool
    exposureMessage: str
    exerciseDate: str
    exerciseID: str
    updated: float


class ExperienceWithOcdTherapyItem(BaseModel):
    user_id: int
    experience: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ExposureItem(BaseModel):
    id: int
    obsessionID: str
    triggerID: str
    title: str
    visibility: int = 0
    exposureID: str
    updated: float


class ExposureAssetsItem(BaseModel):
    id: int
    userID: str
    exposureID: str
    asset_id: str
    asset_type: str
    created_at: datetime = datetime.now()


class ExposureExerciseMessagesItem(BaseModel):
    id: int
    userID: int
    exposureID: str
    messageID: str
    message: Optional[str]
    hidden: bool = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: bool = False


class ExposureMessagesItem(BaseModel):
    id: int
    obsessionID: str
    triggerID: str
    userID: int
    title: Optional[str]
    anxiety: int
    goalExposureType: int
    exposureID: str
    default_exposure_id: Optional[str] = ""
    current_erp: Optional[bool] = False
    practice_goal: Optional[int]
    recording_prompt_dismissed: Optional[bool] = False
    from_therapist: Optional[bool] = False
    updated: float
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool] = False
    practice_type: Optional[str]
    created_by: Optional[str]
    updated_by: Optional[str]
    archived_at: Optional[datetime]


class ExposurePreventionTipAssignmentsItem(BaseModel):
    id: int
    user_id: int
    response_prevention_message_id: int
    exposure_id: str
    created_at: datetime = datetime.now()


class ExposurePromptItem(BaseModel):
    id: int
    userID: int
    prompt: str
    obsessionID: str
    prevention: str
    title: str
    instructions: str
    promptID: str
    updated: float


class ExposureResponsePreventionAssignmentsItem(BaseModel):
    id: int
    user_id: int
    response_prevention_id: int
    exposure_id: str
    created_at: datetime = datetime.now()


class ExternalProviderMembersItem(BaseModel):
    id: int
    external_providers_id: int
    user_id: int
    source: Optional[str]
    created_by: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class ExternalProviderReferralsItem(BaseModel):
    id: int
    user_id: Optional[int]
    patient_first_name: Optional[str]
    patient_last_name: Optional[str]
    patient_state: Optional[str]
    patient_age: Optional[int]
    patient_phone: Optional[str]
    patient_email: Optional[str]
    patient_dob: Optional[date]
    primary_carer_first_name: Optional[str]
    primary_carer_last_name: Optional[str]
    primary_carer_phone: Optional[str]
    primary_carer_email: Optional[str]
    primary_carer_relation: Optional[str]
    additional_notes: Optional[str]
    external_provider_id: int
    relation_to_patient: Optional[str]
    who_to_contact: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool]
    call_outcome: Optional[str]
    source: Optional[str]
    call_time_preference: Optional[str]
    time_zone: Optional[str]


class ExternalProviderServiceAreaAssignmentsItem(BaseModel):
    id: int
    provider_id: int
    state_name: str
    service_area: str
    priority_order: int
    last_assigned_at: Optional[datetime]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ExternalProviderVerificationCodesItem(BaseModel):
    id: int
    external_providers_id: int
    verification_code: str
    expires_at: datetime
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ExternalProvidersItem(BaseModel):
    id: int
    auth_provider_id: Optional[str]
    first_name: Optional[str]
    last_name: Optional[str]
    email: Optional[str]
    phone: Optional[str]
    fax_number: Optional[str]
    role: Optional[str]
    organization_name: Optional[str]
    address_line_1: Optional[str]
    address_line_2: Optional[str]
    city: Optional[str]
    state: Optional[str]
    country_code: Optional[str]
    zipcode: Optional[str]
    how_did_you_hear_about_us: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    npi_number: Optional[str]
    npi_type: Optional[str] = "not_set"
    title: Optional[str]
    specialty: Optional[str]
    is_accepting_new_patients: Optional[int]
    source: Optional[str]
    referral_team_has_reviewed: Optional[int]
    is_verified: Optional[int] = 0
    send_educational_items: Optional[int]
    last_enriched_at: Optional[datetime]
    parent_external_providers_id: Optional[int]
    verification_status: Optional[str] = "not_started"
    last_verification_email_sent_at: Optional[datetime]
    last_verified_by_nocd_at: Optional[datetime]
    last_verified_by_provider_at: Optional[datetime]
    preferred_contact_method: Optional[str]
    referral_team_notes: Optional[str]
    is_preferred_for_outbound_referrals: Optional[int]
    is_preferred_partner: Optional[int]
    preferred_partner_image_url: Optional[str]
    preferred_partner_description: Optional[str]
    age_range: Optional[Any]
    problem_area: Optional[Any]
    type_of_treatment: Optional[Any]
    accepted_settings: Optional[Any]
    employed_professionals: Optional[Any]
    booking_link: Optional[str]
    website_link: Optional[str]
    preferred_contact_method_note: Optional[str]


class ExternalProvidersFromMembersItem(BaseModel):
    id: int
    external_providers_id: Optional[int]
    npi_number: Optional[str]
    npi_type: Optional[str] = "not_set"
    user_id: int
    name: Optional[str]
    first_name: Optional[str]
    last_name: Optional[str]
    specialty: Optional[str]
    address: Optional[str]
    state: Optional[str]
    country_code: Optional[str]
    phone: Optional[str]
    organization_name: Optional[str]
    source: Optional[str]
    reviewed: Optional[int] = 0
    created_at: datetime = datetime.now()
    created_by: Optional[str]
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    referred_member: Optional[bool]
    reason_working_with: Optional[str]
    sharing_status: Optional[str] = "not_set"


class ExternalProvidersStateCoveragesItem(BaseModel):
    id: int
    provider_id: int
    state_name: str
    coverages: Optional[Any]
    metro_areas: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class FaxLedgerItem(BaseModel):
    id: int
    user_id: int
    job_id: int
    fax_status: str
    fax_metadata: Any
    created_by: str
    created_at: datetime = datetime.now()
    appointment_id: Optional[Any]


class FeatureFlagsItem(BaseModel):
    id: int
    name: Optional[str]
    bool_value: Optional[bool]


class FeedSegmentItem(BaseModel):
    feed_segment_pk: int
    feed_segment_layout_id: int
    prev_segment_guid: Optional[str]
    current_segment_guid: str
    next_segment_guid: Optional[str]
    segment_num: int
    objects_in_segment: int
    less_than: Optional[int]
    dynamic_module_offset: Optional[int]
    debug_json: Optional[Any]


class FeedSegmentLayoutItem(BaseModel):
    segment_layout_id: int
    user_id: int
    device_id: str
    feed_type: Optional[str]
    filter_name: Optional[str]
    content_filter_no_trigger_warnings: Optional[bool] = False
    content_filter_nocd: Optional[bool] = False
    num_items: int = 0
    num_segments: int = 0
    client_filters: Optional[Any]
    limit: int
    dm_spacing: int
    created_at: datetime = datetime.now()


class FeedSegmentLayoutLedgerItem(BaseModel):
    feed_segment_layout_id: int
    user_id: int
    personalization_metadata: Optional[Any]


class FlagStateNotificationsItem(BaseModel):
    id: int
    post_id: int
    target_user_id: int
    sent_notification_id: Optional[str]
    not_sent_reason: Optional[int]
    flag_state: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class FlagsItem(BaseModel):
    id: int
    post_id: int
    category: Optional[str]
    comment: Optional[str]
    reviewed: Optional[bool] = False
    reviewed_by: Optional[str]
    created_by_moderator: Optional[bool] = False
    source_user_id: int
    target_user_id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class FlowdashIdsItem(BaseModel):
    id: int
    workflow: str
    flowdash_id: Optional[str]
    int_pk: Optional[int]
    varchar_pk: Optional[str]
    pk_name: str
    pk_table: str
    created_at: datetime = datetime.now()


class FlywaySchemaHistoryItem(BaseModel):
    installed_rank: int
    version: Optional[str]
    description: str
    type: str
    script: str
    checksum: Optional[int]
    installed_by: str
    installed_on: datetime = datetime.now()
    execution_time: int
    success: bool


class FollowedTopicsItem(BaseModel):
    user_id: int
    topic_id: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class FollowedTopicsPreSubtypesItem(BaseModel):
    user_id: int
    topic_id: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class FollowersItem(BaseModel):
    id: int
    user_id: int
    following_user_id: int
    created_at: datetime = datetime.now()


class FormAutomationLogsItem(BaseModel):
    id: int
    job_start_at: datetime
    user_id: Optional[int]
    log: Optional[str]
    created_at: datetime = datetime.now()


class FormAutomationUserFormCadenceItem(BaseModel):
    id: int
    user_id: int
    created_at_for_3_weeks: Optional[datetime]
    created_at_for_6_weeks: Optional[datetime]
    created_at_for_12_weeks: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class FormAutomationUserFormSettingsItem(BaseModel):
    id: int
    user_id: int
    form_id: int
    created_at: datetime = datetime.now()


class FormSubmissionChangeRequestItem(BaseModel):
    id: int
    request_type: Optional[str]
    requested_by: str
    request_details: str
    additional_details: Optional[str]
    requested_for_user_id: int
    requested_form_id: int
    existing_baseline_form_id: Optional[int]
    archive_replacement_form_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]
    approved_at: Optional[datetime]
    approved_by: Optional[str]
    rejected_at: Optional[datetime]
    rejected_by: Optional[str]
    rejection_reason: Optional[str]
    cancelled_at: Optional[datetime]
    cancelled_by: Optional[str]


class FormSubmissionsItem(BaseModel):
    id: int
    form_id: int
    user_id: int
    appointment_id: Optional[int]
    form_fields_data: Optional[Any]
    form_scores_data: Optional[Any]
    is_completed: Optional[int] = 0
    is_deleted: Optional[int] = 0
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    completed_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_linked_appointment_id: Optional[int]
    due_at: Optional[datetime]
    created_by_form_automation: Optional[int] = 0
    archived_reason: Optional[str]
    is_baseline: Optional[bool]
    created_by: Optional[str]
    updated_by: Optional[str]
    updated_reason: Optional[str]
    deleted_at: Optional[datetime]


class FormSubmissionsCompletedAtBackupItem(BaseModel):
    id: int
    completed_at: Optional[datetime]


class FormSubmissionsLedgerItem(BaseModel):
    id: int
    form_submissions_id: int
    form_id: int
    user_id: int
    appointment_id: Optional[int]
    form_fields_data: Optional[Any]
    form_scores_data: Optional[Any]
    is_completed: Optional[int] = 0
    is_deleted: Optional[int] = 0
    created_by: Optional[str]
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    updated_reason: Optional[str]
    completed_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_linked_appointment_id: Optional[int]
    due_at: Optional[datetime]
    created_by_form_automation: Optional[int] = 0
    archived_reason: Optional[str]
    is_baseline: Optional[bool]
    transaction_type: str


class FormSubmissionsScoresItem(BaseModel):
    id: int
    user_id: Optional[int]
    form_submissions_id: Optional[int]
    subscore_name: Optional[str]
    completed_at: Optional[datetime]
    baseline_completed_at: Optional[datetime]
    score: Optional[float]
    baseline_score: Optional[float]
    score_diff: Optional[float]
    score_diff_perc: Optional[float]
    is_post_baseline: Optional[bool]
    is_baseline: Optional[bool]
    is_deleted: Optional[bool]
    is_primary_computed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class FormsItem(BaseModel):
    id: int
    name: str
    form_fields_schema: Optional[Any]
    form_scoring_function: Optional[str]
    revision_id: int
    status: Optional[str] = "not_live"
    description: Optional[str] = ""
    short_description: Optional[str]
    authorizer: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    form_frequency_in_weeks: Optional[int]


class FormsVersionControlItem(BaseModel):
    id: int
    forms_id: int
    revision_id: int
    form_fields_schema: Optional[Any]
    form_scoring_function: Optional[str]
    authorizer: str
    created_at: datetime = datetime.now()


class FunctionalAssessmentsInterviewFormItem(BaseModel):
    id: int
    user_id: int
    external_or_environmental_triggers: Optional[Any]
    internal_triggers: Optional[Any]
    intrusive_mental_content: Optional[Any]
    completed: Optional[bool] = False
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class GcalSnapshotItem(BaseModel):
    id: int
    email: str
    user_id: Optional[int]
    organizer: Optional[str]
    status: Optional[str]
    title: Optional[str]
    event_type: Optional[str]
    start_date: date
    timerange: Optional[str]
    start_utc: datetime = datetime.now()
    end_utc: datetime = datetime.now()
    minutes: int
    timezone: Optional[str]
    created_at: datetime = datetime.now()


class GeoMappingItem(BaseModel):
    id: int
    state_name: str
    state_abbr: str


class GoalsItem(BaseModel):
    id: int
    userID: int
    scheduledID: str
    staredExposureID: str
    completedSessions: int
    numberOfSessions: int
    currentExerciseChangedGoalTime: float
    currentExerciseGoalTime: float
    defaultGoalTime: float
    goalResistanceTime: float
    incrementTime: float
    startGoalTime: float
    currentGoalEnded: bool
    goalTimeChanged: bool
    goalID: str
    updated: float
    createdDate: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class GoogleCalendarSplitsItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    schedule_date: Optional[date]
    start_schedule_datetime: Optional[datetime]
    end_schedule_datetime: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    day_name: Optional[str] = Field(exclude=True)
    week: Optional[date] = Field(exclude=True)
    cal_id: Optional[str]
    appt_name: Optional[str]


class GpuWorkerMonitorItem(BaseModel):
    id: int
    script: str
    backlog_size: int
    num_workers: int
    created_at: datetime = datetime.now()


class GreenhouseApplicationsItem(BaseModel):
    id: float
    candidate_id: float
    prospect: bool = False
    applied_at: Optional[datetime]
    rejected_at: Optional[datetime]
    last_activity_at: Optional[datetime]
    location: Optional[str]
    source_id: Optional[float]
    source_name: Optional[str]
    credited_to_id: Optional[float]
    credited_to_name: Optional[str]
    rejection_reason_id: Optional[float]
    rejection_reason_name: Optional[str]
    rejection_type_id: Optional[float]
    rejection_type_name: Optional[str]
    rejection_details: Optional[Any]
    job_ids: Optional[Any]
    job_names: Optional[Any]
    job_post_id: Optional[float]
    status: Optional[str]
    current_stage_id: Optional[float]
    current_stage_name: Optional[str]
    answers: Optional[Any]
    prospective_office: Optional[Any]
    prospective_department: Optional[Any]
    prospect_detail: Optional[Any]
    custom_fields: Optional[Any]
    keyed_custom_fields: Optional[Any]
    attachments: Optional[Any]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class GreenhouseCandidatesItem(BaseModel):
    id: float
    first_name: Optional[str]
    last_name: Optional[str]
    company: Optional[str]
    title: Optional[str]
    created_at: Optional[datetime]
    updated_at: Optional[datetime]
    last_activity: Optional[datetime]
    is_private: bool = False
    photo_url: Optional[str]
    attachments: Optional[Any]
    application_ids: Optional[Any]
    phone_numbers: Optional[Any]
    addresses: Optional[Any]
    email_addresses: Optional[Any]
    website_addresses: Optional[Any]
    social_media_addresses: Optional[Any]
    recruiter_id: Optional[float]
    recruiter_name: Optional[str]
    coordinator_id: Optional[float]
    coordinator_name: Optional[str]
    can_email: bool = True
    tags: Optional[Any]
    educations: Optional[Any]
    employments: Optional[Any]
    linked_user_ids: Optional[Any]
    custom_fields: Optional[Any]
    keyed_custom_fields: Optional[Any]
    created_at_local: Optional[datetime] = datetime.now()
    updated_at_local: Optional[datetime] = datetime.now()


class GreenhouseScorecardsItem(BaseModel):
    id: float
    updated_at: Optional[datetime]
    created_at: Optional[datetime]
    interview: Optional[str]
    interview_step_id: Optional[float]
    interview_step_name: Optional[str]
    candidate_id: Optional[float]
    application_id: Optional[float]
    interviewed_at: Optional[datetime]
    submitted_at: Optional[datetime]
    submitted_by_id: Optional[float]
    submitted_by_name: Optional[str]
    interviewer_id: Optional[float]
    interviewer_name: Optional[str]
    overall_recommendation: Optional[str]
    attributes: Optional[Any]
    ratings: Optional[Any]
    questions: Optional[Any]
    key_takeaways: Optional[str]
    private_notes: Optional[str]
    created_at_local: Optional[datetime] = datetime.now()
    updated_at_local: Optional[datetime] = datetime.now()


class GreenhouseWebhooksItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    payload: Optional[Any]
    gh_action: Optional[str] = Field(exclude=True)


class GroupChatDailyModulesItem(BaseModel):
    id: int
    group_id_locked: Optional[str]
    module_text: Optional[str]
    created_at: datetime = datetime.now()


class GroupChatFlagsItem(BaseModel):
    id: int
    message_id: int
    source_user_id: Optional[int]
    is_moderator_flag: Optional[bool] = False
    category: Optional[str]
    comment: Optional[str]
    created_at: datetime = datetime.now()


class GroupChatGroupsItem(BaseModel):
    id: int
    channel_id: str
    name: str
    icon_url: str
    description: Optional[str]
    created_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class GroupChatMembershipsItem(BaseModel):
    id: int
    group_id: int
    user_id: int
    group_chat_notifications: bool = True
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class GroupChatMessagesItem(BaseModel):
    id: int
    trace_id: str
    group_id: int
    user_id: int
    message: Optional[str]
    last_flag_category: Optional[str]
    last_flag_id: Optional[int]
    moderator_reviewed: Optional[bool]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class HealthplanHandlersItem(BaseModel):
    id: int
    plan_name: Optional[str]
    handler_email: Optional[str]


class HiddenPostsItem(BaseModel):
    id: int
    user_id: int
    post_id: int
    created_at: datetime = datetime.now()


class HiddenSystemExerciseMessagesItem(BaseModel):
    id: int
    userID: int
    exposureID: str
    messageTypeID: str
    messageType: str
    message: Optional[str]
    hidden: bool = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class HlocTherapyNoteItem(BaseModel):
    id: int
    user_id: int
    clinician_email: Optional[str]
    note_date: datetime = datetime.now()
    note_reason: Optional[str]
    note_details: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class HolidayCreationLedgerItem(BaseModel):
    id: int
    holiday_id: int
    clinician_email: str
    created_at: datetime = datetime.now()


class HolidaysItem(BaseModel):
    id: int
    date: date
    all_day: bool
    schedule: Optional[str]
    schedule_timezone: Optional[str]
    description: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()


class HomeworkPlanMigrationItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    data_migration_id: int
    record_id: int
    record_table: str


class IcdCodesItem(BaseModel):
    id: int
    code: str
    description: str
    created_by: str
    created_at: datetime = datetime.now()
    is_hidden: Optional[bool] = False
    is_provisional: Optional[bool]
    category: Optional[str]


class IframeEventsItem(BaseModel):
    id: int
    user_id: int
    post_id: Optional[int]
    event_name: str
    event_ts: datetime = datetime.now()


class InAppFeedbackItem(BaseModel):
    id: int
    userID: int
    source: str
    feedback: Optional[str]
    stars: Optional[int]
    popupCancelled: Optional[bool]
    createdAt: datetime = datetime.now()


class InitialYbocsPromptItem(BaseModel):
    user_id: int
    started_at: Optional[datetime]
    skipped_at: Optional[datetime]
    completed_at: Optional[datetime]


class InsuranceRatesItem(BaseModel):
    id: int
    insurance_id: int
    cpt_code: Optional[str]
    degree_type: str
    rate: int
    updated_by: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class InsuranceScheduledRatesItem(BaseModel):
    id: int
    insurance_id: int
    start_date: date = date(2000, 1, 1)
    end_date: date = date(2038, 1, 1)
    cpt_code: Optional[str]
    degree_type: str
    rate: int
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime] = datetime.now()
    updated_by: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    archived_reason: Optional[str]


class InsuranceScheduledRatesLedgerItem(BaseModel):
    id: int
    insurance_scheduled_rates_id: int
    insurance_id: int
    start_date: date = date(2000, 1, 1)
    end_date: date = date(2038, 1, 1)
    cpt_code: Optional[str]
    degree_type: str
    rate: int
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime] = datetime.now()
    updated_by: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    archived_reason: Optional[str]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]
    transaction_type: str


class InsuranceScheduledRatesSimulationItem(BaseModel):
    id: int
    insurance_id: int
    start_date: date = date(2000, 1, 1)
    end_date: date = date(2038, 1, 1)
    cpt_code: Optional[str]
    degree_type: str
    rate: int
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime] = datetime.now()
    updated_by: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    archived_reason: Optional[str]


class InsuranceTagsItem(BaseModel):
    id: int
    tag_name: str
    created_at: datetime = datetime.now()


class IntakeCallsItem(BaseModel):
    id: int
    is_call_in: Optional[bool]
    appointment_id: Optional[str]
    record_id: Optional[str]
    user_id: Optional[int]
    email: Optional[str]
    first_name: Optional[str]
    last_name: Optional[str]
    phone: Optional[str]
    state: Optional[str]
    timezone: Optional[str]
    assigned_to: Optional[str]
    intake_specialist: Optional[str]
    is_child_adolescent: Optional[bool]
    how_did_you_hear_about_nocd: Optional[str]
    app_user: Optional[bool]
    how_do_you_like_the_nocd_app: Optional[str]
    has_insurance: Optional[bool]
    insurance_provider: Optional[str]
    insurance_type: Optional[str]
    school: Optional[str]
    currently_seeing_therapist: Optional[str]
    what_prompted_you_to_reach_out_for_therapy_now: Optional[str]
    notes: Optional[str]
    source: Optional[str]
    label: Optional[str]
    canceled: Optional[bool] = False
    completed: Optional[bool] = False
    last_action: Optional[str]
    scheduled_at: Optional[datetime]
    call_at: Optional[datetime] = datetime.now()
    therapy_appointment_at: Optional[datetime]
    therapy_appointment_timezone: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    call_delay_reason: Optional[str] = ""
    protocol_type: Optional[str]
    billing_notes: Optional[str]
    clinician_email: Optional[str]
    is_deleted: Optional[bool]
    disposition_not_converting: Optional[str]
    intake_specialist_who_last_updated_outcome_label: Optional[str]
    therapy_type_cbt: Optional[bool]
    therapy_type_erp: Optional[bool]
    therapy_type_act: Optional[bool]
    therapy_type_other: Optional[bool]
    therapy_best_describes_you: Optional[str]
    dob: Optional[date]
    responsible_party_first_name: Optional[str]
    responsible_party_last_name: Optional[str]
    responsible_party_relation_to_patient: Optional[str]
    scheduling_reason: Optional[str]
    session_id: Optional[str]
    is_callback: Optional[bool]
    how_did_you_hear_about_nocd_v2: Optional[Any]
    peer_advisor_email: Optional[str]
    country_code: Optional[str]
    greeting_q_1: Optional[int]
    greeting_q_2: Optional[int]
    greeting_q_3: Optional[int]
    greeting_q_4: Optional[int]
    greeting_comment: Optional[str]
    greeting_points_available: Optional[int]
    greeting_points_earned: Optional[int]
    structure_q_1: Optional[int]
    structure_q_2: Optional[int]
    structure_q_3: Optional[int]
    structure_q_4: Optional[int]
    structure_q_5: Optional[int]
    structure_comment: Optional[str]
    structure_points_available: Optional[int]
    structure_points_earned: Optional[int]
    cost_q_1: Optional[int]
    cost_q_2: Optional[int]
    cost_q_3: Optional[int]
    cost_comment: Optional[str]
    cost_points_available: Optional[int]
    cost_points_earned: Optional[int]
    language_and_communication_q_1: Optional[int]
    language_and_communication_q_2: Optional[int]
    language_and_communication_comment: Optional[str]
    language_and_communication_points_available: Optional[int]
    language_and_communication_points_earned: Optional[int]
    service_excellence_q_1: Optional[int]
    service_excellence_q_2: Optional[int]
    service_excellence_q_3: Optional[int]
    service_excellence_comment: Optional[str]
    service_excellence_points_available: Optional[int]
    service_excellence_points_earned: Optional[int]
    doc_q_1: Optional[int]
    doc_comment: Optional[str]
    doc_points_earned: Optional[int]
    closing_q_1: Optional[int]
    closing_q_2: Optional[int]
    closing_q_3: Optional[int]
    closing_q_4: Optional[int]
    closing_comment: Optional[str]
    closing_points_available: Optional[int]
    closing_points_earned: Optional[int]
    doc_points_available: Optional[int]
    audit_enabled: bool = False
    is_self_service: Optional[bool]
    who_are_you_seeking_therapy_for: Optional[str]
    where_are_you_in_your_ocd_journey: Optional[str]
    what_information_do_you_want_from_your_call: Optional[str]
    therapist_preferences: Optional[Any]
    preferred_clinician_user_ids: Optional[Any]
    what_would_you_like_your_therapist_to_help_with: Optional[Any]
    is_biohaven: Optional[bool]
    experience_with_erp: Optional[str]
    subtypes: Optional[str]
    distress_level: Optional[str]
    special_requests: Optional[str]
    preferred_therapy_session_availability: Optional[str]
    partner: Optional[str]
    wants_move_up: Optional[bool]
    initial_metadata: Optional[Any]
    therapist_preference_gender: Optional[str]
    therapist_preference_additional_specialty: Optional[str]
    therapist_preference_cultural_identity: Optional[str]
    therapist_preference_religious_affiliation: Optional[str]
    is_zocdoc: Optional[bool]
    interested_in_sca: bool = False
    therapist_preference_additional_specialty_json: Optional[Any]
    therapist_preference_cultural_identity_json: Optional[Any]
    therapist_preference_religious_affiliation_json: Optional[Any]
    therapist_preference_specific_populations_json: Optional[Any]
    primary_conditions_json: Optional[Any]
    opted_in_to_marketing_sms: Optional[int]
    has_kp_referral: bool = False
    referring_provider: Optional[str]
    using_medicaid_or_medicare: Optional[int]
    scheduling_preferences: Optional[Any]
    preferred_clinician_email: Optional[str]
    hospitalized_recently: Optional[str]
    followup_care_recently: Optional[str]
    intent_self_harm_recently: Optional[str]
    current_intent_self_harm: Optional[str]
    hospital_discharge_date: Optional[date]


class IntakeCallsAuditItem(BaseModel):
    id: int
    intake_calls_id: int
    event: Optional[str]
    assigned_to: Optional[str]
    label: Optional[str]
    author: Optional[str]
    created_at: datetime = datetime.now()


class IntakeCallsInternationalItem(BaseModel):
    id: int
    is_call_in: Optional[bool]
    appointment_id: Optional[str]
    record_id: Optional[str]
    user_id: Optional[int]
    email: Optional[str]
    first_name: Optional[str]
    last_name: Optional[str]
    phone: Optional[str]
    state: Optional[str]
    timezone: Optional[str]
    assigned_to: Optional[str]
    intake_specialist: Optional[str]
    is_child_adolescent: Optional[bool]
    how_did_you_hear_about_nocd: Optional[str]
    app_user: Optional[bool]
    how_do_you_like_the_nocd_app: Optional[str]
    has_insurance: Optional[bool]
    insurance_provider: Optional[str]
    insurance_type: Optional[str]
    school: Optional[str]
    currently_seeing_therapist: Optional[str]
    what_prompted_you_to_reach_out_for_therapy_now: Optional[str]
    notes: Optional[str]
    source: Optional[str]
    label: Optional[str]
    canceled: Optional[bool] = False
    completed: Optional[bool] = False
    last_action: Optional[str]
    scheduled_at: Optional[datetime]
    call_at: Optional[datetime] = datetime.now()
    therapy_appointment_at: Optional[datetime]
    therapy_appointment_timezone: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    call_delay_reason: Optional[str] = ""
    protocol_type: Optional[str]
    billing_notes: Optional[str]
    clinician_email: Optional[str]
    is_deleted: Optional[bool]
    disposition_not_converting: Optional[str]
    intake_specialist_who_last_updated_outcome_label: Optional[str]
    therapy_type_cbt: Optional[bool]
    therapy_type_erp: Optional[bool]
    therapy_type_act: Optional[bool]
    therapy_type_other: Optional[bool]
    therapy_best_describes_you: Optional[str]
    dob: Optional[date]
    responsible_party_first_name: Optional[str]
    responsible_party_last_name: Optional[str]
    responsible_party_relation_to_patient: Optional[str]
    scheduling_reason: Optional[str]
    session_id: Optional[str]
    is_callback: Optional[bool]
    how_did_you_hear_about_nocd_v2: Optional[Any]
    peer_advisor_email: Optional[str]
    country_code: Optional[str]
    greeting_q_1: Optional[int]
    greeting_q_2: Optional[int]
    greeting_q_3: Optional[int]
    greeting_q_4: Optional[int]
    greeting_comment: Optional[str]
    greeting_points_available: Optional[int]
    greeting_points_earned: Optional[int]
    structure_q_1: Optional[int]
    structure_q_2: Optional[int]
    structure_q_3: Optional[int]
    structure_q_4: Optional[int]
    structure_q_5: Optional[int]
    structure_comment: Optional[str]
    structure_points_available: Optional[int]
    structure_points_earned: Optional[int]
    cost_q_1: Optional[int]
    cost_q_2: Optional[int]
    cost_q_3: Optional[int]
    cost_comment: Optional[str]
    cost_points_available: Optional[int]
    cost_points_earned: Optional[int]
    language_and_communication_q_1: Optional[int]
    language_and_communication_q_2: Optional[int]
    language_and_communication_comment: Optional[str]
    language_and_communication_points_available: Optional[int]
    language_and_communication_points_earned: Optional[int]
    service_excellence_q_1: Optional[int]
    service_excellence_q_2: Optional[int]
    service_excellence_q_3: Optional[int]
    service_excellence_comment: Optional[str]
    service_excellence_points_available: Optional[int]
    service_excellence_points_earned: Optional[int]
    doc_q_1: Optional[int]
    doc_comment: Optional[str]
    doc_points_earned: Optional[int]
    closing_q_1: Optional[int]
    closing_q_2: Optional[int]
    closing_q_3: Optional[int]
    closing_q_4: Optional[int]
    closing_comment: Optional[str]
    closing_points_available: Optional[int]
    closing_points_earned: Optional[int]
    doc_points_available: Optional[int]
    audit_enabled: bool = False
    is_self_service: Optional[bool]
    who_are_you_seeking_therapy_for: Optional[str]
    where_are_you_in_your_ocd_journey: Optional[str]
    what_information_do_you_want_from_your_call: Optional[str]
    therapist_preferences: Optional[Any]
    preferred_clinician_user_ids: Optional[Any]
    what_would_you_like_your_therapist_to_help_with: Optional[Any]
    is_biohaven: Optional[bool]
    experience_with_erp: Optional[str]
    subtypes: Optional[str]
    distress_level: Optional[str]
    special_requests: Optional[str]
    preferred_therapy_session_availability: Optional[str]
    partner: Optional[str]
    wants_move_up: Optional[bool]
    initial_metadata: Optional[Any]
    opted_in_to_marketing_sms: Optional[int]


class IntakeCallsRubricItem(BaseModel):
    id: int
    user_id: int
    agent_email: str
    intake_call_id: int
    talkdesk_call_id: str
    rubric_scores: Optional[Any]
    predicted_rubric_scores: Optional[Any]
    created_by: str
    reviewed_by: Optional[str]
    conversation_id: Optional[str]
    trained_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class IntakeConquerorMilestonesItem(BaseModel):
    id: int
    milestone: int
    agent_email: str
    achieved_at: Optional[datetime]
    celebrated_at: Optional[datetime]
    created_at: datetime = datetime.now()


class IntakeInsurancesItem(BaseModel):
    id: int
    insurance: str
    insurance_tags_ids: Optional[Any]
    created_at: datetime = datetime.now()
    financial_class_code: Optional[str]
    additional_notes: Optional[str]
    plan_manager: Optional[str] = "-"
    apero_trading_partner_id: Optional[str]
    customer: Optional[str]
    fee_schedule_plan: Optional[str]
    fee_schedule_plan_id: Optional[int]
    days_to_invoice_claim: Optional[int]
    created_by: str
    updated_at: Optional[datetime] = datetime.now()
    updated_by: Optional[str]
    skip_manual_cancels: Optional[bool]
    medicare: Optional[bool]
    medicaid: Optional[bool]
    facility_id: Optional[str]
    contract_name: Optional[str]
    avg_remit_time_in_days: Optional[int]
    region: Optional[str]
    short_name: Optional[str]
    external_display_name: Optional[str]


class IntakePromotionsItem(BaseModel):
    id: int
    name: str
    number_of_months_promotion_lasts: int = 1
    min_30_rate: int = 100
    min_45_rate: int = 200
    min_60_rate: int = 300
    created_by: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]
    min_90_rate: int = 400
    is_indefinite: bool = False


class InterestCategoriesItem(BaseModel):
    id: int
    name: str
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()


class InterestsItem(BaseModel):
    id: int
    interest: str
    category_id: Optional[int]
    is_deleted: Optional[int] = 0
    created_at: datetime = datetime.now()


class InternalMeetingTranscriptionsItem(BaseModel):
    id: int
    meeting_name: Optional[str]
    meeting_description: Optional[str]
    participants: Optional[Any]
    transcript: Optional[Any]
    generated_note: Optional[str]
    transcription_status: Optional[str]
    transcription_errors: Optional[str]
    generated_note_status: Optional[str]
    trace_id: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class InternalRemindersItem(BaseModel):
    id: int
    reminder_url: Optional[str]
    reminder_text: str
    reminder_team: Optional[str]
    reminder_date: datetime
    completed_date: Optional[datetime]
    member_id: Optional[int]
    clinician_email: Optional[str]
    reminder_intent: Optional[str]
    reminder_intent_description: Optional[str]
    reminder_assigned_to: Optional[str]
    created_by: str
    updated_by: str
    last_updated: datetime


class InternalRemindersHistoryItem(BaseModel):
    id: int
    version: int
    reminder_url: Optional[str]
    reminder_text: str
    reminder_team: Optional[str]
    reminder_date: datetime
    completed_date: Optional[datetime]
    member_id: Optional[int]
    clinician_email: Optional[str]
    reminder_intent: Optional[str]
    reminder_intent_description: Optional[str]
    reminder_assigned_to: Optional[str]
    created_by: str
    updated_by: str
    last_updated: datetime


class IterableSyncItem(BaseModel):
    id: int
    sync_type: Optional[str]
    sync_name: Optional[str]
    reference_id: Optional[int]
    user_id: Optional[int]
    user_email: Optional[str]
    sync_value: Optional[str]
    sync_status: str = "NOT_STARTED"
    sync_priority: Optional[int] = 0
    sync_order: Optional[int] = 0
    sync_attempt: Optional[int] = 0
    synced: Optional[bool] = False
    synced_at: Optional[datetime]
    created_at: datetime = datetime.now()


class KaiserExpiredSchedulingAlertsItem(BaseModel):
    id: int
    member_id: int
    member_billing_coverages_id: Optional[int]
    member_insurance_authorizations_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()


class KaiserNonMemberReferralErrorsItem(BaseModel):
    id: int
    ticket_url: Optional[str]
    first_name: Optional[str]
    last_name: Optional[str]
    phone_number_raw: Optional[str]
    error_reason: Optional[str]
    created_at: datetime = datetime.now()
    resolved_at: Optional[datetime]


class KaiserRenewalAdminSentLogItem(BaseModel):
    id: int
    kaiser_renewal_clinician_submissions_id: int
    member_id: int
    clinician_id: int
    sent_to: str
    subject_line: str
    body: str
    created_by: str
    created_at: datetime = datetime.now()


class KaiserRenewalClinicianSubmissionsItem(BaseModel):
    id: int
    billing_coverage_id: int
    member_id: int
    clinician_id: int
    dsm_5_diagnoses: str
    symptoms_and_impairments: str
    attendance_compliance: str
    measurable_progress: str
    sessions_smart_usage: str
    sent_to_kaiser: Optional[bool] = False
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class KpRenewalRequestFormsItem(BaseModel):
    id: int
    date_filled: date
    provider_name: str
    provider_phone_number: str
    patient_name: str
    patient_dob: date
    patient_mrn: int
    start_date: date
    request_reason: str
    specifications_for_request_reason: str
    diagnosis: Optional[str]
    symptoms: Optional[str]
    attendance: Optional[str]
    progress: Optional[str]
    smart_goals: Optional[str]
    completed_at: datetime
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class LandingPageVisitorsItem(BaseModel):
    id: int
    category: Optional[str]
    traceID: str
    calendly: Optional[bool]
    ipAddress: str
    country: Optional[str]
    state: Optional[str]
    utmSource: str
    utmMedium: str
    utmCampaign: str
    keyword: Optional[str]
    email: Optional[str]
    alreadyAppUser: Optional[bool]
    becameAppUser: Optional[bool]
    submitted: Optional[bool]
    referred: Optional[bool]
    createdAt: datetime = datetime.now()


class LastAppOpensItem(BaseModel):
    id: int
    deviceID: str
    sessionID: str
    userID: Optional[int]
    deviceType: str
    bundleName: str
    version: str
    buildID: str
    modelName: str
    osVersion: str
    locale: Optional[str]
    timezone: Optional[str]
    ipAddress: str
    country: Optional[str]
    state: Optional[str]
    city: Optional[str]
    zip: Optional[str]
    latitude: Optional[float]
    longitude: Optional[float]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    xCFip: Optional[str]
    xForwarded: Optional[str]
    remote: Optional[str]


class LifetimeTokenStorageItem(BaseModel):
    token_type: str
    token: str
    expires_at: datetime
    set_at: datetime = datetime.now()


class LikesItem(BaseModel):
    id: int
    post_id: int
    source_user_id: int
    target_user_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class LinkedAccountAuditItem(BaseModel):
    id: int
    root_account_user_id: int
    connected_account_user_id: int
    event_name: str
    created_at: datetime = datetime.now()
    created_by: str


class LinkedAccountRelationItem(BaseModel):
    id: int
    root_account_user_id: int
    connected_account_user_id: int
    access_level: Optional[str] = "login_enabled"
    created_at: datetime = datetime.now()
    created_by_type: Optional[str] = "other"
    created_by_meta: str
    is_deleted: Optional[bool]
    deleted_by_type: Optional[str] = "other"
    deleted_by_meta: Optional[str]
    deleted_at: Optional[datetime]


class LinksClickedAtItem(BaseModel):
    id: int
    ipAddress: str
    country: Optional[str]
    state: Optional[str]
    link_info: str
    timestamp: datetime = datetime.now()


class LoginAuditItem(BaseModel):
    id: int
    ip_address: str
    email: str
    status: str
    created_at: datetime = datetime.now()


class MaCrmTaskItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    is_deleted: Optional[bool]
    task_type: Optional[int]
    task_title: Optional[str]
    task_summary: Optional[str]
    task_notes: Optional[str]
    user_id: int
    assigned_peer_advisor_id: Optional[int]
    reason_not_converting: Optional[str]
    re_target_channel: Optional[str]
    re_target_note: Optional[str]
    follow_up_date: Optional[date]


class ManualRevenueRecognitionItem(BaseModel):
    id: int
    ma_id: Optional[int]
    amount: int
    created_at: datetime = datetime.now()
    created_by: str
    created_note: Optional[str]


class MarketingCampaignCallTypesItem(BaseModel):
    id: int
    slug: str
    title: str
    description: Optional[str]
    duration_in_mins: int
    slack_channel_id: Optional[str]
    assembled_activity_type: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]


class MarketingCampaignCallsItem(BaseModel):
    id: int
    user_id: int
    call_type_id: int
    start_ts: datetime
    timezone: str
    data: Optional[Any]
    host: str
    gcal_event_id: Optional[str]
    override_id: Optional[int]
    created_by: str
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class MarketingSpendItem(BaseModel):
    id: int
    spend: Optional[float]
    created_at: datetime


class MeetupTypesItem(BaseModel):
    id: int
    title: str
    day_of_week: int
    start_time: str
    description: Optional[str]
    duration: Optional[int]
    capacity: Optional[int]
    is_deleted: Optional[int] = 0
    created_at: datetime = datetime.now()
    internal_name: str
    timezone: Optional[str] = "America/Chicago"
    is_alumni_only: Optional[int] = 0
    is_pre_therapy_only: Optional[int] = 0
    cover_image_url: Optional[str]
    is_conqueror_only: Optional[int] = 0


class MeetupsItem(BaseModel):
    id: int
    meetup_type_id: int
    title: str
    start_ts: datetime
    end_ts: datetime
    description: Optional[str]
    host_email: str
    zoom_link: str
    capacity: Optional[int]
    duration: Optional[int]
    day_of_week: int
    timezone: Optional[str] = "America/Chicago"
    is_deleted: Optional[int] = 0
    created_at: datetime = datetime.now()
    event_id: Optional[str]
    gcal_id: Optional[str]
    zoom_id: Optional[str]
    zoom_password: Optional[str]
    cover_image_url: Optional[str]


class MeetupsSignupsItem(BaseModel):
    id: int
    email: str
    phone: str
    name: str
    user_id: Optional[int]
    meetup_id: int
    f_24hr_reminder_sent: Optional[int] = Field(alias="24hr_reminder_sent", default=0)
    f_24hr_reminder_sent_at: Optional[datetime] = Field(alias="24hr_reminder_sent_at")
    is_deleted: Optional[int] = 0
    created_at: datetime = datetime.now()
    f_1hr_reminder_sent: Optional[int] = Field(alias="1hr_reminder_sent", default=0)
    f_1hr_reminder_sent_at: Optional[datetime] = Field(alias="1hr_reminder_sent_at")
    meetups_subscriptions_id: Optional[int]
    attended: Optional[bool]


class MeetupsSubscriptionsItem(BaseModel):
    id: int
    email: str
    phone: str
    name: str
    user_id: Optional[int]
    meetup_type_id: int
    subscription_start_ts: datetime
    subscription_end_ts: Optional[datetime]
    is_canceled: Optional[int] = 0
    created_at: datetime = datetime.now()


class MemberAdvocateMarketingQuestionsItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    member_advocate_id: int
    question: str
    answer: str


class MemberAppointmentBillingDetailsItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: int
    billing_plan: Optional[str]
    billing_contact_name: Optional[str]
    billing_contact_email: Optional[str]
    billing_contact_phone: Optional[str]
    billing_contact_relation_to_patient: Optional[str]
    billing_cash_pay_payment_terms: Optional[str]
    billing_cash_pay_payment_plan: Optional[str]
    billing_cash_pay_90_min: Optional[str]
    billing_cash_pay_60_min: Optional[str]
    billing_cash_pay_45_min: Optional[str]
    billing_cash_pay_30_min: Optional[str]
    billing_cash_pay_special_payment_terms: Optional[str]
    billing_ins_carrier: Optional[str]
    billing_ins_plan_type: Optional[str]
    billing_ins_group_number: Optional[str]
    billing_ins_sub_first_name: Optional[str]
    billing_ins_sub_last_name: Optional[str]
    billing_ins_sub_dob: Optional[str]
    billing_ins_sub_member_id: Optional[str]
    billing_ins_sub_relation_to_patient: Optional[str]
    billing_ins_coverage: Optional[str]


class MemberAppointmentBillsItem(BaseModel):
    id: int
    user_id: int
    appointment_id: Optional[int]
    charge_timestamp: datetime
    charge_amount: str
    charge_authorizer: str
    billing_notes: str
    billing_label: str
    billing_completed: Optional[bool]
    created_at: datetime = datetime.now()


class MemberAppointmentsItem(BaseModel):
    id: int
    user_id: int
    event_id: Optional[str]
    clinician_email: Optional[str]
    appointment_date: Optional[datetime]
    appointment_type: Optional[str]
    needs_audit: Optional[bool]
    notes: Optional[str]
    diagnosed_with_ocd: Optional[bool]
    diamond_distress_score: Optional[int]
    diamond_functional_score: Optional[int]
    diamond_severity_score: Optional[int]
    dass_depression: Optional[int]
    dass_anxiety: Optional[int]
    dass_stress: Optional[int]
    docs_severity: Optional[int]
    next_step: Optional[str]
    discharge: Optional[bool]
    session_length: Optional[str]
    session_length_int: Optional[date] = Field(exclude=True)
    completion_info: Optional[str]
    billing_complete: Optional[bool]
    created_at: datetime = datetime.now()
    has_scores: Optional[str]
    qles: Optional[int]
    start_ts: Optional[datetime]
    end_ts: Optional[datetime]
    start_time_in_iso8601_utc: Optional[str]
    end_time_in_iso8601_utc: Optional[str]
    session_type: Optional[str]
    protocol_type: Optional[str]
    gcal_id: Optional[str]
    zoom_id: Optional[str]
    zoom_join_link: Optional[str]
    zoom_password: Optional[str]
    appointment_state: Optional[str]
    clinician_signed_email: Optional[str]
    rescheduled_signed_email: Optional[str]
    member_takeaway_notes: Optional[str]
    successfully_completed_and_billable: Optional[bool]
    completion_at: Optional[datetime]
    rescheduled_at: Optional[datetime]
    needs_clinical_review: Optional[bool]
    needs_billing_review: Optional[bool]
    needs_clinical_review_notes: Optional[str]
    needs_billing_review_notes: Optional[str]
    needs_review_notes: Optional[str]
    rescheduled_review_notes: Optional[str]
    bg_diagnostics_id: Optional[int]
    bg_reported_current_address: Optional[str]
    bg_address_setter: Optional[str]
    bg_followup_changes_to_medication: Optional[str]
    bg_followup_changes_to_medication_text: Optional[str]
    bg_followup_changes_to_doctor_visits: Optional[str]
    bg_followup_changes_to_doctor_visits_text: Optional[str]
    medical_within_normal_limits: Optional[bool]
    medical_json: Optional[Any]
    risk_assessment_json: Optional[Any]
    summary_start_time: Optional[datetime]
    summary_end_time: Optional[datetime]
    summary_present_json: Optional[Any]
    summary_present_other: Optional[str]
    summary_icd_json: Optional[Any]
    summary_cpt: Optional[str]
    summary_private_notes: Optional[str]
    summary_private_notes_rich: Optional[Any]
    summary_appropriate_for_nocd: Optional[str]
    summary_types_of_treatment_erp: Optional[bool]
    summary_types_of_treatment_other: Optional[str]
    summary_treatment_goals: Optional[Any]
    summary_treatment_response: Optional[str]
    summary_not_continuing_nocd_plan: Optional[str]
    summary_not_continuing_nocd_text: Optional[str]
    summary_treatment_progress: Optional[bool]
    billing_state: Optional[str] = "not_billed"
    admd_visit_id: Optional[int]
    medical_additional_comments: Optional[str]
    cancellation_info: Optional[str]
    rescheduled_info: Optional[str]
    cancelled_via_reschedule: Optional[bool]
    clinician_compensated: Optional[str]
    rescheduled_to: Optional[int]
    has_forms: Optional[bool]
    clinical_forms_diamond_adult_id: Optional[int]
    clinical_forms_diamond_youth_id: Optional[int]
    clinical_forms_dass21_id: Optional[int]
    clinical_forms_docs_id: Optional[int]
    clinical_forms_qles_id: Optional[int]
    amd_appt_backfill: Optional[str]
    override_cpt: Optional[str]
    override_cpt_by: Optional[str]
    claim_status: Optional[str]
    claim_reference_id: Optional[str]
    cancellation_ts: Optional[datetime]
    cancellation_author: Optional[str]
    booked_author: Optional[str]
    autoinvoice_id: Optional[int]
    docs_symmetry_score: Optional[int]
    docs_unacceptable_thoughts_score: Optional[int]
    docs_responsibility_score: Optional[int]
    docs_contamination_score: Optional[int]
    gcal_backstop_id: Optional[str]
    use_backstop: Optional[bool]
    back_stop_value: Optional[int]
    note_version: Optional[str]
    apero_visit_id: Optional[str]
    summary_icd_specifiers_text: Optional[str]
    bg_reported_current_state: Optional[str]
    apero_lineitem_id: Optional[str]
    member_billing_details_id: Optional[int]
    canadian_masters_level: Optional[bool]
    canadian_diagnostic_info: Optional[str]
    member_billing_coverage_id: Optional[int]
    cancellation_reason: Optional[str]
    cancellation_reason_detail: Optional[str]
    needs_service_team_to_reschedule: Optional[bool]
    cancelled_within_24_hours: Optional[bool]
    cancelled_waive_late_fee: Optional[bool]
    cancelled_waive_late_fee_reason: Optional[str]
    cancelled_waive_late_fee_reason_notes: Optional[str]
    canadian_province: Optional[str]
    sign_note_session_length: Optional[str]
    reviewed_assessments_with_member: Optional[bool] = False
    zocdoc_booked: Optional[bool]
    apero_claim_status: Optional[str]
    apero_claim_errors: Optional[str]
    apero_finalized_at: Optional[str]
    zocdoc_location_id: Optional[int]
    initial_appt_id: Optional[int]
    needs_service_team_to_reschedule_status: Optional[str]
    therapy_case_type: Optional[str]
    needs_supervisor_review: Optional[int] = 0
    requested_supervisor: Optional[str]
    billing_state_reason: Optional[str]
    review_requested_by: Optional[str]
    review_requested_at: Optional[datetime]
    ignore_appt_reason: Optional[str]
    ehr_origin_source: Optional[str] = "nocd_ehr"
    authorizer: Optional[str]
    apero_eligibility_checks_id: Optional[int]
    member_billing_coverage_override: Optional[str]
    updated_at: datetime = datetime.now()
    diamond_severity_score_max: Optional[int]
    cpt_manual_review_reason: Optional[str]
    is_transfer_session: Optional[bool]
    copay_charged_at: Optional[datetime]
    primary_icd_code: Optional[str]
    is_initial_assessments_created: Optional[int] = 0
    summary_types_of_treatment_hrt: Optional[bool]
    is_assessments_refused_to_complete: Optional[int]
    assessments_refused_to_complete_notes: Optional[str]
    scheduling_frequency: Optional[str]
    therapy_case_type_details: Optional[str]
    supervisor_review_status: Optional[str]
    completed_timezone: Optional[str]
    completed_start_ts_in_member_timezone: Optional[datetime] = Field(exclude=True)
    completed_start_ts_date_in_member_timezone: Optional[date] = Field(exclude=True)
    start_ts_in_chicago_timezone: Optional[datetime] = Field(exclude=True)
    appt_day_in_chicago_tz: Optional[date] = Field(exclude=True)
    appt_day_int: Optional[int] = Field(exclude=True)
    appt_day_name_in_chicago_tz: Optional[str] = Field(exclude=True)
    appt_week_in_chicago_tz: Optional[date] = Field(exclude=True)
    appt_month_in_chicago_tz: Optional[date] = Field(exclude=True)
    appt_month_int: Optional[int] = Field(exclude=True)
    appt_year_in_chicago_tz: Optional[date] = Field(exclude=True)
    start_ts_date_in_chicago_timezone: Optional[date] = Field(exclude=True)
    start_ts_in_chicago_dayname: Optional[str] = Field(exclude=True)
    start_ts_date: Optional[date] = Field(exclude=True)
    start_ts_month: Optional[date] = Field(exclude=True)
    start_ts_dayname: Optional[str] = Field(exclude=True)
    type_of_medication_referral: Optional[str]
    medication_referral_notes: Optional[str]
    medication_referral_settings_preference: Optional[str]
    interested_in_medication_referral: Optional[int]
    requires_psychotic_treatment: Optional[int]
    actively_suicidal: Optional[int]
    psych_hospital_in_last_six_months: Optional[int]
    member_has_medicaid: Optional[int]
    secondary_icd_codes: Optional[Any]
    availability_score: Optional[float]
    send_cancel_follow_up: Optional[int]
    medication_referral_preferred_times: Optional[Any]
    talk_about_psychiatric_consultation: Optional[str]
    therapist_would_like_to_refer_member: Optional[str]
    agree_to_increase_scheduling_frequency: Optional[str]
    talk_about_psychiatric_consultation_text: Optional[str]
    therapist_would_like_to_refer_member_text: Optional[str]
    agree_to_increase_scheduling_frequency_text: Optional[str]
    ma_clinician_timezone: Optional[str]
    ma_clinician_start_ts: Optional[datetime]
    ma_clinician_end_ts: Optional[datetime]
    ma_clinician_appt_day: Optional[date]
    is_confirmed_diamond_assessment: Optional[bool]
    member_reviewed_waived_late_fee: Optional[bool]
    is_reviewed_summary_private_notes: Optional[int]
    not_late_reason: Optional[str]
    provisional_icd_code_json: Optional[Any]
    provisional_referral_needed: Optional[str]
    needs_diagnosis_approval: Optional[bool] = False
    diagnosis_approval_status: Optional[str]
    send_post_assessment_summary: Optional[bool]
    is_will_assess_count_disabled: Optional[int]
    will_assess_count_disabled_notes: Optional[str]
    medication_referral_metro_area: Optional[str]
    columbia_risk_protective_factors: Optional[Any]
    columbia_high_risk: Optional[Any]
    suicidal_behavior_form_id: Optional[int]
    homicidal_risk_assessment: Optional[Any]
    booked_during_co_therapy: Optional[int] = 0
    is_next_session_exceeding_days: Optional[bool]
    next_session_exceeding_days_reason: Optional[str]
    attempted_care_coordination: Optional[str]
    attempted_care_coordination_providers: Optional[Any]
    attempted_care_coordination_other: Optional[str]
    attempted_care_coordination_reason: Optional[str]
    treatment_plan_version: Optional[int]
    non_clinical_time_spent_in_mins: Optional[int]
    non_clinical_time_reason: Optional[str]
    is_fs_with_clinician: Optional[int]
    confirm_icd_codes_correct: Optional[int]
    non_bulk_scheduled_reason: Optional[str]
    bundle_participant_identifier_id: Optional[int]
    bundle_period_config_id: Optional[int]


class MemberAppointmentsAuditLogItem(BaseModel):
    id: int
    appointment_id: int
    updated_by: str
    updated_by_reason: Optional[str]
    updated_fields: Optional[Any]
    prior_data: Optional[Any]
    current_data: Optional[Any]
    created_at: datetime = datetime.now()


class MemberAppointmentsBillingStateChangeItem(BaseModel):
    id: int
    ma_id: int
    user_id: int
    old_billing_state: str
    new_billing_state: str
    changed_at: datetime = datetime.now()


class MemberAppointmentsCalendarIcsItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    event_ics: Optional[str]
    created_at: datetime = datetime.now()


class MemberAppointmentsLogItem(BaseModel):
    id: int
    member_appointment_id: str
    clinician_email: str
    member_user_id: int
    session_type: Optional[str]
    start_ts: datetime
    diagnostic_timezone: Optional[str]
    clinician_timezone: Optional[str]
    created_at: datetime = datetime.now()
    is_bulk_booking: Optional[int] = 0


class MemberAppointmentsRemindersItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: int
    created_reminder_sent_at: Optional[datetime]
    created_reminder_channels: Optional[Any]
    now_reminder_sent_at: Optional[datetime]
    now_reminder_channels: Optional[Any]
    f_30_min_reminder_sent_at: Optional[datetime] = Field(
        alias="30_min_reminder_sent_at"
    )
    f_30_min_reminder_channels: Optional[Any] = Field(alias="30_min_reminder_channels")
    f_1hr_reminder_sent_at: Optional[datetime] = Field(alias="1hr_reminder_sent_at")
    f_1hr_reminder_channels: Optional[Any] = Field(alias="1hr_reminder_channels")
    f_24hr_reminder_sent_at: Optional[datetime] = Field(alias="24hr_reminder_sent_at")
    f_24hr_reminder_channels: Optional[Any] = Field(alias="24hr_reminder_channels")
    f_48hr_reminder_sent_at: Optional[datetime] = Field(alias="48hr_reminder_sent_at")
    f_48hr_reminder_channels: Optional[Any] = Field(alias="48hr_reminder_channels")
    created_at: datetime = datetime.now()
    f_3_day_peer_support_sent_at: Optional[datetime] = Field(
        alias="3_day_peer_support_sent_at"
    )
    f_3_day_peer_support_channels: Optional[Any] = Field(
        alias="3_day_peer_support_channels"
    )
    f_1_day_confirmation_sent_at: Optional[datetime] = Field(
        alias="1_day_confirmation_sent_at"
    )
    f_1_day_confirmation_channels: Optional[Any] = Field(
        alias="1_day_confirmation_channels"
    )
    final_appointment_confirmation: Optional[bool]
    session_survey_sent_at: Optional[datetime]
    session_survey_channels: Optional[Any]
    follow_up_sent_at: Optional[datetime]
    follow_up_channels: Optional[Any]
    f_14_day_peer_support_sent: Optional[bool] = Field(alias="14_day_peer_support_sent")
    manual_reminder_sent: Optional[bool]
    session_survey_sent_success: Optional[bool]
    f_3_day_peer_support_sent_success: Optional[bool] = Field(
        alias="3_day_peer_support_sent_success"
    )
    f_72hr_reminder_sent_at: Optional[datetime] = Field(alias="72hr_reminder_sent_at")
    f_72hr_reminder_channels: Optional[Any] = Field(alias="72hr_reminder_channels")
    f_5_day_reminder_sent_at: Optional[datetime] = Field(alias="5_day_reminder_sent_at")
    f_5_day_reminder_channels: Optional[Any] = Field(alias="5_day_reminder_channels")
    f_7_day_reminder_sent_at: Optional[datetime] = Field(alias="7_day_reminder_sent_at")
    f_7_day_reminder_channels: Optional[Any] = Field(alias="7_day_reminder_channels")
    get_ready_reminder_sent_at: Optional[datetime]
    get_ready_reminder_channels: Optional[Any]
    insurance_reminder_sent_at: Optional[datetime]
    insurance_reminder_channels: Optional[Any]
    same_day_reminder_sent_at: Optional[datetime]
    same_day_reminder_channels: Optional[Any]
    f_4_day_reminder_sent_at: Optional[datetime] = Field(alias="4_day_reminder_sent_at")
    f_4_day_reminder_channels: Optional[Any] = Field(alias="4_day_reminder_channels")
    f_6_day_reminder_sent_at: Optional[datetime] = Field(alias="6_day_reminder_sent_at")
    f_6_day_reminder_channels: Optional[Any] = Field(alias="6_day_reminder_channels")
    cancel_follow_up_1_sent_at: Optional[datetime]
    cancel_follow_up_2_sent_at: Optional[datetime]


class MemberAppointmentsRequestsItem(BaseModel):
    id: int
    user_id: int
    clinician_email: str
    appointment_type: Optional[str]
    slot_one: datetime
    slot_two: Optional[datetime]
    slot_three: Optional[datetime]
    duration_in_minutes: Optional[int]
    created_at: datetime = datetime.now()
    created_by: Optional[str]
    accepted_at: Optional[datetime]
    appt_id: Optional[int]
    archived_at: Optional[datetime]
    archived_by: Optional[str]


class MemberApptsItem(BaseModel):
    id: int
    visit_number: int
    patient_name: Optional[str]
    patient_email: Optional[str]
    provider_name: Optional[str]
    appt_status: Optional[str]
    appt_date: Optional[datetime]
    appt_type: Optional[str]
    diamond_severity_score: Optional[int]
    dass_depression: Optional[int]
    dass_anxiety: Optional[int]
    dass_stress: Optional[int]
    docs_severity: Optional[int]


class MemberAuthUtilizationItem(BaseModel):
    id: int
    user_id: int
    authorization_id: int
    cpt_code: int
    authorized_units: int
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]


class MemberBillingCoveragesItem(BaseModel):
    id: int
    user_id: int
    start_date_utc: datetime
    end_date_utc: datetime
    plan: Optional[str]
    cash_pay_90_min: Optional[int]
    cash_pay_60_min: Optional[int]
    cash_pay_45_min: Optional[int]
    cash_pay_30_min: Optional[int]
    currency: Optional[str] = "USD"
    insurance_id_primary: Optional[int]
    insurance_id_secondary: Optional[int]
    insurance_id_tertiary: Optional[int]
    notes: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    coverage_status: Optional[str]
    archived_reason: Optional[str]
    promotion_name: Optional[str]
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]
    is_pending_renewal: Optional[bool]


class MemberBillingFlagLedgerItem(BaseModel):
    id: int
    user_id: int
    billing_flag_type: Optional[str]
    billing_flag_reason: Optional[Any]
    created_by: str
    created_at: datetime = datetime.now()
    resolved_by: Optional[str]
    resolved_at: Optional[datetime]


class MemberBillingFlagLogItem(BaseModel):
    id: int
    user_id: int
    high_balance_status: Optional[bool] = False
    last_charge_status: Optional[bool] = False
    flag_updated: str
    created_at: datetime = datetime.now()
    created_by: Optional[str]


class MemberBillingInsurancesItem(BaseModel):
    id: int
    user_id: int
    insurance_id: Optional[int]
    behavioral_health_insurance_id: Optional[int]
    claim_submission_insurance_id: Optional[int]
    insurance_rates_id: Optional[int]
    state_insurance_id: Optional[int]
    provider: Optional[str]
    carrier: Optional[str]
    plan_type: Optional[str]
    sub_member_id: Optional[str]
    sub_group_number: Optional[str]
    sub_relation_to_patient: Optional[str] = "Self"
    sub_first_name: Optional[str]
    sub_last_name: Optional[str]
    sub_dob: Optional[date]
    sub_gender: Optional[str]
    coverage: Optional[str]
    dependent_relation_to_sub: Optional[str]
    dependent_first_name: Optional[str]
    dependent_last_name: Optional[str]
    dependent_dob: Optional[date]
    dependent_gender: Optional[str]
    prior_auth: Optional[str]
    currency: str = "USD"
    deductible_cents: Optional[int]
    copay_cents: Optional[int]
    coinsurance_cents: Optional[int]
    apero_coverage_id: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    single_case_agreement: Optional[bool]
    archived_reason: Optional[str]
    is_eligible: Optional[bool]
    apero_eligibility_id: Optional[str]
    is_medicaid_plan: Optional[bool]
    is_medicare_plan: Optional[bool]
    sub_address: Optional[str]
    sub_city: Optional[str]
    sub_state: Optional[str]
    sub_zip_code: Optional[str]
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]
    in_network_email_sent: Optional[bool] = False


class MemberBillingInsurancesLedgerItem(BaseModel):
    id: int
    member_insurance_id: int
    user_id: int
    insurance_id: Optional[int]
    behavioral_health_insurance_id: Optional[int]
    state_insurance_id: Optional[int]
    provider: Optional[str]
    carrier: Optional[str]
    plan_type: Optional[str]
    sub_member_id: Optional[str]
    sub_group_number: Optional[str]
    sub_relation_to_patient: Optional[str] = "Self"
    sub_first_name: Optional[str]
    sub_last_name: Optional[str]
    sub_dob: Optional[date]
    sub_gender: Optional[str]
    sub_address: Optional[str]
    sub_city: Optional[str]
    sub_state: Optional[str]
    sub_zip_code: Optional[str]
    coverage: Optional[str]
    dependent_relation_to_sub: Optional[str]
    dependent_first_name: Optional[str]
    dependent_last_name: Optional[str]
    dependent_dob: Optional[date]
    dependent_gender: Optional[str]
    prior_auth: Optional[str]
    currency: str = "USD"
    deductible_cents: Optional[int]
    copay_cents: Optional[int]
    coinsurance_cents: Optional[int]
    apero_coverage_id: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    created_by: Optional[str]
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    updated_reason: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    archived_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]
    single_case_agreement: Optional[bool]
    is_eligible: Optional[bool]
    apero_eligibility_id: Optional[str]
    is_medicaid_plan: Optional[bool]
    is_medicare_plan: Optional[bool]
    transaction_type: str


class MemberBillingPromosItem(BaseModel):
    id: int
    user_id: int
    application_order: int = 0
    limit_type: str
    promo_type: str
    start_date_utc: Optional[datetime]
    end_date_utc: Optional[datetime]
    duration_days: Optional[int]
    appointment_count: Optional[int]
    currency: str = "USD"
    discounted_rate_90min_cents: Optional[int]
    discounted_rate_60min_cents: Optional[int]
    discounted_rate_45min_cents: Optional[int]
    discounted_rate_30min_cents: Optional[int]
    discount_percentage: Optional[int]
    nocd_credit_cents: Optional[int]
    notes: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    archived_at: Optional[str]
    archived_by: Optional[str]


class MemberCareCoordinationReviewItem(BaseModel):
    id: int
    user_id: int
    status: str
    care_coordination_notes: Optional[str]
    clinical_notes: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    archived_at: Optional[datetime]
    created_by: Optional[str]
    updated_by: Optional[str]
    archived_by: Optional[str]
    dummy_archived_at: Optional[datetime] = Field(exclude=True)
    assigned_to: Optional[str]
    therapist_conversation_notes: Optional[str]
    clinical_recommendation: Optional[str]
    clinical_recommendation_made_at: Optional[datetime]
    acknowledged_checkin_agreement_at: Optional[datetime]
    confirmed_checkin_completed_at: Optional[datetime]


class MemberChargesItem(BaseModel):
    id: int
    user_id: int
    payment_type: str
    payment_id: Optional[str]
    charge_amount: int
    payment_plan: Optional[str]
    internal_note: Optional[str]
    member_note: Optional[str]
    authorizer: Optional[str]
    created_at: datetime = datetime.now()
    member_charged_direct: Optional[bool]
    member_refunds_id: Optional[int]


class MemberChargesV2Item(BaseModel):
    id: int
    user_id: Optional[int]
    payment_table: Optional[str]
    payment_id: Optional[str]
    payment_amount: int
    payment_currency: str
    payment_at: Optional[datetime]
    payment_description: Optional[str]
    created_at: datetime = datetime.now()
    payment_at_date: Optional[date] = Field(exclude=True)


class MemberConcernNotesItem(BaseModel):
    id: int
    user_id: Optional[int]
    note: Optional[str]
    expires_at: datetime
    created_by: str
    created_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class MemberConsequenceItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    user_id: int
    obsession_id: str
    consequence: Optional[str]
    created_by: Optional[str]
    updated_by: Optional[str]


class MemberCoveragesLedgerItem(BaseModel):
    id: int
    member_coverages_id: int
    user_id: int
    start_date_utc: datetime
    end_date_utc: datetime
    plan: Optional[str]
    cash_pay_90_min: Optional[int]
    cash_pay_60_min: Optional[int]
    cash_pay_45_min: Optional[int]
    cash_pay_30_min: Optional[int]
    currency: Optional[str] = "USD"
    insurance_id_primary: Optional[int]
    insurance_id_secondary: Optional[int]
    insurance_id_tertiary: Optional[int]
    notes: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    created_by: Optional[str]
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    coverage_status: Optional[str]
    archived_reason: Optional[str]
    promotion_name: Optional[str]
    transaction_type: str


class MemberExerciseItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    member_exposure_id: int
    member_homework_id: int
    quantity: Optional[int] = 1
    unit: str


class MemberExerciseSessionItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    started_at: Optional[datetime]
    completed_at: Optional[datetime]
    user_id: int
    member_exercise_id: int
    distress_before: Optional[int]
    distress_after: Optional[int]
    did_resist: Optional[int]
    note: Optional[str]


class MemberExperienceFeedbackItem(BaseModel):
    id: int
    user_id: int
    experience_star_review: Optional[bool]
    experience_comment_text: Optional[str]
    member_advocates_star_review: Optional[bool]
    member_advocates_comment_text: Optional[str]
    billing_star_review: Optional[bool]
    billing_comment_text: Optional[str]
    app_star_review: Optional[bool]
    app_comment_text: Optional[str]
    survey_type: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class MemberExposureItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    exposure: Optional[str]
    distress: int
    user_id: int
    obsession_id: Optional[str]


class MemberGoalsItem(BaseModel):
    id: int
    user_id: int
    title: str
    description: str
    image_url: Optional[str]
    target_date: datetime
    achieved_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]
    deleted_at: Optional[datetime]


class MemberGoalsProgressItem(BaseModel):
    id: int
    user_id: int
    goal_id: int
    description: str
    image_url: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]


class MemberHomeworkItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    user_id: int
    obsession_id: str
    published_at: Optional[datetime]
    published_message: Optional[str]
    archived_at: Optional[datetime]


class MemberHomeworkCompulsionItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    user_compulsion_id: str
    member_homework_id: int


class MemberHomeworkPreventionTipItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    member_prevention_tip_id: int
    member_homework_id: int


class MemberHomeworkToolItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    member_tool_id: int
    member_homework_id: int


class MemberHomeworkTriggerItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    user_trigger_id: str
    member_homework_id: int


class MemberInsuranceAuthorizationItem(BaseModel):
    id: int
    insurance_id: int
    user_id: int
    start_date_utc: datetime
    end_date_utc: datetime
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    archived_reason: Optional[str]
    authorized_units_payload: Optional[Any]
    copay_cents: Optional[int]
    sub_first_name: Optional[str]
    sub_last_name: Optional[str]
    sub_dob: Optional[date]
    email: Optional[str]
    phone_number: Optional[str]


class MemberInsuranceAuthorizationsItem(BaseModel):
    id: int
    insurance_id: int
    user_id: Optional[int]
    referral_num: str
    ref_provider_first_name: Optional[str]
    ref_provider_last_name: Optional[str]
    mrn_id: Optional[str]
    copay_amount: Optional[str]
    first_name: Optional[str]
    last_name: Optional[str]
    dob: Optional[date]
    phone_number: Optional[str]
    email: Optional[str]
    address: Optional[str]
    start_date_utc: Optional[datetime]
    end_date_utc: Optional[datetime]
    authorized_units_payload: Optional[Any]
    auth_written_at: Optional[datetime]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    needs_review: Optional[bool] = False
    is_medica: Optional[bool] = False
    npi_id: Optional[str]
    call_outcome: Optional[str]
    payer_address: str
    payer_claims_billing_name: Optional[str]
    payer_claims_billing_address: Optional[str]
    member_billing_coverage_id: Optional[int]
    auto_elig_errors: Optional[str]
    auto_elig_needs_review: Optional[bool] = False
    member_billing_insurance_id: Optional[int]
    has_correct_s3_url: bool = False
    s3_url: Optional[str]
    freshdesk_ticket_id: Optional[int]
    is_renewal: Optional[bool]


class MemberInvoicesItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: int
    original_amount: int
    invoice_amount: int
    copay_amount: Optional[int]
    insurance_billed_amount: Optional[int]
    internal_note: Optional[str] = ""
    member_note: str
    status: Optional[str]
    authorizer: str
    created_at: datetime = datetime.now()
    invoice_type: str
    revenue_type: Optional[str]
    invoice_insurance_reference_id: Optional[str]
    created_from_member_refunds_id: Optional[int]
    apero_visit_id: Optional[str]
    apero_line_item_id: Optional[str]
    invoice_currency: str = "USD"
    is_invalid: Optional[bool]
    last_adjustment_id: Optional[int]
    invoice_amount_after_all_adjustments: Optional[int]
    member_billing_coverages_id: Optional[int]
    expected_amount: Optional[int]
    invoice_amount_locked: Optional[bool]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    archived_reason: Optional[str]
    apero_invoice_status: Optional[str]
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]
    version_number: Optional[int] = 1


class MemberInvoicesLedgerItem(BaseModel):
    id: int
    member_invoices_id: int
    user_id: int
    member_appointments_id: int
    original_amount: int
    invoice_amount: int
    copay_amount: Optional[int]
    insurance_billed_amount: Optional[int]
    internal_note: Optional[str] = ""
    member_note: str
    status: Optional[str]
    authorizer: str
    created_at: datetime = datetime.now()
    invoice_type: str
    invoice_insurance_reference_id: Optional[str]
    created_from_member_refunds_id: Optional[int]
    apero_visit_id: Optional[str]
    apero_line_item_id: Optional[str]
    invoice_currency: str = "USD"
    is_invalid: Optional[bool]
    last_adjustment_id: Optional[int]
    invoice_amount_after_all_adjustments: Optional[int]
    member_billing_coverages_id: Optional[int]
    expected_amount: Optional[int]
    invoice_amount_locked: Optional[bool]
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    archived_reason: Optional[str]
    apero_invoice_status: Optional[str]
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]
    transaction_type: str
    previous_amount: Optional[int]


class MemberInvoicesToChargesMappingItem(BaseModel):
    id: int
    user_id: int
    member_invoices_id: int
    member_charges_id: int
    executed_amount: int
    created_at: datetime = datetime.now()
    member_refunds_id: Optional[int]


class MemberJournalEntriesItem(BaseModel):
    id: int
    type: str
    user_id: int
    content: Optional[Any]
    created_at: datetime = datetime.now()


class MemberJournalTypesItem(BaseModel):
    id: int
    user_id: int
    type: str
    created_at: datetime = datetime.now()


class MemberLineApplicationsItem(BaseModel):
    id: int
    ma_id: Optional[int]
    member_invoices_id: int
    user_id: int
    application_type: str
    amount: Optional[int]
    member_charges_type: Optional[str]
    member_charges_id: Optional[int]
    adjustment_reason: Optional[str]
    member_note: Optional[str]
    internal_note: Optional[str]
    date_posted: datetime
    authorizer: Optional[str]
    unapplied_by_line_application_id: Optional[int]
    member_billing_promos_id: Optional[int]
    reverses_line_application_id: Optional[int]
    apero_line_application_id: Optional[str]
    adjustment_detail: Optional[str]
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]


class MemberLineApplicationsLedgerItem(BaseModel):
    id: int
    line_application_id: int
    ma_id: Optional[int]
    member_invoices_id: int
    user_id: int
    application_type: str
    amount: Optional[int]
    member_charges_type: Optional[str]
    member_charges_id: Optional[int]
    adjustment_reason: Optional[str]
    member_note: Optional[str]
    internal_note: Optional[str]
    date_posted: datetime
    authorizer: Optional[str]
    unapplied_by_line_application_id: Optional[int]
    member_billing_promos_id: Optional[int]
    reverses_line_application_id: Optional[int]
    apero_line_application_id: Optional[str]
    adjustment_detail: Optional[str]
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    updated_reason: Optional[str]
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_reason: Optional[str]
    transaction_type: str
    previous_amount: Optional[int]


class MemberMedicationsItem(BaseModel):
    id: int
    user_id: int
    medication_name: str
    dosage: Optional[int]
    units: Optional[str]
    frequency: Optional[str]
    is_current_medication: Optional[bool] = False
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    is_deleted: Optional[bool] = False
    medication_note: Optional[str]
    form_of_medication: Optional[str]


class MemberMoveUpCacheItem(BaseModel):
    id: int
    user_id: int
    available_slots: int = 0
    rejected_slots: int = 0
    earliest_date: Optional[datetime]
    latest_date: Optional[datetime]
    has_error: Optional[str]
    clinicians: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    slot_details: Optional[Any]
    potential_clinicians: Optional[Any]
    same_clinician_slots: Optional[Any]
    same_clinician_slot_count: Optional[int]


class MemberMoveUpRejectionsItem(BaseModel):
    id: int
    user_id: int
    rejected_therapist_gender: str = "No Preference"
    rejected_therapists: Optional[Any]
    rejected_days_of_week: Optional[Any]
    rejected_dates: Optional[Any]
    rejected_hours: Optional[Any]
    rejected_day_hours: Optional[Any]
    rejected_slots: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class MemberNeedsAssessmentItem(BaseModel):
    id: int
    user_id: Optional[int]
    longer_sessions: Optional[bool]
    more_frequent: Optional[bool]
    need_higher_level: Optional[bool]
    referred_to_program: Optional[str]
    referred_to_state: Optional[str]
    referred_to_wait_weeks: Optional[bool]
    referred_to_IOP: Optional[bool]
    referred_to_PHP: Optional[bool]
    psych_currently_receiving: Optional[bool]
    psych_unable_to_access: Optional[bool]
    psych_interest_telepsych: Optional[bool]
    meds_by_PCP: Optional[bool]
    FutureStatus: Optional[str]


class MemberNotificationsChannelPreferencesItem(BaseModel):
    id: int
    user_id: int
    email_enabled: Optional[bool] = True
    sms_enabled: Optional[bool] = True
    created_at: datetime = datetime.now()


class MemberNotificationsPreferencesItem(BaseModel):
    id: int
    user_id: int
    notification_type_name: str
    sms_enabled: Optional[bool]
    email_enabled: Optional[bool]
    app_push_enabled: Optional[bool]
    send_to_member: bool = True
    send_to_responsible_party: bool = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_reason: Optional[str]


class MemberOutcomeResponseItem(BaseModel):
    id: int
    user_id: Optional[int]
    subscore_name: Optional[str]
    subscore_id: Optional[int]
    baseline_idx: Optional[int]
    first_sub_clinical_idx: Optional[int]
    latest_sub_clinical_idx: Optional[int]
    first_response_idx: Optional[int]
    latest_response_idx: Optional[int]
    baseline_at: Optional[datetime]
    baseline_score: Optional[float]
    first_sub_clinical_at: Optional[datetime]
    first_sub_clinical_score: Optional[float]
    latest_sub_clinical_at: Optional[datetime]
    latest_sub_clinical_score: Optional[float]
    first_response_at: Optional[datetime]
    first_response_score: Optional[float]
    first_response_score_perc: Optional[float]
    latest_response_at: Optional[datetime]
    latest_response_score: Optional[float]
    latest_response_score_perc: Optional[float]
    current_quarterly_conqueror_status: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    latest_completed_session_at: Optional[datetime]


class MemberPaymentPlanAgreementsItem(BaseModel):
    id: int
    user_id: int
    signature: str
    relationship_to_member: Optional[str]
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class MemberPaymentPlansItem(BaseModel):
    id: int
    user_id: int
    payment_plan_id: int
    amount: int
    currency: str
    frequency: str
    default_plan_overwritten: Optional[bool]
    created_at: datetime = datetime.now()
    created_by: str
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    active_after: Optional[datetime]


class MemberPaymentPlansArchivedItem(BaseModel):
    id: int
    user_id: int
    payment_plan_id: int
    amount: int
    currency: str
    frequency: str
    default_plan_overwritten: Optional[bool]
    created_at: datetime = datetime.now()
    created_by: str
    archived_at: Optional[datetime]
    archived_by: Optional[str]
    active_after: Optional[datetime]


class MemberPortalEventsItem(BaseModel):
    id: int
    user_id: Optional[int]
    event_name: str
    event_context: str
    metadata: Optional[Any]
    created_at: datetime = datetime.now()
    sent_at: datetime


class MemberPreventionTipItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    tip: Optional[str]
    user_id: int
    obsession_id: Optional[str]


class MemberProfessionalDisclosureDocumentItem(BaseModel):
    id: int
    user_id: int
    signed_at: datetime
    member_document_id: int
    clinician_professional_disclosure_id: int
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class MemberProvidersItem(BaseModel):
    id: int
    user_id: int
    clinician_email: str
    is_primary_provider: Optional[bool]
    bootstrap_log_id: Optional[int]
    chat_channel_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class MemberReactivationRequestsItem(BaseModel):
    id: int
    user_id: int
    freshdesk_ticket_id: Optional[int]
    created_by: str
    created_at: datetime = datetime.now()


class MemberReferralsItem(BaseModel):
    id: int
    user_id: int
    referral_date: datetime = datetime.now()
    referral_provider: Optional[str]
    clinician_signed_email: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    problem_area: Optional[str]
    level_of_care: Optional[str]
    needs_treatment_for_psychotic_disorder: Optional[int]
    is_actively_suicidal: Optional[int]
    admitted_to_hospital_for_psychiatric_reason: Optional[int]
    has_medicaid: Optional[int]
    request_notes: Optional[str]
    external_providers_id: Optional[int]
    additional_providers: Optional[Any]
    status: Optional[str]
    type_of_treatment: Optional[str]
    setting_preference: Optional[str]
    referred_at: Optional[datetime]
    preferred_times: Optional[Any]
    connected_with_external_provider: Optional[str]
    still_want_to_be_referred: Optional[str]
    new_referral_needed: Optional[str]
    is_national_provider_referral: Optional[bool]
    metro_area: Optional[str]
    is_auto_matched: Optional[bool]


class MemberReferralsNotesItem(BaseModel):
    id: int
    member_referrals_id: int
    notes: str
    created_by: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class MemberRefundsItem(BaseModel):
    id: int
    user_id: int
    member_charges_id: int
    refund_type: str
    refund_id: str
    refund_amount: int
    authorizer: str
    created_at: datetime = datetime.now()
    invoices_recreated: Optional[bool]


class MemberS3FilesItem(BaseModel):
    id: int
    user_id: int
    path: str
    created_at: datetime = datetime.now()
    created_by: str
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]
    delete_reason: Optional[str]


class MemberSafetyPlanItem(BaseModel):
    id: int
    user_id: int
    warning_signs: Optional[str]
    coping_strategies: Optional[str]
    social_distractions: Optional[str]
    people_support: Optional[str]
    crisis_help: Optional[str]
    safe_environment: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    emergency_contact_verified: Optional[bool] = False
    people_support_json: Optional[Any]
    triggers_and_stressors: Optional[str]
    worth_living_for: Optional[str]
    professionals_agencies_support_json: Optional[Any]
    discussed_safe_environment: Optional[bool] = False


class MemberScheduledAddressChangesItem(BaseModel):
    id: int
    user_id: int
    change_date: date
    created_by: str
    created_at: Optional[datetime] = datetime.now()
    updated_by: str
    updated_at: Optional[datetime] = datetime.now()
    status: Optional[str] = "scheduled"
    new_address: str
    new_city: str
    new_zipcode: str
    new_state: str
    new_country_code: str
    new_diagnostic_timezone: str
    old_address: Any


class MemberScoresMetricsItem(BaseModel):
    forms_table_id: int
    forms_table_id_subscore: str
    subscore_name: str
    response_type: Optional[str]
    response_threshold: Optional[float]
    response_direction: Optional[int]


class MemberServiceCommunicationLogItem(BaseModel):
    id: int
    user_id: int
    communication_mode: str
    communication_outcome: str
    communication_note: str
    created_by: str
    created_at: datetime = datetime.now()


class MemberTempLeaveReturnNotificationsItem(BaseModel):
    id: int
    rippling_leave_request_id: int
    status: Optional[str]
    user_ids: Optional[Any]
    return_date: Optional[date]
    clinician_email: Optional[str]
    created_at: datetime = datetime.now()
    two_week_notification_sent_at: Optional[datetime]
    two_week_notification_output: Optional[Any]
    one_week_notification_sent_at: Optional[datetime]
    one_week_notification_output: Optional[Any]
    three_day_notification_sent_at: Optional[datetime]
    three_day_notification_output: Optional[Any]


class MemberToolItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    user_id: int
    tool_type: str
    title: Optional[str]
    description: Optional[str]
    metadata: Optional[Any]
    source: Optional[str]
    created_by: int
    obsession_id: Optional[str]


class MemberTransfersItem(BaseModel):
    id: int
    user_id: int
    assigned_to: Optional[str]
    transfer_stage: Optional[str]
    transfer_start_date: datetime = datetime.now()
    transfer_reason_category: Optional[str]
    transfer_reason_details: Optional[str]
    number_of_sessions_before_transfer: Optional[int]
    delay_reason: Optional[str]
    new_therapist_preferences: Optional[str]
    availability: Optional[str]
    new_therapist_1: Optional[str]
    new_therapist_2: Optional[str]
    new_therapist_3: Optional[str]
    freshdesk_ticket: Optional[str]
    insurance_related: Optional[bool]
    updated_at: datetime = datetime.now()


class MemberWebsiteReviewsItem(BaseModel):
    id: int
    email: Optional[str]
    user_id: Optional[int]
    first_name: Optional[str]
    last_name: Optional[str]
    nickname: Optional[str]
    state: Optional[str]
    age: Optional[str]
    review_title: Optional[str]
    review_text: Optional[str]
    subtype_json: Optional[Any]
    image_id: Optional[str]
    is_live: Optional[bool] = False
    dob: Optional[date]
    created_at: datetime = datetime.now()
    stars: Optional[int]
    review_reply: Optional[str]
    reply_date: Optional[datetime]


class MembersDocumentsItem(BaseModel):
    id: int
    document_id: int
    user_id: int
    payload: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]
    submission_id: str
    metadata: Optional[Any]
    deleted_at: Optional[datetime]
    expired_at: Optional[datetime]
    expired_by: Optional[str]


class MessagingHealthItem(BaseModel):
    id: int
    clinician_email: str
    user_id: Optional[int]
    chat_channel_id: Optional[int]
    scores_json: Optional[Any]
    total_score: Optional[int]
    max_score: int
    score: Optional[float]
    message_date_cutoff: datetime
    quarter_start: date
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]


class MilestoneLetterItem(BaseModel):
    id: int
    user_id: int
    clinician_email: str
    where_you_started: Optional[str]
    what_changed: Optional[str]
    impressed_by: Optional[str]
    what_we_learned: Optional[str]
    outcome_measures: Optional[Any]
    signed_at: Optional[datetime]
    badge_id: Optional[int]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    first_assessment_at: Optional[datetime]
    last_assessment_at: Optional[datetime]
    snooze_reason: Optional[str]


class ModeratorDefaultRepliesItem(BaseModel):
    label: str
    value: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ModeratorNotesItem(BaseModel):
    user_id: int
    notes: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ModeratorPostLabelsItem(BaseModel):
    id: int
    thread_id: int
    post_id: int
    label: str


class ModeratorsItem(BaseModel):
    user_id: int
    email: str
    phone: str
    invited_by: Optional[str]
    notify_preferences: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    user_contact_access: Optional[bool] = False
    clinician_administration: Optional[bool] = False


class MonitoredUsersItem(BaseModel):
    id: int
    requestor: str
    created_at: datetime = datetime.now()
    created_by: str


class MysqlToBqJobsItem(BaseModel):
    id: int
    job_name: str
    sql: str
    bq_path: str
    is_deleted: Optional[bool] = False
    created_by: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class NetopsAvailabilityAuditItem(BaseModel):
    id: int
    clinician_email: str
    authorizer: str
    authorized_at: Optional[datetime]


class NewFeaturesUserEligibilityItem(BaseModel):
    id: int
    email: str


class NoteAddendumItem(BaseModel):
    id: int
    user_id: int
    clinician_email: Optional[str]
    member_appointments_id: int
    addendum: Optional[str]
    is_deleted: Optional[bool]
    created_at: datetime = datetime.now()


class NotesItem(BaseModel):
    id: int
    name: str
    text: Optional[str]
    author: Optional[str]
    created_at: datetime = datetime.now()
    user_id: Optional[int]
    is_pinned: Optional[bool]
    department: Optional[str]
    unavailable_reason: Optional[str]
    unavailable_from: Optional[date]
    unavailable_to: Optional[date]
    ticket_id: Optional[int]


class NotificationPermissionsItem(BaseModel):
    id: int
    user_id: Optional[int]
    device_id: str
    session_id: str
    permission: str
    created_at: datetime = datetime.now()


class NotificationTokensItem(BaseModel):
    id: int
    user_id: int
    notification_token: str
    token_type: str
    env_name: str
    bundle_identifier: str
    userTokenId: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    device_id: Optional[str]


class NotificationTokensBackupItem(BaseModel):
    id: int
    user_id: int
    notification_token: str
    token_type: Optional[str]
    env_name: str
    bundle_identifier: str
    userTokenId: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class NotificationsExternalProviderLedgerFeedItem(BaseModel):
    id: int
    notification_type_name: str
    email: str
    payload: Any
    overall_send_status: str = "not_sent"
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class NotificationsInternalLedgerFeedItem(BaseModel):
    id: int
    notification_type_name: str
    email: str
    payload: Optional[Any]
    overall_send_status: str = "not_sent"
    send_status_reason: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class NotificationsMemberLedgerFeedItem(BaseModel):
    id: int
    notification_type_name: str
    duplicate_control: Optional[str]
    ledger_type: Optional[str] = "member"
    user_id: Optional[int]
    email: Optional[str]
    payload: Optional[Any]
    rendered_body: Optional[str]
    overall_send_status: str = "not_sent"
    send_status_reason: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    seen_at: Optional[datetime]
    open_key: Optional[str]


class NotificationsMemberLedgerSendsItem(BaseModel):
    id: int
    member_notifications_feed_ledger_id: int
    channel: str
    payload: Optional[Any]
    send_status: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class NotoBannersItem(BaseModel):
    id: int
    clinician_id: int
    member_id: Optional[int]
    name: str
    created_at: datetime = datetime.now()
    created_by: Optional[str]
    dismissed_at: Optional[datetime]
    dismissed_by: str
    metadata: Optional[Any]


class NotoClinicianFeedbackItem(BaseModel):
    id: int
    clinician_email: str
    feedback: Optional[str]
    feedback_details: Optional[str]
    created_at: datetime = datetime.now()
    is_dismissed: Optional[bool] = False
    is_deleted: Optional[bool] = False


class NotoProTipsItem(BaseModel):
    id: int
    text: Optional[str]
    created_by: str
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    clinician_user_ids: Optional[Any]
    clinical_regions: Optional[Any]
    is_network_tip: Optional[bool]
    type: Optional[str]
    image_url: Optional[str]


class NotoThoughtOfTheDayItem(BaseModel):
    id: int
    text: Optional[str]
    assigned_date: Optional[date]
    created_by: str
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class NotoWebAlertsItem(BaseModel):
    id: int
    user_id: int
    alert_type: str
    badge_number: Optional[int]
    created_at: datetime = datetime.now()
    created_by: str
    dismissed_at: Optional[datetime]


class ObsessionTimeSpentItem(BaseModel):
    id: int
    obsessionID: str
    startDate: datetime
    endDate: datetime
    spentTime: float
    otsID: str
    updated: float
    userID: Optional[int]
    created_at: datetime = datetime.now()


class OcdDirectoryProvidersItem(BaseModel):
    id: int
    guid: Optional[str]
    verification_status: Optional[str] = "not_started"
    first_name: Optional[str]
    last_name: Optional[str]
    npi_number: Optional[int]
    email: Optional[str]
    phone: Optional[str]
    website_url: Optional[str]
    credentials: Optional[Any]
    types_of_services: Optional[Any]
    specialties: Optional[Any]
    insurances_accepted: Optional[Any]
    ages_served: Optional[Any]
    ocd_experience: Optional[str]
    about_me: Optional[str]
    languages: Optional[Any]
    gender: Optional[str]
    pronouns: Optional[str]
    cultural_competencies: Optional[Any]
    religious_competencies: Optional[Any]
    screening_questions: Optional[Any]
    licensed_areas: Optional[Any]
    locations: Optional[Any]
    accepts_virtual_visits: Optional[int]
    accepts_in_person_visits: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]
    license: Optional[Any]
    license_other: Optional[str]
    treatment_approach: Optional[Any]
    treatment_approach_other: Optional[str]
    what_assessment_tools: Optional[str]
    first_treatment_step: Optional[str]
    who_do_you_consult_with: Optional[str]
    reccomendations_for_not_responding: Optional[str]
    client_and_family_risk_factors: Optional[str]
    ritual_and_pure_o_difference: Optional[str]
    is_checking_body_functions_ocd: Optional[str]
    harm_ocd_prevention_techniques: Optional[str]
    when_clients_dont_do_homework: Optional[str]
    exposure_vs_response_prevention: Optional[str]
    if_exposures_are_against_client_values: Optional[str]


class OcdIsAffectingMeItem(BaseModel):
    user_id: int
    ocd_severity: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class OcdJourneySubmissionsItem(BaseModel):
    id: int
    name: str = "anonymous"
    email: str
    description: Optional[str]
    response_sent: Optional[int] = 0
    is_live: Optional[int] = 0
    created_at: datetime = datetime.now()


class OnboardedItem(BaseModel):
    user_id: str
    community: bool = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class OnboardingFlagsItem(BaseModel):
    user_id: int
    onboarding_type: str
    completed: bool
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class OnboardingVisitedScreensItem(BaseModel):
    id: int
    user_id: int
    onboarding_menu: str
    screen: str
    action: str
    created_at: datetime = datetime.now()


class OneTimeCodesItem(BaseModel):
    id: int
    user_id: int
    one_time_code: str
    activated_at: Optional[datetime]
    created_at: datetime = datetime.now()


class OpenaiChatHistoryItem(BaseModel):
    id: int
    engine: Optional[str]
    query: str
    response: str
    total_tokens: int
    prompt_tokens: int
    completion_tokens: int
    authorizer: str
    source: Optional[str]
    created_at: Optional[datetime] = datetime.now()


class ParametersItem(BaseModel):
    id: int
    display_order: int = 0
    param_group: str
    name: str
    value: Optional[str]
    description: str
    updated_by: Optional[str]
    updated_at: Optional[datetime]


class ParentalLockUsersItem(BaseModel):
    id: int
    user_id: int
    device_id: str
    enabled: bool
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PayerEffectiveDatesItem(BaseModel):
    id: int
    insurance: str
    apero_trading_partner_id: str
    effective_date: date
    end_date: Optional[date]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PaymentPlansItem(BaseModel):
    id: int
    amount: int
    currency: str
    frequency: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    archived_at: Optional[datetime]
    archived_by: Optional[str]


class PaymentStripeChargeItem(BaseModel):
    stripe_charge_id: str
    stripe_charge_customer_id: Optional[str]
    stripe_charge_description: Optional[str]
    stripe_charge_amount: Optional[int]
    stripe_charge_amount_captured: Optional[int]
    stripe_charge_amount_refunded: Optional[int]
    stripe_charge_currency: Optional[str]
    stripe_charge_status: Optional[str]
    stripe_charge_metadata: Optional[Any]
    stripe_charge_created: Optional[datetime]
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()
    stripe_charge_payment_intent: Optional[str]
    stripe_charge_receipt_url: Optional[str]
    stripe_charge_failure_code: Optional[str]
    stripe_charge_failure_message: Optional[str]
    stripe_charge_failure_ignored: Optional[bool]


class PaymentStripeDisputeItem(BaseModel):
    user_id: int
    customer_id: str
    stripe_dispute_id: str
    stripe_dispute_charge_id: Optional[str]
    stripe_dispute_description: Optional[str]
    stripe_dispute_amount: Optional[int]
    stripe_dispute_currency: Optional[str]
    stripe_dispute_status: Optional[str]
    stripe_dispute_raw_data: Optional[Any]
    stripe_dispute_created: Optional[datetime]
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()
    stripe_dispute_payment_intent: Optional[str]


class PaymentStripePaymentIntentItem(BaseModel):
    id: int
    stripe_payment_intent_id: str
    stripe_payment_intent_customer_id: Optional[str]
    stripe_payment_intent_description: Optional[str]
    stripe_payment_intent_amount: Optional[int]
    stripe_payment_intent_amount_capturable: Optional[int]
    stripe_payment_intent_amount_received: Optional[int]
    stripe_payment_intent_currency: Optional[str]
    stripe_payment_intent_status: Optional[str]
    stripe_payment_intent_metadata: Optional[Any]
    stripe_payment_intent_next_action: Optional[Any]
    stripe_payment_intent_payment_method: Optional[str]
    stripe_payment_intent_created: Optional[datetime]
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class PaymentStripeRefundItem(BaseModel):
    stripe_refund_id: str
    stripe_refund_charge_id: Optional[str]
    stripe_refund_amount: Optional[int]
    stripe_refund_metadata: Optional[Any]
    stripe_refund_reason: Optional[str]
    stripe_refund_created: Optional[datetime]
    stripe_refund_status: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()
    stripe_refund_payment_intent: Optional[str]


class PeerAdvisorsItem(BaseModel):
    id: int
    email: str
    first_name: Optional[str] = ""
    last_name: Optional[str] = ""
    calendly_link: Optional[str]
    image_id: Optional[str] = ""
    is_test_user: Optional[bool] = False
    created_at: datetime = datetime.now()
    pause_user: Optional[bool] = False
    about_me: Optional[str]
    nocd_experience: Optional[str]
    resources_to_share: Optional[str]
    vimeo_video: Optional[str] = ""
    preferred_pronouns: Optional[str] = ""
    title: Optional[str] = ""
    video_quote: Optional[str]
    specialty_themes: Optional[str]
    relevant_links: Optional[Any]
    video_thumbnail_id: Optional[str]
    email_body: Optional[str]
    premium_region_id: Optional[int]
    user_id: Optional[int]
    deleted_at: Optional[datetime]
    auto_add_advisor_to_chat_channel: Optional[bool]
    can_send_automated_message: Optional[int] = 1
    you_can_also_ask_about: Optional[Any]
    profile_subheading: Optional[str]
    can_send_converted_auto_messages: Optional[int] = 0
    can_send_trial_auto_messages: Optional[int] = 0
    has_lived_experience: Optional[bool] = False


class PeerAdvisorsLogItem(BaseModel):
    id: int
    peer_advisor_email: str
    user_id: int
    call_log: Optional[Any]
    da_feedback: Optional[bool] = False
    session_6_feedback: Optional[bool] = False
    session_12_feedback: Optional[bool] = False
    created_at: datetime = datetime.now()


class PerfMonitoringItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    method_caller: Optional[str]
    method_traceback: Optional[str]
    method_args: Optional[Any]
    latency_a_in_ms: Optional[int]
    latency_b_in_ms: Optional[int]
    result_a: Optional[Any]
    result_b: Optional[Any]
    exc_a: Optional[str]
    exc_b: Optional[str]
    results_match: Optional[bool]


class PerspectiveApiItem(BaseModel):
    id: int
    post_id: int
    toxicity_score: Optional[float]
    created_at: datetime = datetime.now()


class PhinxlogItem(BaseModel):
    version: float
    migration_name: Optional[str]
    start_time: datetime = datetime.now()
    end_time: datetime = datetime.now()
    breakpoint: bool = False


class PhoneCallAppointmentsItem(BaseModel):
    id: int
    guid: str
    acuity_id: Optional[str]
    user_id: Optional[int]
    intake_team_member: Optional[str]
    appt_scheduled_at: Optional[datetime]
    appt_time: Optional[datetime]
    appt_label: Optional[str]
    appt_label_full: Optional[str]
    what_can_we_help_with: Optional[str]
    how_did_you_hear_about_nocd: Optional[str]
    current_app_user: Optional[bool]
    has_insurance: Optional[bool]
    insurance_provider: Optional[str]
    insurance_type: Optional[str]
    currently_seeing_therapist: Optional[bool]
    additional_information: Optional[str]
    reason_for_not_converting: Optional[str]
    source: Optional[str]
    state: Optional[str]
    first_name: Optional[str]
    last_name: Optional[str]
    email: Optional[str]
    phone_number: Optional[str]
    assigned_clinician_user_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PinnedPostsItem(BaseModel):
    id: int
    postID: int
    startDate: datetime = datetime.now()
    endDate: datetime = datetime.now()
    geoFilter: Optional[bool] = False
    country: str = ""
    state: str = ""
    createdAt: datetime = datetime.now()


class PinnedPostsSeenAtItem(BaseModel):
    id: int
    trace_id: str
    user_id: int
    post_id: int
    cycled_post_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class PlacesItem(BaseModel):
    id: int
    userID: int
    lat: float
    lng: float
    locationAddress: str
    nickname: str
    placeID: str
    updated: float
    created_at: datetime = datetime.now()


class PmetricsItem(BaseModel):
    id: int
    matchlk: int
    start_date: Optional[date] = date(2000, 1, 1)
    end_date: Optional[date] = date(2038, 1, 1)
    rtype: str = "r1"
    r1: Optional[int] = 10000
    r2: Optional[int] = 10000000
    created_at: datetime = datetime.now()


class PostAnnotationsItem(BaseModel):
    id: int
    user_id: int
    post_user_id: int
    post_id: int
    action_name: str
    created_at: datetime = datetime.now()


class PostAssessmentSummaryItem(BaseModel):
    appointment_id: int
    user_id: Optional[int]
    member_document_id: Optional[int]
    therapist_comments: Optional[str]
    goals: Optional[Any]
    copied_from_appointment_id: Optional[int]
    sent_at: Optional[datetime]
    created_at: datetime = datetime.now()


class PostAssessmentSummaryOverridesItem(BaseModel):
    appointment_id: int
    reason: str
    created_by: str
    created_at: datetime = datetime.now()


class PostClassificationsItem(BaseModel):
    post_id: int
    user_id: int
    pure_ocd: Optional[bool]
    relationship_ocd: Optional[bool]
    perfectionism_ocd: Optional[bool]
    harm_ocd: Optional[bool]
    real_events_ocd: Optional[bool]
    contamination_ocd: Optional[bool]
    order_and_symmetry_ocd: Optional[bool]
    false_memory_ocd: Optional[bool]
    existential_ocd: Optional[bool]
    religion_and_spirituality_ocd: Optional[bool]
    health_concern_ocd: Optional[bool]
    magical_thinking_ocd: Optional[bool]
    somatic_ocd: Optional[bool]
    sexual_orientation_ocd: Optional[bool]
    pocd: Optional[bool]
    suicidal_ocd: Optional[bool]
    transgender_ocd: Optional[bool]
    postpartum_ocd: Optional[bool]
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class PostContextMenuSeenAtItem(BaseModel):
    id: int
    user_id: int
    post_id: int
    created_at: datetime = datetime.now()


class PostCrpAwardsItem(BaseModel):
    id: int
    giver_user_id: int
    receiver_user_id: int
    post_id: int
    user_crp_credit_transaction_id: int
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class PostDeletionNotificationsItem(BaseModel):
    id: int
    post_id: int
    page_slug: str
    is_resolved: int = 0
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class PostDischargeReactivationCampaignItem(BaseModel):
    id: int
    user_id: int
    notification_1_send_status: Optional[str] = "queued"
    notification_1_send_status_reason: Optional[str]
    notification_1_sent_at: Optional[datetime]
    notification_2_send_status: Optional[str] = "queued"
    notification_2_send_status_reason: Optional[str]
    notification_2_sent_at: Optional[datetime]
    notification_3_send_status: Optional[str] = "queued"
    notification_3_send_status_reason: Optional[str]
    notification_3_sent_at: Optional[datetime]
    notification_4_send_status: Optional[str] = "queued"
    notification_4_send_status_reason: Optional[str]
    notification_4_sent_at: Optional[datetime]
    created_at: datetime = datetime.now()


class PostEmbeddingsLedgerItem(BaseModel):
    post_id: int
    in_chroma: bool = False
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class PostInsurancesItem(BaseModel):
    post_id: int
    insurance: str


class PostLabelMappingsItem(BaseModel):
    id: int
    post_id: int
    post_label_id: int
    created_at: Optional[datetime] = datetime.now()


class PostLabelsItem(BaseModel):
    id: int
    name: str
    category: str
    created_at: Optional[datetime] = datetime.now()


class PostRateLimitRulesItem(BaseModel):
    post_id: int
    window_max_count: Optional[int]
    window_size: Optional[int]
    max_total_count: Optional[int]
    visibility_duration: Optional[int]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PostScoresItem(BaseModel):
    post_id: int
    insightful: int
    constructive: int
    empathy: int
    helpful: int
    encouragement: int
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class PostSentimentsItem(BaseModel):
    post_id: int
    sentiment: str
    sentiment_score: float
    metadata: Any
    suppress: Optional[bool]
    suppression_reason: Optional[str]
    post_created_at: datetime
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PostSeoTitlesItem(BaseModel):
    post_id: int
    title_seo: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PostTagsItem(BaseModel):
    post_id: int
    tag_id: int


class PostTopicsItem(BaseModel):
    post_id: int
    topic_id: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PostTopicsPreSubtypesItem(BaseModel):
    post_id: int
    topic_id: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PostUserReactionsItem(BaseModel):
    id: int
    post_id: int
    user_id: int
    reaction_type: str
    created_at: datetime = datetime.now()


class PostsItem(BaseModel):
    id: int
    thread_id: int
    db_depth: Optional[int] = 0
    body: str
    fallback_body: Optional[str]
    user_id: str
    post_replied_to: Optional[int]
    mentioned_post_id: Optional[int]
    post_type: str
    post_type_data: Optional[str]
    accepted_reassurance_pledge: Optional[bool]
    trigger_warning: Optional[bool]
    created_by_moderator: Optional[bool] = False
    reviewed: Optional[bool] = False
    reviewed_by: Optional[str]
    flag_state: Optional[str]
    cycled: Optional[bool] = False
    position_type: Optional[str] = "TRADITIONAL"
    name: str = ""
    geo_locked: Optional[str]
    user_id_mod_10_filter: Optional[str]
    sql_filter: Optional[str]
    render_html: Optional[bool] = False
    library_post: Optional[bool] = False
    dm_end_at: Optional[datetime]
    dm_start_at: Optional[datetime]
    dm_rank: Optional[int]
    dm_tag: Optional[str]
    dm_day: Optional[int]
    feed_placement: str = "MAIN"
    feed_placement_src: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False
    is_active: Optional[bool] = True
    is_locked: Optional[bool]
    lock_status: Optional[str]
    inactive_reason: Optional[str]
    is_public: Optional[bool] = False
    hide_for_therapy_members: Optional[int] = 0
    posting_title: Optional[str]
    therapist_alumni_reply_at: Optional[datetime] = datetime.now()
    cohort: Optional[str]
    unsupported_question: Optional[bool] = False
    ml_emotions: Optional[str]
    is_therapy_members_feed_post: bool = False
    expires_at: Optional[datetime]
    metadata: Optional[Any]
    post_carousel_data: Optional[Any]
    highlight_new_replies: Optional[bool]
    edited_at: Optional[datetime]
    hide_for_non_insurance_members: Optional[bool] = False


class PostsMlAnnotationsItem(BaseModel):
    id: int
    post_id: int
    analysis_complete: Optional[bool]
    needs_additional_anaylsis: Optional[bool]
    is_triggering: Optional[bool]
    is_reassurance: Optional[bool]
    is_featurable: Optional[bool]
    is_medication_post: Optional[bool]
    has_subtype: Optional[bool]
    reason_additional_analysis: str
    primary_subtype: str
    secondary_subtype: str
    signal_phrase_1: str
    signal_phrase_2: str
    signal_phrase_3: str


class PostsScheduledItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    created_by: str
    go_live_at: datetime
    cancelled_at: Optional[datetime]
    go_live_success_at: Optional[datetime]
    created_post_id: Optional[int]
    post_json: Any


class PostsSeoMetadataItem(BaseModel):
    id: int
    post_id: int
    title: Optional[str]
    description: Optional[str]
    created_at: datetime = datetime.now()


class PracticeCountersItem(BaseModel):
    id: int
    userID: int
    exposureID: str
    exerciseID: str
    created_at: datetime = datetime.now()


class PreferredProviderOrganizationsItem(BaseModel):
    id: int
    organization_name: str
    organization_short_name: Optional[str]
    match_strings: Optional[Any]
    is_preferred_provider: Optional[bool]
    is_screening_partner: Optional[bool]
    assigned_to: Optional[str]


class PremiumAppPageVisitorsItem(BaseModel):
    id: int
    userID: int
    deviceID: str
    sessionID: str
    ipAddress: str
    country: Optional[str]
    state: Optional[str]
    utmSource: str
    utmMedium: str
    utmCampaign: str
    createdAt: datetime = datetime.now()


class PremiumCancelReasonsItem(BaseModel):
    id: int
    user_id: int
    reason_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumChargePromoCodesItem(BaseModel):
    id: int
    promo_code_id: str
    percent_off: int
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumChatItem(BaseModel):
    id: int
    trace_id: str
    content: str
    category: Optional[str]
    priority: Optional[int]
    channel_user_id: int
    channel_clinician_user_id: Optional[int]
    member_user_id: Optional[int]
    clinician_user_id: Optional[int]
    automated: Optional[str]
    button_type: Optional[str]
    subscribed_message: bool = True
    created_at: datetime = datetime.now()
    deleted_channel_user_id: Optional[int]
    is_deleted: Optional[bool]
    chat_channel_id: Optional[int]
    sent_by_user_id: Optional[int]
    sent_by_user_type: Optional[str]
    type: str = "text"
    attachment_data: Optional[Any]
    button_data: Optional[Any]
    implies_response: Optional[int] = 0
    therapist_conversation_id: Optional[int]


class PremiumClinicianAuditorsItem(BaseModel):
    id: int
    email: str


class PremiumClinicianAuditsItem(BaseModel):
    id: int
    clinician_user_id: int
    clinician_email: str
    audit_type: str
    audit_completed_at: datetime
    audit_completed_by: str
    audit_score: int
    qep_recommended: Optional[bool]
    qep_recommended_at: Optional[datetime]
    qep_started_at: Optional[datetime]
    qep_expired_at: Optional[datetime]


class PremiumClinicianCamDataItem(BaseModel):
    id: int
    email: str
    training_start_date: Optional[date]
    cam_1_date: Optional[date]
    cam_2_date: Optional[date]
    cam_3_date: Optional[date]
    cam_4_date: Optional[date]
    cam_5_date: Optional[date]
    cam_6_date: Optional[date]
    created_at: datetime = datetime.now()
    created_by: str


class PremiumClinicianConditionsItem(BaseModel):
    id: int
    email: str
    condition: Optional[str]
    created_at: datetime = datetime.now()
    created_author: Optional[str]
    disabled_for_booking: Optional[bool] = False


class PremiumClinicianCountryItem(BaseModel):
    id: int
    email: str
    premium_country_code: str
    created_at: datetime = datetime.now()
    disabled_for_bookings: Optional[bool] = False


class PremiumClinicianDataItem(BaseModel):
    id: int
    user_id: int
    spotlight_data: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class PremiumClinicianFlagsItem(BaseModel):
    id: int
    clinician_id: int
    flag_name: str
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    flag_end_date: Optional[datetime]


class PremiumClinicianImagesItem(BaseModel):
    id: int
    clinician_user_id: int
    image_name: Optional[str]
    image_url: str
    image_link: Optional[str]
    image_link_type: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumClinicianLinksItem(BaseModel):
    id: int
    clinician_user_id: int
    link_type: str
    link: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumClinicianQualityRatingsItem(BaseModel):
    id: int
    clinician_user_id: int
    quality_rating: str
    rated_at: datetime
    rating_note: Optional[str]
    created_at: datetime = datetime.now()


class PremiumClinicianRetoolItem(BaseModel):
    id: int
    retool_user_email: Optional[str]
    session_guid: str
    started_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class PremiumClinicianSeenAtItem(BaseModel):
    id: int
    channel_user_id: str
    clinician_user_id: int
    seen_at: datetime = datetime.now()
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumClinicianSpecialtiesItem(BaseModel):
    id: int
    email: str
    specialty: Optional[str]
    created_at: datetime = datetime.now()
    created_author: Optional[str]
    is_deleted: Optional[bool]


class PremiumClinicianStarRatingItem(BaseModel):
    id: int
    clinician_user_id: int
    star_rating: Optional[str] = "bronze"
    performance_note: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumClinicianStateLicensesItem(BaseModel):
    id: int
    email: str
    state: str
    license_status: Optional[str]
    license_number: Optional[str]
    license_expiry: Optional[date]
    license_notes: Optional[str]
    expiry_reminder_sent: Optional[bool]
    caqh_state_verified_at: Optional[date]
    submitted_app_permanent_license: Optional[bool]
    state_credentials: Optional[str]
    created_at: datetime = datetime.now()
    country_code: str
    disabled_for_booking: Optional[bool] = False


class PremiumClinicianStatesItem(BaseModel):
    id: int
    clinician_user_id: int
    state: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumCliniciansItem(BaseModel):
    id: int
    email: str
    activation_code: Optional[str]
    activation_sent_at: datetime = datetime.now()
    activation_used_at: Optional[datetime]
    activated: Optional[bool] = True
    ready_for_members: Optional[bool] = True
    deleted: Optional[bool] = False
    user_id: Optional[int]
    first_name: Optional[str] = ""
    last_name: Optional[str] = ""
    nickname: Optional[str] = ""
    title: Optional[str] = ""
    slack_channel: Optional[str] = ""
    description: Optional[str]
    image_id: Optional[str] = ""
    image_height: Optional[int]
    image_width: Optional[int]
    profile_metadata: Optional[Any]
    reminder_email_sent_at: datetime = datetime.now()
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    welcome_message: Optional[str]
    intake_welcome_message: Optional[str]
    unsubscribed_welcome_message: Optional[str]
    states: Optional[str] = ""
    states_json: Optional[Any]
    welcome_video: Optional[str] = ""
    star_rating: Optional[str]
    audit_notes: Optional[str]
    needs_audit: Optional[bool]
    intake_availability: Optional[str]
    availability_notes: Optional[str] = "proceed"
    npi_id: Optional[str]
    external_links: Optional[str]
    intake_accept_member_status: Optional[str]
    current_status: Optional[str]
    spec_religious: Optional[bool]
    spec_faith: Optional[str]
    certified_ages: Optional[str]
    spec_child: Optional[bool]
    pass_quiz: Optional[bool]
    phone_number: Optional[str]
    clinician_timezone: Optional[str] = ""
    sunday_schedule: Optional[str] = ""
    monday_schedule: Optional[str] = ""
    tuesday_schedule: Optional[str] = ""
    wednesday_schedule: Optional[str] = ""
    thursday_schedule: Optional[str] = ""
    friday_schedule: Optional[str] = ""
    saturday_schedule: Optional[str] = ""
    sort_order: Optional[str]
    accepting_new_patients: Optional[bool] = True
    short_quote: Optional[str]
    slug: Optional[str]
    current_status_notes: Optional[str]
    protocol_types_json: Optional[Any]
    hours_per_week: Optional[str]
    psychology_today_link: Optional[str]
    schedule_text: Optional[str]
    licensing_level: Optional[str]
    gender: Optional[str]
    tiering: Optional[str]
    insurance_expiration_date: Optional[date]
    insurance_expiry_reminder_sent: Optional[bool]
    clinician_marketing_page_ready: Optional[bool]
    therapist_directory_ready: Optional[bool]
    title_website: Optional[str]
    education: Optional[str]
    ocd_experience: Optional[str]
    about_me: Optional[str]
    video_quote: Optional[str]
    specialities: Optional[Any]
    specialities_json: Optional[Any]
    caqh_credentials: Optional[str]
    ssn: Optional[str]
    caqh_member_id: Optional[str]
    caqh_username: Optional[str]
    caqh_password: Optional[str]
    dob: Optional[str]
    caqh_profile_verified_at: Optional[date]
    min_age: Optional[int]
    communication_log: Optional[str]
    network_op_owner: Optional[str]
    da_availability: Optional[str]
    current_status_reviewed_date: Optional[date]
    live_again_date: Optional[date]
    in_new_system: Optional[bool] = True
    send_bcc_email: Optional[bool] = False
    rate_clinical: Optional[int]
    rate_non_clinical: Optional[int]
    doxy_me_link: Optional[str]
    video_type: Optional[str]
    languages_spoken: Optional[Any]
    employment_status: Optional[str]
    committed_hours: Optional[int]
    taxonomy_code: Optional[str]
    zoom_key: Optional[str]
    verified_zoom_v2: Optional[bool] = False
    zoom_meeting_link: Optional[str]
    max_das_in_week: Optional[int]
    time_in_mins_backstop_after_da: Optional[int] = 0
    time_in_mins_backstop_before_da: Optional[int] = 0
    clinician_type: Optional[str]
    live_da_date: Optional[date]
    first_da_date: Optional[date]
    termination_da_date: Optional[date]
    enable_gcal: bool = False
    max_da_per_day: Optional[int]
    time_between_da_sessions: Optional[int] = 0
    reside_in_state: Optional[str]
    preferred_pronouns: Optional[str]
    psypact: bool = False
    use_new_note: Optional[bool]
    break_for_sixty_min_sessions: Optional[int]
    break_for_thirty_min_sessions: Optional[int]
    break_for_ninety_min_sessions: Optional[int]
    hours_of_notice: Optional[int]
    apero_provider_id: Optional[str]
    use_new_chart: Optional[int]
    committee_approval_date: Optional[date]
    clinical_supervisor: Optional[str]
    hubspot_link: Optional[str]
    use_new_messaging: Optional[int] = 0
    staffing_agency: Optional[str]
    accepting_transfers: Optional[str] = "accepting"
    zocdoc_live: Optional[bool]
    member_can_book_and_reschedule: Optional[bool] = False
    clinical_director: Optional[str]
    resignation_date: Optional[date]
    auto_max_da_enabled: bool = False
    verifiable_guid: Optional[str]
    rcm_notes: Optional[str]
    disabled_for_cash_pay: Optional[bool] = False
    disabled_for_insurance: Optional[bool] = False
    form_automation_enabled: Optional[int] = 1
    frequently_asked_questions: Optional[Any]
    article_links: Optional[Any]
    facebook_link: Optional[str]
    twitter_link: Optional[str]
    education_and_training: Optional[Any]
    certificates: Optional[Any]
    training_programs: Optional[str]
    should_use_v2_profile: Optional[bool] = False
    understanding_conditions: Optional[Any]
    understanding_conditions_other: Optional[str]
    understanding_cultural_identity_groups: Optional[Any]
    understanding_cultural_identity_groups_other: Optional[str]
    understanding_religious_affiliations: Optional[Any]
    understanding_religious_affiliations_other: Optional[str]
    understanding_lgbtq_plus: Optional[str]
    languages_spoken_other: Optional[str]
    ignore_zoom_check: Optional[bool]
    use_vacation_responder: Optional[int] = 0
    vacation_responder_message: Optional[str]
    updated_by: Optional[str]
    public_phone_number: Optional[str]
    ca_npi: Optional[str]
    autofill_claims: Optional[str] = "auto_submit"
    needs_supervisor_review: Optional[bool] = False
    associate_supervisor: Optional[str]
    how_did_you_hear_about_nocd: Optional[str]
    how_did_you_hear_about_nocd_notes: Optional[str]
    current_clinician_role: Optional[str]
    hire_date: Optional[date]
    hire_week: Optional[date]
    has_seen_homework_builder_overview: Optional[int] = 0
    badges: Optional[Any]
    can_member_schedule_session: Optional[bool] = True
    can_member_reschedule_session: Optional[bool] = True
    can_member_cancel_session: Optional[bool]
    degree: Optional[str]
    board_certification: Optional[str]
    recred_approval_date: Optional[date]
    recred_due_date: Optional[date]
    onboarding_status: str = "Not Started"
    ignore_gcal_events: Optional[bool]
    require_approval_for_schedule: Optional[bool]
    uses_scheduling_team: Optional[bool]
    scheduling_team_notes: Optional[str]
    weekly_cancelled_appts: Optional[int]
    associate_level: Optional[str]
    extended_bio: Optional[str]
    clinical_region: Optional[str]
    is_test_clinician: Optional[bool]
    modalities: Optional[Any]
    ocd_experience_since: Optional[int]
    expected_evening_working_hours: Optional[int]
    expected_weekend_working_hours: Optional[int]
    assigned_specialties_for_training: Optional[Any]
    is_associate_ready_for_clinical_specialty: Optional[int]
    rippling_preferred_first_name: Optional[str]
    preferred_first_name: Optional[str] = Field(exclude=True)
    preferred_first_name_input: Optional[str]
    go_live_date: Optional[date]
    protocol_preferences: Optional[Any]
    cohort_id: Optional[int]
    base_plus_enabled: Optional[bool]
    only_available_for_specialties: Optional[bool]
    need_diagnosis_approval: Optional[bool] = False
    diagnosis_approver: Optional[str]
    cancellation_detection_setting: str = "enabled"
    opt_in_transcript_retention: Optional[datetime]
    override_associate_for_enrollment: Optional[bool]
    degree_year: Optional[int]
    opt_out_of_auto_dial: Optional[bool]


class PremiumCliniciansAuditLogItem(BaseModel):
    id: int
    clinician_email: str
    updated_by: Optional[str]
    updated_by_reason: Optional[str]
    examined_fields: Optional[Any]
    updated_fields: Optional[Any]
    prior_data: Optional[Any]
    current_data: Optional[Any]
    created_at: datetime = datetime.now()


class PremiumCliniciansDailySnapshotItem(BaseModel):
    id: int
    clinician_email: str
    committed_hours: Optional[float]
    employment_status: Optional[str]
    current_status: Optional[str]
    as_of_date: date
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]
    current_clinician_role: Optional[str]
    onboarding_status: Optional[str]
    associate_level: Optional[str]
    need_diagnosis_approval: Optional[bool]
    diagnosis_approver: Optional[str]
    clinical_region: Optional[str]


class PremiumCliniciansWeeklySnapshotItem(BaseModel):
    id: int
    clinician_email: str
    committed_hours: Optional[float]
    employment_status: Optional[str]
    current_status: Optional[str]
    as_of_date: date
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]


class PremiumCountryItem(BaseModel):
    id: int
    country_code: str
    country_name: str
    created_at: datetime = datetime.now()
    currency: Optional[str]


class PremiumEligibilityItem(BaseModel):
    id: int
    email: str
    free: Optional[bool] = False
    source: Optional[str]
    createdAt: datetime = datetime.now()
    updatedAt: Optional[datetime] = datetime.now()


class PremiumFlagsItem(BaseModel):
    name: str
    description: Optional[str]


class PremiumFormSubmissionsItem(BaseModel):
    id: int
    session_id: str
    utm_source: Optional[str]
    utm_campaign: Optional[str]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    form_method: Optional[str]
    saw_quiz: Optional[str]
    name: Optional[str]
    state: Optional[str]
    email: Optional[str]
    phone: Optional[str]
    contact_me: Optional[bool]
    referrer: Optional[str]
    user_agent: Optional[str]
    created_at: datetime = datetime.now()


class PremiumJoinReasonsItem(BaseModel):
    id: int
    user_id: int
    reason: str
    reason_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumLandingPageEventsItem(BaseModel):
    id: int
    session_id: str
    utm_source: Optional[str]
    utm_campaign: Optional[str]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    event: Optional[str]
    referrer: Optional[str]
    user_agent: Optional[str]
    created_at: datetime = datetime.now()


class PremiumLandingPageVisitsItem(BaseModel):
    id: int
    session_id: str
    utm_source: Optional[str]
    utm_campaign: Optional[str]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    saw_quiz: Optional[str]
    clicked_get_started_1: Optional[bool]
    clicked_get_started_1_at: Optional[datetime]
    clicked_get_started_2: Optional[bool]
    clicked_get_started_2_at: Optional[datetime]
    clicked_get_started_3: Optional[bool]
    clicked_get_started_3_at: Optional[datetime]
    clicked_get_started_4: Optional[bool]
    clicked_get_started_4_at: Optional[datetime]
    submitted_information: Optional[bool]
    submitted_information_at: Optional[datetime]
    referrer: Optional[str]
    user_agent: Optional[str]
    created_at: datetime = datetime.now()


class PremiumNotificationsItem(BaseModel):
    id: int
    chat_id: int
    target_user_id: int
    sent_notification_id: Optional[str]
    not_sent_reason: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    channel_type: Optional[str]


class PremiumPsychiatristsItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    email: str
    first_name: Optional[str]
    last_name: Optional[str]
    avatar_url: Optional[str]
    bio: Optional[str]
    pronouns: Optional[str]
    title: Optional[str]
    accepts_insurance: int = 0
    is_accepting_new_appointments: int = 0
    is_accepting_in_person_appointments: int = 0
    is_accepting_virtual_appointments: int = 0
    specializations: Optional[Any]
    patients_seen: Optional[Any]
    languages_spoken: Optional[Any]
    education: Optional[Any]
    is_profile_live: int = 0
    website_url: Optional[str]
    us_licensed_states: Optional[Any]
    canadian_licensed_provinces: Optional[Any]
    other_licensed_countries: Optional[Any]
    accepted_insurances: Optional[Any]


class PremiumPsychiatristsContactDetailsItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    psychiatrist_id: int
    title: Optional[str]
    phone: Optional[str]
    street_address: Optional[str]
    city: Optional[str]
    zip_code: Optional[str]
    state: Optional[str]


class PremiumQuizVisitsItem(BaseModel):
    id: int
    session_id: str
    utm_source: Optional[str]
    utm_campaign: Optional[str]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    data_version: Optional[str]
    get_started: Optional[bool]
    get_started_at: Optional[datetime]
    answer_1: Optional[str]
    answer_1_at: Optional[datetime]
    answer_2: Optional[str]
    answer_2_at: Optional[datetime]
    answer_3: Optional[str]
    answer_3_at: Optional[datetime]
    answer_4: Optional[str]
    answer_4_at: Optional[datetime]
    answer_5: Optional[str]
    answer_5_at: Optional[datetime]
    answer_6: Optional[str]
    answer_6_at: Optional[datetime]
    answer_7: Optional[str]
    answer_7_at: Optional[datetime]
    answer_8: Optional[str]
    answer_8_at: Optional[datetime]
    answer_9: Optional[str]
    answer_9_at: Optional[datetime]
    answer_10: Optional[str]
    answer_10_at: Optional[datetime]
    answer_11: Optional[str]
    answer_11_at: Optional[datetime]
    answer_12: Optional[str]
    answer_12_at: Optional[datetime]
    quiz_result_has_ocd: Optional[bool]
    quiz_result_has_ocd_at: Optional[datetime]
    last_screen: Optional[str]
    last_screen_seen_at: Optional[datetime]
    symptoms: Optional[str]
    symptoms_at: Optional[str]
    submitted_information: Optional[bool]
    submitted_information_at: Optional[datetime]
    closed_screen: Optional[str]
    closed_screen_at: Optional[datetime]
    referrer: Optional[str]
    user_agent: Optional[str]
    created_at: datetime = datetime.now()


class PremiumRegionItem(BaseModel):
    id: int
    region: Optional[str]
    rcd_email: Optional[str]
    member_advocate_email: Optional[str]
    accepting_trial_advocate_chat_channels: int = 0


class PremiumSponsoredEligibilityItem(BaseModel):
    id: int
    email: str
    createdAt: datetime = datetime.now()
    updatedAt: Optional[datetime] = datetime.now()


class PremiumStateEligibilityFormItem(BaseModel):
    id: int
    state: Optional[str]
    not_in_us: Optional[bool]
    older_than_18: Optional[bool]
    src: Optional[str]
    guid: Optional[str]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    created_at: datetime = datetime.now()


class PremiumStatesItem(BaseModel):
    id: int
    state: str
    state_abbr: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    age_barrier: str = "adults"
    clinician_priority: int = 51
    premium_country_id: Optional[int] = 5
    medicare_medicaid: Optional[int]
    rcm_region: Optional[str]


class PremiumSubmissionInfoItem(BaseModel):
    id: int
    email: str
    above18: Optional[str]
    createdAt: datetime = datetime.now()


class PremiumUserNotesItem(BaseModel):
    id: int
    user_id: int
    notes: Optional[str]


class PremiumUserTagsItem(BaseModel):
    user_id: int
    tag: str


class PremiumUsersItem(BaseModel):
    id: int
    device_id: Optional[str]
    session_id: Optional[str]
    user_id: int
    intake_call_id: Optional[int]
    sponsored: bool = False
    saw_premium_screen_at: Optional[datetime]
    intake_clinician_user_id: Optional[int]
    intake_phase: Optional[bool]
    onboarding_screen_with_chat_selection: Optional[str]
    show_get_started: Optional[bool] = False
    clicked_get_started: bool = False
    clicked_get_started_at: Optional[datetime]
    entered_motivations: Optional[bool]
    entered_motivations_at: Optional[datetime]
    dob: Optional[date]
    entered_dob_at: Optional[datetime]
    first_name: Optional[str]
    last_name: Optional[str]
    responsible_party_first_name: Optional[str]
    responsible_party_last_name: Optional[str]
    entered_name_at: Optional[datetime]
    phone: Optional[str]
    phone_cleaned: Optional[str] = Field(exclude=True)
    phone_cleaned_reversed: Optional[str] = Field(exclude=True)
    state: Optional[str]
    entered_state_at: Optional[datetime]
    insurance: Optional[str]
    entered_insurance_at: Optional[datetime]
    selected_clinician_user_id: Optional[int]
    selected_clinician_at: Optional[datetime]
    agreed_to_premium_policy: Optional[bool]
    agreed_to_premium_policy_at: Optional[datetime]
    sent_first_demo_message: Optional[bool]
    sent_first_demo_message_at: Optional[datetime]
    seen_payments_screen: Optional[bool]
    seen_payments_screen_at: Optional[datetime]
    last_scheduled_informational_session_appointment_id: Optional[int]
    last_completed_informational_session_appointment_id: Optional[int]
    last_scheduled_informational_session_at: Optional[datetime]
    failed_to_convert_informational_session: Optional[bool] = False
    failed_to_convert_informational_session_at: Optional[datetime]
    wants_clinical_consultation: Optional[bool]
    wants_clinical_consultation_at: Optional[datetime]
    completed_clinical_consultation: Optional[bool]
    completed_clinical_consultation_at: Optional[datetime]
    wants_therapy: Optional[bool]
    wants_therapy_at: Optional[datetime]
    completed_therapy: Optional[bool]
    completed_therapy_at: Optional[datetime]
    clinical_consultation_promo_code_id: Optional[str]
    therapy_promo_code_id: Optional[str]
    assigned_clinician_user_id: Optional[int]
    customer_id: Optional[str]
    subscription_id: Optional[str]
    send_notifications: bool = True
    discussion_loop_open: Optional[bool] = False
    discussion_loop_opened_at: datetime = datetime.now()
    first_subscribed: Optional[bool]
    first_subscribed_at: Optional[datetime]
    onboarding_show_products: Optional[bool]
    seen_products_offering_screen: Optional[bool]
    seen_products_offering_screen_at: Optional[datetime]
    seen_consultation_product_screen: Optional[bool]
    seen_consultation_product_screen_at: Optional[datetime]
    seen_therapy_product_screen: Optional[bool]
    seen_therapy_product_screen_at: Optional[datetime]
    seen_support_product_screen: Optional[bool]
    seen_support_product_screen_at: Optional[datetime]
    sent_first_live_message: Optional[bool]
    sent_first_live_message_at: Optional[datetime]
    internal_user: Optional[bool] = False
    hidden_user: Optional[bool] = False
    ab_test_show_paywall: Optional[bool]
    ab_test_intake_workflow: Optional[bool]
    ab_test_onboarding_screen_with_chats: Optional[bool]
    inserted_scheduling_intake_steps: Optional[bool]
    converted: Optional[bool]
    service: Optional[str]
    active: Optional[bool] = True
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    had_assigned_clinician: Optional[bool] = False
    active_subscription: Optional[bool] = False
    current_service: Optional[str]
    quick_note: Optional[str] = ""
    is_test_user: Optional[bool] = False
    per_session_price: Optional[str] = ""
    billing_notes: Optional[str]
    data_entry_needs_audit: Optional[bool]
    data_entry_notes: Optional[str]
    protocol_type: Optional[str]
    session_length: Optional[str]
    discharge_reason: Optional[str]
    diagnostic_date: Optional[datetime]
    diagnostic_at: Optional[datetime]
    diagnostic_timezone: Optional[str]
    diagnostic_status: Optional[str]
    external_id: Optional[int]
    diagnosed_with_ocd: Optional[bool]
    eligible_for_nocd_therapy: Optional[bool]
    clinician_push_disabled: Optional[bool]
    age_range: Optional[str]
    snooze_clinician_notifications: Optional[bool]
    insurance_id: Optional[int]
    how_did_you_hear_about_nocd: Optional[str]
    app_user: Optional[bool]
    how_do_you_like_the_nocd_app: Optional[str]
    what_prompted_you_to_reach_out_for_therapy_now: Optional[str]
    therapy_best_describes_you: Optional[str]
    therapy_type_cbt: Optional[bool]
    therapy_type_erp: Optional[bool]
    therapy_type_act: Optional[bool]
    therapy_type_other: Optional[bool]
    notes: Optional[str]
    insurance_provider: Optional[str]
    insurance_type: Optional[str]
    insurance_notes: Optional[str]
    school: Optional[str]
    billing_additional_notes: Optional[str]
    rp_first_name: Optional[str]
    rp_last_name: Optional[str]
    rp_relation: Optional[str]
    rp_phone: Optional[str]
    rp_email: Optional[str]
    emergency_name: Optional[str]
    emergency_relation: Optional[str]
    emergency_phone: Optional[str]
    cancellation_reason: Optional[str]
    responsible_party_relation_to_patient: Optional[str]
    clinician_signed: Optional[bool]
    clinician_signed_email: Optional[str]
    email_optin: Optional[bool]
    text_optin: Optional[bool]
    address: Optional[str]
    city: Optional[str]
    zipcode: Optional[str]
    rp_name: Optional[str]
    emergency_email: Optional[str]
    notification_preferences_json: Optional[Any]
    billing_plan: Optional[str]
    billing_contact_name: Optional[str]
    billing_contact_email: Optional[str]
    billing_contact_phone: Optional[str]
    billing_contact_relation_to_patient: Optional[str]
    billing_cash_pay_payment_terms: Optional[str]
    billing_cash_pay_payment_plan: Optional[str]
    billing_cash_pay_90_min: Optional[str]
    billing_cash_pay_60_min: Optional[str]
    billing_cash_pay_45_min: Optional[str]
    billing_cash_pay_30_min: Optional[str]
    billing_cash_pay_special_payment_terms: Optional[str]
    billing_ins_carrier: Optional[str]
    billing_ins_plan_type: Optional[str]
    billing_ins_group_number: Optional[str]
    billing_ins_sub_first_name: Optional[str]
    billing_ins_sub_last_name: Optional[str]
    billing_ins_sub_dob: Optional[str]
    billing_ins_sub_member_id: Optional[str]
    billing_ins_sub_relation_to_patient: Optional[str]
    billing_ins_coverage: Optional[str]
    billing_verified_at: Optional[datetime]
    billing_verified_by: Optional[str]
    billing_ins_dependent_first_name: Optional[str]
    billing_ins_dependent_last_name: Optional[str]
    billing_ins_dependent_dob: Optional[str]
    notify_pref_method_email: Optional[bool] = True
    notify_pref_method_sms: Optional[bool] = True
    notify_pref_method_push: Optional[bool] = True
    notify_pref_freq_48hr: Optional[bool] = True
    notify_pref_freq_24hr: Optional[bool] = True
    notify_pref_freq_1hr: Optional[bool] = True
    amd_backfill_chart_id: Optional[int]
    summary_private_notes_global: Optional[str]
    therapy_session_count_start: Optional[int] = 1
    therapy_checkin_count_start: Optional[int] = 1
    billing_verification_status: Optional[str] = "Not Verified"
    billing_paused_states: str = "Not Paused"
    billing_version: Optional[str] = "legacy"
    superbill_support: Optional[str] = "no_superbills"
    billing_owner: Optional[str]
    auto_billing_status: Optional[str] = "autobill"
    auto_bill_timer: Optional[datetime]
    billing_ins_sub_gender: Optional[str]
    billing_ins_dependent_gender: Optional[str]
    billing_ins_deductible_cents: Optional[int]
    billing_ins_copay_cents: Optional[int]
    billing_ins_prior_auth: Optional[str]
    billing_ins_coinsurance_cents: Optional[int]
    how_did_you_hear_about_nocd_v2: Optional[Any]
    peer_advisor_email: Optional[str]
    country_code: Optional[str]
    do_not_book: Optional[bool]
    billing_additional_info: Optional[str]
    drop_off: Optional[bool]
    drop_off_reasons: Optional[Any]
    prevented_drop_off_reasons: Optional[Any]
    care_team_flag: Optional[bool]
    care_team_flag_reason: Optional[str]
    drop_off_reviewed: Optional[bool]
    apero_patient_id: Optional[str]
    apero_insurance_id: Optional[str]
    welcome_outreach_sent: Optional[bool]
    default_currency: Optional[str] = "USD"
    billing_superbill_enabled: int = 0
    preferred_name: Optional[str]
    clinical_scratchpad: Optional[str]
    kudos_survey_sent: Optional[bool]
    zocdoc_patient: Optional[bool]
    therapist_preferences: Optional[Any]
    pronouns: Optional[str]
    form_automation_active: Optional[int] = 0
    form_automation_create_at: Optional[datetime]
    form_automation_initialized: Optional[int] = 0
    form_automation_initialized_by: Optional[str]
    form_automation_initialized_at: Optional[datetime]
    form_automation_user_form_settings_authorized_by: Optional[str]
    form_automation_user_form_settings_authorized_at: Optional[datetime]
    form_automation_paused_by: Optional[str]
    form_automation_paused_at: Optional[datetime]
    billing_paused_states_note: Optional[str]
    billing_paused_states_clinician_internal_note: Optional[str]
    billing_paused_states_member_note: Optional[str]
    is_self_scheduling_enabled: Optional[bool] = True
    authorizer: Optional[str]
    sca_status: Optional[str]
    optin_anon_research: Optional[str] = "auto_optin"
    eligible_for_transfer: Optional[bool]
    opted_in_to_marketing_sms: Optional[int]
    form_automation_frequency: Optional[int] = 21
    show_payment_plan_member_portal: Optional[bool] = False
    insurance_card_upload_status: Optional[str]
    balance_status: Optional[str] = "okay"
    balance_status_updated_at: Optional[datetime]
    fears_and_responses_enabled: Optional[bool] = False
    credit_card_status: Optional[str] = "okay"
    credit_card_status_updated_at: Optional[datetime]
    balance_status_enabled: Optional[bool] = True
    can_transfer_therapist: Optional[bool] = True
    can_schedule_session: Optional[bool] = True
    can_reschedule_session: Optional[bool] = True
    can_cancel_session: Optional[bool]
    has_kp_referral: bool = False
    member_preferred_first_name: Optional[str] = Field(exclude=True)
    responsible_party_preferred_first_name: Optional[str] = Field(exclude=True)
    mr_notif_ts: Optional[datetime]
    member_advocate_region: Optional[int]
    message_reminder_notif_ts: Optional[datetime]
    bill_late_cancels: Optional[bool] = True
    billing_flag_override: bool = False
    billing_flag_override_timer: Optional[datetime]
    member_balance_restrictions: Optional[str] = "no_restriction"
    auto_charging_insurance_mr: Optional[str]
    show_enroll_in_auto_charging_insurance_mr: Optional[bool]
    is_nocd_staff: Optional[int] = 0
    is_nocd_alumni: Optional[bool]
    alumni_start_date: Optional[date]
    billing_paused_states_last_updated_at: Optional[datetime]
    second_address: Optional[str]
    second_address_city: Optional[str]
    second_address_zipcode: Optional[str]
    specialties_json: Optional[Any]
    book_appointment_disabled: Optional[str] = "no_restriction"
    account_type: str = "member"
    member_availability_json: Optional[Any]
    current_scheduling_frequency: Optional[str]
    bill_ptsd_as_cash: Optional[bool]
    is_referred_to_hloc_therapy: Optional[bool] = False
    using_medicaid_or_medicare: Optional[int]
    show_therapy_milestone_announcement_flow: Optional[bool] = False
    parents_living_status: Optional[str]
    gov_healthcare_program: Optional[str]
    has_shared_custody: Optional[str]
    country_other: Optional[str]
    scheduling_preferences: Optional[Any]
    new_insurance_card_upload_pending: Optional[bool] = False
    required_therapist_gender: Optional[str] = "No preference"
    required_therapist: Optional[str]
    clinical_reviewed_scheduling_frequency: Optional[str]
    clinical_reviewed_scheduling_frequency_updated_at: Optional[datetime]
    clinical_reviewed_scheduling_frequency_updated_by: Optional[str]
    bulk_scheduling_guidance: Optional[str]
    member_adherence_expectation: Optional[str]
    member_adherence_expectation_details: Optional[str]
    compatibility_rate_with_member: Optional[str]
    compatibility_rate_with_member_details: Optional[str]
    pause_discharge_flow_until: Optional[datetime]
    scheduling_preferences_dow: Optional[Any]
    clinical_reviewed_scheduling_frequency_reason: Optional[str]
    month_day: Optional[str] = Field(exclude=True)
    hospitalized_recently: Optional[str]
    followup_care_recently: Optional[str]
    intent_self_harm_recently: Optional[str]
    current_intent_self_harm: Optional[str]
    hospital_discharge_date: Optional[date]


class PremiumUsersAmdBackfillItem(BaseModel):
    id: int
    chart_id: int
    user_id: int
    mapping_type: Optional[str]
    amd_patient_email: Optional[str]
    amd_patient_name: Optional[str]
    amd_patient_provider: Optional[str]
    retool_patient_email: Optional[str]
    retool_patient_name: Optional[str]
    retool_patient_provider: Optional[str]
    backfilled_pdf: Optional[str]
    backfilled_demographics: Optional[str]


class PremiumUsersAmdBackfillIgnoredChartsItem(BaseModel):
    id: int
    chart_id: int
    amd_patient_email: Optional[str]
    amd_patient_name: Optional[str]
    amd_patient_provider: Optional[str]
    ignored_reason: Optional[str]


class PremiumUsersBalanceStatusLogItem(BaseModel):
    id: int
    user_id: int
    new_status: str
    reason_for_status_change: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()


class PremiumUsersBillingDetectorItem(BaseModel):
    id: int
    user_id: int
    card_status: str
    customer_email: Optional[str]
    customer_id: str
    stripe_pm_id: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class PremiumUsersChangeLogItem(BaseModel):
    id: int
    user_id: int
    column_updated: str
    old_varchar_value: Optional[str]
    new_varchar_value: Optional[str]
    created_at: Optional[datetime] = datetime.now()


class PremiumUsersCreditCardStatusLogItem(BaseModel):
    id: int
    user_id: int
    new_status: str
    reason_for_status_change: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()


class PremiumUsersFlagsItem(BaseModel):
    id: int
    user_id: int
    flag_name: str
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    flag_metadata: Optional[str]
    payload: Optional[Any]


class PremiumUsersNotificationsLogItem(BaseModel):
    id: int
    user_id: int
    email_json: Optional[Any]
    sms_json: Optional[Any]
    push_json: Optional[Any]
    therapist_in_app_json: Optional[Any]
    created_at: datetime = datetime.now()


class PremiumWaitlistItem(BaseModel):
    id: int
    name: Optional[str]
    email: Optional[str]
    insurance: Optional[str]
    state: Optional[str]
    phone: Optional[str]
    src: Optional[str]
    guid: Optional[str]
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    created_at: datetime = datetime.now()


class PromoTemplatesItem(BaseModel):
    id: int
    label: Optional[str]
    limit_type: str
    promo_type: str
    duration_days: Optional[int]
    appointment_count: Optional[int]
    currency: str
    discounted_rate_90min_cents: Optional[int]
    discounted_rate_60min_cents: Optional[int]
    discounted_rate_45min_cents: Optional[int]
    discounted_rate_30min_cents: Optional[int]
    discount_percentage: Optional[int]
    nocd_credit_cents: Optional[int]
    created_at: datetime = datetime.now()
    created_by: str
    archived_at: Optional[str]
    archived_by: Optional[str]


class ProviderCredentialingItem(BaseModel):
    id: int
    premium_clinicians_email: Optional[str]
    provider_type: Optional[str]
    credentialing_status: Optional[str] = "Not Started"
    credentialing_live_date: Optional[datetime]
    follow_up: Optional[bool]
    follow_up_date: Optional[datetime]
    additional_comments: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool]
    state: Optional[str]
    plan_manager: str
    credentialing_terminated_date: Optional[datetime]
    disabled_for_booking: Optional[bool] = False
    status_updated_at: Optional[datetime] = datetime.now()
    healthcare_plan_notified_date: Optional[datetime]
    projected_in_network_date: Optional[datetime]
    application_in_process_date: Optional[datetime]
    waiting_for_provider_documentation_date: Optional[datetime]
    initial_submission_date: Optional[datetime]
    resubmission_date: Optional[datetime]


class ProviderCredentialingInsuranceManagersItem(BaseModel):
    insurance_plan: str
    insurance_manager: str
    is_national: Optional[bool]
    plan_information_link: Optional[str]
    provider_forms_1: Optional[str]
    provider_forms_2: Optional[str]
    provider_forms_3: Optional[str]


class ProviderCredentialingStateInsuranceManagersItem(BaseModel):
    state: str
    state_manager: str


class ProviderCredentialingStatusHistoryItem(BaseModel):
    id: int
    version: int
    premium_clinicians_email: Optional[str]
    credentialing_status: Optional[str] = "Not Started"
    state: Optional[str]
    plan_manager: Optional[str]
    created_at: datetime
    updated_at: Optional[datetime]


class ProviderCredentialingStatusLogItem(BaseModel):
    id: int
    provider_credentialing_id: Optional[str]
    updated_status: Optional[str]
    previous_status: Optional[str]
    premium_clinicians_email: Optional[str]
    state: Optional[str]
    plan_manager: Optional[str]
    created_at: datetime = datetime.now()


class ProviderOnboardingItem(BaseModel):
    id: int
    clinician_email: str
    selected_option: Optional[str]
    provider_name: Optional[str]
    states_licensed_in: Optional[Any]
    health_plans_already_credentialed_with: Optional[str]
    graduate_degree_received_from: Optional[str]
    option_1_username: Optional[str]
    option_1_password: Optional[str]
    option_1_checklist: Optional[str]
    option_2_caqh_number: Optional[str]
    option_2_npi_number: Optional[str]
    option_2_phonenumber: Optional[str]
    option_2_medicare_number: Optional[str]
    option_2_medicaid_number: Optional[str]
    option_2_specialty: Optional[str]
    option_2_dob: Optional[str]
    option_2_checklist: Optional[str]
    option_2_disclosure_q1: Optional[str]
    option_2_disclosure_q2: Optional[str]
    option_2_disclosure_q3: Optional[str]
    option_2_disclosure_q4: Optional[str]
    option_2_disclosure_q5: Optional[str]
    option_2_disclosure_q6: Optional[str]
    option_2_disclosure_q7: Optional[str]
    option_2_disclosure_q8: Optional[str]
    option_2_disclosure_q9: Optional[str]
    option_2_disclosure_q10: Optional[str]
    option_2_disclosure_q11: Optional[str]
    option_2_disclosure_q12: Optional[str]
    option_2_disclosure_q13: Optional[str]
    option_2_disclosure_q14: Optional[str]
    option_2_disclosure_q15: Optional[str]
    option_2_disclosure_q16: Optional[str]


class ProxiedPageVisitsItem(BaseModel):
    id: int
    user_id: int
    url: str
    created_at: datetime = datetime.now()


class ProxyCollectionEntryItem(BaseModel):
    id: int
    request: Optional[Any]
    notes: Optional[str]
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    created_at: datetime = datetime.now()


class ProxyHealthcheckItem(BaseModel):
    id: int
    hostname: str
    sha: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class ProxyPathPatternsItem(BaseModel):
    id: int
    src_host: Optional[str]
    dest_host: Optional[str]
    regex: str
    shape: str
    logging: Optional[str]
    enabled: Optional[bool] = False
    created_at: datetime = datetime.now()
    prefix_path: Optional[str]


class ProxyTrafficItem(BaseModel):
    id: int
    email: Optional[str]
    src_host: Optional[str]
    dest_host: Optional[str]
    created_at: datetime = datetime.now()


class PtoAllotmentItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    credit_day: Optional[date]
    pto_credit_mins: Optional[int]
    created_at: Optional[datetime] = datetime.now()
    created_by: Optional[str]
    is_deleted: Optional[bool]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]
    deleted_reason: Optional[str]
    do_not_resync: Optional[bool]
    do_not_resync_reason: Optional[str]
    notes: Optional[str]
    leave_type: Optional[str]
    leave_request_id: Optional[int]
    week: Optional[date] = Field(exclude=True)


class PtoAnalyticsItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    day: Optional[date]
    week: Optional[date]
    pto_hours: Optional[float]
    non_pto_hours: Optional[float]
    pct_pto: Optional[float]


class PtoGrantsItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    year: Optional[date]
    pto_grant_mins: Optional[int]
    created_at: Optional[datetime] = datetime.now()
    created_by: Optional[str]
    deleted_at: Optional[datetime]
    notes: Optional[str]
    leave_type: Optional[str]


class PurePsychiatryInterestSubmissionsItem(BaseModel):
    id: int
    first_name: Optional[str]
    last_name: Optional[str]
    phone: Optional[str]
    email: Optional[str]
    dob: Optional[date]
    other_services: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    call_preference: Optional[str]


class PushNotificationExpoIdItem(BaseModel):
    id: int
    clinician_user_id: int
    expo_push_id: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    platform: Optional[str]


class QueryAuditLogItem(BaseModel):
    id: int
    executed_by: str
    database_name: str
    command_type: str
    execution_time: int
    query_state: str
    query_details: Optional[str]
    created_at: datetime = datetime.now()
    query_type: str


class QuiltConfigurationItem(BaseModel):
    id: int
    user_id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class QuizEventsItem(BaseModel):
    id: int
    session_id: str
    quiz_id: str
    event_name: str
    event_payload: Optional[Any]
    created_at: datetime = datetime.now()


class RatelimitsItem(BaseModel):
    id: int
    user_id: int
    country: Optional[str]
    state: Optional[str]
    limit_reason: str
    start_date: datetime
    end_date: datetime
    num_days: int
    restrict_new_posts: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class RcmTeamManagementItem(BaseModel):
    email: str
    is_active: bool = False
    rcm_region: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    archived_at: Optional[datetime]
    last_assigned_freshdesk: bool = False
    last_assigned_eligibility: bool = False
    last_assigned_apero_task: bool = False


class ReferralCallNotesItem(BaseModel):
    id: int
    note_content: Optional[str]
    author: Optional[str]
    created_at: datetime = datetime.now()
    external_provider_referral_id: Optional[int]
    talkiatry_referral_id: Optional[int]
    deleted_at: Optional[datetime]
    kaiser_referral_id: Optional[int]


class RefundCheckItem(BaseModel):
    id: int
    user_id: int
    refund_amount: int
    payee: str
    check_number: int
    account_number: Optional[int]
    routing_number: Optional[int]
    memo: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str


class RefundLineApplicationsItem(BaseModel):
    id: int
    user_id: int
    refund_check_id: int
    member_charges_id: int
    amount: int
    created_at: datetime = datetime.now()
    created_by: str


class ReplicationMonitorItem(BaseModel):
    id: int
    key: str
    updated_at: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()


class ResetTokensItem(BaseModel):
    id: int
    user_id: int
    reset_token: str
    metadata: Optional[Any]
    activated_at: Optional[datetime]
    created_at: datetime = datetime.now()


class ResolveClinicianTasksItem(BaseModel):
    id: int
    task_id: str
    task_type: str
    clinician_email: str
    resolved_at: datetime = datetime.now()


class ResponsePreventionItem(BaseModel):
    id: int
    user_id: int
    content: str
    entity_id: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    created_by: Optional[str]
    updated_by: Optional[str]
    is_deleted: Optional[bool] = False


class ResponsePreventionMessagesItem(BaseModel):
    id: int
    obsessionID: Optional[str]
    triggerID: Optional[str]
    userID: int
    header: Optional[str] = ""
    title: Optional[str]
    order: int
    hiddenStatus: bool
    entityID: str
    updated: float
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool] = False
    created_by: Optional[str]
    updated_by: Optional[str]


class RetentionAnalysisItem(BaseModel):
    id: int
    request_name: str
    user_id: int
    period_number: int
    discharge_id: int
    predicted_category: Optional[str]
    predicted_sub_category: Optional[str]
    predicted_reason: Optional[str]
    predicted_alternative_care: Optional[str]
    summary: Optional[str]
    trace_id: Optional[str]
    updated_at: datetime = datetime.now()
    created_at: datetime = datetime.now()


class RetentionPerUserAndMonthItem(BaseModel):
    id: int
    user_id: int
    clinician_email: Optional[str]
    period_start: datetime
    period_end: datetime
    period_number: int
    retained: bool
    first_session_date: datetime
    last_session_date: datetime
    session_count: int
    updated_at: datetime = datetime.now()
    created_at: datetime = datetime.now()


class RetoolUsersCategoriesItem(BaseModel):
    id: int
    user_email: str
    category: str
    created_by: str
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class ReturningMemberAcknowledgementsItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class RevenueLedgerItem(BaseModel):
    id: int
    ma_id: int
    member_invoices_id: int
    user_id: int
    amount: Optional[int]
    note: Optional[str]
    event_category: Optional[str]
    event_subcategory: Optional[str]
    ledger_date: datetime = datetime.now()
    locked_status: Optional[str]
    created_at: datetime = datetime.now()
    created_by: str
    metadata: Optional[Any]


class RipplingEmployeesItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    employee_id: str
    preferredFirstName: Optional[str] = Field(exclude=True)
    workEmail: Optional[str] = Field(exclude=True)
    employeeStartDate: Optional[date] = Field(exclude=True)
    employeeEndDate: Optional[date] = Field(exclude=True)
    roleState: Optional[str] = Field(exclude=True)
    hash: str
    employee: Any
    department: Optional[str] = Field(exclude=True)
    standard_weekly_hours: Optional[float] = Field(exclude=True)


class RipplingLeaveRequestsItem(BaseModel):
    id: int
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    leave_request_id: str
    endDate: Optional[date] = Field(exclude=True)
    endDateEndTime: Optional[str] = Field(exclude=True)
    status: Optional[str] = Field(exclude=True)
    startDate: Optional[date] = Field(exclude=True)
    startDateStartTime: Optional[str] = Field(exclude=True)
    requestedBy: Optional[str] = Field(exclude=True)
    roleTimezone: Optional[str] = Field(exclude=True)
    role: Optional[str] = Field(exclude=True)
    reasonForLeave: Optional[str] = Field(exclude=True)
    processedBy: Optional[str] = Field(exclude=True)
    hash: str
    leave_request: Any
    computedStartUTC: Optional[datetime] = Field(exclude=True)
    numMinutes: Optional[int] = Field(exclude=True)
    computedEndUTC: Optional[datetime] = Field(exclude=True)
    leaveType: Optional[str] = Field(exclude=True)
    leavePolicy: Optional[str] = Field(exclude=True)
    policyDisplayName: Optional[str] = Field(exclude=True)


class RipplingLeaveRequestsByDayItem(BaseModel):
    id: int
    leave_request_id: Optional[str]
    leave_request_date: Optional[date]
    smear_num_minutes: Optional[float]
    rippling_status: Optional[str]
    leave_reason: Optional[str]
    clinician_email: Optional[str]
    committed_hours: Optional[float]
    credited_mins: Optional[float] = Field(exclude=True)
    pto_accrual_divider: Optional[int] = 40


class RipplingLeaveRequestsPtoHoursItem(BaseModel):
    id: int
    leave_request_id: Optional[str]
    leave_request_date: Optional[date]
    raw_num_minutes: Optional[float]
    adjusted_num_minutes: Optional[float]
    rippling_status: Optional[str]
    is_deleted: Optional[bool] = False
    leave_reason: Optional[str]
    clinician_email: Optional[str]
    adjusted_by: Optional[str]
    adjustment_reason: Optional[str]
    counts_towards_pto: Optional[bool] = True
    start_time: Optional[datetime]
    end_time: Optional[datetime]
    is_generated_weekend: Optional[int] = 0
    policyDisplayName: Optional[str]
    leavePolicy: Optional[str]


class ScheduledAppointmentsItem(BaseModel):
    id: int
    event_id: Optional[str]
    clinician_email: str
    start_time_in_iso8601_utc: str
    end_time_in_iso8601_utc: str
    session_length: int
    session_type: str
    user_id: Optional[int]
    gcal_id: Optional[str]
    zoom_id: Optional[str]
    zoom_join_link: Optional[str]
    zoom_password: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class ScheduledErpItem(BaseModel):
    id: int
    entryID: str
    done: int = 0
    scheduledDate: Optional[datetime]
    notes: str
    obssesion: str
    trigger: str
    place: str
    obsessionID: str
    triggerID: str
    userID: int = 0
    scheduledID: Optional[str]
    spentTime: float
    anxiety: int
    trainingType: str
    placeID: str
    promptID: str
    intensityGoal: int
    heartRate: int
    timeForSession: int
    updated: float
    promtMessage: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    practice_type: Optional[str]
    practice_goal: Optional[int]
    distress_before: Optional[int]
    distress_after: Optional[int]
    completed_note: Optional[str]
    did_resist_compulsions: Optional[int]
    completed_at: Optional[datetime]


class ScreenSeenAtItem(BaseModel):
    id: int
    user_id: str
    screen: str
    timestamp: datetime = datetime.now()


class SearchIndexItem(BaseModel):
    id: int
    __pinecone_id: Optional[str] = Field(exclude=True)
    type: str
    content_id: str
    section_id: int
    author: str
    chunk: str
    content_hash: str
    num_tokens: int
    uri: str
    content_created_at: datetime
    encoder_model: str
    index_name: Optional[str]
    metadata: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool]
    deleted_at: Optional[datetime]


class SearchLedgerItem(BaseModel):
    id: int
    user_id: Optional[int]
    query: Optional[str]
    page: Optional[int]
    includes_posts: Optional[bool]
    includes_website: Optional[bool]
    created_at: Optional[datetime] = datetime.now()


class SearchQueriesItem(BaseModel):
    id: int
    userID: Optional[int]
    attrID: Optional[str]
    searchPage: str
    searchTerm: str
    resultsCount: int = 0
    searchResults: Optional[str]
    durationInMillis: int = 0
    createdAt: datetime = datetime.now()


class SecondTherapistSurveysItem(BaseModel):
    id: int
    user_id: int
    created_at: datetime = datetime.now()
    therapist_unavailable: Optional[bool] = False
    scheduling_issues: Optional[bool] = False
    additional_support: Optional[bool] = False
    other: Optional[str]
    extra_comments: Optional[str]
    therapist_unexpectedly_cancelled: Optional[bool] = False


class SelfAnalysisItem(BaseModel):
    id: int
    userID: int
    answerIndex: str
    questionIndex: str
    name: str
    source: Optional[str]
    analysDate: str
    ybocsID: str
    isPremium: Optional[bool] = False
    diagnosed: Optional[bool]
    score: Optional[int]
    created_at: datetime = datetime.now()


class SelfSchedulerVisitorEventsItem(BaseModel):
    id: int
    visitor_id: str
    created_at: datetime = datetime.now()
    event_name: Optional[str]
    event_payload: Optional[Any]


class SelfSchedulerVisitorsItem(BaseModel):
    id: int
    visitor_id: str
    ip_address: Optional[str]
    ip_country: Optional[str]
    ip_state: Optional[str]
    referrer: Optional[str]
    user_agent: Optional[str]
    version: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    scheduled_from_page_url: Optional[str]
    user_id: Optional[int]
    appointment_id: Optional[int]


class SelfServiceResultsItem(BaseModel):
    id: int
    insurance_provider: str
    state: str
    protocol_type: Optional[str]
    clinician_count: int
    updated_at: datetime = datetime.now()
    created_at: datetime = datetime.now()
    earliest_session_date: Optional[date]


class SelfServiceResultsLogItem(BaseModel):
    id: int
    insurance_provider: str
    state: str
    protocol_type: Optional[str]
    clinician_count: int
    updated_at: datetime = datetime.now()
    created_at: datetime = datetime.now()
    earliest_session_date: Optional[date]
    results_at_ts: datetime = datetime.now()
    earliest_session_date_non_da: Optional[date]


class SentNotificationsItem(BaseModel):
    id: str
    user_id: int
    message: Optional[str]
    badge_count: Optional[int]
    created_at: datetime = datetime.now()


class SeoIndexedPostsItem(BaseModel):
    post_id: int
    indexing_reason: Optional[str]
    created_by: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class ServiceAddressesItem(BaseModel):
    id: int
    service_address_state: Optional[str]
    tax_id: Optional[str]
    groupII_NPI_id: Optional[str]
    group_name: Optional[str]
    group_service_address: Optional[str]
    address_2: Optional[str]
    city: Optional[str]
    zip_code: Optional[str]
    covid_19_status: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    apero_facility: Optional[str]


class SessionEvaluationsItem(BaseModel):
    id: int
    appt_id: int
    member_id: int
    clinician_email: str
    session_type: str
    output: Optional[Any]
    trace_id: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class SessionSurveyItem(BaseModel):
    id: int
    user_id: int
    member_appointment_id: Optional[int]
    star_review: Optional[int]
    technology_negative_experience: Optional[int]
    therapist_negative_experience: Optional[int]
    other_negative_experience: Optional[int]
    technology_positive_experience: Optional[int]
    conversation_positive_experience: Optional[int]
    therapist_positive_experience: Optional[int]
    other_positive_experience: Optional[int]
    comment_text: Optional[str]
    follow_up_notes: Optional[str]
    created_at: datetime = datetime.now()
    post_id: Optional[int]
    q_compare_to_expectations_da: Optional[int]
    q_rate_your_session_da: Optional[int]
    q_session_90_minutes_da: Optional[int]
    q_therapist_thoughts_da: Optional[int]
    q_comment_text_da: Optional[str]
    survey_type: Optional[str]
    therapist_star_review: Optional[int]
    felt_seen_and_heard: Optional[bool]
    therapist_conducted_well: Optional[bool]
    optimistic_willing_to_help: Optional[bool]
    not_seen_and_heard: Optional[bool]
    therapist_conducted_poorly: Optional[bool]
    not_optimistic_willing_to_help: Optional[bool]
    technology_star_review: Optional[int]
    therapist_comment_text: Optional[str]
    technology_comment_text: Optional[str]
    therapist_comment_reply: Optional[str]
    reply_date: Optional[datetime]
    public_review: Optional[str]
    has_given_initials_consent: Optional[bool]
    public_review_title: Optional[str]
    status: Optional[str] = "PUBLISHED_ON_WEBSITE_AND_THERAPIST_PROFILE"
    clinician_user_id: Optional[int]
    subtypes: Optional[Any]
    therapist_processes_and_policies_stars: Optional[bool]
    therapist_starting_to_know_me_stars: Optional[bool]
    therapist_cares_about_me_stars: Optional[bool]
    therapist_uses_session_time_wisely_stars: Optional[bool]
    therapy_going_overall_stars: Optional[bool]
    more_about_experience: Optional[Any]
    more_about_experience_text: Optional[str]
    feeling_about_progress_stars: Optional[bool]
    more_about_progress: Optional[Any]
    more_about_progress_text: Optional[str]
    how_supported_stars: Optional[bool]
    more_about_where_youre_at: Optional[Any]
    more_about_how_supported_text: Optional[str]
    outcome_label: Optional[str]
    outcome_notes: Optional[str]
    outcome_set_by: Optional[str]
    outcome_set_at: Optional[datetime]
    assigned_to: Optional[str]
    is_featured: int = 0


class SessionSurveyFollowUpsItem(BaseModel):
    id: int
    user_id: int
    session_survey_id: int
    textline_post_uuid: str
    textline_conversation_uuid: str
    send_at: datetime
    send_status: str
    send_status_reason: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class SettingsItem(BaseModel):
    id: int
    userID: int
    scheduledID: str
    staredExposureID: str
    completedSessions: int
    numberOfSessions: int
    currentExerciseGoalTime: float
    defaultGoalTime: float
    goalResistanceTime: float
    incrementTime: float
    startGoalTime: float
    ybocsFrequency: str
    reminders: str
    settingID: str
    updated: float


class SignallingPhrasesItem(BaseModel):
    id: int
    phrase: str
    is_trigger_phrase: Optional[bool]
    is_reassurance_phrase: Optional[bool]
    subtype_phrase: Optional[bool]
    medication_phrase: Optional[bool]


class SlackMessagesItem(BaseModel):
    id: int
    channel_name: Optional[str]
    channel_id: Optional[str]
    message_id: Optional[str]
    user_id: Optional[str]
    text: Optional[str]
    is_reply: Optional[bool]
    parent_message_id: Optional[str]
    created_at: Optional[datetime]


class SlotsOfferedToMembersItem(BaseModel):
    id: int
    clinician_email: str
    slot: datetime
    duration_in_mins: Optional[int]
    type: Optional[str]
    chosen_candidate_user_id: int
    chosen_candidate: Optional[Any]
    seen_by_chosen_candidate_at: Optional[datetime]
    appointment_id: Optional[int]
    candidates: Optional[Any]
    created_at: datetime = datetime.now()
    created_by: Optional[str]
    source: Optional[str]
    updated_at: datetime = datetime.now()
    deleted_at: Optional[datetime]
    expires_at: Optional[datetime]


class SlotsToOfferMembersItem(BaseModel):
    id: int
    clinician_email: str
    slot: datetime
    duration_in_mins: int
    clinician_override_availability_id: Optional[int]
    type: str
    user_ids: Optional[Any]
    status: Optional[str] = "queued"
    status_reason: Optional[str]
    output: Optional[Any]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: datetime = datetime.now()
    updated_by: Optional[str]


class SmsQueueItem(BaseModel):
    id: int
    user_id: int
    phone: str
    body: str
    textline_group_name: Optional[str]
    template_name: Optional[str]
    label: Optional[str]
    sent: Optional[bool] = False
    sent_at: Optional[datetime]
    created_at: datetime = datetime.now()


class SmsTemplatesItem(BaseModel):
    id: int
    name: str
    body: Optional[str]
    template_variable_schema: Optional[Any]
    textline_group: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()


class SnapshotMetadataLedgerItem(BaseModel):
    id: int
    dest_table: str
    create_table_stmt: str
    bq_query: str
    created_at: datetime = datetime.now()
    created_by: str


class SnapshotMonitorItem(BaseModel):
    id: int
    hostname: Optional[str]
    env: str
    func: str
    status: str
    exc: Optional[str]
    elapsed_time: Optional[int]
    started_at: Optional[datetime] = datetime.now()
    completed_at: Optional[datetime]
    dest_table: str
    bq_query: str
    primary_key: str
    indexes: Optional[str]
    created_by: str
    num_records: int
    columns: Any


class SnoozedClinicianTasksItem(BaseModel):
    id: int
    task_id: str
    task_type: str
    clinician_email: str
    expires_at: datetime
    created_at: datetime = datetime.now()


class SosEpisodesItem(BaseModel):
    id: int
    user_id: int
    sos_subtype_id: int
    sos_subtype_name: str
    media_duration_seconds: int
    elapsed_media_duration_seconds: Optional[int]
    text_progress_percent: Optional[int]
    end_media_mode: Optional[str]
    quit_reason: Optional[str]
    quit: Optional[bool]
    completed: Optional[bool]
    create_trace_id: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    ended_at: Optional[datetime]


class SosEpisodesV2Item(BaseModel):
    id: int
    user_id: int
    obsession_id: Optional[str]
    trigger_id: Optional[str]
    compulsion_id: Optional[str]
    start_distress: int
    end_distress: Optional[int]
    did_resist_compulsions: Optional[bool]
    completed_note: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    completed_at: Optional[datetime]


class SosPreventionTipAssignmentsItem(BaseModel):
    id: int
    user_id: int
    response_prevention_message_id: int
    created_at: datetime = datetime.now()


class SosSubtypesItem(BaseModel):
    id: int
    rank: int
    name: str
    is_general: Optional[bool] = False
    is_tutorial: Optional[bool] = False
    icon_image_url: str
    info_image_url: str
    media_duration_seconds: int
    media_text: str
    media_transcript: str
    media_audio_url: str
    media_video_url: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class SosToolAssignmentsItem(BaseModel):
    id: int
    user_id: int
    exercise_tool_id: int
    created_at: datetime = datetime.now()


class SpecialtiesItem(BaseModel):
    id: int
    specialty: str
    created_at: datetime = datetime.now()
    created_author: Optional[str]
    is_deleted: Optional[bool]


class SplitTestUsersItem(BaseModel):
    id: int
    variant_name: str
    has_variant: bool
    user_id: int
    created_at: datetime = datetime.now()


class SqlIdeQueriesItem(BaseModel):
    id: int
    name: Optional[str] = "Untitled"
    query: str
    created_at: datetime = datetime.now()
    archived_at: Optional[datetime]


class StateInsurancesItem(BaseModel):
    id: int
    state: str
    insurance_id: int
    accepted: bool
    created_at: datetime = datetime.now()
    ready_for_credentialing: Optional[bool]
    sca: Optional[bool]
    allows_associate: Optional[bool] = False
    hide_from_external_display: Optional[bool] = False


class StatesOfFocusItem(BaseModel):
    id: int
    state: Optional[str]
    starting_at: Optional[date]
    created_by: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()


class StreamlitAuditHistoryItem(BaseModel):
    id: int
    audit_id: Optional[str]
    question_id: Optional[str]
    question_detail: Optional[str]
    clinician_email: Optional[str]
    member_user_id: Optional[int]
    role: Optional[str]
    message: Optional[str]
    agent_logs: Optional[str]
    is_sufficient: Optional[bool]
    is_reviewed: Optional[datetime]
    event: Optional[str]
    is_test: Optional[bool] = False
    model_name: Optional[str]
    created_at: Optional[datetime]
    created_by: Optional[str]


class StreamlitChatHistoryItem(BaseModel):
    id: int
    email: str
    chat_id: str
    message: str
    role: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class StreamlitPermissionsItem(BaseModel):
    id: int
    email: Optional[str]
    role: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    created_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]


class StripeItem(BaseModel):
    id: int
    userID: int
    stripe_customer_id: Optional[str]


class StripeApiRequestsItem(BaseModel):
    id: int
    user_id: Optional[int]
    request: str
    request_id: Optional[str]
    metadata: Optional[Any]
    response: Optional[bytes]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class StripeBalanceTransactionsLedgerItem(BaseModel):
    __row_id: int
    id: str
    amount: int
    fee: int
    net: int
    created: int
    created_ts: Optional[datetime] = Field(exclude=True)
    source: Optional[str]
    type: str
    status: str
    balance_transaction_payload: Any
    record_type: str
    recorded_at: datetime = datetime.now()


class StripeChargeFailuresLogItem(BaseModel):
    id: int
    user_id: int
    failure_reason: Optional[str]
    metadata: Optional[Any]
    stripe_created_at: float
    created_at: datetime = datetime.now()


class StripeEventsItem(BaseModel):
    id: int
    event_id: str
    created: datetime
    event_type: str
    request_id: Optional[str]
    object_type: str
    object_id: Optional[str]
    customer_id: Optional[str]
    subscription_id: Optional[str]
    api_version: str
    metadata: Optional[Any]
    previous_attributes: Optional[Any]
    event: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class StripePaymentInfoItem(BaseModel):
    id: int
    user_id: int
    stripe_customer_id: str
    stripe_payment_method_id: Optional[str]
    card_last4: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class StripePayoutLedgerItem(BaseModel):
    __row_id: int
    id: str
    amount: int
    arrival_date: int
    arrival_date_ts: Optional[datetime] = Field(exclude=True)
    destination: str
    balance_transaction: str
    status: str
    payout: Any
    record_type: str
    recorded_at: datetime = datetime.now()


class StripeSubscriptionsItem(BaseModel):
    id: int
    subscription_id: str
    user_id: Optional[int]
    customer_id: Optional[str]
    status: Optional[str]
    stripe_created: Optional[datetime]
    billing_cycle_anchor: Optional[datetime]
    current_period_start: Optional[datetime]
    current_period_end: Optional[datetime]
    cancel_at_period_end: Optional[bool]
    ended_at: Optional[datetime]
    stripe_updated_at: Optional[datetime]
    coupon_id: Optional[str]
    cancel_reason: Optional[str]
    webhook_delete_request_id_populated: Optional[bool]
    webhook_invoice_payment_failed: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class SubsequentYbocsPromptItem(BaseModel):
    user_id: int
    started_at: Optional[datetime]
    skipped_at: Optional[datetime]
    id: int


class SuicidalBehaviorFormItem(BaseModel):
    id: int
    user_id: int
    member_appointments_id: Optional[int]
    session_type: Optional[str]
    protocol_type: Optional[str]
    q1_prep_acts_nssi: Optional[str]
    q1_prep_acts_nssi_lifetime: Optional[str]
    q1_prep_acts_nssi_last_time: Optional[str]
    q1_prep_acts_nssi_date: Optional[str]
    q1_prep_acts_si: Optional[str]
    q1_prep_acts_si_lifetime: Optional[str]
    q1_prep_acts_si_last_time: Optional[str]
    q1_prep_acts_si_date: Optional[str]
    q2_aborted_acts_nssi: Optional[str]
    q2_aborted_acts_nssi_lifetime: Optional[str]
    q2_aborted_acts_nssi_last_time: Optional[str]
    q2_aborted_acts_nssi_date: Optional[str]
    q2_aborted_acts_si: Optional[str]
    q2_aborted_acts_si_lifetime: Optional[str]
    q2_aborted_acts_si_last_time: Optional[str]
    q2_aborted_acts_si_date: Optional[str]
    q2_aborted_acts_med_damage: Optional[str]
    q2_aborted_acts_med_damage_text: Optional[str]
    q3_interrupted_acts_nssi: Optional[str]
    q3_interrupted_acts_nssi_lifetime: Optional[str]
    q3_interrupted_acts_nssi_last_time: Optional[str]
    q3_interrupted_acts_nssi_date: Optional[str]
    q3_interrupted_acts_si: Optional[str]
    q3_interrupted_acts_si_lifetime: Optional[str]
    q3_interrupted_acts_si_last_time: Optional[str]
    q3_interrupted_acts_si_date: Optional[str]
    q3_interrupted_acts_med_damage: Optional[str]
    q3_interrupted_acts_med_damage_text: Optional[str]
    q4_actual_acts_nssi: Optional[str]
    q4_actual_acts_nssi_lifetime: Optional[str]
    q4_actual_acts_nssi_last_time: Optional[str]
    q4_actual_acts_nssi_date: Optional[str]
    q4_actual_acts_si: Optional[str]
    q4_actual_acts_si_lifetime: Optional[str]
    q4_actual_acts_si_last_time: Optional[str]
    q4_actual_acts_si_date: Optional[str]
    q4_actual_acts_med_damage: Optional[str]
    q4_actual_acts_med_damage_text: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    q1_prep_acts_nssi_details: Optional[str]
    q1_prep_acts_si_details: Optional[str]
    q2_aborted_acts_nssi_details: Optional[str]
    q2_aborted_acts_si_details: Optional[str]
    q3_interrupted_acts_nssi_details: Optional[str]
    q3_interrupted_acts_si_details: Optional[str]
    q4_actual_acts_nssi_details: Optional[str]
    q4_actual_acts_si_details: Optional[str]


class SupervisionsItem(BaseModel):
    id: int
    supervision_name: Optional[str]
    zoom_link: Optional[str]


class SupervisionsAttendanceItem(BaseModel):
    id: int
    supervision_id: int
    supervision_name: Optional[str]
    clinician_email: Optional[str]
    created_at: datetime = datetime.now()


class SupportChatItem(BaseModel):
    id: int
    trace_id: str
    content: str
    channel_user_id: int
    member_user_id: Optional[int]
    support_user_id: Optional[int]
    automated: Optional[str]
    button_type: Optional[str]
    created_at: datetime = datetime.now()


class SupportChatPinnedUsersItem(BaseModel):
    id: int
    support_user_id: int
    member_user_id: int
    created_at: datetime = datetime.now()


class SupportChatTemplatesItem(BaseModel):
    id: int
    title: str
    body: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()


class SupportChatUsersItem(BaseModel):
    id: int
    user_id: int
    user_sent_first_message: Optional[bool] = False
    total_user_messages_sent: Optional[int] = 0
    total_support_messages_sent: Optional[int] = 0
    last_user_message_sent_at: Optional[datetime]
    last_support_message_sent_at: Optional[datetime]
    last_message_sent_at: Optional[datetime]
    support_seen_latest_message: Optional[bool] = True
    user_seen_latest_message: Optional[bool]
    support_seen_channel_at: Optional[datetime]
    user_seen_channel_at: Optional[datetime]
    discussion_loop_open: Optional[bool] = False
    discussion_loop_opened_at: Optional[datetime]
    bootstrapped_chat: Optional[int]
    created_at: datetime = datetime.now()


class SupportGroupAllowOverridesItem(BaseModel):
    id: int
    user_id: int
    reason: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()


class SupportGroupBansItem(BaseModel):
    id: int
    user_id: int
    reason: Optional[str]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()


class SupportNotificationsItem(BaseModel):
    id: int
    chat_id: int
    target_user_id: int
    sent_notification_id: Optional[str]
    not_sent_reason: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class SupportTeamItem(BaseModel):
    id: int
    email: str
    user_id: int
    first_name: Optional[str] = ""
    last_name: Optional[str] = ""
    image_id: Optional[str] = ""
    is_test_user: Optional[int] = 0
    created_at: datetime = datetime.now()
    deleted_at: Optional[datetime]


class SupportUserNotesItem(BaseModel):
    id: int
    user_id: int
    notes: Optional[str]


class SupportUserTagsItem(BaseModel):
    user_id: int
    tag: str


class SurveyOnboardingMotivationsItem(BaseModel):
    id: int
    userID: Optional[int]
    motivation: Optional[str]
    addMyOwn: Optional[bool] = False
    version: str
    createdAt: datetime = datetime.now()
    updatedAt: Optional[datetime] = datetime.now()


class SurveyOnboardingTherapyTypesItem(BaseModel):
    id: int
    user_id: Optional[int]
    therapy_type: str
    created_at: datetime = datetime.now()


class SurveyOnboardingUsersItem(BaseModel):
    id: int
    user_id: int
    stage: Optional[str]
    therapist_experience: str
    therapist_experience_add_my_own: bool
    no_therapist_reason: Optional[str]
    no_therapist_reason_add_my_own: Optional[bool]
    nocd_hope: Optional[str]
    therapy_interest: str
    created_at: datetime = datetime.now()
    attribution_source: Optional[str]
    attribution_source_details: Optional[str]


class SurveyOnboardingV3UsersItem(BaseModel):
    id: int
    user_id: int
    stage: Optional[str]
    diagnosed_with_ocd: bool
    erp_experience: str
    therapy_interest: str
    created_at: datetime = datetime.now()
    attribution_source: Optional[str]
    attribution_source_details: Optional[str]


class SurveyOnboardingWhoAreYouItem(BaseModel):
    id: int
    userID: Optional[int]
    whoAreYou: Optional[str]
    skipped: Optional[bool] = False
    createdAt: datetime = datetime.now()
    updatedAt: Optional[datetime] = datetime.now()


class TagsItem(BaseModel):
    id: int
    tag: str


class TalkiatryReferralsItem(BaseModel):
    id: int
    referral_date: date
    referral_partner_patient_identifier: Optional[int]
    patient_name_last: Optional[str]
    patient_name_first: Optional[str]
    patient_date_of_birth: date
    email: Optional[str]
    phone_mobile: Optional[str]
    phone_other: Optional[str]
    partner_referring_provider: Optional[str]
    partner_facility_site: Optional[str]
    partner_facility_department: Optional[str]
    patient_state: Optional[str]
    patient_zip: Optional[str]
    partner_referring_provider_npi: Optional[str]
    guardian_name_last: Optional[str]
    guardian_name_first: Optional[str]
    additional_json: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    user_id: Optional[int]
    call_outcome: Optional[str]
    external_providers_id: Optional[int]
    is_provider_reviewed: Optional[int] = 0


class TblAmazonConnectCallsItem(BaseModel):
    id: int
    event: str
    call_id: str
    amazon_phone_number: str
    contact_phone_number: str
    call_at: datetime
    user_id: Optional[str]
    agent_email: Optional[str]
    waiting_time: Optional[str]
    recording_url: Optional[str]
    duration: Optional[str]
    total_duration: Optional[str]
    notes: Optional[str]
    description: Optional[str]
    created_at: datetime = datetime.now()
    s3_link_id: Optional[str]
    transcript: Optional[str]
    summary: Optional[str]
    cluster: Optional[str]


class TblOrganizationCallItem(BaseModel):
    id: int
    organization_id: int
    notes: Optional[str]
    created_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class TblOrganizationContactItem(BaseModel):
    id: int
    organization_id: int
    first_name: Optional[str]
    last_name: Optional[str]
    role: str
    phone: str
    email: str
    accepts_warm_transfers: Optional[bool] = False
    is_deleted: Optional[bool] = False
    should_receive_screener: Optional[bool] = False
    call_priority_order: Optional[int]


class TblTalkdeskCallsItem(BaseModel):
    id: int
    event: str
    call_id: str
    talkdesk_phone_number: str
    contact_phone_number: str
    time_now: datetime
    contact_id: str
    agent_email: Optional[str]
    waiting_time: Optional[str]
    recording_url: Optional[str]
    duration: Optional[str]
    total_duration: Optional[str]
    notes: Optional[str]
    call_disposition: Optional[str]
    description: Optional[str]


class TblTwilioCcSentItem(BaseModel):
    id: int
    message_sid: str
    agent_email: str


class TblTwilioTextMessagesItem(BaseModel):
    id: int
    to_number: str
    from_number: str
    body: str
    message_sid: str
    sent_at: datetime
    thread_number: Optional[str]


class TextlineConversationsItem(BaseModel):
    id: int
    user_id: Optional[int]
    conversation_uuid: Optional[str]
    textline_created_at_unix: Optional[str]
    textline_created_at: Optional[datetime]
    customer_name: Optional[str]
    customer_uuid: Optional[str]
    customer_phone_number: Optional[str]
    created_at: datetime = datetime.now()


class TextlineCustomerUuidsItem(BaseModel):
    id: int
    phone: str
    customer_uuid: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]


class TextlinePostsItem(BaseModel):
    id: int
    body: Optional[str]
    conversation_uuid: Optional[str]
    thread_uuid: Optional[str]
    creator_uuid: Optional[str]
    post_uuid: Optional[str]
    creator_name: Optional[str]
    textline_user_type: Optional[str]
    textline_user_email: Optional[str]
    textline_user_phone: Optional[str]
    is_first_post: Optional[bool]
    is_first_response: Optional[bool]
    textline_created_at_unix: Optional[str]
    textline_created_at: Optional[datetime]
    created_at: datetime = datetime.now()


class TherapistApplicationSubmissionsItem(BaseModel):
    id: int
    session_id: str
    first_name: str
    last_name: str
    email: str
    phone: Optional[str]
    country: Optional[str]
    state: Optional[str]
    licensed_states: Optional[Any]
    licensed_provinces: Optional[Any]
    primary_license_type: Optional[str]
    has_worked_with_ocd_patients: Optional[int]
    can_diagnose_and_treat_without_oversight: Optional[int]
    position_type: Optional[str]
    resume_path: Optional[str]
    how_did_you_hear_about_us: Optional[str]
    referred_by: Optional[str]
    why_do_you_want_to_work_for_us: Optional[str]
    is_completed: Optional[int] = 0
    committed_hours: Optional[int]
    created_at: datetime = datetime.now()
    utm_source: Optional[str]
    utm_campaign: Optional[str]
    utm_term: Optional[str]
    utm_content: Optional[str]
    utm_medium: Optional[str]
    referrer: Optional[str]


class TherapistConversationsItem(BaseModel):
    id: int
    user_id: int
    chat_channel_id: Optional[int]
    description: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class TherapistDirectoryFactorsItem(BaseModel):
    id: int
    clinician_email: Optional[str]
    record_date: Optional[date] = Field(exclude=True)
    available_fs_slots_in_next_two_weeks: Optional[int]
    retention_to_session_6_last_180_days: Optional[float]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    deleted_at: Optional[datetime]


class TherapistMessagingEventsItem(BaseModel):
    id: int
    user_id: int
    message_id: Optional[int]
    chat_channel_id: Optional[int]
    is_timed_event: Optional[bool]
    event_time: Optional[datetime]
    event: str
    event_reason: str
    suggested_responses: Optional[str]
    trace_id: Optional[str]
    send_at: Optional[datetime]
    expires_at: Optional[datetime]
    dismissed: Optional[bool]
    final_response: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    deleted_at: Optional[datetime]


class TherapyChangeRequestLedgerItem(BaseModel):
    id: int
    request_id: int
    user_id: int
    request_reason: str
    request_status: str = "pending"
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class TherapyChangeRequestNoteItem(BaseModel):
    id: int
    user_id: int
    request_reason: str
    request_note: str
    request_status: str = "pending"
    primary_icd_code: Optional[Any]
    created_at: datetime = datetime.now()
    created_by: str
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    decline_reason_note: Optional[str]


class TherapyDayGapsItem(BaseModel):
    Appointment_Start_Date: Optional[str]
    Patient_Name: Optional[str]
    Appointment_Type: Optional[str]
    Appointment_Status: Optional[str]
    Provider: Optional[str]
    Patient_Email: Optional[str]
    Patient_Chart_Number: Optional[float]
    Days_Gap: Optional[float]
    id: int


class TherapyHomescreenQuestionSeenAtItem(BaseModel):
    id: int
    device_id: Optional[str]
    session_id: Optional[str]
    user_id: Optional[int]
    created_at: datetime = datetime.now()


class TherapyHomescreenSeenAtItem(BaseModel):
    id: int
    device_id: str
    session_id: str
    trace_id: str
    user_id: int
    therapy_status_screen_id: int
    created_at: datetime = datetime.now()


class TherapyMilestoneSharePromptItem(BaseModel):
    id: int
    user_id: int
    permission: Optional[bool]
    channels: Optional[Any]
    response: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class TherapyOnboardingCompletionItem(BaseModel):
    user_id: int
    onboarding_type: str
    completed: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class TherapySessionAnalysisItem(BaseModel):
    id: int
    clinician_email: str
    clinician_user_id: int
    member_user_id: int
    appointment_id: int
    did_spend_30_mins_rapport: Optional[bool]
    minutes_spent_rapport: Optional[int]
    timestamps_rapport: Optional[Any]
    feedback: Optional[str]
    transcript: Any
    transcript_accurate: bool
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class TherapySessionTranscriptionsItem(BaseModel):
    id: int
    ma_id: int
    trace_id: Optional[str]
    consent: Optional[datetime]
    transcript_consent: Optional[datetime]
    transcript: Optional[Any]
    live_transcript: Optional[Any]
    generated_note: Optional[str]
    output_ids: Optional[str]
    final_output_file_id: Optional[str]
    transcription_status: Optional[str]
    transcription_errors: Optional[str]
    generated_note_status: Optional[str]
    is_deleted: Optional[bool] = False
    rerun_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    audio_deleted_at: Optional[datetime]
    audio_deleted_by: Optional[str]
    similarity_score: Optional[float]
    session_id: Optional[str]
    is_draft: Optional[int]
    speaker_count: Optional[int]
    transcript_deleted_at: Optional[datetime]
    transcript_deleted_by: Optional[str]
    self_dictation: Optional[int] = 0
    session_summary: Optional[str]
    keep_for_30_days: Optional[datetime]


class TherapyStatusScreenItemsItem(BaseModel):
    id: int
    therapy_status_screen_id: int
    ordering_id: Optional[int] = 0
    image_type: Optional[str]
    image_name: Optional[str]
    image_url: str
    image_link: str
    image_link_type: str = "system"
    platform: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class TherapyStatusScreensItem(BaseModel):
    id: int
    therapy_status: str
    variant_id: int = 0
    enabled: Optional[bool] = True
    platform_restriction: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class TherapyTempItem(BaseModel):
    user_id: int
    app_created_date: Optional[date]
    first_therapy_date: Optional[date]
    last_therapy_date: Optional[date]
    id: int


class TherapyUserQuestionsItem(BaseModel):
    id: int
    userID: Optional[int]
    question: Optional[str]
    created_at: datetime = datetime.now()


class ThreadsLastSeenAtItem(BaseModel):
    id: int
    user_id: str
    thread_id: str
    timestamp: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()
    ended_at: Optional[datetime]


class ThreadsSeenAtItem(BaseModel):
    id: int
    user_id: str
    thread_id: str
    metadata: Optional[Any]
    timestamp: datetime = datetime.now()
    created_at: Optional[datetime] = datetime.now()
    ended_at: Optional[datetime]


class TicketsItem(BaseModel):
    id: int
    user_id: int
    description: Optional[str]
    complexity: str
    chat_channel_id: Optional[int]
    message_id: Optional[int]
    related_message_ids: Optional[str]
    due_at: Optional[datetime]
    resolved_by: Optional[str]
    resolved_at: Optional[datetime]
    created_at: datetime = datetime.now()
    updated_by: Optional[str]
    updated_at: datetime = datetime.now()
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]


class TicketsLedgerItem(BaseModel):
    id: int
    ticket_id: int
    user_id: int
    description: Optional[str]
    complexity: str
    chat_channel_id: Optional[int]
    message_id: Optional[int]
    related_message_ids: Optional[str]
    due_at: Optional[datetime]
    resolved_at: Optional[datetime]
    created_at: datetime
    updated_by: Optional[str]
    updated_at: datetime
    change_type: str
    change_timestamp: datetime = datetime.now()


class TimeSpentItem(BaseModel):
    id: int
    userID: int
    startDate: datetime
    endDate: datetime
    spentTime: float
    timeID: str
    updated: float
    created_at: datetime = datetime.now()


class ToggleCallNowLogItem(BaseModel):
    id: int
    call_now_disabled: bool
    expires_at: Optional[datetime]
    toggled_by: str
    logged_at: Optional[datetime] = datetime.now()


class TopicsItem(BaseModel):
    topic_id: str
    title: str
    description: str
    about: str
    about_url: Optional[str]
    image_url: Optional[str]
    category: str
    ordering: Optional[int] = 0
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_internal: int = 0


class TopicsPreSubtypesItem(BaseModel):
    topic_id: str
    title: str
    description: str
    about: str
    about_url: Optional[str]
    image_url: Optional[str]
    category: str
    ordering: Optional[int] = 0
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class TransferRequestAutomationLogItem(BaseModel):
    id: int
    transfer_request_id: int
    user_id: int
    status: str = "running"
    last_notification: str
    last_notification_sent_at: Optional[datetime]
    updated_at: datetime = datetime.now()
    created_at: datetime = datetime.now()
    started_at: datetime = datetime.now()
    started_by: Optional[str]
    deleted_at: Optional[datetime]
    deleted_by: Optional[str]
    stopped_at: Optional[datetime]
    stopped_by: Optional[str]


class TransferRequestNotesItem(BaseModel):
    id: int
    transfer_request_id: int
    note: str
    created_by: str
    created_at: datetime = datetime.now()


class TransferRequestsItem(BaseModel):
    id: int
    user_id: int
    reason: str
    reason_details: str
    conditions: Optional[Any]
    clinician_transferring_from_email: str
    is_current_clinician_continuing_treatment: Optional[int] = 0
    current_clinician_treatment_end_date: Optional[datetime]
    clinician_transferred_to_email: Optional[str]
    bootstrap_log_id: Optional[int]
    status: Optional[str] = "not_started"
    action: Optional[str] = "replace"
    assigned_to: Optional[str]
    created_by: str
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime]
    updated_by: Optional[str]
    primary_clinician_state: Optional[str]
    secondary_clinician_state: Optional[str]
    current_conditions: Optional[Any]
    primary_day_availability: Optional[Any]
    co_therapy_duration: Optional[str]
    condition_reason_details: Optional[str]


class TransferSurveysItem(BaseModel):
    id: int
    user_id: int
    clinician_user_id: int
    clinician_email: str
    not_felt_seen_and_heard: Optional[bool] = False
    session_not_conducted_well: Optional[bool] = False
    therapist_unable_to_help: Optional[bool] = False
    other: Optional[str]
    extra_comments: Optional[str]
    created_at: datetime = datetime.now()
    scheduling_issues: Optional[bool] = False
    member_moving: Optional[bool] = False
    therapist_leaving: Optional[bool] = False
    freshdesk_ticket_id: Optional[int]
    therapist_does_not_accept_insurance: Optional[int]


class TransfersLogItem(BaseModel):
    id: int
    user_id: int
    old_clinician_user_id: Optional[int]
    new_clinician_user_id: Optional[int]
    created_at: datetime = datetime.now()
    created_by: str
    type: Optional[str]
    transfer_survey_id: Optional[int]


class TraumaInterviewFormItem(BaseModel):
    id: int
    user_id: int
    q1_trauma_details: Optional[str]
    q2_other_traumatic_events: Optional[str]
    q3_target_trauma: Optional[str]
    q4_remember_feeling: Optional[bool]
    q5_feel_helpless: Optional[bool]
    q6_who_was_assailant: Optional[Any]
    q7_authority_figure_details: Optional[str]
    q8_assailant_other: Optional[str]
    q9_assailant_unknown: Optional[str]
    q10_where_trauma_occur: Optional[Any]
    q11_where_trauma_occur_other: Optional[str]
    q12_physical_injuries: Optional[str]
    q13_medical_attention: Optional[str]
    q14_legal_action_resulted: Optional[str]
    q15_blame_for_trauma: Optional[Any]
    q16_blame_for_trauma_other: Optional[str]
    q17_blame_for_trauma_details: Optional[str]
    q18_feeling_guilty: Optional[str]
    q19_current_physical_health: Optional[str]
    q20_health_problems: Optional[str]
    q21_support_system: Optional[str]
    q22_mood_details: Optional[str]
    q23_deliberately_harm_yourself: Optional[str]
    q24_sought_psychiatric_help: Optional[bool]
    q25_sought_psychiatric_help_details: Optional[str]
    q26_been_hospitalised: Optional[bool]
    q27_been_hospitalised_details: Optional[str]
    q28_prescription_medications: Optional[str]
    q29_street_drugs: Optional[str]
    q30_over_the_counter_medications: Optional[str]
    q31_alcohol_consumption: Optional[str]
    q32_drug_legal_social_problems: Optional[bool]
    q33_consider_to_have_drug_problem: Optional[bool]
    q34_life_trauma_summary_details: Optional[str]
    completed: Optional[bool]
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class TreatmentInterferingBehaviorFormItem(BaseModel):
    id: int
    user_id: int
    q1_not_acknowledge_problem: Optional[Any]
    q2_not_acknowledge_severity_impact: Optional[Any]
    q3_not_identify_treatment_goals: Optional[Any]
    q4_argues_with_treatment_team: Optional[Any]
    q5_change_focus_of_sessions: Optional[Any]
    q6_difficulty_explaining_treatment_plan: Optional[Any]
    q7_difficult_answering_questions: Optional[Any]
    q8_frequently_late_or_no_show: Optional[Any]
    q9_difficulty_following_treatment_plan: Optional[Any]
    q10_provides_inaccurate_information: Optional[Any]
    q11_engaging_in_self_destructive_acts: Optional[Any]
    q12_makes_team_feel_physically_threatened: Optional[Any]
    q13_other: Optional[str]
    completed: Optional[bool] = False
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class TreatmentRecommendationsItem(BaseModel):
    id: int
    user_id: int
    recommendation: Optional[str]
    created_at: datetime = datetime.now()


class TriggerLocksItem(BaseModel):
    id: int
    trigger_name: str
    enabled: bool = True
    created_at: datetime = datetime.now()


class UserItem(BaseModel):
    userID: int
    userName: str
    password: str
    firstName: str
    lastName: str
    email: Optional[str]
    paymentType: str
    payed: int = 0
    diagnosed: int = 0
    userProfileimageUrl: str
    userSettings: Optional[str]
    guid: Optional[str]
    created_at: Optional[datetime] = datetime.now()
    community_handle: Optional[str] = "Anonymous"
    avatar_name: Optional[str]
    about: Optional[str]
    internal_user: bool = False
    support_chat_enabled: bool = True
    group_chat_enabled: bool = False
    post_and_comment_notifications: bool = True
    bookmark_notifications: bool = True
    following_notifications: bool = True
    pro_notifications: bool = True
    reminder_notifications: bool = True
    nocd_notifications: bool = True
    is_survey_onboarding_complete: bool = True
    is_survey_onboarding_v2_complete: bool = True
    mod_10: Optional[int]
    internal_debug_build: Optional[bool]
    internal_pagination_build: Optional[bool]
    needs_password_reset: Optional[bool]
    reserving_user_id: Optional[bool]
    transaction_id: Optional[str]
    advocate_chat_enabled: bool = False
    show_community_onboarding: Optional[str] = "new_user_community_onboarding"
    can_post_media: Optional[bool] = True
    show_interests_on_profile: Optional[int] = 1
    show_subtypes_on_profile: Optional[int] = 1
    show_caption_on_profile: Optional[int] = 1
    show_about_on_profile: Optional[int] = 1
    show_questions_on_profile: Optional[int] = 1
    avatar_type: Optional[str] = "default"
    custom_avatar_url: Optional[str]
    avatar_id: Optional[int] = 0
    bio_image_url: Optional[str]
    caption: Optional[str]
    default_profile_bio_image_id: Optional[int] = 1
    custom_profile_bio_image_url: Optional[str]
    profile_bio_image_type: Optional[str] = "default"
    original_email: Optional[str]
    email_status: Optional[str]
    mark_notifications_seen_at: Optional[datetime]
    has_seen_therapy_welcome_banner: int = 0
    signup_source: Optional[str]
    is_private_linked_account: Optional[bool]
    community_handle_is_sensitive: Optional[int]


class UserAssetsItem(BaseModel):
    id: int
    user_id: int
    bucket: str
    asset_id: str
    reference_table: Optional[str]
    secret_key: str
    secret_md5: str
    pending: Optional[bool] = True
    created_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False


class UserBadgesItem(BaseModel):
    id: int
    badge_name: Optional[str]
    user_id: int
    is_enabled: Optional[bool] = False
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class UserBlocksItem(BaseModel):
    user_id: str
    block_reason: str
    moderator_email: str
    created_at: datetime = datetime.now()


class UserCommunityProfilesItem(BaseModel):
    user_id: int
    show_interests: bool = True
    show_bio: bool = True
    show_facts: bool = True
    show_details: bool = True
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class UserCompulsionItem(BaseModel):
    id: int
    obsessionID: str
    compulsion: Optional[str]
    compulsionID: str
    default_compulsion_id: Optional[str]
    tempObsID: Optional[str]
    updated: float
    userID: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool] = False
    deleted_at: Optional[datetime]
    created_by: Optional[str]
    updated_by: Optional[str]


class UserContactsItem(BaseModel):
    id: int
    user_id: int
    first_name: Optional[str]
    last_name: Optional[str]
    phone: Optional[str]
    email: Optional[str]
    contact_type: Optional[str]
    is_deleted: Optional[int] = 0
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class UserCountersItem(BaseModel):
    id: int
    user_id: int
    viewed_insurance_banner_count: int = 0
    created_at: datetime = datetime.now()


class UserCrmItem(BaseModel):
    userID: int
    jsonData: Optional[Any]


class UserCrpAwardBalancesItem(BaseModel):
    user_id: int
    balance: int
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class UserCrpAwardTransactionsItem(BaseModel):
    id: int
    user_id: int
    source: str
    amount: int
    balance_after: int
    created_at: Optional[datetime] = datetime.now()


class UserCrpCreditBalancesItem(BaseModel):
    user_id: int
    balance: int
    created_at: Optional[datetime] = datetime.now()
    updated_at: datetime = datetime.now()


class UserCrpCreditTransactionsItem(BaseModel):
    id: int
    user_id: int
    source: str
    amount: int
    balance_after: int
    created_at: Optional[datetime] = datetime.now()


class UserDebuggingImpersonationItem(BaseModel):
    id: int
    src_user_email: str
    impersonate_as_email: str
    created_by: str
    created_at: datetime = datetime.now()
    is_deleted: Optional[bool] = False
    deleted_by: Optional[str]
    deleted_at: Optional[datetime]
    src_host: Optional[str] = "app"


class UserDiagnosedItem(BaseModel):
    user_id: int
    diagnosis: bool
    updated_at: Optional[datetime] = datetime.now()
    created_at: datetime = datetime.now()


class UserEmailValidationItem(BaseModel):
    id: int
    email: str
    is_disposable_address: Optional[bool]
    result: Optional[str]
    risk: Optional[str]
    src: Optional[str]
    mailgun_result: Optional[Any]
    created_at: datetime = datetime.now()


class UserEmailVerificationItem(BaseModel):
    id: int
    email: str
    temp_code: str
    created_at: datetime = datetime.now()
    verified_at: Optional[datetime]


class UserEventsItem(BaseModel):
    id: int
    guid: str
    event: str
    ip_address: Optional[str]
    country: Optional[str]
    state: Optional[str]
    created_at: datetime = datetime.now()


class UserExpirationItem(BaseModel):
    id: int
    userID: int
    date: str


class UserFavoriteAppsItem(BaseModel):
    appID: int
    userID: int
    app: str
    updated: float
    created_at: datetime = datetime.now()


class UserFavoriteHobbiesItem(BaseModel):
    hobbyID: int
    userID: int
    hobby: str
    updated: float


class UserFavoriteInterestsItem(BaseModel):
    interestID: int
    userID: int
    interest: str
    updated: float


class UserFavoriteTasksItem(BaseModel):
    taskID: int
    userID: int
    task: str
    updated: float


class UserFlagsItem(BaseModel):
    id: int
    user_id: int
    give_back_expanded: Optional[bool]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class UserFlowLogItem(BaseModel):
    id: int
    userID: int
    flowSessionID: str
    eventType: str
    date: str
    appVersion: str


class UserInterestsItem(BaseModel):
    id: int
    user_id: int
    interest_id: int
    created_at: datetime = datetime.now()


class UserLastFeedParamsItem(BaseModel):
    id: int
    user_id: int
    initial_feed_type: str
    feed_type: str
    app_open_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class UserLastPostsSeenItem(BaseModel):
    user_id: int
    metadata: Any
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class UserMetadataItem(BaseModel):
    id: int
    user_id: int
    type: str
    f_json_data: Optional[Any] = Field(alias="json_data")
    boolean_value: Optional[bool] = False
    int_value: Optional[int]
    double_value: Optional[float]
    string_value: Optional[str]
    created_at: datetime = datetime.now()


class UserMotivationsItem(BaseModel):
    motivation_id: int
    user_id: int
    motivation: str
    selected: Optional[bool] = False
    default_id: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool] = False


class UserMutedThreadsItem(BaseModel):
    id: int
    user_id: int
    thread_id: int
    created_at: datetime = datetime.now()


class UserNotificationFlowsItem(BaseModel):
    id: int
    type: str
    user_id: int
    data: Optional[Any]
    seen_at: Optional[datetime]
    created_at: datetime = datetime.now()


class UserObsessionItem(BaseModel):
    id: int
    userID: int
    obsession: Optional[str]
    default_obsession_id: Optional[str]
    created_during_onboarding: Optional[bool] = False
    subtype_id: Optional[str]
    isRPMHidden: bool
    obsessionID: str
    updated: float
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool] = False
    deleted_at: Optional[datetime]
    created_by: Optional[str]
    updated_by: Optional[str]


class UserPermissionsItem(BaseModel):
    id: int
    user_id: int
    updated_by: Optional[str]
    new_posts_go_to_featured: Optional[bool] = False
    can_make_replies_to_locked_posts: Optional[bool] = False
    trusted_moderator: Optional[bool] = False
    can_see_moderation_feed: Optional[bool] = False
    ratelimit_bypass: Optional[bool] = False
    ctx_menu_dynamic_modules: Optional[bool] = False
    ctx_menu_featured_feed: Optional[bool] = False
    ctx_menu_hide_for_all: Optional[bool] = False
    ctx_menu_lock_threads: Optional[bool] = False
    ctx_menu_block_user: Optional[bool] = False
    ctx_menu_shadow_user: Optional[bool] = False
    ctx_menu_can_mark_as_trigger_warning: Optional[bool] = False
    ctx_menu_can_mark_subtypes: Optional[bool] = False
    ctx_menu_can_mark_with_subtypes: Optional[bool] = False
    ctx_menu_can_see_link_to_dynamic_context_menus: Optional[bool] = False
    ctx_menu_moderation_flags: Optional[bool] = False
    ctx_menu_highlight_reply: Optional[bool] = False
    pagination_viewer: Optional[bool] = False
    post_feed_placement_position_type_metadata_viewer: Optional[bool] = False
    post_current_flag_viewer: Optional[bool] = False
    post_user_id_viewer: Optional[bool] = False
    geo_viewer: Optional[bool] = False
    device_detail_viewer: Optional[bool] = False
    therapy_interaction_viewer: Optional[bool] = False
    user_creation_info_viewer: Optional[bool] = False
    user_who_are_you_viewer: Optional[bool] = False
    user_goals_from_nocd_viewer: Optional[bool] = False
    post_annotation_viewer: Optional[bool] = False
    view_count_viewer: Optional[bool] = False
    post_frequency_viewer: Optional[bool] = False
    app_opens_viewer: Optional[bool] = False
    post_flags_viewer: Optional[bool] = False
    is_user_internal: Optional[bool] = False
    can_transfer_therapist: Optional[bool]
    can_schedule_session: Optional[bool]
    can_reschedule_session: Optional[bool]
    can_cancel_session: Optional[bool]


class UserPersonalizedFeedsItem(BaseModel):
    user_id: int
    metadata: Any
    usage_metadata: Any
    feed_created_at: datetime = datetime.now()
    feed_used_at: Optional[datetime]


class UserPopularFeedLastSeenAtItem(BaseModel):
    user_id: int
    last_seen_at: datetime = datetime.now()
    created_at: datetime = datetime.now()


class UserPostRateLimitLogItem(BaseModel):
    user_id: int
    post_id: int
    total_count: int = 0
    timestamps: Optional[Any]
    created_at: Optional[datetime] = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class UserProfileFactResponsesItem(BaseModel):
    id: int
    user_id: int
    fact_id: int
    response: str
    created_at: datetime = datetime.now()


class UserProfileFactsItem(BaseModel):
    id: int
    fact: str
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()


class UserProfileOcdDetailResponsesItem(BaseModel):
    id: int
    user_id: int
    detail_id: int
    response: str
    created_at: datetime = datetime.now()


class UserProfileOcdDetailsItem(BaseModel):
    id: int
    detail: str
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()


class UserProfileQuestionAnswersItem(BaseModel):
    user_id: int
    question_id: int
    answer: str
    is_deleted: Optional[bool] = False
    is_active: Optional[bool] = False
    created_at: datetime = datetime.now()
    selected: Optional[int] = 0


class UserProfileQuestionsItem(BaseModel):
    id: int
    title: str
    is_deleted: Optional[bool] = False
    created_at: datetime = datetime.now()
    question: str


class UserPromosItem(BaseModel):
    id: int
    user_id: int
    promo_code: str
    notes: Optional[str]
    status: str = "Not Applied"
    created_by: str
    created_at: datetime = datetime.now()


class UserPushNotificationSettingLedgerItem(BaseModel):
    id: int
    user_id: int
    category: str
    old_enabled: bool = False
    new_enabled: bool = False
    created_at: datetime = datetime.now()


class UserPushNotificationSettingsItem(BaseModel):
    id: int
    user_id: int
    community_enabled: bool = True
    messages_enabled: bool = True
    therapy_enabled: bool = True
    marketing_enabled: bool = True
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class UserResolvedInsurancesItem(BaseModel):
    user_id: str
    state: str
    insurance: str


class UserSelfServiceOverridesItem(BaseModel):
    id: int
    user_id: int
    operation: Optional[str]
    reason: str
    deleted: Optional[int] = 0
    updated_at: datetime = datetime.now()
    created_by: str
    created_at: datetime = datetime.now()


class UserStateInsurancesItem(BaseModel):
    id: int
    user_id: int
    state: str
    insurance: str
    accepted: bool
    created_at: datetime = datetime.now()


class UserTokensItem(BaseModel):
    id: int
    userID: int
    deviceId: str
    accessToken: str
    role: Optional[str]
    auditing: Optional[str]
    auditor: Optional[str]
    created_at: datetime = datetime.now()


class UserTriggerItem(BaseModel):
    id: int
    obsessionID: str
    trigger: Optional[str]
    anxiety: int
    triggerID: str
    default_trigger_id: Optional[str]
    tempObsID: Optional[str]
    updated: float
    userID: Optional[int]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()
    is_deleted: Optional[bool] = False
    severity: int = 0
    deleted_at: Optional[datetime]
    created_by: Optional[str]
    updated_by: Optional[str]


class UserUploadedInsuranceItem(BaseModel):
    id: int
    user_id: int
    first_name: Optional[str]
    last_name: Optional[str]
    phone: Optional[str]
    email: Optional[str]
    front_image: Optional[str]
    rear_image: Optional[str]
    dob: Optional[date]
    created_at: datetime = datetime.now()
    state: Optional[str]
    sub_address: Optional[str]
    sub_city: Optional[str]
    sub_zip_code: Optional[str]
    sub_state: Optional[str]
    sub_first_name: Optional[str]
    sub_last_name: Optional[str]
    sub_relation_to_patient: Optional[str]
    sub_dob: Optional[date]
    sub_gender: Optional[str]
    member_id: Optional[str]
    group_number: Optional[str]
    prior_auth: Optional[str]
    plan_type: Optional[str]
    gender: Optional[str]
    other_insurance: Optional[str]
    insurance_id: Optional[int]
    using_medicaid_or_medicare: Optional[int]
    mbi_id: Optional[int]
    auto_elig_errors: Optional[str]
    needs_review: Optional[bool] = False
    is_third_party_admin: Optional[bool]
    updated_by: Optional[str]
    updated_at: Optional[datetime] = datetime.now()
    insurance_card_verification_status: Optional[str]
    insurance_card_verification_status_updated_at: Optional[datetime]
    insurance_card_verification_status_updated_by: Optional[str]
    card_active_for_year: Optional[str]
    predicted_sub_first_name: Optional[str]
    predicted_sub_last_name: Optional[str]
    predicted_member_id: Optional[str]
    predicted_group_number: Optional[str]
    predicted_insurance_id: Optional[int]
    predicted_reason: Optional[str]
    is_primary: Optional[bool] = True
    is_multi_upload: Optional[bool] = False


class UserSettingsItem(BaseModel):
    settingID: int
    userID: int
    timeForSession: Optional[int]
    avgResTimer: Optional[int]
    hourForSession: Optional[int]
    dayForSession: Optional[int]
    userSettings: Optional[str]
    created_at: datetime = datetime.now()
    updated_at: Optional[datetime] = datetime.now()


class UtilizationHistoryItem(BaseModel):
    id: int
    clinician_email: str
    day: Optional[date]
    completed_sessions: Optional[int]
    late_cancels: Optional[int]
    pto_credit: Optional[int]
    audit: Optional[Any]
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    working_hours: Optional[int]
    first_sessions: Optional[int]
    scheduled_sessions: Optional[int]
    pto_only_credit: Optional[float]
    adhoc_only_credit: Optional[float]


class UtilizationHistoryV2Item(BaseModel):
    id: int
    clinician_email: str
    day: Optional[date]
    completed_sessions: Optional[int]
    late_cancels: Optional[int]
    pto_only_credit: Optional[float]
    holiday_only_credit: Optional[int]
    adhoc_only_credit: Optional[float]
    total_leave_credit: Optional[float] = Field(exclude=True)
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()
    working_hours: Optional[int]
    first_sessions: Optional[int]
    scheduled_sessions: Optional[int]
    week: Optional[date] = Field(exclude=True)
    signed_minutes: Optional[int]
    s_adj_cal_util: Optional[int] = Field(exclude=True)
    s_adj_sign_util: Optional[int] = Field(exclude=True)
    uncredited_leave: Optional[float]
    grant_only_credit: Optional[float]
    v_adj_cal_util: Optional[int] = Field(exclude=True)
    v_adj_sign_util: Optional[int] = Field(exclude=True)


class VimeoVideoItem(BaseModel):
    id: int
    user_id: int
    vimeo_id: str
    post_id: Optional[int]
    session_id: Optional[str]
    event_name: str
    event_ts: datetime = datetime.now()


class WaitlistItem(BaseModel):
    id: int
    user_id: int
    created_at: datetime
    created_by: str
    updated_at: datetime
    updated_by: str
    is_active: Optional[bool]
    intake_calls_id: Optional[int]


class WebhookEventsItem(BaseModel):
    id: int
    source: str
    zoom_meeting_link: Optional[str]
    payload: Optional[Any]
    created_at: datetime = datetime.now()
    zoom_id: Optional[str] = Field(exclude=True)
    uuid: Optional[str] = Field(exclude=True)
    host_id: Optional[str] = Field(exclude=True)
    topic: Optional[str] = Field(exclude=True)
    duration: Optional[str] = Field(exclude=True)
    start_time: Optional[str] = Field(exclude=True)
    timezone: Optional[str] = Field(exclude=True)
    participant_id: Optional[str] = Field(exclude=True)
    participant_user_id: Optional[str] = Field(exclude=True)
    participant_join_time: Optional[str] = Field(exclude=True)
    event: Optional[str]
    event_ts: Optional[str]


class WebsiteRedirectsItem(BaseModel):
    id: int
    is_deleted: int = 0
    source: str
    destination: str
    permanent: Optional[int] = 1


class WeeklyInvoiceChargingItem(BaseModel):
    id: int
    bq_table_name: str
    status: Optional[str] = "not_started"
    stage: Optional[str]
    invoice_calculation_started_at: Optional[datetime]
    invoice_calculation_completed_at: Optional[datetime]
    invoice_notification_started_at: Optional[datetime]
    invoice_notification_completed_at: Optional[datetime]
    invoice_charging_started_at: Optional[datetime]
    invoice_charging_completed_at: Optional[datetime]
    metadata: Optional[Any]
    active: Optional[int] = 0
    created_by: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class WeeklyInvoiceChargingAdhocItem(BaseModel):
    id: int
    bq_table_name: str
    status: Optional[str] = "not_started"
    stage: Optional[str]
    invoice_calculation_started_at: Optional[datetime]
    invoice_calculation_completed_at: Optional[datetime]
    invoice_notification_started_at: Optional[datetime]
    invoice_notification_completed_at: Optional[datetime]
    invoice_charging_started_at: Optional[datetime]
    invoice_charging_completed_at: Optional[datetime]
    metadata: Optional[Any]
    active: Optional[int] = 0
    created_by: str
    created_at: datetime = datetime.now()
    updated_at: datetime = datetime.now()


class YbocsDisplayedLogItem(BaseModel):
    id: int
    user_id: int
    prompt_type: str
    device_id: Optional[str]
    session_id: Optional[str]


class YbocsReminderItem(BaseModel):
    user_id: int
    schedule: str
    next_reminder_utc_time: Optional[datetime]
    sent_notification: Optional[bool]
    sent_notification_at: Optional[datetime]


class YbocsRemindersSentItem(BaseModel):
    id: int
    user_id: int
    sent_at: datetime = datetime.now()
