
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievement_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `achievement_id` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `progress` int DEFAULT '0',
  `goal` int DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `data` text,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `idx_achievement_id` (`achievement_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actify_table` (
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `ip` varchar(64) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activation_targets_interview_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `routine_activities` json DEFAULT NULL,
  `enjoyable_activities` json DEFAULT NULL,
  `family_values` json DEFAULT NULL,
  `partner_values` json DEFAULT NULL,
  `friends_values` json DEFAULT NULL,
  `religion_values` json DEFAULT NULL,
  `meaningful_work` json DEFAULT NULL,
  `education_values` json DEFAULT NULL,
  `cultural_roots` json DEFAULT NULL,
  `recreation_values` json DEFAULT NULL,
  `volunteer_activity` json DEFAULT NULL,
  `physical_health_values` json DEFAULT NULL,
  `security_and_safety` json DEFAULT NULL,
  `life_organization` json DEFAULT NULL,
  `life_before_became_depressed` text,
  `life_if_not_depressed` text,
  `hours_of_sleep` text,
  `take_naps` text,
  `getting_up_fairly_consistent` text,
  `typical_day_in_eating` text,
  `types_of_foods_been_eating` text,
  `changed_eating_habits_since_depression` text,
  `daily_schedule_different_since_depression` text,
  `consistent_problems_or_difficulties` text,
  `other_activities_that_improve_mood` text,
  `completed` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `activation_targets_interview_form_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acuity_appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` varchar(255) DEFAULT NULL,
  `record_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `phone` varchar(255) DEFAULT '',
  `payload` json DEFAULT NULL,
  `response` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `canceled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acuity_scheduler_seen_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `index_on_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adherence_predictions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prediction_score` decimal(5,2) DEFAULT NULL,
  `prediction_label` varchar(255) DEFAULT NULL,
  `message_status` varchar(255) DEFAULT NULL,
  `message_status_reason` varchar(255) DEFAULT NULL,
  `message` text,
  `premium_chat_id` int DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `follow_up_message_status` varchar(255) DEFAULT NULL,
  `follow_up_message_status_reason` varchar(255) DEFAULT NULL,
  `follow_up_premium_chat_id` int DEFAULT NULL,
  `follow_up_sent_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admd_clinician_portal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `appointment_type` varchar(255) DEFAULT NULL,
  `background_info_reported_current_address` varchar(255) DEFAULT NULL,
  `background_info_consent_reviewed` tinyint(1) DEFAULT NULL,
  `background_info_verified_identity` tinyint(1) DEFAULT NULL,
  `background_history_json` json DEFAULT NULL,
  `background_info_prior_ocd_by_prof` varchar(64) DEFAULT NULL,
  `background_info_prior_non_ocd_diagnosis` varchar(64) DEFAULT NULL,
  `background_info_misdiagnosed_ocd` varchar(64) DEFAULT NULL,
  `background_info_outpatient_treatment` varchar(64) DEFAULT NULL,
  `background_info_prior_diagnosis_json` json DEFAULT NULL,
  `background_info_denied` tinyint(1) DEFAULT NULL,
  `background_info_trauma_history_json` json DEFAULT NULL,
  `background_info_family_history_json` json DEFAULT NULL,
  `background_info_medication_status` varchar(255) DEFAULT NULL,
  `background_info_current_relationship_status` varchar(64) DEFAULT NULL,
  `background_info_medical_history` varchar(64) DEFAULT NULL,
  `background_info_legal_problems` varchar(64) DEFAULT NULL,
  `background_info_history_json` json DEFAULT NULL,
  `background_info_followup_changes_to_medication` varchar(255) DEFAULT NULL,
  `background_info_followup_changes_to_medication_details` text,
  `background_info_followup_changes_to_doctor_visits` varchar(255) DEFAULT NULL,
  `background_info_followup_changes_to_doctor_visits_text` text,
  `ocd_tab_diamond_all_screenings_negative` tinyint(1) DEFAULT NULL,
  `ocd_tab_diamond_details` text,
  `ocd_tab_subtype_harm` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_contamination` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_sexual` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_religious` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_symmetry` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_somatic` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_other` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_json` json DEFAULT NULL,
  `ocd_tab_dsm_part_a` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_part_b` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_distress` int DEFAULT NULL,
  `ocd_tab_dsm_functional_impairment` int DEFAULT NULL,
  `ocd_tab_dsm_distress_domains` json DEFAULT NULL,
  `ocd_tab_dsm_part_c` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_part_d` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_insight` varchar(255) DEFAULT NULL,
  `ocd_tab_dsm_tic_related` varchar(255) DEFAULT NULL,
  `medical_within_normal_limits` tinyint(1) DEFAULT NULL,
  `medical_json` json DEFAULT NULL,
  `risk_assessment_json` json DEFAULT NULL,
  `summary_json` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advanced_insights_remapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admd_email` varchar(255) NOT NULL,
  `is_test_user` tinyint(1) DEFAULT NULL,
  `remapped_user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `admd_email` (`admd_email`),
  KEY `remapped_user_id` (`remapped_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advocate_chat_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advocate_risk_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `risk_status` varchar(255) DEFAULT NULL,
  `reasoning` varchar(255) DEFAULT NULL,
  `reasoning_details` varchar(255) DEFAULT NULL,
  `action_taken` varchar(255) DEFAULT NULL,
  `engagement_consensus` varchar(255) DEFAULT NULL,
  `notes` text,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `completed_by` varchar(255) DEFAULT NULL,
  `claimed_by` varchar(255) DEFAULT NULL,
  `claimed_at` timestamp NULL DEFAULT NULL,
  `cohort_month` varchar(255) DEFAULT NULL,
  `probability_at_cohort_assigment` decimal(6,6) DEFAULT NULL,
  `assigned_by` varchar(255) DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advocate_risk_log_updates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `column_updated` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advocate_trial_conversion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `conversion_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_messages_sent` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advocates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `description` text,
  `image_id` varchar(255) DEFAULT '',
  `image_height` int DEFAULT NULL,
  `image_width` int DEFAULT NULL,
  `link` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `available_for_chat` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `advocates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_suggested_appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `ma_id` int NOT NULL,
  `is_suggested` tinyint(1) NOT NULL DEFAULT '0',
  `suggested_slots` json NOT NULL DEFAULT (_utf8mb4'[]'),
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_clinician_email` (`clinician_email`),
  KEY `idx_ma_id` (`ma_id`),
  KEY `idx_is_suggested` (`is_suggested`),
  KEY `idx_user_id_clinician_email_ma_id_is_suggested` (`user_id`,`clinician_email`,`ma_id`,`is_suggested`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amita_texts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(255) NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anonymous_insurance_eligibility_checks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_provider_id` varchar(32) DEFAULT NULL,
  `apero_trading_partner_id` varchar(32) NOT NULL,
  `state` varchar(32) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `dob` date NOT NULL,
  `member_id` varchar(32) NOT NULL,
  `group_number` varchar(32) DEFAULT NULL,
  `apero_response` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_eligible` tinyint NOT NULL,
  `reason` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anxiety_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `scheduledID` varchar(255) NOT NULL,
  `level` int NOT NULL,
  `index` int NOT NULL,
  `time` int NOT NULL,
  `userID` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_anxiety_level_on_user_id_scheduled_id_index` (`userID`,`scheduledID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_coverage_sync_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `apero_coverage_id` varchar(255) NOT NULL,
  `mismatch_type` varchar(255) NOT NULL,
  `reviewed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reviewed_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_apero_coverage_id` (`apero_coverage_id`),
  KEY `idx_nocd_coverage_id` (`apero_coverage_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_coverages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_coverage_id` varchar(255) NOT NULL,
  `apero_patient_id` varchar(255) NOT NULL,
  `payload` json DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_coverage_id` (`apero_coverage_id`),
  KEY `apero_patient_id` (`apero_patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_eligibility_checks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `member_billing_coverages_id` int DEFAULT NULL,
  `member_billing_insurances_id` int DEFAULT NULL,
  `premium_clinicians_email` varchar(255) NOT NULL,
  `intake_insurances_id` int NOT NULL,
  `source` enum('manual_retool_billing_ui') NOT NULL,
  `authorizer` varchar(255) NOT NULL,
  `eligibility_id` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `group_number` varchar(255) DEFAULT NULL,
  `member_dob` varchar(255) NOT NULL,
  `effective_date` varchar(255) NOT NULL,
  `trading_partner_id` varchar(255) NOT NULL,
  `active_coverage` tinyint(1) DEFAULT NULL,
  `rejected` tinyint(1) DEFAULT NULL,
  `overall_rejection` varchar(255) DEFAULT NULL,
  `subscriber_rejections` json DEFAULT NULL,
  `communication_rejections` json DEFAULT NULL,
  `result` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `elig_reviewed_outcome` enum('reviewed_no_action','reviewed_needs_rerun','reviewed_needs_action','reviewed_switch_to_cash','verified_in_portal_insurance_active') DEFAULT NULL,
  `elig_reviewed_at` timestamp NULL DEFAULT NULL,
  `elig_reviewed_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_appointments_id` (`member_appointments_id`),
  KEY `member_billing_insurances_id` (`member_billing_insurances_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `apero_eligibility_checks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `apero_eligibility_checks_ibfk_2` FOREIGN KEY (`member_appointments_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_facilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_facility_id` varchar(255) NOT NULL,
  `apero_name` varchar(255) NOT NULL,
  `payload` json DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_facility_id` (`apero_facility_id`),
  KEY `apero_name` (`apero_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_line_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_line_application_id` varchar(255) NOT NULL,
  `apero_line_item_id` varchar(255) DEFAULT NULL,
  `apero_payment_id` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_line_application_id` (`apero_line_application_id`),
  KEY `apero_line_item_id` (`apero_line_item_id`),
  KEY `apero_payment_id` (`apero_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_line_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_line_item_id` varchar(255) DEFAULT NULL,
  `apero_visit_id` varchar(255) DEFAULT NULL,
  `linked_ehr_id` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_line_item_id` (`apero_line_item_id`),
  KEY `apero_visit_id` (`apero_visit_id`),
  KEY `linked_ehr_id` (`linked_ehr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_partners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trading_partner` varchar(255) NOT NULL,
  `human_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trading_partner` (`trading_partner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_patient_id` varchar(255) NOT NULL,
  `linked_ehr_id` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_patient_id` (`apero_patient_id`),
  KEY `linked_ehr_id` (`linked_ehr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_provider_id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_provider_id` (`apero_provider_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_syncs_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sync_name` varchar(255) NOT NULL,
  `mysql_records` int DEFAULT NULL,
  `bquery_records` int DEFAULT NULL,
  `num_new_records` int DEFAULT NULL,
  `num_deletions` int DEFAULT NULL,
  `num_updates` int DEFAULT NULL,
  `is_dryrun` tinyint(1) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `run_started_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `run_completed_ts` timestamp NULL DEFAULT NULL,
  `error_message` text,
  PRIMARY KEY (`id`),
  KEY `sync_name` (`sync_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apero_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apero_visit_id` varchar(255) NOT NULL,
  `apero_facility_id` varchar(255) DEFAULT NULL,
  `apero_provider_id` varchar(255) DEFAULT NULL,
  `apero_patient_id` varchar(255) DEFAULT NULL,
  `linked_ehr_id` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_visit_id` (`apero_visit_id`),
  KEY `apero_facility_id` (`apero_facility_id`),
  KEY `apero_patient_id` (`apero_patient_id`),
  KEY `apero_provider_id` (`apero_provider_id`),
  KEY `linked_ehr_id` (`linked_ehr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_installations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(255) NOT NULL,
  `deviceId_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reason` varchar(32) NOT NULL,
  `userID` int DEFAULT NULL,
  `deviceType` varchar(16) NOT NULL,
  `bundleName` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `buildID` varchar(255) NOT NULL,
  `model_name` varchar(255) NOT NULL,
  `os_version` varchar(255) NOT NULL,
  `timezone` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_on_device` (`deviceId`),
  KEY `index_on_user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=18438 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_opens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(255) NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `firstOpen` tinyint(1) DEFAULT '0',
  `userID` int DEFAULT NULL,
  `tokenID` int DEFAULT NULL,
  `reauthed` tinyint(1) DEFAULT '0',
  `register` tinyint(1) DEFAULT '0',
  `login` tinyint(1) DEFAULT '0',
  `logout` tinyint(1) DEFAULT '0',
  `auth_at` timestamp(3) NULL DEFAULT NULL,
  `deauth_at` timestamp(3) NULL DEFAULT NULL,
  `deviceType` varchar(16) NOT NULL,
  `bundleName` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `buildID` varchar(255) NOT NULL,
  `modelName` varchar(255) NOT NULL,
  `osVersion` varchar(255) NOT NULL,
  `locale` varchar(64) DEFAULT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `ipAddress` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `ended_at` timestamp(3) NULL DEFAULT NULL,
  `ft_test` tinyint(1) DEFAULT NULL,
  `xForwarded` varchar(255) DEFAULT NULL,
  `remote` varchar(255) DEFAULT NULL,
  `xCFip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_on_sessionID` (`deviceID`,`sessionID`),
  KEY `country_state` (`country`,`state`),
  KEY `created_at` (`created_at`,`userID`),
  KEY `index_created_at` (`created_at`),
  KEY `index_on_user` (`userID`),
  KEY `ipAddress` (`ipAddress`),
  KEY `userID` (`userID`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_opens_geo` (
  `app_open_id` int NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`app_open_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_sessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(255) NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `userID` int DEFAULT NULL,
  `tokenID` int DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `ended_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_on_sessionID` (`sessionID`),
  KEY `index_on_device` (`deviceID`),
  KEY `index_on_user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apple_sign_in_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apple_user_identifier` varchar(255) NOT NULL COMMENT 'Same for an Apple ID across all devices and apps associated with a Team ID',
  `user_id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_private_email` tinyint(1) NOT NULL COMMENT 'False means user chose to hide their Apple ID email on account creation, so Apple created a relay email address instead',
  `registration` tinyint(1) NOT NULL COMMENT 'True means a NOCD account was created as a result of the Apple Sign-In event',
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Ledgers every register and login made through Apple Sign-In, may be useful if we need to merge accounts';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apple_sign_in_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apple_user_identifier` varchar(255) NOT NULL COMMENT 'Same for an Apple ID across all devices and apps associated with a Team ID',
  `user_id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_private_email` tinyint(1) NOT NULL COMMENT 'False means user chose to hide their Apple ID email on account creation, so Apple created a relay email address instead',
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_apple_user_id` (`apple_user_identifier`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Stores every user that has authenticated via Apple Sign-In';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_billing_coverage_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_appointment_id` int NOT NULL,
  `member_billing_coverage_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_cancellation_reasons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reason` varchar(255) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_confirmation_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `status` enum('confirmed','cancelled') DEFAULT NULL,
  `cancellation_reason` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`member_appointments_id`),
  CONSTRAINT `appointment_confirmation_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_note_review_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `member_appointments_id` int NOT NULL,
  `note_text` text,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_type_change_recommendations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `recommendation_payload` json DEFAULT NULL,
  `is_accepted` tinyint DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `appointment_type_change_recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `appointment_type_change_recommendations_ibfk_2` FOREIGN KEY (`member_appointments_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apps_flyers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `apps_flyer_id` varchar(255) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_apps_flyer_id_user_id` (`apps_flyer_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2123685 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned_clinician_changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_user_id` int DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `authorizer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned_to_protocol_compliance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `not_compliant_reason` varchar(255) NOT NULL,
  `not_compliant_reason_details` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athena_care_interest_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `other_services` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribution_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attr_src` enum('ga') NOT NULL,
  `attr_id` varchar(255) NOT NULL,
  `attr_type` enum('ic','ss','lg','av') NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_otp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `otp` varchar(255) NOT NULL,
  `destroyed_at` timestamp NULL DEFAULT NULL,
  `redeemed_at` timestamp NULL DEFAULT NULL,
  `user_agent_issued_to` varchar(255) DEFAULT NULL,
  `ip_address_issued_to` varchar(255) DEFAULT NULL,
  `user_agent_redeemed` varchar(255) DEFAULT NULL,
  `ip_address_redeemed` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `otp` (`otp`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto_max_da_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `old_max_das_in_week` int DEFAULT NULL,
  `new_max_das_in_week` int DEFAULT NULL,
  `logged_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `raw_max_das` float DEFAULT NULL,
  `gap` float DEFAULT NULL,
  `multiplier` float DEFAULT NULL,
  `avg_weekly_hrs` float DEFAULT NULL,
  `num_weeks_in_avg` int DEFAULT NULL,
  `outlier_percent` float DEFAULT NULL,
  `committed_hours` float DEFAULT NULL,
  `committed_hours_times_multiplier` float DEFAULT NULL,
  `outlier_hours_cutoff` float DEFAULT NULL,
  `start_of_this_week_in_UTC` datetime DEFAULT NULL,
  `num_weeks` float DEFAULT NULL,
  `now_clinician_tz` datetime DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `max_das_in_week` int DEFAULT NULL,
  `default_max_das` float DEFAULT NULL,
  `default_committed_hours` float DEFAULT NULL,
  `committed_hours_multiplier` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automated_email_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intake_call_id` int NOT NULL,
  `sent` tinyint(1) NOT NULL,
  `sent_fail_reason` text,
  `email` varchar(255) DEFAULT NULL,
  `message_description` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `automated_text_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intake_call_id` int NOT NULL,
  `sent` tinyint(1) NOT NULL,
  `sent_fail_reason` text,
  `phone_number` varchar(255) DEFAULT NULL,
  `message_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avatars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar_id` varchar(255) NOT NULL,
  `avatar_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `record` json DEFAULT NULL,
  `record_hash` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `full_key` (`record_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bg_diagnostics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `bg_consent_reviewed` tinyint(1) DEFAULT NULL,
  `bg_linked_account_roi_reviewed` tinyint(1) DEFAULT NULL,
  `bg_verified_identity` tinyint(1) DEFAULT NULL,
  `bg_demographic` text,
  `bg_presenting_problem` text,
  `bg_coping_skills` text,
  `bg_patient_goals` text,
  `bg_prior_ocd_by_prof` varchar(64) DEFAULT NULL,
  `bg_prior_non_ocd_diagnosis` varchar(64) DEFAULT NULL,
  `bg_misdiagnosed_ocd` varchar(64) DEFAULT NULL,
  `bg_misdiagnosed_conditions_json` json DEFAULT NULL,
  `bg_misdiagnosed_conditions_other` text,
  `bg_outpatient_treatment` varchar(64) DEFAULT NULL,
  `bg_outpatient_treatment_text` text,
  `bg_trauma_denied` tinyint(1) DEFAULT NULL,
  `bg_trauma_items` json DEFAULT NULL,
  `bg_trauma_other` text,
  `bg_family_history_json` json DEFAULT NULL,
  `bg_medication_status` varchar(255) DEFAULT NULL,
  `bg_medication_status_text` text,
  `bg_current_relationship_status` varchar(64) DEFAULT NULL,
  `bg_current_relationship_status_text` text,
  `bg_medical_history` varchar(64) DEFAULT NULL,
  `bg_medical_history_text` text,
  `bg_medical_past_er_visits_text` text,
  `bg_ocd_criteria_time` varchar(64) DEFAULT NULL,
  `bg_ocd_criteria_units` varchar(64) DEFAULT NULL,
  `bg_brain_trauma` tinyint(1) DEFAULT NULL,
  `bg_legal_problems` varchar(64) DEFAULT NULL,
  `bg_legal_problems_text` text,
  `ocd_tab_diamond_all_screenings_negative` tinyint(1) DEFAULT NULL,
  `ocd_tab_diamond_details` text,
  `ocd_tab_subtype_harm` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_contamination` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_sexual` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_religious` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_symmetry` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_somatic` varchar(16) DEFAULT NULL,
  `ocd_tab_subtype_other` varchar(16) DEFAULT NULL,
  `ocd_tab_dsm_part_a` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_part_b` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_distress` int DEFAULT NULL,
  `ocd_tab_dsm_functional_impairment` int DEFAULT NULL,
  `ocd_tab_dsm_distress_domains` json DEFAULT NULL,
  `ocd_tab_dsm_part_c` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_part_d` tinyint(1) DEFAULT NULL,
  `ocd_tab_dsm_insight` varchar(255) DEFAULT NULL,
  `ocd_tab_dsm_tic_related` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bg_prior_non_ocd_diagnosis_text` text,
  `ocd_tab_subtype_harm_text` text,
  `ocd_tab_subtype_contamination_text` text,
  `ocd_tab_subtype_sexual_text` text,
  `ocd_tab_subtype_religious_text` text,
  `ocd_tab_subtype_symmetry_text` text,
  `ocd_tab_subtype_somatic_text` text,
  `ocd_tab_subtype_other_text` text,
  `ocd_tab_subtype` varchar(255) DEFAULT NULL,
  `bg_verbal_consent_given` tinyint DEFAULT NULL,
  `bg_verbal_consent_given_by` varchar(64) DEFAULT NULL,
  `ocd_assessment_details` text,
  `bg_brain_trauma_text` varchar(255) DEFAULT NULL,
  `bg_additional_healthcare_providers` text,
  `bg_socioeconomic_status` varchar(64) DEFAULT NULL,
  `bg_preferred_language` varchar(64) DEFAULT NULL,
  `bg_preferred_language_other` varchar(64) DEFAULT NULL,
  `bg_ethnicity` json DEFAULT NULL,
  `bg_ethnicity_other` varchar(255) DEFAULT NULL,
  `bg_religious_background` varchar(64) DEFAULT NULL,
  `bg_religious_background_other` varchar(255) DEFAULT NULL,
  `bg_employment_status` varchar(64) DEFAULT NULL,
  `bg_employment_status_other` varchar(255) DEFAULT NULL,
  `bg_student_status` varchar(64) DEFAULT NULL,
  `bg_student_status_other` varchar(255) DEFAULT NULL,
  `bg_gender_identity` varchar(64) DEFAULT NULL,
  `bg_gender_identity_other` varchar(255) DEFAULT NULL,
  `bg_sexual_orientation` varchar(64) DEFAULT NULL,
  `bg_sexual_orientation_other` varchar(255) DEFAULT NULL,
  `bg_military_served` varchar(64) DEFAULT NULL,
  `bg_military_served_details` varchar(255) DEFAULT NULL,
  `bg_special_therapy_services` varchar(64) DEFAULT NULL,
  `bg_special_therapy_services_details` varchar(255) DEFAULT NULL,
  `bg_prior_ocd_by_prof_details` varchar(255) DEFAULT NULL,
  `bg_living_situation` varchar(64) DEFAULT NULL,
  `bg_living_situation_details` varchar(255) DEFAULT NULL,
  `bg_children_status` varchar(64) DEFAULT NULL,
  `bg_children_status_details` varchar(255) DEFAULT NULL,
  `bg_primary_support_people` text,
  `bg_quality_of_work_relationships` text,
  `bg_quality_of_family_relationships` text,
  `bg_quality_of_social_relationships` text,
  `bg_share_progress_with_other_providers` varchar(64) DEFAULT NULL,
  `bg_share_progress_with_other_providers_text` text,
  `bg_years_of_education` varchar(64) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `bg_family_history_details` text,
  `bg_additional_healthcare_providers_json` json DEFAULT NULL,
  `cloned_from_form_id` int DEFAULT NULL,
  `bg_meet_ocd_criteria` varchar(64) DEFAULT NULL,
  `bg_has_additional_healthcare_providers` varchar(64) DEFAULT NULL,
  `bg_satisfied_with_med_provider` varchar(255) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `bg_primary_support_people_yes_no` varchar(255) DEFAULT NULL,
  `bg_current_stressors` varchar(255) DEFAULT NULL,
  `bg_current_stressors_text` text,
  `bg_pertinent_info` text,
  `bg_close_family_relationships` text,
  `bg_psychiatric_history` varchar(255) DEFAULT NULL,
  `bg_mental_health_hospitalization_yes_no` varchar(255) DEFAULT NULL,
  `bg_mental_health_hospitalization_text` text,
  `bg_psychiatric_history_reviewed` tinyint(1) DEFAULT NULL,
  `bg_bio_history_reviewed` tinyint(1) DEFAULT NULL,
  `bg_life_goals_post_treatment` text,
  `bg_advance_directive_status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_general_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `event` varchar(255) NOT NULL,
  `result` json DEFAULT NULL,
  `authorizer` varchar(255) NOT NULL,
  `run_group` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `npi` int DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `taxonomy_code` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `zip_code` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biohaven_history_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `diagnosed_with_ocd` tinyint(1) DEFAULT NULL,
  `taking_ssri_or_clomipramine` tinyint(1) DEFAULT NULL,
  `between_18_and_65` tinyint(1) DEFAULT NULL,
  `passed_screen` tinyint(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `ip` varchar(64) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `biohaven_history_table_idx_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biohaven_root_table` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `passed_screen` tinyint(1) DEFAULT NULL,
  `changed_answer` tinyint(1) DEFAULT NULL,
  `biohaven_site_info` varchar(255) DEFAULT NULL,
  `biohaven_site_distance` varchar(255) DEFAULT NULL,
  `followup_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `biohaven_site_id` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block_words` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blocked_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `blocked_user_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`blocked_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=864 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookmarks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `postID` int NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`,`postID`),
  KEY `idx_on_user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=42378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bootstrap_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `assigned_clinician_user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `intake_specialist` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `action` varchar(255) DEFAULT NULL,
  `is_primary_provider` tinyint(1) DEFAULT NULL,
  `action_category` varchar(255) DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=633 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundle_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bundle_start_date` date DEFAULT NULL,
  `bundle_start_ma_id` int DEFAULT NULL,
  `bundle_end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundle_period_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `authorization_code` varchar(255) DEFAULT NULL,
  `bundle_config_id` int NOT NULL,
  `bundle_period_config_status` varchar(255) DEFAULT 'draft',
  `period_start_date_incl` date DEFAULT NULL,
  `period_end_date_incl` date DEFAULT NULL,
  `num_appts` int DEFAULT NULL,
  `num_assessments` int DEFAULT NULL,
  `num_contact_notes` int DEFAULT NULL,
  `num_support_groups` int DEFAULT NULL,
  `num_therapist_conversations` int DEFAULT NULL,
  `num_member_advocate_conversations` int DEFAULT NULL,
  `raw_events` json DEFAULT NULL,
  `finalized_at` timestamp NULL DEFAULT NULL,
  `bundle_period_ma_id` int NOT NULL,
  `apero_visit_id` varchar(255) DEFAULT NULL,
  `apero_visit_created_at` timestamp NULL DEFAULT NULL,
  `bundle_code` varchar(255) DEFAULT NULL,
  `revenue_assignment` int DEFAULT NULL,
  `num_appointments` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `bundle_period_ma_id` (`bundle_period_ma_id`),
  KEY `user_id` (`user_id`,`bundle_period_ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bundle_period_config_appointments_ledger_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `ma_id` int NOT NULL,
  `bundle_period_config_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ma_id` (`ma_id`),
  KEY `user_id` (`user_id`,`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calculated_clinician_pto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `pto_hours` int NOT NULL,
  `adjusted_by` varchar(255) DEFAULT NULL,
  `adjustment_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_dates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `day` (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendar_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `device_category` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `is_iframe` tinyint(1) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `last_screen` varchar(255) DEFAULT NULL,
  `last_screen_seen_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `submitted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `channel` varchar(255) DEFAULT NULL,
  `scheduled_from_page_url` text,
  `scheduled_from_cta_name` varchar(255) DEFAULT NULL,
  `feature_flags` json DEFAULT NULL,
  `entrance_page_url` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `callback_calendar_daily` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` timestamp(6) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `timezone` varchar(255) NOT NULL,
  `created_author` varchar(225) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `is_exclusive` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `callback_calendar_weekly` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` timestamp(6) NOT NULL,
  `end_date` timestamp(6) NULL DEFAULT NULL,
  `sunday_schedule` varchar(255) DEFAULT NULL,
  `monday_schedule` varchar(255) DEFAULT NULL,
  `tuesday_schedule` varchar(255) DEFAULT NULL,
  `wednesday_schedule` varchar(255) DEFAULT NULL,
  `thursday_schedule` varchar(255) DEFAULT NULL,
  `friday_schedule` varchar(255) DEFAULT NULL,
  `saturday_schedule` varchar(255) DEFAULT NULL,
  `timezone` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_author` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cam_tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cam_test` enum('CAM_1','CAM_2','CAM_3','CAM_4','CAM_5','CAM_6','CAM_7','CAM_8') DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `cam_date` date DEFAULT NULL,
  `notes` text,
  `result` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_email` (`clinician_email`),
  CONSTRAINT `cam_tests_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancellation_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `session_type` varchar(255) DEFAULT NULL,
  `session_length` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `cancelled_at` timestamp NOT NULL,
  `cancelled_by` varchar(255) NOT NULL,
  `cancelled_reason` varchar(255) NOT NULL,
  `cancelled_within_24_hours` tinyint(1) NOT NULL,
  `not_late_reason` varchar(255) DEFAULT NULL,
  `cancelled_via_reschedule` tinyint(1) NOT NULL,
  `waived_late_cancellation` tinyint(1) NOT NULL,
  `waived_late_cancellation_reason` varchar(255) NOT NULL,
  `late_cancellation_metadata` json NOT NULL,
  `counts_toward_utilization_credit` tinyint(1) DEFAULT NULL,
  `counts_toward_utilization_credit_reason` text,
  `ledger_record_created_by` varchar(255) NOT NULL,
  `ledger_record_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ma_id` (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `candidate_id` varchar(128) NOT NULL,
  `application_id` varchar(128) NOT NULL,
  `job_id` varchar(128) NOT NULL,
  `hash` varchar(128) NOT NULL,
  `candidate` json DEFAULT NULL,
  `application` json DEFAULT NULL,
  `job` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidate_hash` (`candidate_id`,`application_id`,`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care_coordination_access_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `member_provider_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `information_access` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `revoked_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `care_coordination_access_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `access_code_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careteam_can_assign_calls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `can_assign_calls` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caseload_action_plans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `action_plan` varchar(255) NOT NULL,
  `applied_week` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caseload_review_severity_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `severity_category` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT (curdate()),
  `is_scheduling_compliant` tinyint DEFAULT NULL,
  `current_scheduling_frequency` varchar(255) DEFAULT NULL,
  `current_action_plan` varchar(255) DEFAULT NULL,
  `current_action_plan_created_at` timestamp NULL DEFAULT NULL,
  `is_current_action_plan_expired` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_clinician_email` (`clinician_email`),
  KEY `idx_severity_category` (`severity_category`),
  KEY `idx_date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `celery_taskmeta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` varchar(155) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `result` text,
  `date_done` datetime DEFAULT NULL,
  `traceback` text,
  `name` varchar(155) DEFAULT NULL,
  `args` text,
  `kwargs` text,
  `worker` varchar(155) DEFAULT NULL,
  `retries` int DEFAULT NULL,
  `queue` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `celery_tasksetmeta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(155) DEFAULT NULL,
  `result` blob,
  `date_done` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channel_file_message_mappings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_channel_file_id` int NOT NULL,
  `message_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chat_channel_file_id` (`chat_channel_file_id`,`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channel_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_channel_id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size_bytes` int NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channel_member_advocate_regions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_channels_id` int NOT NULL,
  `member_advocate_region_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `chat_channels_id` (`chat_channels_id`),
  KEY `member_advocate_region_id` (`member_advocate_region_id`),
  CONSTRAINT `chat_channel_member_advocate_regions_ibfk_1` FOREIGN KEY (`chat_channels_id`) REFERENCES `chat_channels` (`id`),
  CONSTRAINT `chat_channel_member_advocate_regions_ibfk_2` FOREIGN KEY (`member_advocate_region_id`) REFERENCES `premium_region` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channel_scheduled_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `sent_by_user_id` int DEFAULT NULL,
  `sent_by_user_type` enum('premium_users','premium_clinicians','peer_advisors','support_team','nocd_bot','clinical_leadership') DEFAULT NULL,
  `type` enum('text','image','link') NOT NULL DEFAULT 'text',
  `chat_channel_id` int DEFAULT NULL,
  `scheduled_to_send_at` timestamp NULL DEFAULT NULL,
  `attachment_data` json DEFAULT NULL,
  `status` enum('queued','sent') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `archived_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `channel_type` enum('MEMBER_ADVOCATE','MEMBER_ADVOCATE_TRIAL','LINKED_ACCOUNT','THERAPIST_V2','SUPPORT_V2') DEFAULT NULL,
  `primary_user_id` int NOT NULL,
  `visibility` enum('global_hide','global_show') DEFAULT 'global_show',
  `pending_at` timestamp NULL DEFAULT NULL,
  `claimed_by_user_id` int DEFAULT NULL,
  `claimed_at` timestamp NULL DEFAULT NULL,
  `latest_message_id` int DEFAULT NULL,
  `linked_accounts_id` int DEFAULT NULL,
  `linked_accounts_label` varchar(50) DEFAULT NULL,
  `provider_user_id` int DEFAULT NULL,
  `locked_at` timestamp NULL DEFAULT NULL,
  `reminder_text_sent_at` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_type` (`channel_type`),
  KEY `primary_user_id` (`primary_user_id`),
  KEY `visibility` (`visibility`,`id`),
  KEY `linked_accounts_id` (`linked_accounts_id`),
  CONSTRAINT `chat_channels_primary_user_id_fk` FOREIGN KEY (`primary_user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channels_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_channel_id` int NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `triggered_by_user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channels_metrics_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `chat_channel_id` int NOT NULL,
  `message_id` int DEFAULT NULL,
  `column_updated` varchar(255) NOT NULL,
  `old_time_value` timestamp NULL DEFAULT NULL,
  `new_time_value` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channels_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_channel_id` int NOT NULL,
  `seen_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `user_id` int NOT NULL,
  `user_type` enum('premium_users','premium_clinicians','peer_advisors','support','clinical_leadership') DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `member_advocate_email` varchar(255) DEFAULT NULL,
  `deleted_at` date DEFAULT NULL,
  `draft_text` text,
  `draft_edited_at` timestamp NULL DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_channel_id` (`chat_channel_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `chat_channels_users_chat_channel_id_fk` FOREIGN KEY (`chat_channel_id`) REFERENCES `chat_channels` (`id`),
  CONSTRAINT `chat_channels_users_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_channels_whispers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_channel_id` int NOT NULL,
  `content` varchar(1000) NOT NULL,
  `created_by_user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `ehr_notification_id` int DEFAULT NULL,
  `cta_key` varchar(256) DEFAULT NULL,
  `is_collapsed` tinyint DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_message_indicator_dismissal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `channel_id` int DEFAULT NULL,
  `message_id` int NOT NULL,
  `indicator_type` varchar(255) DEFAULT NULL,
  `dismissed_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_channel_id` (`channel_id`),
  CONSTRAINT `chat_message_indicator_dismissal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `chat_message_indicator_dismissal_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `chat_channels` (`id`),
  CONSTRAINT `chat_message_indicator_dismissal_ibfk_3` FOREIGN KEY (`message_id`) REFERENCES `premium_chat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_user_reactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_id` int NOT NULL,
  `channel_id` int NOT NULL,
  `user_id` int NOT NULL,
  `reaction_type` enum('like','helpful','good_vibes','sad','triggering','laugh','thumbs_up','support') NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `reactions_idx_on_user_id_and_message_id` (`user_id`,`message_id`),
  KEY `reactions_idx_on_message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_web_alert_dismissal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `alert_type` int DEFAULT NULL,
  `dismissed_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkpoints` (
  `checkpoint_key` varchar(255) NOT NULL,
  `checkpoint_value` varchar(255) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`checkpoint_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claim_follow_ups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flowdash_id` varchar(255) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `claim_stage` varchar(255) DEFAULT NULL,
  `current_balance` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_advisors_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_author` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `meeting_date` timestamp NOT NULL,
  `meeting_clinical_advisor` varchar(255) NOT NULL,
  `meeting_type` varchar(255) NOT NULL,
  `meeting_category` varchar(255) NOT NULL,
  `meeting_length` int NOT NULL,
  `concern_flag` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `meeting_notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_abn_consent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `therapy_option` varchar(255) DEFAULT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clinical_forms_abn_consent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_dass21` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `session_type` varchar(255) NOT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `q1_wind_down` int DEFAULT NULL,
  `q2_dry_mouth` int DEFAULT NULL,
  `q3_positive_feelings` int DEFAULT NULL,
  `q4_difficulty_breathing` int DEFAULT NULL,
  `q5_no_initiative` int DEFAULT NULL,
  `q6_overreacts` int DEFAULT NULL,
  `q7_trembling` int DEFAULT NULL,
  `q8_nervous` int DEFAULT NULL,
  `q9_foolish_panic` int DEFAULT NULL,
  `q10_no_hope` int DEFAULT NULL,
  `q11_agitated` int DEFAULT NULL,
  `q12_cannot_relax` int DEFAULT NULL,
  `q13_feels_blue` int DEFAULT NULL,
  `q14_patience` int DEFAULT NULL,
  `q15_panic` int DEFAULT NULL,
  `q16_no_enthusiasm` int DEFAULT NULL,
  `q17_worthless` int DEFAULT NULL,
  `q18_touchy` int DEFAULT NULL,
  `q19_heart_awareness` int DEFAULT NULL,
  `q20_scared` int DEFAULT NULL,
  `q21_meaningless_life` int DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_member_appointments_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_diamond` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `admd_clinician_portal_id` int NOT NULL,
  `q1_frequent_thoughts` varchar(64) DEFAULT NULL,
  `q2_repetitive_behaviors` varchar(64) DEFAULT NULL,
  `q3_worry_appearance` varchar(64) DEFAULT NULL,
  `q4_socially_anxious` varchar(64) DEFAULT NULL,
  `q5_panic_attack` varchar(64) DEFAULT NULL,
  `q6_excessivly_worry` varchar(64) DEFAULT NULL,
  `q7_problematically_happy` varchar(64) DEFAULT NULL,
  `q8_depressed_2_years` varchar(64) DEFAULT NULL,
  `q9_unmotivated_2_weeks` varchar(64) DEFAULT NULL,
  `q10_event_trauma` varchar(64) DEFAULT NULL,
  `q11_drug_abuse` varchar(64) DEFAULT NULL,
  `q12_strange_beliefs` varchar(64) DEFAULT NULL,
  `q13_sensory_experience` varchar(64) DEFAULT NULL,
  `q14_physical_health` varchar(64) DEFAULT NULL,
  `q15_alcohol` varchar(64) DEFAULT NULL,
  `q16_spastic_movements` varchar(64) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `admd_clinician_portal_id` (`admd_clinician_portal_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_diamond_adult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `session_type` varchar(255) NOT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `q1_adult_frequent_thoughts` tinyint(1) DEFAULT NULL,
  `q2_adult_repetitive_behaviors` tinyint(1) DEFAULT NULL,
  `q3_adult_worry_appearance` tinyint(1) DEFAULT NULL,
  `q4_adult_excessively_cluttered` tinyint(1) DEFAULT NULL,
  `q5_adult_hair_pulling` tinyint(1) DEFAULT NULL,
  `q6_adult_skin_picking` tinyint(1) DEFAULT NULL,
  `q7_adult_socially_anxious` tinyint(1) DEFAULT NULL,
  `q8_adult_panic_attack` tinyint(1) DEFAULT NULL,
  `q9_adult_fearful_of_escape` tinyint(1) DEFAULT NULL,
  `q10_adult_worry_about_many_things` tinyint(1) DEFAULT NULL,
  `q11_adult_afraid_of_objects_situations_activities` tinyint(1) DEFAULT NULL,
  `q12_adult_afraid_to_be_away_from_a_person` tinyint(1) DEFAULT NULL,
  `q13_adult_problematically_happy` tinyint(1) DEFAULT NULL,
  `q14_adult_depressed_2_years` tinyint(1) DEFAULT NULL,
  `q15_adult_unmotivated_2_weeks` tinyint(1) DEFAULT NULL,
  `q16_adult_women_only_really_depressed_during_period` tinyint(1) DEFAULT NULL,
  `q17_adult_event_trauma` tinyint(1) DEFAULT NULL,
  `q18_adult_hard_time_with_stressful_experience` tinyint(1) DEFAULT NULL,
  `q19_adult_strange_beliefs` tinyint(1) DEFAULT NULL,
  `q20_adult_sensory_experience` tinyint(1) DEFAULT NULL,
  `q21_adult_avoid_eating_due_to_weight` tinyint(1) DEFAULT NULL,
  `q22_adult_eating_binges` tinyint(1) DEFAULT NULL,
  `q23_adult_eat_very_little` tinyint(1) DEFAULT NULL,
  `q24_adult_physical_health` tinyint(1) DEFAULT NULL,
  `q25_adult_worry_of_serious_medical_illness` tinyint(1) DEFAULT NULL,
  `q26_adult_alcohol` tinyint(1) DEFAULT NULL,
  `q27_adult_drug_abuse` tinyint(1) DEFAULT NULL,
  `q28_adult_difficulty_paying_attn` tinyint(1) DEFAULT NULL,
  `q29_adult_difficult_sitting_still` tinyint(1) DEFAULT NULL,
  `q30_adult_spastic_movements` tinyint(1) DEFAULT NULL,
  `q1_adult_frequent_thoughts_positive` tinyint(1) DEFAULT NULL,
  `q2_adult_repetitive_behaviors_positive` tinyint(1) DEFAULT NULL,
  `q3_adult_worry_appearance_positive` tinyint(1) DEFAULT NULL,
  `q4_adult_excessively_cluttered_positive` tinyint(1) DEFAULT NULL,
  `q5_adult_hair_pulling_positive` tinyint(1) DEFAULT NULL,
  `q6_adult_skin_picking_positive` tinyint(1) DEFAULT NULL,
  `q7_adult_socially_anxious_positive` tinyint(1) DEFAULT NULL,
  `q8_adult_panic_attack_positive` tinyint(1) DEFAULT NULL,
  `q9_adult_fearful_of_escape_positive` tinyint(1) DEFAULT NULL,
  `q10_adult_worry_about_many_things_positive` tinyint(1) DEFAULT NULL,
  `q11_adult_afraid_of_objects_situations_activities_positive` tinyint(1) DEFAULT NULL,
  `q12_adult_afraid_to_be_away_from_a_person_positive` tinyint(1) DEFAULT NULL,
  `q13_adult_problematically_happy_positive` tinyint(1) DEFAULT NULL,
  `q14_adult_depressed_2_years_positive` tinyint(1) DEFAULT NULL,
  `q15_adult_unmotivated_2_weeks_positive` tinyint(1) DEFAULT NULL,
  `q16_adult_women_only_really_depressed_during_period_positive` tinyint(1) DEFAULT NULL,
  `q17_adult_event_trauma_positive` tinyint(1) DEFAULT NULL,
  `q18_adult_hard_time_with_stressful_experience_positive` tinyint(1) DEFAULT NULL,
  `q19_adult_strange_beliefs_positive` tinyint(1) DEFAULT NULL,
  `q20_adult_sensory_experience_positive` tinyint(1) DEFAULT NULL,
  `q21_adult_avoid_eating_due_to_weight_positive` tinyint(1) DEFAULT NULL,
  `q22_adult_eating_binges_positive` tinyint(1) DEFAULT NULL,
  `q23_adult_eat_very_little_positive` tinyint(1) DEFAULT NULL,
  `q24_adult_physical_health_positive` tinyint(1) DEFAULT NULL,
  `q25_adult_worry_of_serious_medical_illness_positive` tinyint(1) DEFAULT NULL,
  `q26_adult_alcohol_positive` tinyint(1) DEFAULT NULL,
  `q27_adult_drug_abuse_positive` tinyint(1) DEFAULT NULL,
  `q28_adult_difficulty_paying_attn_positive` tinyint(1) DEFAULT NULL,
  `q29_adult_difficult_sitting_still_positive` tinyint(1) DEFAULT NULL,
  `q30_adult_spastic_movements_positive` tinyint(1) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT NULL,
  `q1_adult_frequent_thoughts_details` text,
  `q2_adult_repetitive_behaviors_details` text,
  `q3_adult_worry_appearance_details` text,
  `q4_adult_excessively_cluttered_details` text,
  `q5_adult_hair_pulling_details` text,
  `q6_adult_skin_picking_details` text,
  `q7_adult_socially_anxious_details` text,
  `q8_adult_panic_attack_details` text,
  `q9_adult_fearful_of_escape_details` text,
  `q10_adult_worry_about_many_things_details` text,
  `q11_adult_afraid_of_objects_situations_activities_details` text,
  `q12_adult_afraid_to_be_away_from_a_person_details` text,
  `q13_adult_problematically_happy_details` text,
  `q14_adult_depressed_2_years_details` text,
  `q15_adult_unmotivated_2_weeks_details` text,
  `q16_adult_women_only_really_depressed_during_period_details` text,
  `q17_adult_event_trauma_details` text,
  `q18_adult_hard_time_with_stressful_experience_details` text,
  `q19_adult_strange_beliefs_details` text,
  `q20_adult_sensory_experience_details` text,
  `q21_adult_avoid_eating_due_to_weight_details` text,
  `q22_adult_eating_binges_details` text,
  `q23_adult_eat_very_little_details` text,
  `q24_adult_physical_health_details` text,
  `q25_adult_worry_of_serious_medical_illness_details` text,
  `q26_adult_alcohol_details` text,
  `q27_adult_drug_abuse_details` text,
  `q28_adult_difficulty_paying_attn_details` text,
  `q29_adult_difficult_sitting_still_details` text,
  `q30_adult_spastic_movements_details` text,
  `cloned_from_form_id` int DEFAULT NULL,
  `q31_adult_frequent_thoughts_details_text` text,
  `q32_adult_frequent_thoughts_come_up` tinyint DEFAULT NULL,
  `q33_adult_frequent_thoughts_bother` tinyint DEFAULT NULL,
  `q34_adult_frequent_thoughts_ignore` tinyint DEFAULT NULL,
  `q35_adult_repetitive_behaviors_stop_doing` tinyint DEFAULT NULL,
  `q36_adult_repetitive_behaviors_afraid` text,
  `q37_adult_alcohol_anyone_said` tinyint DEFAULT NULL,
  `q38_adult_alcohol_caused_problems` tinyint DEFAULT NULL,
  `q39_adult_drug_abuse_anyone_said` tinyint DEFAULT NULL,
  `q40_adult_drug_abuse_caused_problems` tinyint DEFAULT NULL,
  `q41_adult_skin_picking_scars` tinyint DEFAULT NULL,
  `q42_adult_spastic_movements_some_body_part` tinyint DEFAULT NULL,
  `q43_adult_spastic_movements_multiple_body_parts` tinyint DEFAULT NULL,
  `q44_adult_spastic_movements_making_sounds` tinyint DEFAULT NULL,
  `q45_adult_excessively_cluttered_others_throw_away` tinyint DEFAULT NULL,
  `q46_adult_excessively_cluttered_important_to_save` tinyint DEFAULT NULL,
  `q47_adult_unmotivated_lost_interest` tinyint DEFAULT NULL,
  `q48_adult_felt_overly_confident` tinyint DEFAULT NULL,
  `q49_adult_felt_extremely_irritable` tinyint DEFAULT NULL,
  `q50_adult_avoid_eating_other_things` tinyint DEFAULT NULL,
  `q51_adult_eat_very_little_eating_habits` tinyint DEFAULT NULL,
  `q52_adult_socially_anxious_when_people_observe` tinyint DEFAULT NULL,
  `q53_adult_panic_attack_sudden_rush` tinyint DEFAULT NULL,
  `q54_adult_panic_attack_come_without_reason` tinyint DEFAULT NULL,
  `q55_adult_worry_excessive` tinyint DEFAULT NULL,
  `q56_adult_worry_anxiety_cause_concerns` tinyint DEFAULT NULL,
  `q57_adult_physical_health_interfered` tinyint DEFAULT NULL,
  `q58_adult_physical_health_excessive_worry` tinyint DEFAULT NULL,
  `q59_adult_worry_appearance_spend_time_doing_things` tinyint DEFAULT NULL,
  `q60_adult_hair_pulling_visible_hair_loss` tinyint DEFAULT NULL,
  `q61_adult_worry_of_serious_medical_illness_get_alarmed` tinyint DEFAULT NULL,
  `q62_adult_event_trauma_experience_incidents` tinyint DEFAULT NULL,
  `q63_adult_depressed_2_years_occur_on_more_days` tinyint DEFAULT NULL,
  `q64_adult_eating_binges_behaviors_prevent_weight_gain` tinyint DEFAULT NULL,
  `q1_adult_frequent_thoughts_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q2_adult_repetitive_behaviors_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q3_adult_worry_appearance_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q4_adult_excessively_cluttered_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q5_adult_hair_pulling_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q6_adult_skin_picking_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q7_adult_socially_anxious_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q8_adult_panic_attack_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q9_adult_fearful_of_escape_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q10_adult_worry_about_many_things_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q11_adult_afraid_of_objects_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q13_adult_problematically_happy_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q14_adult_depressed_2_years_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q15_adult_unmotivated_2_weeks_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q17_adult_event_trauma_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q19_adult_strange_beliefs_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q20_adult_sensory_experience_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q21_adult_avoid_eating_due_to_weight_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q22_adult_eating_binges_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q23_adult_eat_very_little_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q24_adult_physical_health_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q25_adult_worry_of_serious_medical_illness_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q26_adult_alcohol_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q27_adult_drug_abuse_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q30_adult_spastic_movements_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q65_adult_frequent_thoughts_description` json DEFAULT NULL,
  `q65_adult_frequent_thoughts_description_other` varchar(255) DEFAULT NULL,
  `q66_adult_repetitive_behaviors_description` json DEFAULT NULL,
  `q66_adult_repetitive_behaviors_description_other` varchar(255) DEFAULT NULL,
  `member_answered` json DEFAULT NULL,
  `is_diamond_adult_reviewed` tinyint(1) DEFAULT NULL,
  `q67_adult_eating_binges_frequency` tinyint DEFAULT NULL,
  `q68_adult_event_trauma_direct_experience` tinyint DEFAULT NULL,
  `q68_adult_event_trauma_direct_experience_details` text,
  `q69_adult_event_trauma_witnessed` tinyint DEFAULT NULL,
  `q69_adult_event_trauma_witnessed_details` text,
  `q70_adult_event_trauma_been_exposed` tinyint DEFAULT NULL,
  `q70_adult_event_trauma_been_exposed_details` text,
  `q71_adult_event_trauma_symptoms` json DEFAULT NULL,
  `q71_adult_event_trauma_symptoms_details` text,
  `q72_adult_event_trauma_avoidance_types` json DEFAULT NULL,
  `q72_adult_event_trauma_avoidance_types_details` text,
  `q73_adult_event_trauma_negative_changes` json DEFAULT NULL,
  `q73_adult_event_trauma_negative_changes_details` text,
  `q74_adult_event_trauma_reactivity_changes` json DEFAULT NULL,
  `q74_adult_event_trauma_reactivity_changes_details` text,
  `q75_adult_event_trauma_duration` tinyint DEFAULT NULL,
  `q75_adult_event_trauma_duration_details` text,
  `q76_adult_event_trauma_distress` tinyint DEFAULT NULL,
  `q76_adult_event_trauma_distress_details` text,
  `q77_adult_event_trauma_attributable` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_diamond_youth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `session_type` varchar(255) NOT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `q1_youth_frequent_thoughts` tinyint(1) DEFAULT NULL,
  `q2_youth_repetitive_behaviors` tinyint(1) DEFAULT NULL,
  `q3_youth_worry_appearance` tinyint(1) DEFAULT NULL,
  `q4_youth_excessively_cluttered` tinyint(1) DEFAULT NULL,
  `q5_youth_hair_pulling` tinyint(1) DEFAULT NULL,
  `q6_youth_skin_picking` tinyint(1) DEFAULT NULL,
  `q7_youth_refuse_to_speak` tinyint(1) DEFAULT NULL,
  `q8_youth_embarassed_around_others` tinyint(1) DEFAULT NULL,
  `q9_youth_uncomfortable_feelings` tinyint(1) DEFAULT NULL,
  `q10_youth_fearful_of_escape` tinyint(1) DEFAULT NULL,
  `q11_youth_worry_about_many_things` tinyint(1) DEFAULT NULL,
  `q12_youth_afraid_of_objects_situations_activities` tinyint(1) DEFAULT NULL,
  `q13_youth_afraid_to_be_away_from_a_person` tinyint(1) DEFAULT NULL,
  `q14_youth_problematically_happy` tinyint(1) DEFAULT NULL,
  `q15_youth_depressed_2_years` tinyint(1) DEFAULT NULL,
  `q16_youth_unmotivated_2_weeks` tinyint(1) DEFAULT NULL,
  `q17_youth_temper` tinyint(1) DEFAULT NULL,
  `q18_youth_women_only_really_depressed_during_period` tinyint(1) DEFAULT NULL,
  `q19_youth_event_trauma` tinyint(1) DEFAULT NULL,
  `q20_youth_hard_time_with_stressful_experience` tinyint(1) DEFAULT NULL,
  `q21_youth_strange_beliefs` tinyint(1) DEFAULT NULL,
  `q22_youth_sensory_experience` tinyint(1) DEFAULT NULL,
  `q23_youth_avoid_eating_due_to_weight` tinyint(1) DEFAULT NULL,
  `q24_youth_eating_binges` tinyint(1) DEFAULT NULL,
  `q25_youth_eat_very_little` tinyint(1) DEFAULT NULL,
  `q26_youth_physical_health` tinyint(1) DEFAULT NULL,
  `q27_youth_worry_of_serious_medical_illness` tinyint(1) DEFAULT NULL,
  `q28_youth_alcohol` tinyint(1) DEFAULT NULL,
  `q29_youth_drug_abuse` tinyint(1) DEFAULT NULL,
  `q30_youth_difficulty_paying_attn` tinyint(1) DEFAULT NULL,
  `q31_youth_difficult_sitting_still` tinyint(1) DEFAULT NULL,
  `q32_youth_spastic_movements` tinyint(1) DEFAULT NULL,
  `q33_youth_hurt_people` tinyint(1) DEFAULT NULL,
  `q34_youth_feel_angry_or_cranky` tinyint(1) DEFAULT NULL,
  `q35_youth_broken_law` tinyint(1) DEFAULT NULL,
  `q1_youth_frequent_thoughts_positive` tinyint(1) DEFAULT NULL,
  `q2_youth_repetitive_behaviors_positive` tinyint(1) DEFAULT NULL,
  `q3_youth_worry_appearance_positive` tinyint(1) DEFAULT NULL,
  `q4_youth_excessively_cluttered_positive` tinyint(1) DEFAULT NULL,
  `q5_youth_hair_pulling_positive` tinyint(1) DEFAULT NULL,
  `q6_youth_skin_picking_positive` tinyint(1) DEFAULT NULL,
  `q7_youth_refuse_to_speak_positive` tinyint(1) DEFAULT NULL,
  `q8_youth_embarassed_around_others_positive` tinyint(1) DEFAULT NULL,
  `q9_youth_uncomfortable_feelings_positive` tinyint(1) DEFAULT NULL,
  `q10_youth_fearful_of_escape_positive` tinyint(1) DEFAULT NULL,
  `q11_youth_worry_about_many_things_positive` tinyint(1) DEFAULT NULL,
  `q12_youth_afraid_of_objects_situations_activities_positive` tinyint(1) DEFAULT NULL,
  `q13_youth_afraid_to_be_away_from_a_person_positive` tinyint(1) DEFAULT NULL,
  `q14_youth_problematically_happy_positive` tinyint(1) DEFAULT NULL,
  `q15_youth_depressed_2_years_positive` tinyint(1) DEFAULT NULL,
  `q16_youth_unmotivated_2_weeks_positive` tinyint(1) DEFAULT NULL,
  `q17_youth_temper_positive` tinyint(1) DEFAULT NULL,
  `q18_youth_women_only_really_depressed_during_period_positive` tinyint(1) DEFAULT NULL,
  `q19_youth_event_trauma_positive` tinyint(1) DEFAULT NULL,
  `q20_youth_hard_time_with_stressful_experience_positive` tinyint(1) DEFAULT NULL,
  `q21_youth_strange_beliefs_positive` tinyint(1) DEFAULT NULL,
  `q22_youth_sensory_experience_positive` tinyint(1) DEFAULT NULL,
  `q23_youth_avoid_eating_due_to_weight_positive` tinyint(1) DEFAULT NULL,
  `q24_youth_eating_binges_positive` tinyint(1) DEFAULT NULL,
  `q25_youth_eat_very_little_positive` tinyint(1) DEFAULT NULL,
  `q26_youth_physical_health_positive` tinyint(1) DEFAULT NULL,
  `q27_youth_worry_of_serious_medical_illness_positive` tinyint(1) DEFAULT NULL,
  `q28_youth_alcohol_positive` tinyint(1) DEFAULT NULL,
  `q29_youth_drug_abuse_positive` tinyint(1) DEFAULT NULL,
  `q30_youth_difficulty_paying_attn_positive` tinyint(1) DEFAULT NULL,
  `q31_youth_difficult_sitting_still_positive` tinyint(1) DEFAULT NULL,
  `q32_youth_spastic_movements_positive` tinyint(1) DEFAULT NULL,
  `q33_youth_hurt_people_positive` tinyint(1) DEFAULT NULL,
  `q34_youth_feel_angry_or_cranky_positive` tinyint(1) DEFAULT NULL,
  `q35_youth_broken_law_positive` tinyint(1) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT NULL,
  `q1_youth_frequent_thoughts_details` text,
  `q2_youth_repetitive_behaviors_details` text,
  `q3_youth_worry_appearance_details` text,
  `q4_youth_excessively_cluttered_details` text,
  `q5_youth_hair_pulling_details` text,
  `q6_youth_skin_picking_details` text,
  `q7_youth_refuse_to_speak_details` text,
  `q8_youth_embarassed_around_others_details` text,
  `q9_youth_uncomfortable_feelings_details` text,
  `q10_youth_fearful_of_escape_details` text,
  `q11_youth_worry_about_many_things_details` text,
  `q12_youth_afraid_of_objects_situations_activities_details` text,
  `q13_youth_afraid_to_be_away_from_a_person_details` text,
  `q14_youth_problematically_happy_details` text,
  `q15_youth_depressed_2_years_details` text,
  `q16_youth_unmotivated_2_weeks_details` text,
  `q17_youth_temper_details` text,
  `q18_youth_women_only_really_depressed_during_period_details` text,
  `q19_youth_event_trauma_details` text,
  `q20_youth_hard_time_with_stressful_experience_details` text,
  `q21_youth_strange_beliefs_details` text,
  `q22_youth_sensory_experience_details` text,
  `q23_youth_avoid_eating_due_to_weight_details` text,
  `q24_youth_eating_binges_details` text,
  `q25_youth_eat_very_little_details` text,
  `q26_youth_physical_health_details` text,
  `q27_youth_worry_of_serious_medical_illness_details` text,
  `q28_youth_alcohol_details` text,
  `q29_youth_drug_abuse_details` text,
  `q30_youth_difficulty_paying_attn_details` text,
  `q31_youth_difficult_sitting_still_details` text,
  `q32_youth_spastic_movements_details` text,
  `q33_youth_hurt_people_details` text,
  `q34_youth_feel_angry_or_cranky_details` text,
  `q35_youth_broken_law_details` text,
  `cloned_from_form_id` int DEFAULT NULL,
  `q36_youth_frequent_thoughts_details_text` text,
  `q37_youth_frequent_thoughts_come_up` tinyint DEFAULT NULL,
  `q38_youth_frequent_thoughts_bother` tinyint DEFAULT NULL,
  `q39_youth_repetitive_behaviors_stop_doing` tinyint DEFAULT NULL,
  `q40_youth_repetitive_behaviors_afraid` text,
  `q41_youth_alcohol_anyone_said` tinyint DEFAULT NULL,
  `q42_youth_alcohol_caused_problems` tinyint DEFAULT NULL,
  `q43_youth_drug_abuse_anyone_said` tinyint DEFAULT NULL,
  `q44_youth_drug_abuse_caused_problems` tinyint DEFAULT NULL,
  `q45_youth_hair_pulling_hair_is_all_gone` tinyint DEFAULT NULL,
  `q46_youth_skin_picking_scars` tinyint DEFAULT NULL,
  `q47_youth_spastic_movements_some_body_part` tinyint DEFAULT NULL,
  `q48_youth_spastic_movements_multiple_body_parts` tinyint DEFAULT NULL,
  `q49_youth_spastic_movements_making_sounds` tinyint DEFAULT NULL,
  `q50_youth_excessively_cluttered_past_month` tinyint DEFAULT NULL,
  `q51_youth_excessively_cluttered_others_throw_away` tinyint DEFAULT NULL,
  `q52_youth_excessively_cluttered_important_to_save` tinyint DEFAULT NULL,
  `q53_youth_event_trauma_led_intrusive_thoughts` tinyint DEFAULT NULL,
  `q54_youth_depressed_2_years_or_more` tinyint DEFAULT NULL,
  `q55_youth_depressed_2_years_feel_most` tinyint DEFAULT NULL,
  `q56_youth_unmotivated_2_weeks_lost_interest` tinyint DEFAULT NULL,
  `q57_youth_problematically_happy_elevated_mood` tinyint DEFAULT NULL,
  `q58_youth_problematically_happy_felt_powerful` tinyint DEFAULT NULL,
  `q59_youth_problematically_happy_cranky_mood` tinyint DEFAULT NULL,
  `q60_youth_avoid_eating_due_to_weight_actions` tinyint DEFAULT NULL,
  `q61_youth_eat_very_little_friends_family_worried` tinyint DEFAULT NULL,
  `q62_youth_refuse_to_speak_caused_problem` tinyint DEFAULT NULL,
  `q63_youth_embarassed_around_others_avoid_situations` tinyint DEFAULT NULL,
  `q64_youth_uncomfortable_feelings_occurred_for_no_reason` tinyint DEFAULT NULL,
  `q65_youth_worry_about_many_things_more_than_others` tinyint DEFAULT NULL,
  `q66_youth_worry_about_many_things_feel_tense` tinyint DEFAULT NULL,
  `q67_youth_feared_experiences_bring_anxiety` tinyint DEFAULT NULL,
  `q68_youth_fear_is_above_and_beyond` tinyint DEFAULT NULL,
  `q69_youth_afraid_to_be_away_from_person_caused_problems` tinyint DEFAULT NULL,
  `q70_youth_worry_medical_illness_done_avoide_things` tinyint DEFAULT NULL,
  `q71_youth_physical_health_caused_problems` tinyint DEFAULT NULL,
  `q72_youth_worry_appearance_spent_time` tinyint DEFAULT NULL,
  `q73_youth_temper_outbursts` tinyint DEFAULT NULL,
  `q74_youth_temper_angry_most_of_the_day` tinyint DEFAULT NULL,
  `q75_youth_difficulty_paying_attn_caused_problems` tinyint DEFAULT NULL,
  `q76_youth_difficulty_paying_attn_problems_six_months` tinyint DEFAULT NULL,
  `q77_youth_difficult_sitting_still_caused_problems` tinyint DEFAULT NULL,
  `q78_youth_difficult_sitting_still_last_six_months` tinyint DEFAULT NULL,
  `q79_youth_hurt_people_make_plans` tinyint DEFAULT NULL,
  `q80_youth_feel_angry_or_cranky_lost_temper` tinyint DEFAULT NULL,
  `q1_youth_frequent_thoughts_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q2_youth_repetitive_behaviors_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q3_youth_worry_appearance_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q4_youth_excessively_cluttered_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q5_youth_hair_pulling_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q6_youth_skin_picking_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q7_youth_refuse_to_speak_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q8_youth_embarassed_around_others_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q9_youth_uncomfortable_feelings_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q10_youth_fearful_of_escape_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q11_youth_worry_about_many_things_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q12_youth_afraid_of_objects_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q13_youth_afraid_to_be_away_from_a_person_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q14_youth_problematically_happy_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q15_youth_depressed_2_years_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q16_youth_unmotivated_2_weeks_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q17_youth_temper_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q19_youth_event_trauma_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q20_youth_hard_time_with_stressful_exp_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q21_youth_strange_beliefs_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q22_youth_sensory_experience_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q23_youth_avoid_eating_due_to_weight_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q24_youth_eating_binges_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q25_youth_eat_very_little_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q26_youth_physical_health_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q27_youth_worry_of_serious_medical_illness_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q28_youth_alcohol_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q29_youth_drug_abuse_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q30_youth_difficulty_paying_attn_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q31_youth_difficult_sitting_still_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q32_youth_spastic_movements_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q33_youth_hurt_people_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q34_youth_feel_angry_or_cranky_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q35_youth_broken_law_diagnostic_assessment` varchar(64) DEFAULT NULL,
  `q81_youth_frequent_thoughts_description` json DEFAULT NULL,
  `q81_youth_frequent_thoughts_description_other` varchar(255) DEFAULT NULL,
  `q82_youth_repetitive_behaviors_description` json DEFAULT NULL,
  `q82_youth_repetitive_behaviors_description_other` varchar(255) DEFAULT NULL,
  `member_answered` json DEFAULT NULL,
  `is_diamond_youth_reviewed` tinyint(1) DEFAULT NULL,
  `q83_youth_event_trauma_direct_experience` tinyint DEFAULT NULL,
  `q83_youth_event_trauma_direct_experience_details` text,
  `q84_youth_event_trauma_witnessed` tinyint DEFAULT NULL,
  `q84_youth_event_trauma_witnessed_details` text,
  `q85_youth_event_trauma_been_exposed` tinyint DEFAULT NULL,
  `q85_youth_event_trauma_been_exposed_details` text,
  `q86_youth_event_trauma_symptoms` json DEFAULT NULL,
  `q86_youth_event_trauma_symptoms_details` text,
  `q87_youth_event_trauma_avoidance_types` json DEFAULT NULL,
  `q87_youth_event_trauma_avoidance_types_details` text,
  `q88_youth_event_trauma_negative_changes` json DEFAULT NULL,
  `q88_youth_event_trauma_negative_changes_details` text,
  `q89_youth_event_trauma_reactivity_changes` json DEFAULT NULL,
  `q89_youth_event_trauma_reactivity_changes_details` text,
  `q90_youth_event_trauma_duration` tinyint DEFAULT NULL,
  `q90_youth_event_trauma_duration_details` text,
  `q91_youth_event_trauma_distress` tinyint DEFAULT NULL,
  `q91_youth_event_trauma_distress_details` text,
  `q92_youth_event_trauma_attributable` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_docs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `session_type` varchar(255) NOT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `q1_time_contamination` int DEFAULT NULL,
  `q2_avoid_contamination` int DEFAULT NULL,
  `q3_distress_contamination` int DEFAULT NULL,
  `q4_routine_contamination` int DEFAULT NULL,
  `q5_disregard_contamination` int DEFAULT NULL,
  `q6_time_harm` int DEFAULT NULL,
  `q7_avoid_harm` int DEFAULT NULL,
  `q8_distress_harm` int DEFAULT NULL,
  `q9_routine_harm` int DEFAULT NULL,
  `q10_disregard_harm` int DEFAULT NULL,
  `q11_time_thoughts` int DEFAULT NULL,
  `q12_avoid_thoughts` int DEFAULT NULL,
  `q13_distress_thoughts` int DEFAULT NULL,
  `q14_routine_thoughts` int DEFAULT NULL,
  `q15_disregard_thoughts` varchar(255) DEFAULT NULL,
  `q16_time_symmetry` int DEFAULT NULL,
  `q17_avoid_symmetry` int DEFAULT NULL,
  `q18_distress_symmetry` int DEFAULT NULL,
  `q19_routine_symmetry` int DEFAULT NULL,
  `q20_disregard_symmetry` int DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_member_appointments_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_nocd411_consent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_payment_agreement_signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clinical_forms_nocd411_consent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_notice_of_privacy_practices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clinical_forms_notice_of_privacy_practices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_ocicvr_consent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `accepted` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clinical_forms_ocicvr_consent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_qles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `session_type` varchar(255) NOT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `q_physical_health` int DEFAULT NULL,
  `q_mood` int DEFAULT NULL,
  `q_work` int DEFAULT NULL,
  `q_household_activities` int DEFAULT NULL,
  `q_social_relationships` int DEFAULT NULL,
  `q_family_relationships` int DEFAULT NULL,
  `q_leisure_time` int DEFAULT NULL,
  `q_daily_function` int DEFAULT NULL,
  `q_sexual_drive` int DEFAULT NULL,
  `q_economic_status` int DEFAULT NULL,
  `q_living_situation` int DEFAULT NULL,
  `q_getting_around` int DEFAULT NULL,
  `q_visions` int DEFAULT NULL,
  `q_well_being` int DEFAULT NULL,
  `q_medication` varchar(255) DEFAULT NULL,
  `q_life_satisfaction` int DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_member_appointments_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_roi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `roi_name` varchar(255) DEFAULT NULL,
  `roi_organization` varchar(255) DEFAULT NULL,
  `roi_details` json DEFAULT NULL,
  `roi_signature_base64` varchar(255) DEFAULT NULL,
  `relation_to_patient` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_dob` varchar(255) DEFAULT NULL,
  `signer_relation_to_patient` varchar(255) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `roi_address` varchar(255) DEFAULT NULL,
  `roi_phone` varchar(255) DEFAULT NULL,
  `roi_fax` varchar(255) DEFAULT NULL,
  `roi_email` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `linked_account_id` int DEFAULT NULL,
  `approved_by_clinician_id` int DEFAULT NULL,
  `approved_by_clinician_at` timestamp NULL DEFAULT NULL,
  `delete_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_support_plan_attestation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clinical_forms_support_plan_attestation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_therapy_consent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `enrollment_agreement_accepted_at` timestamp(6) NULL DEFAULT NULL,
  `enrollment_agreement_relationship` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_date_of_birth` varchar(255) DEFAULT NULL,
  `enrollment_agreement_signature_base64` varchar(255) DEFAULT NULL,
  `verified_demographics_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `emergency_contact_relation` varchar(255) DEFAULT NULL,
  `emergency_contact_phone` varchar(255) DEFAULT NULL,
  `first_parent_signature` varchar(255) DEFAULT NULL,
  `first_parent_name` varchar(255) DEFAULT NULL,
  `first_parent_email` varchar(255) DEFAULT NULL,
  `first_parent_phone` varchar(255) DEFAULT NULL,
  `second_parent_name` varchar(255) DEFAULT NULL,
  `second_parent_email` varchar(255) DEFAULT NULL,
  `second_parent_phone` varchar(255) DEFAULT NULL,
  `parent_legal_category` text,
  `is_secondary_consent_required` tinyint DEFAULT NULL,
  `is_able_to_consent_alone` tinyint DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `member_payment_agreement_signature` varchar(255) DEFAULT NULL,
  `id_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_forms_treatment_plan_acknowledgement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `clinical_forms_treatment_plan_acknowledgement_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_regions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `manager_email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinical_supervisor_contact_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_supervisor_email` varchar(255) DEFAULT NULL,
  `note_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `note_text` text,
  `clinician_associate_user_id` int NOT NULL,
  `clinician_associate_email` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `clinician_supervisor_email` (`clinician_supervisor_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_action_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_plan_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `focus_area` varchar(255) DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `action_plan_notes` text,
  `action_plan_details` text,
  `week_notes` text,
  `send_email` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `completed_by` varchar(255) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `is_draft` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `action_plan_id` (`action_plan_id`),
  CONSTRAINT `action_plan_list_ibfk_1` FOREIGN KEY (`action_plan_id`) REFERENCES `clinician_action_plan_weekly_overview` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_action_plan_weekly_overview` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `status` enum('In progress','Completed','Needs action plan','No action plan needed','Deleted','Draft') DEFAULT NULL,
  `start_of_week` date DEFAULT NULL,
  `end_of_week` date DEFAULT NULL,
  `focus_area` varchar(255) DEFAULT NULL,
  `completed_by` varchar(255) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clinician_email` (`clinician_email`),
  KEY `idx_start_of_week` (`start_of_week`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_category` varchar(255) NOT NULL,
  `notes_template` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_activity_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `activity_id` int NOT NULL,
  `activity_category` varchar(255) DEFAULT NULL,
  `activity_host` varchar(255) DEFAULT NULL,
  `activity_other_attendees` text,
  `activity_notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `activity_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_user_id` (`clinician_user_id`),
  KEY `activity_id` (`activity_id`),
  CONSTRAINT `clinician_activity_log_ibfk_1` FOREIGN KEY (`clinician_user_id`) REFERENCES `premium_clinicians` (`user_id`),
  CONSTRAINT `clinician_activity_log_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `clinician_activities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_appointment_notification_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `send_status` enum('queued','sent','error','skipped') DEFAULT 'queued',
  `send_status_reason` varchar(255) DEFAULT NULL,
  `sent_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_clinician_send_status` (`clinician_email`,`send_status`),
  CONSTRAINT `clinician_appointment_notification_queue_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`),
  CONSTRAINT `clinician_appointment_notification_queue_ibfk_2` FOREIGN KEY (`appointment_id`) REFERENCES `member_appointments` (`id`),
  CONSTRAINT `clinician_appointment_notification_queue_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_availability_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_type` enum('insert','delete') NOT NULL,
  `request_table` enum('clinician_override_availability','clinician_override_weekly_availability') DEFAULT NULL,
  `request_table_record_id` int DEFAULT NULL,
  `request_state` enum('requested','withdrawn','approved','denied') DEFAULT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `requested_by` varchar(255) DEFAULT NULL,
  `request_state_terminated_at` timestamp NULL DEFAULT NULL,
  `request_state_terminated_by` varchar(255) DEFAULT NULL,
  `new_override_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_availability_requests_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `availability_requests_id` int DEFAULT NULL,
  `note` text,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_clinician_availability_requests` (`availability_requests_id`),
  CONSTRAINT `fk_clinician_availability_requests` FOREIGN KEY (`availability_requests_id`) REFERENCES `clinician_availability_requests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_calendar_computed_intervals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `schedule_date` date NOT NULL,
  `interval_type` varchar(255) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `interval_length` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_email_before_interval` (`clinician_email`,`interval_type`,`schedule_date`),
  KEY `clinician_email_before_date` (`clinician_email`,`schedule_date`,`interval_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_check_in_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `check_in_id` int NOT NULL,
  `content` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `check_in_id` (`check_in_id`),
  CONSTRAINT `clinician_check_in_notes_ibfk_1` FOREIGN KEY (`check_in_id`) REFERENCES `clinician_check_ins` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_check_ins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `starts_at` timestamp(6) NOT NULL,
  `duration_in_mins` int NOT NULL,
  `host` varchar(255) NOT NULL,
  `override_id` int DEFAULT NULL,
  `gcal_event_id` varchar(255) DEFAULT NULL,
  `meeting_url` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `completed_by` varchar(255) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_conqueror_goals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `new_conqueror_goal` int DEFAULT NULL,
  `sustained_conqueror_goal` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`),
  CONSTRAINT `clinician_conqueror_goals_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_conqueror_milestones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `milestone` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `achieved_at` timestamp(6) NOT NULL,
  `celebrated_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`,`milestone`),
  CONSTRAINT `clinician_conqueror_milestones_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_custom_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_id` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `template` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_id` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_dir` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `resources` json DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notes` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_estimators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estimator` varchar(255) NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `estimate` decimal(10,4) NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `estimator` (`estimator`,`clinician_email`),
  UNIQUE KEY `clinician_email` (`clinician_email`,`estimator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_evaluation_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evaluation_id` int NOT NULL,
  `content` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluation_id` (`evaluation_id`),
  CONSTRAINT `clinician_evaluation_notes_ibfk_1` FOREIGN KEY (`evaluation_id`) REFERENCES `clinician_evaluations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_evaluation_training_areas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evaluation_id` int NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluation_id` (`evaluation_id`),
  CONSTRAINT `clinician_evaluation_training_areas_ibfk_1` FOREIGN KEY (`evaluation_id`) REFERENCES `clinician_evaluations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_evaluation_training_check_in_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `check_in_id` int NOT NULL,
  `content` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `check_in_id` (`check_in_id`),
  CONSTRAINT `clinician_evaluation_training_check_in_notes_ibfk_1` FOREIGN KEY (`check_in_id`) REFERENCES `clinician_evaluation_training_check_ins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_evaluation_training_check_ins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evaluation_id` int NOT NULL,
  `starts_at` timestamp(6) NOT NULL,
  `duration_in_mins` int NOT NULL,
  `host` varchar(255) NOT NULL,
  `override_id` int DEFAULT NULL,
  `gcal_event_id` varchar(255) DEFAULT NULL,
  `meeting_url` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `completed_by` varchar(255) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluation_id` (`evaluation_id`),
  CONSTRAINT `clinician_evaluation_training_check_ins_ibfk_1` FOREIGN KEY (`evaluation_id`) REFERENCES `clinician_evaluations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_evaluation_training_goals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `evaluation_id` int NOT NULL,
  `training_area_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `target_metric` varchar(255) NOT NULL,
  `due_at` timestamp(6) NULL DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `completed_by` varchar(255) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `target_metric_value` int DEFAULT NULL,
  `target_metric_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluation_id` (`evaluation_id`),
  CONSTRAINT `clinician_evaluation_training_goals_ibfk_1` FOREIGN KEY (`evaluation_id`) REFERENCES `clinician_evaluations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_evaluations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `version` int NOT NULL,
  `milestone_day` int NOT NULL,
  `data` json NOT NULL,
  `status` enum('questionnaire_needed','questionnaire_review_needed','training_in_progress','completed_with_training','completed_without_training') NOT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `questionnaire_due_at` timestamp(6) NULL DEFAULT NULL,
  `questionnaire_completed_by` varchar(255) DEFAULT NULL,
  `questionnaire_completed_at` timestamp(6) NULL DEFAULT NULL,
  `questionnaire_review_due_at` timestamp(6) NULL DEFAULT NULL,
  `questionnaire_review_completed_by` varchar(255) DEFAULT NULL,
  `questionnaire_review_completed_at` timestamp(6) NULL DEFAULT NULL,
  `shared_with_therapist_at` timestamp(6) NULL DEFAULT NULL,
  `shared_with_therapist_by` varchar(255) DEFAULT NULL,
  `completed_by` varchar(255) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `is_priority` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clinician_email` (`clinician_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_non_adherence_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_id` int NOT NULL,
  `member_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `window_start_date` date NOT NULL,
  `window_end_date` date NOT NULL,
  `current_scheduling_frequency` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `remind_at` timestamp(6) NULL DEFAULT NULL,
  `resolved_at` timestamp(6) NULL DEFAULT NULL,
  `resolved_by` varchar(255) DEFAULT NULL,
  `resolved_reason` text,
  PRIMARY KEY (`id`),
  KEY `clinician_email` (`clinician_email`),
  CONSTRAINT `clinician_notes_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_override_availability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `date` datetime DEFAULT NULL,
  `schedule` varchar(255) NOT NULL,
  `holiday_id` int DEFAULT NULL,
  `schedule_timezone` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `creates_availability` tinyint(1) DEFAULT '1',
  `created_by` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `override_type` enum('General','PTO','Priority Waitlist','Meal & Break','Admin & Focus') DEFAULT 'General',
  `is_draft` tinyint(1) DEFAULT '0',
  `counts_towards_pto` tinyint(1) DEFAULT '0',
  `start_schedule_datetime` datetime GENERATED ALWAYS AS (str_to_date(concat(cast(`date` as date),_utf8mb4' ',substring_index(`schedule`,_utf8mb4'-',1)),_utf8mb4'%Y-%m-%d %l:%i%p')) STORED,
  `end_schedule_datetime` datetime GENERATED ALWAYS AS (str_to_date(concat(cast(`date` as date),_utf8mb4' ',substring_index(`schedule`,_utf8mb4'-',-(1))),_utf8mb4'%Y-%m-%d %l:%i%p')) STORED,
  `duration_minutes` int GENERATED ALWAYS AS (timestampdiff(MINUTE,`start_schedule_datetime`,`end_schedule_datetime`)) STORED,
  `expires_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `created_for_cams` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `holidays` (`clinician_email`,`holiday_id`),
  KEY `clinician_email` (`clinician_email`),
  CONSTRAINT `chk_schedule_upper` CHECK ((upper(`schedule`) = `schedule`)),
  CONSTRAINT `clinician_override_availability_chk_1` CHECK (regexp_like(`schedule`,_utf8mb4'^[0-9:APM; -]+$'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_override_weekly_availability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `sunday_schedule` varchar(255) DEFAULT '',
  `monday_schedule` varchar(255) DEFAULT '',
  `tuesday_schedule` varchar(255) DEFAULT '',
  `wednesday_schedule` varchar(255) DEFAULT '',
  `thursday_schedule` varchar(255) DEFAULT '',
  `friday_schedule` varchar(255) DEFAULT '',
  `saturday_schedule` varchar(255) DEFAULT '',
  `notes` varchar(255) DEFAULT NULL,
  `creates_availability` tinyint(1) DEFAULT '1',
  `created_by` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `weekly_cadence` varchar(255) DEFAULT 'weekly',
  `is_draft` tinyint(1) DEFAULT '0',
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_email` (`clinician_email`),
  CONSTRAINT `chk_friday_schedule` CHECK ((upper(`friday_schedule`) = `friday_schedule`)),
  CONSTRAINT `chk_monday_schedule` CHECK ((upper(`monday_schedule`) = `monday_schedule`)),
  CONSTRAINT `chk_saturday_schedule` CHECK ((upper(`saturday_schedule`) = `saturday_schedule`)),
  CONSTRAINT `chk_sunday_schedule` CHECK ((upper(`sunday_schedule`) = `sunday_schedule`)),
  CONSTRAINT `chk_thursday_schedule` CHECK ((upper(`thursday_schedule`) = `thursday_schedule`)),
  CONSTRAINT `chk_tuesday_schedule` CHECK ((upper(`tuesday_schedule`) = `tuesday_schedule`)),
  CONSTRAINT `chk_wednesday_schedule` CHECK ((upper(`wednesday_schedule`) = `wednesday_schedule`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_override_weekly_availability_splits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cowa_id` int DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `start_schedule_datetime` datetime DEFAULT NULL,
  `end_schedule_datetime` datetime DEFAULT NULL,
  `creates_availability` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `day_name` varchar(255) GENERATED ALWAYS AS (dayname(`schedule_date`)) STORED,
  `week` date GENERATED ALWAYS AS (date_format((`schedule_date` + interval (1 - dayofweek(`schedule_date`)) day),_utf8mb4'%Y-%m-%d')) STORED,
  PRIMARY KEY (`id`),
  KEY `schedule_key` (`cowa_id`,`clinician_email`,`creates_availability`,`schedule_date`),
  CONSTRAINT `clinician_override_weekly_availability_splits_ibfk_1` FOREIGN KEY (`cowa_id`) REFERENCES `clinician_override_weekly_availability` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_override_weekly_max_das` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `max_das` int NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `clinician_override_weekly_max_das_chk_1` CHECK ((dayofweek(`start_date`) = 1)),
  CONSTRAINT `clinician_override_weekly_max_das_chk_2` CHECK ((dayofweek(`end_date`) = 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_param_ranges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) DEFAULT NULL,
  `param_name` varchar(255) DEFAULT NULL,
  `param_int_value` decimal(10,2) DEFAULT NULL,
  `param_string_value` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `created_reason` text,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_reason` text,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_email_param_name_idx` (`clinician_email`,`param_name`),
  CONSTRAINT `clinician_param_ranges_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clinician_param_ranges_latest_view` AS SELECT 
 1 AS `id`,
 1 AS `clinician_email`,
 1 AS `param_name`,
 1 AS `param_int_value`,
 1 AS `param_string_value`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `created_at`,
 1 AS `created_by`,
 1 AS `created_reason`,
 1 AS `updated_at`,
 1 AS `updated_by`,
 1 AS `updated_reason`,
 1 AS `is_deleted`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_priority_slot_waitlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `slot_day_of_week` varchar(16) NOT NULL,
  `slot_start_time` int NOT NULL,
  `slot_end_time` int NOT NULL,
  `priority_members` json NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_priority_waitlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `user_ids` json DEFAULT NULL,
  `sunday_schedule` varchar(255) DEFAULT '',
  `monday_schedule` varchar(255) DEFAULT '',
  `tuesday_schedule` varchar(255) DEFAULT '',
  `wednesday_schedule` varchar(255) DEFAULT '',
  `thursday_schedule` varchar(255) DEFAULT '',
  `friday_schedule` varchar(255) DEFAULT '',
  `saturday_schedule` varchar(255) DEFAULT '',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_email` (`clinician_email`),
  CONSTRAINT `clinician_priority_waitlists_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_professional_disclosure_document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `license_state` varchar(255) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `license_expiry` date NOT NULL,
  `clinician_signed_at` timestamp NULL DEFAULT NULL,
  `supervisor_email` varchar(255) DEFAULT NULL,
  `supervisor_signed_at` timestamp NULL DEFAULT NULL,
  `status` enum('needs_supervisor_signature','completed','not_started') NOT NULL DEFAULT 'not_started',
  `payload` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_license_idx` (`clinician_email`,`license_state`,`license_number`,`license_expiry`),
  CONSTRAINT `clinician_professional_disclosure_document_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_progress_current_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `quarter` varchar(7) DEFAULT NULL,
  `charts_closed_perc` float DEFAULT NULL,
  `outcomes_perc` float DEFAULT NULL,
  `retention_6_perc` float DEFAULT NULL,
  `retention_12_perc` float DEFAULT NULL,
  `assigned_to_rec_freq_perc` float DEFAULT NULL,
  `avg_survey_rating` float DEFAULT NULL,
  `assessment_completion_perc` float DEFAULT NULL,
  `messaging_timely_perc` float DEFAULT NULL,
  `messaging_frequency_perc` float DEFAULT NULL,
  `messaging_responsiveness_perc` float DEFAULT NULL,
  `rescheduled_rate_perc` float DEFAULT NULL,
  `cancellation_rate_perc` float DEFAULT NULL,
  `members_with_upcoming_sessions_perc` float DEFAULT NULL,
  `sustained_conquerors` int DEFAULT NULL,
  `sustained_conquerors_bonus_amount` float DEFAULT NULL,
  `treatment_conquerors` int DEFAULT NULL,
  `treatment_conquerors_bonus_amount` float DEFAULT NULL,
  `v6_bonus_amount` float DEFAULT NULL,
  `v6_bonus_met_members` int DEFAULT NULL,
  `v6_bonus_elig_members` int DEFAULT NULL,
  `v18_bonus_amount` float DEFAULT NULL,
  `v18_bonus_met_members` int DEFAULT NULL,
  `v18_bonus_elig_members` int DEFAULT NULL,
  `scheduled_to_freq_perc` float DEFAULT NULL,
  `seen_at_freq_perc` float DEFAULT NULL,
  `projected_bonus_amount` float DEFAULT NULL,
  `avg_unadjusted_hours` float DEFAULT NULL,
  `committed_hours` float DEFAULT NULL,
  `adjusted_hours` float DEFAULT NULL,
  `avg_utilization_perc` float DEFAULT NULL,
  `weeks_left_in_qtr` int DEFAULT NULL,
  `min_hrs_needed` float DEFAULT NULL,
  `min_hrs_needed_per_wk` float DEFAULT NULL,
  `min_hrs_needed_per_wk_to_27` float DEFAULT NULL,
  `min_hrs_needed_per_wk_to_28_5` float DEFAULT NULL,
  `min_hrs_needed_per_wk_to_30` float DEFAULT NULL,
  `min_on_time_notes_needed` int DEFAULT NULL,
  `five_star_ratings` int DEFAULT NULL,
  `four_star_ratings` int DEFAULT NULL,
  `three_star_ratings` int DEFAULT NULL,
  `two_star_ratings` int DEFAULT NULL,
  `one_star_ratings` int DEFAULT NULL,
  `total_ratings` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_clinician_date` (`clinician_email`,`date`),
  KEY `idx_clinician_email` (`clinician_email`),
  KEY `idx_date_clinician` (`date` DESC,`clinician_email`),
  KEY `idx_clinician_quarter_date_desc` (`clinician_email`,`quarter`,`date` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_requested_move_ups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  `current_stage` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_scorecards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `data` json DEFAULT NULL,
  `total_score` float DEFAULT NULL,
  `max_score` float NOT NULL,
  `needs_training` tinyint(1) DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  `completed_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clinician_email` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_shopify_discount_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `shopify_customer_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_task_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `therapist_email` varchar(255) NOT NULL,
  `clinician_task_templates_id` int NOT NULL,
  `description` text NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `done` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_task_templates_id` (`clinician_task_templates_id`),
  CONSTRAINT `clinician_task_submissions_ibfk_1` FOREIGN KEY (`clinician_task_templates_id`) REFERENCES `clinician_task_templates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_task_submissions_history` (
  `id` int NOT NULL,
  `version` int NOT NULL AUTO_INCREMENT,
  `therapist_email` varchar(255) NOT NULL,
  `clinician_task_templates_id` int NOT NULL,
  `description` text NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `done` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_task_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tags` json DEFAULT NULL,
  `task_type` enum('generalized','personalized') NOT NULL DEFAULT 'generalized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_template_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `message_content` text,
  `template_message_type` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_custom_template` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `template_message_type_key` (`clinician_email`,`template_message_type`),
  CONSTRAINT `clinician_template_messages_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `idtoken` text NOT NULL,
  `google_payload` json DEFAULT NULL,
  `auth_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `auditing` varchar(255) DEFAULT NULL,
  `auditor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `auth_token` (`auth_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_universal_zoom_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `zoom_id` varchar(255) NOT NULL,
  `zoom_join_link` varchar(255) NOT NULL,
  `zoom_password` varchar(255) NOT NULL,
  `zoom_host` varchar(255) NOT NULL,
  `zoom_payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_user_zoom_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `user_id` int NOT NULL,
  `zoom_id` varchar(255) DEFAULT NULL,
  `zoom_join_link` varchar(255) DEFAULT NULL,
  `zoom_password` varchar(255) DEFAULT NULL,
  `zoom_host` varchar(255) DEFAULT NULL,
  `zoom_payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`clinician_user_id`,`user_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2999 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_utilization_review_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `live_status` varchar(255) NOT NULL,
  `reviewed_by` varchar(255) NOT NULL,
  `reviewed_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `utilization_reason` varchar(255) NOT NULL,
  `utilization_reason_details` text,
  `three_week_average_utilization_percent` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_viewed_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `elapsed_time` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinicians_availability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `clinician_timezone` varchar(255) DEFAULT '',
  `sunday_schedule` varchar(255) DEFAULT '',
  `monday_schedule` varchar(255) DEFAULT '',
  `tuesday_schedule` varchar(255) DEFAULT '',
  `wednesday_schedule` varchar(255) DEFAULT '',
  `thursday_schedule` varchar(255) DEFAULT '',
  `friday_schedule` varchar(255) DEFAULT '',
  `saturday_schedule` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinicians_availability_daily` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `appointment_date` date NOT NULL,
  `da_length` int NOT NULL,
  `slots_raw_daily` int DEFAULT '0',
  `slots_adj_daily` int DEFAULT '0',
  `slots_adj_weekly` int DEFAULT '0',
  `timeranges` varchar(255) DEFAULT '',
  `timeranges_da` varchar(255) DEFAULT '',
  `timezone` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_date_length` (`user_id`,`appointment_date`,`da_length`,`created_at`),
  KEY `user_id` (`user_id`,`da_length`,`appointment_date`),
  KEY `email` (`email`,`da_length`,`appointment_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cohort` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cohort_name` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_banner_cohort_ranks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_banner_id` int NOT NULL,
  `cohort` varchar(255) NOT NULL,
  `rank` int NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_banner_views` (
  `id` int NOT NULL AUTO_INCREMENT,
  `community_banner_id` int NOT NULL,
  `rank` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `index_on_user_id_banner_id` (`user_id`,`community_banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17082 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `unseen_image_url` varchar(255) NOT NULL,
  `seen_image_url` varchar(255) NOT NULL,
  `cta_url` varchar(255) NOT NULL,
  `minimum_ios_version` varchar(255) DEFAULT NULL,
  `minimum_android_version` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_like_notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int NOT NULL,
  `post_id` int NOT NULL,
  `source_user_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `sent_notification_id` varchar(255) DEFAULT NULL,
  `not_sent_reason` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `target_user_id` (`target_user_id`,`thread_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40720 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_post_notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int NOT NULL,
  `source_user_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `sent_notification_id` varchar(255) DEFAULT NULL,
  `not_sent_reason` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `target_user_id` (`target_user_id`,`thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39666 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_reply_notifications` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `thread_id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `reply_id` int NOT NULL,
  `source_user_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `sent_notification_id` varchar(255) DEFAULT NULL,
  `not_sent_reason` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_idx_thread_post_reply_source_target` (`thread_id`,`post_id`,`reply_id`,`source_user_id`,`target_user_id`),
  KEY `target_user_id` (`target_user_id`,`thread_id`),
  KEY `reply_id` (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1400796 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_thread_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `thread_id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `subscription_type` varchar(64) DEFAULT 'reply',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`user_id`,`thread_id`,`post_id`,`subscription_type`),
  KEY `user_id` (`user_id`,`thread_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=664806 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `condition` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `condition` (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connected_calls_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intake_calls_id` int NOT NULL,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `intake_calls_id_idx` (`intake_calls_id`),
  KEY `member_appointments_id_idx` (`member_appointments_id`),
  CONSTRAINT `connected_calls_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `connected_calls_table_ibfk_2` FOREIGN KEY (`intake_calls_id`) REFERENCES `intake_calls` (`id`),
  CONSTRAINT `connected_calls_table_ibfk_3` FOREIGN KEY (`member_appointments_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquerer_primary_form_for_outcomes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `forms_table_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `forms_table_id_subscore` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `forms_table_id` (`forms_table_id`),
  CONSTRAINT `conquerer_primary_form_for_outcomes_ibfk_1` FOREIGN KEY (`forms_table_id`) REFERENCES `forms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conquerer_primary_form_for_outcomes_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conquerer_primary_form_for_outcomes_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `forms_table_id` int DEFAULT NULL,
  `forms_table_id_subscore` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `transaction_type` enum('insert','update','delete') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=516130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conqueror_advocacy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `social_platform` varchar(255) DEFAULT NULL,
  `other_social_platform` varchar(255) DEFAULT NULL,
  `screenshot_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `contact_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `contact_name` varchar(255) DEFAULT NULL,
  `contacted_party_relationship` varchar(255) DEFAULT NULL,
  `contact_method` varchar(255) DEFAULT NULL,
  `contact_reason` text,
  `contact_details` text,
  `risk_assessment_json` json DEFAULT NULL,
  `time_spent_in_mins` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contractor_itemized_payroll` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payroll_name` varchar(255) NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `service_category` varchar(255) NOT NULL,
  `service_type` varchar(255) NOT NULL,
  `service_date` timestamp NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `member_user_id` int DEFAULT NULL,
  `member_initials` varchar(255) DEFAULT NULL,
  `cpt_code` varchar(255) DEFAULT NULL,
  `minutes` int NOT NULL,
  `hourly_rate` int NOT NULL,
  `compensation` int NOT NULL,
  `note` text,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credentialing_progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `state_insurance_id` int NOT NULL,
  `credentialing_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_sync_timestamps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sync_name` varchar(50) NOT NULL,
  `sync_status` enum('success','error','unknown') DEFAULT 'unknown',
  `last_seen_timestamp` timestamp NOT NULL,
  `sync_started_at` timestamp NOT NULL,
  `synced_ended_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `records_synced` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crp_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `bootstrapped_at` timestamp(3) NULL DEFAULT NULL,
  `enabled_at` timestamp(3) NULL DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`user_id`),
  KEY `idx_bootstrap_enabled_user` (`bootstrapped_at`,`enabled_at`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_plan_info` (
  `user_id` int NOT NULL,
  `estimated_time_before_improvements` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_clinician_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `title` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_resolved` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `idx_clinician_email` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cycled_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `body` text NOT NULL,
  `user_id` int NOT NULL,
  `post_type_data` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cycled_posts_idx_post` (`post_id`),
  KEY `cycled_posts_idx_user` (`user_id`),
  FULLTEXT KEY `idx_body` (`body`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_metrics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `utilization_score` decimal(10,4) DEFAULT NULL,
  `outcomes` decimal(10,4) DEFAULT NULL,
  `charts_closed` decimal(10,4) DEFAULT NULL,
  `adherence_3_15` decimal(10,4) DEFAULT NULL,
  `adherence_12_90` decimal(10,4) DEFAULT NULL,
  `perc_compliant` decimal(10,4) DEFAULT NULL,
  `baseline_scores` decimal(10,4) DEFAULT NULL,
  `rating` decimal(10,4) DEFAULT NULL,
  `perc_sched_compliant` decimal(10,4) DEFAULT NULL,
  `perc_seen_compliant` decimal(10,4) DEFAULT NULL,
  `perc_messaged_timely` decimal(10,4) DEFAULT NULL,
  `total_member_count` int DEFAULT NULL,
  `not_discharged_member_count` int DEFAULT NULL,
  `hours_next_week` decimal(10,4) DEFAULT NULL,
  `hours_this_week` decimal(10,4) DEFAULT NULL,
  `hours_last_week` decimal(10,4) DEFAULT NULL,
  `utilization_next_week` decimal(10,4) DEFAULT NULL,
  `utilization_this_week` decimal(10,4) DEFAULT NULL,
  `utilization_last_week` decimal(10,4) DEFAULT NULL,
  `first_sessions_next_week` int DEFAULT NULL,
  `first_sessions_this_week` int DEFAULT NULL,
  `first_sessions_last_week` int DEFAULT NULL,
  `three_week_avg_hours` decimal(10,4) DEFAULT NULL,
  `three_week_avg_utilization` decimal(10,4) DEFAULT NULL,
  `treatment_conqueror_count` int DEFAULT NULL,
  `treatment_conqueror_bonus_amount` decimal(10,4) DEFAULT NULL,
  `sustained_conqueror_count` int DEFAULT NULL,
  `sustained_conqueror_bonus_amount` decimal(10,4) DEFAULT NULL,
  `treatment_adherence_bonus_amount` decimal(10,4) DEFAULT NULL,
  `treatment_adherence_bonus_member_count` int DEFAULT NULL,
  `projected_bonus_amount` decimal(10,4) DEFAULT NULL,
  `avg_adjusted_weekly_hours` decimal(10,4) DEFAULT NULL,
  `committed_hours` decimal(10,4) DEFAULT NULL,
  `written_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `unadjusted_hours` decimal(10,4) DEFAULT NULL,
  `adjusted_hours` decimal(10,4) DEFAULT NULL,
  `next_session_booking_rate` decimal(10,4) DEFAULT NULL,
  `reschedule_rate` decimal(10,4) DEFAULT NULL,
  `cancellation_rate` decimal(10,4) DEFAULT NULL,
  `retention_6_sessions` decimal(10,4) DEFAULT NULL,
  `retention_6_sessions_bonus` decimal(10,4) DEFAULT NULL,
  `all_time_members` int DEFAULT NULL,
  `active_members` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_migration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `source_id` int NOT NULL,
  `source_table` varchar(255) NOT NULL,
  `dest_id` int DEFAULT NULL,
  `dest_table` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `source_idx` (`source_id`,`source_table`),
  KEY `dest_idx` (`dest_id`,`dest_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_profile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `ab_test_type` varchar(255) NOT NULL,
  `saw_flow_popup` tinyint(1) DEFAULT NULL,
  `saw_flow_popup_at` timestamp NULL DEFAULT NULL,
  `saw_flow_dynamic_module` tinyint(1) DEFAULT NULL,
  `saw_flow_dynamic_module_at` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `clicked_get_started` tinyint(1) DEFAULT NULL,
  `symptom_severity` int DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `year_of_birth` int DEFAULT NULL,
  `goes_to_college` tinyint(1) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `insurance` varchar(255) DEFAULT NULL,
  `other_conditions` varchar(2048) DEFAULT NULL,
  `has_clinician` tinyint(1) DEFAULT NULL,
  `current_clinician` varchar(255) DEFAULT NULL,
  `exited_screen` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `exited_from_flow_popup` tinyint(1) DEFAULT NULL,
  `completed_from_flow_popup` tinyint(1) DEFAULT NULL,
  `exited_from_flow_dynamic_module` tinyint(1) DEFAULT NULL,
  `completed_from_flow_dynamic_module` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latest_open` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date_strides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `day_name` varchar(255) GENERATED ALWAYS AS (dayname(`day`)) STORED,
  `week` date GENERATED ALWAYS AS (date_format((`day` + interval (1 - dayofweek(`day`)) day),_utf8mb4'%Y-%m-%d')) STORED,
  `month` date GENERATED ALWAYS AS (date_format(`day`,_utf8mb4'%Y-%m-01')) STORED,
  `year` date GENERATED ALWAYS AS (date_format(`day`,_utf8mb4'%Y-01-01')) STORED,
  PRIMARY KEY (`id`),
  KEY `day` (`day`),
  KEY `week` (`week`),
  KEY `month` (`month`),
  KEY `year` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_table_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` date DEFAULT NULL,
  `day_of_week` varchar(255) DEFAULT NULL,
  `week_prior_sunday` date DEFAULT NULL,
  `week_prior_prior_sunday` date GENERATED ALWAYS AS ((`week_prior_sunday` - interval 7 day)) STORED,
  `week_next_sunday` date GENERATED ALWAYS AS ((`week_prior_sunday` + interval 7 day)) STORED,
  `month_for_day` date DEFAULT NULL,
  `days_since_start_of_month` int DEFAULT NULL,
  `days_to_end_of_month` int DEFAULT NULL,
  `quarter_for_day` date DEFAULT NULL,
  `quarter_for_week_utilization` date DEFAULT NULL,
  `year_for_day` date DEFAULT NULL,
  `year_for_week_utilization` date DEFAULT NULL,
  `week_status` enum('completed','current','future') DEFAULT NULL,
  `is_holiday` tinyint(1) NOT NULL DEFAULT '0',
  `holiday_description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `day` (`day`),
  KEY `quarter_for_day` (`quarter_for_day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_compulsions_for_obsessions` (
  `default_compulsion_id` varchar(32) NOT NULL DEFAULT '',
  `default_obsession_id` varchar(32) DEFAULT '',
  `compulsion` varchar(255) NOT NULL,
  PRIMARY KEY (`default_compulsion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_exposures_for_triggers` (
  `default_exposure_id` varchar(32) NOT NULL DEFAULT '',
  `default_trigger_id` varchar(32) DEFAULT '',
  `exposure` varchar(255) NOT NULL,
  PRIMARY KEY (`default_exposure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_obsessions_for_subtypes` (
  `default_obsession_id` varchar(32) NOT NULL DEFAULT '',
  `default_subtype_id` varchar(32) DEFAULT '',
  `obsession` varchar(255) NOT NULL,
  PRIMARY KEY (`default_obsession_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_profile_bio_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `currency` char(3) NOT NULL,
  `cash_pay_90_min` int NOT NULL,
  `cash_pay_60_min` int NOT NULL,
  `cash_pay_45_min` int NOT NULL,
  `cash_pay_30_min` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ended_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_subtypes` (
  `default_subtype_id` varchar(32) NOT NULL DEFAULT '',
  `subtype` varchar(128) NOT NULL,
  PRIMARY KEY (`default_subtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_triggers_for_obsessions` (
  `default_trigger_id` varchar(32) NOT NULL DEFAULT '',
  `default_obsession_id` varchar(32) DEFAULT '',
  `trigger` varchar(255) NOT NULL,
  PRIMARY KEY (`default_trigger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delete_account_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `flow` varchar(255) NOT NULL,
  `user_delete_reason` text,
  `freshdesk_ticket_id` int DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `resolved_at` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceId` varchar(255) NOT NULL,
  `userId` int NOT NULL,
  `permission` varchar(255) NOT NULL,
  `status` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis_approval_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `appointment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostic_assessment_access` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `utm_nocd` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dictation_tool_consent_forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `member_dob` varchar(255) DEFAULT NULL,
  `member_signature` varchar(255) DEFAULT NULL,
  `member_accepted_at` timestamp(6) NULL DEFAULT NULL,
  `member_declined_at` timestamp(6) NULL DEFAULT NULL,
  `member_withdrawn_at` timestamp(6) NULL DEFAULT NULL,
  `is_able_to_consent_alone` tinyint(1) DEFAULT NULL,
  `is_secondary_consent_required` tinyint(1) DEFAULT NULL,
  `relation_to_member` varchar(255) DEFAULT NULL,
  `guardian_1_legal_category` varchar(255) DEFAULT NULL,
  `guardian_1_signature` varchar(255) DEFAULT NULL,
  `guardian_1_name` varchar(255) DEFAULT NULL,
  `guardian_1_phone` varchar(255) DEFAULT NULL,
  `guardian_1_email` varchar(255) DEFAULT NULL,
  `guardian_1_accepted_at` timestamp(6) NULL DEFAULT NULL,
  `guardian_1_declined_at` timestamp(6) NULL DEFAULT NULL,
  `guardian_1_withdrawn_at` timestamp(6) NULL DEFAULT NULL,
  `guardian_2_guid` varchar(64) DEFAULT NULL,
  `guardian_2_name` varchar(255) DEFAULT NULL,
  `guardian_2_phone` varchar(255) DEFAULT NULL,
  `guardian_2_email` varchar(255) DEFAULT NULL,
  `guardian_2_signature` varchar(255) DEFAULT NULL,
  `guardian_2_accepted_at` timestamp(6) NULL DEFAULT NULL,
  `guardian_2_declined_at` timestamp(6) NULL DEFAULT NULL,
  `guardian_2_withdrawn_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_guardian_2_guid` (`guardian_2_guid`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discharge_note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `discharge_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `discharge_reason` varchar(255) DEFAULT NULL,
  `discharge_barriers_and_notes` text,
  `discharge_care_and_referrals` text,
  `adhered_to_treatment_plan` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discharge_note_needed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `existing_discharge_note_id` int DEFAULT NULL,
  `completed_discharge_note_id` int DEFAULT NULL,
  `effective_date` date NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_clinician_email` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discharge_note_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `discharge_reason` varchar(255) DEFAULT NULL,
  `discharge_barriers_and_notes` text,
  `discharge_care_and_referrals` text,
  `adhered_to_treatment_plan` varchar(255) DEFAULT NULL,
  `reviewer_notes` text,
  `status` varchar(255) DEFAULT NULL,
  `discharge_note_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_clinician_email` (`clinician_email`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dynamic_module_id` int NOT NULL,
  `message` text,
  `link_url` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_public_id` varchar(255) NOT NULL,
  `image_width` int unsigned NOT NULL,
  `image_height` int unsigned NOT NULL,
  `aspect_ratio` double NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dynamic_module_id` int NOT NULL,
  `message` text,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_post_community` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dynamic_module_id` int NOT NULL,
  `post_id` int NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_registry` (
  `dm_registry_id` int NOT NULL AUTO_INCREMENT,
  `dynamic_module_id` int NOT NULL,
  `user_id` int unsigned NOT NULL,
  `view_count` int unsigned NOT NULL DEFAULT '1',
  `position_timestamp` timestamp(6) NULL DEFAULT NULL,
  `position_post_id` int DEFAULT NULL COMMENT 'This indicates that the dynamic module goes immediately before the post_id when the user scrolls in their feed (so they see the dm before they see the post with this post_id)',
  `feed_segment_layout_id` int DEFAULT NULL,
  `feed_segment_guid` varchar(64) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`dm_registry_id`),
  UNIQUE KEY `user_id` (`user_id`,`dynamic_module_id`),
  KEY `feed_segment_layout_id` (`feed_segment_layout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=305665 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_registry_v2` (
  `dm_registry_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int unsigned NOT NULL,
  `view_count` int unsigned NOT NULL DEFAULT '1',
  `position_timestamp` timestamp(6) NULL DEFAULT NULL,
  `position_post_id` int DEFAULT NULL COMMENT 'This indicates that the dynamic module goes immediately before the post_id when the user scrolls in their feed (so they see the dm before they see the post with this post_id)',
  `feed_segment_layout_id` int DEFAULT NULL,
  `feed_segment_guid` varchar(64) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`dm_registry_id`),
  UNIQUE KEY `user_id` (`user_id`,`post_id`),
  KEY `feed_segment_layout_id` (`feed_segment_layout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7567920 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dm_sessions_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `do_not_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `braze_email_marketing_synced_at` timestamp(6) NULL DEFAULT NULL,
  `braze_sms_marketing_synced_at` timestamp(6) NULL DEFAULT NULL,
  `braze_sms_transactional_synced_at` timestamp(6) NULL DEFAULT NULL,
  `textline_sms_synced_at` timestamp(6) NULL DEFAULT NULL,
  `mailgun_email_synced_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docspring_sends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `authorizer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`,`user_id`),
  KEY `user_id` (`user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version` int NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `template_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `human_id` varchar(255) NOT NULL,
  `member_visibility` enum('latest','all','hidden') DEFAULT 'latest',
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`,`name`),
  UNIQUE KEY `human_id_version_index` (`human_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_context_menu_action_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `action_name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_on_user` (`user_id`,`action_name`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_context_menu_actions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_name` varchar(255) NOT NULL,
  `use_post_annotations` tinyint(1) NOT NULL,
  `user_level_annotation` tinyint(1) NOT NULL,
  `refresh_element` tinyint(1) DEFAULT '1',
  `take_action_title` varchar(255) NOT NULL,
  `undo_action_title` varchar(255) NOT NULL,
  `take_action_success_message` varchar(255) DEFAULT '',
  `undo_action_success_message` varchar(255) DEFAULT '',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `action_name` (`action_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_ctas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cta_name` varchar(255) NOT NULL,
  `variant_a` text NOT NULL,
  `variant_b` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cta_name` (`cta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_feed_filters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filter_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `filter_name` (`filter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_feed_filters_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `filter_name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`filter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_modules` (
  `dynamic_module_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `start_at` timestamp(6) NOT NULL,
  `end_at` timestamp(6) NOT NULL,
  `rank` int unsigned NOT NULL DEFAULT '1',
  `refresh_duration` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`dynamic_module_id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamic_query_runner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `query` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `record_view_type` varchar(255) DEFAULT NULL,
  `dynamic_column_settings` tinyint(1) DEFAULT NULL,
  `column_settings` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earlier_sessions_audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `slot` timestamp(6) NOT NULL,
  `chosen_candidate_user_id` int DEFAULT NULL,
  `chosen_candidate` json DEFAULT NULL,
  `candidates` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ehr_ai_suggestions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_id` int NOT NULL,
  `ehr_section` varchar(255) NOT NULL,
  `question_field_type` enum('multiselect','freetext','radio') NOT NULL,
  `question_id` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `output` json DEFAULT NULL,
  `transcript_reference` text,
  `accepted` tinyint(1) DEFAULT NULL,
  `evaluated` tinyint(1) DEFAULT NULL,
  `evaluated_at` timestamp(6) NULL DEFAULT NULL,
  `evaluated_comments` text,
  `accepted_at` timestamp(6) NULL DEFAULT NULL,
  `feedback_text` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `trace_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ma_question` (`ma_id`,`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ehr_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ehr_user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `payload` json DEFAULT NULL,
  `member_user_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `remind_at` timestamp NULL DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ehr_user_id` (`ehr_user_id`),
  KEY `member_user_id` (`member_user_id`),
  CONSTRAINT `ehr_notifications_ibfk_1` FOREIGN KEY (`ehr_user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `ehr_notifications_ibfk_2` FOREIGN KEY (`member_user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ehr_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ehr_users_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `ehr_users_roles_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `ehr_role` (`id`),
  CONSTRAINT `ehr_users_roles_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eligibility_tasks_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `eligibility_tasks_id` int NOT NULL,
  `eligibility_tasks_user_id` int NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`eligibility_tasks_user_id`),
  KEY `idx_task_id` (`eligibility_tasks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eligible_claim_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_appointments_id` int NOT NULL,
  `user_id` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  `eligible_id` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `request_payload` json DEFAULT NULL,
  `response_payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eligible_claim_webhooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `event_id` varchar(255) NOT NULL,
  `payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `reference_id` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_blocks` (
  `email` varchar(255) NOT NULL,
  `block_reason` varchar(255) NOT NULL,
  `moderator_email` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `replaced_by_user_id` int DEFAULT NULL,
  `replaced_user_id` int DEFAULT NULL,
  `prior_email` varchar(255) DEFAULT NULL,
  `post_email` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `authorizer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text,
  `variable_schema` json DEFAULT NULL,
  `is_basic` tinyint(1) DEFAULT NULL,
  `is_html` tinyint(1) DEFAULT NULL,
  `from_mail` varchar(255) NOT NULL,
  `to_mail` varchar(255) NOT NULL,
  `reply_to` varchar(255) NOT NULL,
  `tags` json DEFAULT NULL,
  `cc_list` json DEFAULT NULL,
  `bcc_list` json DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `sent` tinyint(1) DEFAULT '0',
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) NOT NULL,
  `subject` varchar(1024) NOT NULL,
  `template_variable_schema` json DEFAULT NULL,
  `template_html` text NOT NULL,
  `version` int DEFAULT '1',
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_name` (`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  `body` text,
  `rating` tinyint(1) DEFAULT NULL,
  `reply_body` text,
  `reply_date` timestamp(6) NULL DEFAULT NULL,
  `is_hidden` tinyint(1) DEFAULT '0',
  `internal_notes` text,
  `source` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_shopify_discount_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `year` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_year` (`email`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_status_changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flowdash_stage` varchar(255) DEFAULT NULL,
  `provider_credentialing_id` int NOT NULL,
  `transitioned_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `assigned_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `compulsionID` varchar(64) NOT NULL,
  `from` tinyint NOT NULL DEFAULT '0',
  `had` tinyint NOT NULL DEFAULT '0',
  `heartRate` tinyint NOT NULL DEFAULT '0',
  `epsDate` datetime DEFAULT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `locationAddress` varchar(255) NOT NULL,
  `obsessionID` varchar(64) NOT NULL,
  `triggerID` varchar(64) NOT NULL,
  `intense` varchar(255) NOT NULL,
  `compulsionTime` int NOT NULL,
  `placeID` varchar(64) NOT NULL,
  `endIntensity` int NOT NULL,
  `epsId` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_episodes_on_user_id_scheduled_id` (`userID`,`epsId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erp_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `entryDescription` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `scheduledID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `exposureMessageID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `entryID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_erp_entries_on_user_id_entry_id` (`userID`,`entryID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erp_entry_audio` (
  `recordID` int NOT NULL AUTO_INCREMENT,
  `entryID` varchar(64) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fileData` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`recordID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erp_entry_pictures` (
  `pictID` int NOT NULL AUTO_INCREMENT,
  `entryID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `fileData` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`pictID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erp_poll` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `hidden_exit_screen` tinyint(1) DEFAULT NULL,
  `q1_have_you_heard_of_erp_response` tinyint(1) DEFAULT NULL,
  `q2_have_you_tried_erp_response` tinyint(1) DEFAULT NULL,
  `q3_did_erp_work` tinyint(1) DEFAULT NULL,
  `q4_what_was_biggest_challenge_with_erp` varchar(255) DEFAULT NULL,
  `next_click_on_share_story` tinyint(1) DEFAULT NULL,
  `next_click_on_what_is_erp` tinyint(1) DEFAULT NULL,
  `next_click_on_how_does_erp_work` tinyint(1) DEFAULT NULL,
  `next_click_on_how_to_do_erp_effectively` tinyint(1) DEFAULT NULL,
  `next_click_on_testimonial` tinyint(1) DEFAULT NULL,
  `clicked_call_us_now` tinyint(1) DEFAULT NULL,
  `completed_flow` tinyint(1) DEFAULT NULL,
  `completed_screen` varchar(255) DEFAULT NULL,
  `exited_flow` tinyint(1) DEFAULT NULL,
  `exited_screen` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_screen_end` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(255) NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `userID` int DEFAULT NULL,
  `screenNameAudit` varchar(255) DEFAULT NULL,
  `screenName` varchar(255) NOT NULL,
  `screenKey` varchar(255) NOT NULL,
  `cta` varchar(64) DEFAULT NULL,
  `backClicked` tinyint(1) DEFAULT '0',
  `exitClicked` tinyint(1) DEFAULT '0',
  `closedApp` tinyint(1) DEFAULT '0',
  `autoEnded` tinyint(1) DEFAULT '0',
  `SSCallBeforeSE` tinyint(1) DEFAULT '0',
  `client_ts` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `index_on_sessionID` (`deviceID`,`sessionID`),
  KEY `index_on_user` (`userID`),
  KEY `screenKey_2` (`screenKey`),
  KEY `screenKey` (`screenKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_screen_start` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(255) NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `userID` int DEFAULT NULL,
  `screenName` varchar(255) NOT NULL,
  `screenKey` varchar(255) NOT NULL,
  `prevScreenName` varchar(255) DEFAULT NULL,
  `prevScreenKey` varchar(64) DEFAULT NULL,
  `fKey` varchar(64) DEFAULT NULL,
  `fKeyInt` int DEFAULT NULL,
  `fKeyString` varchar(255) DEFAULT NULL,
  `SECallBeforeSS` tinyint(1) DEFAULT '0',
  `client_ts` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `index_on_sessionID` (`deviceID`,`sessionID`),
  KEY `index_on_user` (`userID`),
  KEY `prevScreenKey` (`prevScreenKey`),
  KEY `screenKey_2` (`screenKey`),
  KEY `screenKey` (`screenKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `event_screens` AS SELECT 
 1 AS `start_id`,
 1 AS `end_id`,
 1 AS `deviceID`,
 1 AS `sessionID`,
 1 AS `userID`,
 1 AS `screenName`,
 1 AS `screenKey`,
 1 AS `prevScreenName`,
 1 AS `prevScreenKey`,
 1 AS `nextScreen`,
 1 AS `nextScreenKey`,
 1 AS `fKey`,
 1 AS `fKeyInt`,
 1 AS `fKeyString`,
 1 AS `SECallBeforeSS`,
 1 AS `SSCallBeforeSE`,
 1 AS `cta`,
 1 AS `backClicked`,
 1 AS `exitClicked`,
 1 AS `closedApp`,
 1 AS `autoEnded`,
 1 AS `open_time`,
 1 AS `close_time`,
 1 AS `time_spent`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(255) NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `traceID` varchar(255) NOT NULL,
  `userID` int DEFAULT NULL,
  `event` varchar(64) NOT NULL,
  `fKey` varchar(64) DEFAULT NULL,
  `fKeyColName` varchar(64) DEFAULT NULL,
  `fKeyInt` int DEFAULT NULL,
  `fKeyString` varchar(255) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `client_ts` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `index_on_sessionID` (`deviceID`,`sessionID`),
  KEY `index_on_user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=776203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exercise_tool_id` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `aspect_ratio` double DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `exercise_tool_id` (`exercise_tool_id`),
  CONSTRAINT `exercise_images_ibfk_1` FOREIGN KEY (`exercise_tool_id`) REFERENCES `exercise_tools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exercise_tool_id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_aspect_ratio` double DEFAULT NULL,
  `favicon_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `exercise_tool_id` (`exercise_tool_id`),
  CONSTRAINT `exercise_links_ibfk_1` FOREIGN KEY (`exercise_tool_id`) REFERENCES `exercise_tools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_looptapes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exercise_tool_id` int NOT NULL,
  `looptape_url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration_seconds` int DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `exercise_tool_id` (`exercise_tool_id`),
  CONSTRAINT `exercise_tool_id` FOREIGN KEY (`exercise_tool_id`) REFERENCES `exercise_tools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_migrate_looptapes_user_devices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `number_of_looptapes` int NOT NULL,
  `completed_migration` tinyint(1) DEFAULT '0',
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_migrated_looptapes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `record_id` varchar(255) NOT NULL,
  `exercise_tool_id` int NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_id` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_scripts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exercise_tool_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `exercise_tool_id` (`exercise_tool_id`),
  CONSTRAINT `exercise_scripts_ibfk_1` FOREIGN KEY (`exercise_tool_id`) REFERENCES `exercise_tools` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_tool_selections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `exercise_tool_id` int NOT NULL,
  `exposure_id` varchar(64) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`exercise_tool_id`,`exposure_id`),
  KEY `exercise_tool_id` (`exercise_tool_id`),
  KEY `exposure_id` (`exposure_id`),
  CONSTRAINT `exercise_tool_selections_ibfk_1` FOREIGN KEY (`exercise_tool_id`) REFERENCES `exercise_tools` (`id`),
  CONSTRAINT `exposure_id` FOREIGN KEY (`exposure_id`) REFERENCES `exposure_messages` (`exposureID`),
  CONSTRAINT `fkey_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_tools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `tool_type` enum('LOOPTAPE','SCRIPT','IMAGE','LINK','VIDEO') NOT NULL,
  `trigger_id` varchar(64) DEFAULT NULL,
  `from_therapist` tinyint(1) DEFAULT '0',
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `trigger_id` (`trigger_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `trigger_id` FOREIGN KEY (`trigger_id`) REFERENCES `user_trigger` (`triggerID`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `accepted_self_guided_disclaimer` tinyint(1) NOT NULL,
  `show_hierarchy_onboarding` tinyint(1) NOT NULL,
  `show_exercise_tutorial` tinyint(1) DEFAULT '1',
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_videos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exercise_tool_id` int NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `aspect_ratio` double DEFAULT NULL,
  `filestack_job_id` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `video_status` varchar(255) DEFAULT 'PROCESSING',
  `completed_processing_at` timestamp(3) NULL DEFAULT NULL,
  `processing` tinyint(1) DEFAULT '1',
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `exercise_tool_id` (`exercise_tool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercises` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `scheduledID` varchar(64) NOT NULL,
  `placeID` varchar(64) NOT NULL,
  `exposureMessageID` varchar(64) NOT NULL,
  `type` int NOT NULL,
  `heartRate` int NOT NULL,
  `actualExerciseGoalTime` double NOT NULL,
  `exerciseGoalTime` double NOT NULL,
  `anxiety` int NOT NULL,
  `intensityGoal` int NOT NULL,
  `currentGoal` tinyint(1) NOT NULL,
  `exposureMessage` varchar(255) NOT NULL,
  `exerciseDate` varchar(255) NOT NULL,
  `exerciseID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experience_with_ocd_therapy` (
  `user_id` int NOT NULL,
  `experience` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obsessionID` varchar(64) NOT NULL,
  `triggerID` varchar(64) NOT NULL,
  `title` varchar(255) NOT NULL,
  `visibility` tinyint NOT NULL DEFAULT '0',
  `exposureID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_assets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` varchar(64) NOT NULL,
  `exposureID` varchar(64) NOT NULL,
  `asset_id` varchar(64) NOT NULL,
  `asset_type` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID_2` (`userID`,`asset_id`),
  KEY `userID` (`userID`,`exposureID`)
) ENGINE=InnoDB AUTO_INCREMENT=2283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_exercise_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `exposureID` varchar(64) NOT NULL,
  `messageID` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`,`messageID`),
  KEY `index_exposure_exercise_messages_on_userID` (`userID`,`exposureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obsessionID` varchar(64) NOT NULL,
  `triggerID` varchar(64) NOT NULL,
  `userID` int NOT NULL,
  `title` mediumtext,
  `anxiety` int NOT NULL,
  `goalExposureType` int NOT NULL,
  `exposureID` varchar(64) NOT NULL,
  `default_exposure_id` varchar(32) DEFAULT '',
  `current_erp` tinyint(1) DEFAULT '0',
  `practice_goal` int DEFAULT NULL,
  `recording_prompt_dismissed` tinyint(1) DEFAULT '0',
  `from_therapist` tinyint(1) DEFAULT '0',
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  `practice_type` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_exposure_messages_on_user_id_exposure_id` (`userID`,`exposureID`),
  UNIQUE KEY `exposureID` (`exposureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_prevention_tip_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `response_prevention_message_id` int NOT NULL,
  `exposure_id` varchar(64) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`response_prevention_message_id`,`exposure_id`),
  KEY `exposure_id` (`exposure_id`),
  KEY `response_prevention_message_id` (`response_prevention_message_id`),
  CONSTRAINT `exposure_prevention_tip_assignments_ibfk_1` FOREIGN KEY (`response_prevention_message_id`) REFERENCES `response_prevention_messages` (`id`),
  CONSTRAINT `exposure_prevention_tip_assignments_ibfk_2` FOREIGN KEY (`exposure_id`) REFERENCES `exposure_messages` (`exposureID`),
  CONSTRAINT `exposure_prevention_tip_assignments_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=1479 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_prompt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `prompt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `obsessionID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `prevention` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `instructions` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `promptID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_exposure_prompt_on_user_id_prompt_id` (`userID`,`promptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exposure_response_prevention_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `response_prevention_id` int NOT NULL,
  `exposure_id` varchar(64) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`response_prevention_id`,`exposure_id`),
  KEY `exposure_id` (`exposure_id`),
  KEY `response_prevention_id` (`response_prevention_id`),
  CONSTRAINT `exposure_response_prevention_assignments_ibfk_1` FOREIGN KEY (`response_prevention_id`) REFERENCES `response_prevention` (`id`),
  CONSTRAINT `exposure_response_prevention_assignments_ibfk_2` FOREIGN KEY (`exposure_id`) REFERENCES `exposure_messages` (`exposureID`),
  CONSTRAINT `exposure_response_prevention_assignments_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_provider_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `external_providers_id` int NOT NULL,
  `user_id` int NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`external_providers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_provider_referrals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `patient_first_name` varchar(255) DEFAULT NULL,
  `patient_last_name` varchar(255) DEFAULT NULL,
  `patient_state` varchar(255) DEFAULT NULL,
  `patient_age` int DEFAULT NULL,
  `patient_phone` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `patient_dob` date DEFAULT NULL,
  `primary_carer_first_name` varchar(255) DEFAULT NULL,
  `primary_carer_last_name` varchar(255) DEFAULT NULL,
  `primary_carer_phone` varchar(255) DEFAULT NULL,
  `primary_carer_email` varchar(255) DEFAULT NULL,
  `primary_carer_relation` varchar(255) DEFAULT NULL,
  `additional_notes` text,
  `external_provider_id` int NOT NULL,
  `relation_to_patient` varchar(255) DEFAULT NULL,
  `who_to_contact` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT NULL,
  `call_outcome` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `call_time_preference` varchar(255) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `external_provider_id` (`external_provider_id`),
  CONSTRAINT `external_provider_referrals_ibfk_1` FOREIGN KEY (`external_provider_id`) REFERENCES `external_providers` (`id`),
  CONSTRAINT `external_provider_referrals_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_provider_service_area_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_id` int NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `service_area` varchar(100) NOT NULL,
  `priority_order` int NOT NULL,
  `last_assigned_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_provider_service_area` (`state_name`,`service_area`,`provider_id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `external_provider_service_area_assignments_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `external_providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_provider_verification_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `external_providers_id` int NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `expires_at` timestamp(6) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `verification_code` (`verification_code`),
  UNIQUE KEY `external_providers_id` (`external_providers_id`,`verification_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auth_provider_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax_number` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `how_did_you_hear_about_us` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `npi_number` varchar(255) DEFAULT NULL,
  `npi_type` enum('not_set','individual','organization') DEFAULT 'not_set',
  `title` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `is_accepting_new_patients` tinyint DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `referral_team_has_reviewed` tinyint DEFAULT NULL,
  `is_verified` tinyint DEFAULT '0',
  `send_educational_items` tinyint DEFAULT NULL,
  `last_enriched_at` timestamp NULL DEFAULT NULL,
  `parent_external_providers_id` int DEFAULT NULL,
  `verification_status` enum('not_started','pending_verification_by_provider','pending_verification_by_nocd','verified_by_nocd','rejected_by_nocd','needs_reverification') DEFAULT 'not_started',
  `last_verification_email_sent_at` timestamp(6) NULL DEFAULT NULL,
  `last_verified_by_nocd_at` timestamp(6) NULL DEFAULT NULL,
  `last_verified_by_provider_at` timestamp(6) NULL DEFAULT NULL,
  `preferred_contact_method` varchar(255) DEFAULT NULL,
  `referral_team_notes` text,
  `is_preferred_for_outbound_referrals` tinyint DEFAULT NULL,
  `is_preferred_partner` tinyint DEFAULT NULL,
  `preferred_partner_image_url` varchar(255) DEFAULT NULL,
  `preferred_partner_description` varchar(255) DEFAULT NULL,
  `age_range` json DEFAULT NULL,
  `problem_area` json DEFAULT NULL,
  `type_of_treatment` json DEFAULT NULL,
  `accepted_settings` json DEFAULT NULL,
  `employed_professionals` json DEFAULT NULL,
  `booking_link` varchar(100) DEFAULT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `preferred_contact_method_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_provider_id` (`auth_provider_id`),
  UNIQUE KEY `npi_number` (`npi_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_providers_from_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `external_providers_id` int DEFAULT NULL,
  `npi_number` varchar(255) DEFAULT NULL,
  `npi_type` enum('not_set','individual','organization') DEFAULT 'not_set',
  `user_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `reviewed` tinyint DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `referred_member` tinyint(1) DEFAULT NULL,
  `reason_working_with` varchar(255) DEFAULT NULL,
  `sharing_status` enum('not_set','enabled_by_member','enabled_by_nocd','disabled_by_member','disabled_by_nocd') DEFAULT 'not_set',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_providers_state_coverages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_id` int NOT NULL,
  `state_name` varchar(100) NOT NULL,
  `coverages` json DEFAULT NULL,
  `metro_areas` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_provider_state` (`provider_id`,`state_name`),
  CONSTRAINT `external_providers_state_coverages_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `external_providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fax_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `job_id` int NOT NULL,
  `fax_status` varchar(255) NOT NULL,
  `fax_metadata` json NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `appointment_id` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `bool_value` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_segment` (
  `feed_segment_pk` int NOT NULL AUTO_INCREMENT,
  `feed_segment_layout_id` int NOT NULL,
  `prev_segment_guid` varchar(64) DEFAULT NULL,
  `current_segment_guid` varchar(64) NOT NULL,
  `next_segment_guid` varchar(64) DEFAULT NULL,
  `segment_num` int NOT NULL,
  `objects_in_segment` int NOT NULL,
  `less_than` int DEFAULT NULL,
  `dynamic_module_offset` int DEFAULT NULL,
  `debug_json` json DEFAULT NULL,
  PRIMARY KEY (`feed_segment_pk`),
  UNIQUE KEY `current_segment_guid` (`current_segment_guid`),
  KEY `feed_segment_layout_id` (`feed_segment_layout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2143722 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_segment_layout` (
  `segment_layout_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `feed_type` varchar(255) DEFAULT NULL,
  `filter_name` varchar(255) DEFAULT NULL,
  `content_filter_no_trigger_warnings` tinyint(1) DEFAULT '0',
  `content_filter_nocd` tinyint(1) DEFAULT '0',
  `num_items` int NOT NULL DEFAULT '0',
  `num_segments` int NOT NULL DEFAULT '0',
  `client_filters` json DEFAULT NULL,
  `limit` int NOT NULL,
  `dm_spacing` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`segment_layout_id`),
  KEY `user_id_device_id` (`user_id`,`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feed_segment_layout_ledger` (
  `feed_segment_layout_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `personalization_metadata` json DEFAULT NULL,
  PRIMARY KEY (`feed_segment_layout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flag_state_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `sent_notification_id` varchar(255) DEFAULT NULL,
  `not_sent_reason` int DEFAULT NULL,
  `flag_state` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `flag_state_notifications_idx_on_user_id_and_post_id` (`target_user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `comment` text,
  `reviewed` tinyint(1) DEFAULT '0',
  `reviewed_by` varchar(255) DEFAULT NULL,
  `created_by_moderator` tinyint(1) DEFAULT '0',
  `source_user_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_flags_on_post_id` (`post_id`),
  KEY `index_flags_on_reviewed` (`reviewed`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flowdash_ids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `workflow` varchar(255) NOT NULL,
  `flowdash_id` varchar(255) DEFAULT NULL,
  `int_pk` int DEFAULT NULL,
  `varchar_pk` varchar(255) DEFAULT NULL,
  `pk_name` varchar(255) NOT NULL,
  `pk_table` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `workflow` (`workflow`,`int_pk`),
  KEY `workflow_2` (`workflow`,`varchar_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followed_topics` (
  `user_id` int NOT NULL,
  `topic_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  CONSTRAINT `followed_topics_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followed_topics_pre_subtypes` (
  `user_id` int NOT NULL,
  `topic_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `following_user_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`following_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1568 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_automation_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_start_at` timestamp(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `log` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `job_start_at` (`job_start_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_automation_user_form_cadence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at_for_3_weeks` timestamp(6) NULL DEFAULT NULL,
  `created_at_for_6_weeks` timestamp(6) NULL DEFAULT NULL,
  `created_at_for_12_weeks` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_automation_user_form_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `form_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_form_id` (`user_id`,`form_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `form_automation_user_view` AS SELECT 
 1 AS `email`,
 1 AS `user_id`,
 1 AS `protocol_type`,
 1 AS `assigned_clinician_user_id`,
 1 AS `clinician_email`,
 1 AS `clinician_form_automation_enabled`,
 1 AS `active_subscription`,
 1 AS `form_automation_active`,
 1 AS `form_automation_create_at`,
 1 AS `form_automation_initialized`,
 1 AS `form_automation_initialized_by`,
 1 AS `form_automation_initialized_at`,
 1 AS `form_automation_user_form_settings_authorized_by`,
 1 AS `form_automation_user_form_settings_authorized_at`,
 1 AS `form_automation_paused_by`,
 1 AS `form_automation_paused_at`,
 1 AS `setting_form_ids`,
 1 AS `setting_form_names`,
 1 AS `created_form_ids`,
 1 AS `created_form_names`,
 1 AS `start_ts`,
 1 AS `session_type`,
 1 AS `second_session_or_reassessment_completed`,
 1 AS `form_automation_should_create`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submission_change_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_type` enum('ARCHIVE','NEW_BASELINE') DEFAULT NULL,
  `requested_by` varchar(100) NOT NULL,
  `request_details` text NOT NULL,
  `additional_details` text,
  `requested_for_user_id` int NOT NULL,
  `requested_form_id` int NOT NULL,
  `existing_baseline_form_id` int DEFAULT NULL,
  `archive_replacement_form_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  `approved_at` timestamp(6) NULL DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `rejected_at` timestamp(6) NULL DEFAULT NULL,
  `rejected_by` varchar(100) DEFAULT NULL,
  `rejection_reason` text,
  `cancelled_at` timestamp(6) NULL DEFAULT NULL,
  `cancelled_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `requested_for_user_id` (`requested_for_user_id`),
  KEY `requested_form_id` (`requested_form_id`),
  CONSTRAINT `form_submission_change_request_ibfk_1` FOREIGN KEY (`requested_for_user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `form_submission_change_request_ibfk_2` FOREIGN KEY (`requested_form_id`) REFERENCES `form_submissions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_id` int NOT NULL,
  `user_id` int NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `form_fields_data` json DEFAULT NULL,
  `form_scores_data` json DEFAULT NULL,
  `is_completed` tinyint DEFAULT '0',
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `completed_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_linked_appointment_id` int DEFAULT NULL,
  `due_at` timestamp(6) NULL DEFAULT NULL,
  `created_by_form_automation` tinyint DEFAULT '0',
  `archived_reason` text,
  `is_baseline` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_id` (`form_id`,`appointment_id`),
  CONSTRAINT `form_submissions_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submissions_completed_at_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submissions_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_submissions_id` int NOT NULL,
  `form_id` int NOT NULL,
  `user_id` int NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `form_fields_data` json DEFAULT NULL,
  `form_scores_data` json DEFAULT NULL,
  `is_completed` tinyint DEFAULT '0',
  `is_deleted` tinyint DEFAULT '0',
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_reason` varchar(255) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_linked_appointment_id` int DEFAULT NULL,
  `due_at` timestamp(6) NULL DEFAULT NULL,
  `created_by_form_automation` tinyint DEFAULT '0',
  `archived_reason` text,
  `is_baseline` tinyint(1) DEFAULT NULL,
  `transaction_type` enum('insert','update','delete') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=516130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_submissions_scores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `form_submissions_id` int DEFAULT NULL,
  `subscore_name` varchar(255) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `baseline_completed_at` timestamp NULL DEFAULT NULL,
  `score` decimal(12,3) DEFAULT NULL,
  `baseline_score` decimal(12,3) DEFAULT NULL,
  `score_diff` decimal(12,3) DEFAULT NULL,
  `score_diff_perc` decimal(12,3) DEFAULT NULL,
  `is_post_baseline` tinyint(1) DEFAULT NULL,
  `is_baseline` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `is_primary_computed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_id` (`form_submissions_id`,`subscore_name`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `form_fields_schema` json DEFAULT NULL,
  `form_scoring_function` varchar(255) DEFAULT NULL,
  `revision_id` int NOT NULL,
  `status` varchar(255) DEFAULT 'not_live',
  `description` varchar(255) DEFAULT '',
  `short_description` varchar(255) DEFAULT NULL,
  `authorizer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `form_frequency_in_weeks` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms_version_control` (
  `id` int NOT NULL AUTO_INCREMENT,
  `forms_id` int NOT NULL,
  `revision_id` int NOT NULL,
  `form_fields_schema` json DEFAULT NULL,
  `form_scoring_function` varchar(255) DEFAULT NULL,
  `authorizer` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `forms_id` (`forms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `functional_assessments_interview_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `external_or_environmental_triggers` json DEFAULT NULL,
  `internal_triggers` json DEFAULT NULL,
  `intrusive_mental_content` json DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `functional_assessments_interview_form_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gcal_snapshot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `organizer` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `timerange` varchar(255) DEFAULT NULL,
  `start_utc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_utc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `minutes` int NOT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geo_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(64) NOT NULL,
  `state_abbr` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state_abbr` (`state_abbr`),
  UNIQUE KEY `state_name` (`state_name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `scheduledID` varchar(64) NOT NULL,
  `staredExposureID` varchar(64) NOT NULL,
  `completedSessions` int NOT NULL,
  `numberOfSessions` int NOT NULL,
  `currentExerciseChangedGoalTime` double NOT NULL,
  `currentExerciseGoalTime` double NOT NULL,
  `defaultGoalTime` double NOT NULL,
  `goalResistanceTime` double NOT NULL,
  `incrementTime` double NOT NULL,
  `startGoalTime` double NOT NULL,
  `currentGoalEnded` tinyint(1) NOT NULL,
  `goalTimeChanged` tinyint(1) NOT NULL,
  `goalID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_goals_on_user_id_goal_id` (`userID`,`goalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_calendar_splits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `start_schedule_datetime` datetime DEFAULT NULL,
  `end_schedule_datetime` datetime DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `day_name` varchar(255) GENERATED ALWAYS AS (dayname(`schedule_date`)) STORED,
  `week` date GENERATED ALWAYS AS (date_format((`schedule_date` + interval (1 - dayofweek(`schedule_date`)) day),_utf8mb4'%Y-%m-%d')) STORED,
  `cal_id` varchar(255) DEFAULT NULL,
  `appt_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu_worker_monitor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `script` varchar(255) NOT NULL,
  `backlog_size` int NOT NULL,
  `num_workers` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `idx_script` (`script`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `greenhouse_applications` (
  `id` bigint NOT NULL,
  `candidate_id` bigint NOT NULL,
  `prospect` tinyint(1) NOT NULL DEFAULT '0',
  `applied_at` datetime DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `location` text,
  `source_id` bigint DEFAULT NULL,
  `source_name` varchar(255) DEFAULT NULL,
  `credited_to_id` bigint DEFAULT NULL,
  `credited_to_name` varchar(255) DEFAULT NULL,
  `rejection_reason_id` bigint DEFAULT NULL,
  `rejection_reason_name` varchar(255) DEFAULT NULL,
  `rejection_type_id` bigint DEFAULT NULL,
  `rejection_type_name` varchar(255) DEFAULT NULL,
  `rejection_details` json DEFAULT NULL,
  `job_ids` json DEFAULT NULL,
  `job_names` json DEFAULT NULL,
  `job_post_id` bigint DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `current_stage_id` bigint DEFAULT NULL,
  `current_stage_name` varchar(255) DEFAULT NULL,
  `answers` json DEFAULT NULL,
  `prospective_office` json DEFAULT NULL,
  `prospective_department` json DEFAULT NULL,
  `prospect_detail` json DEFAULT NULL,
  `custom_fields` json DEFAULT NULL,
  `keyed_custom_fields` json DEFAULT NULL,
  `attachments` json DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_candidate_id` (`candidate_id`),
  KEY `idx_status` (`status`),
  KEY `idx_applied_at` (`applied_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `greenhouse_candidates` (
  `id` bigint NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `photo_url` text,
  `attachments` json DEFAULT NULL,
  `application_ids` json DEFAULT NULL,
  `phone_numbers` json DEFAULT NULL,
  `addresses` json DEFAULT NULL,
  `email_addresses` json DEFAULT NULL,
  `website_addresses` json DEFAULT NULL,
  `social_media_addresses` json DEFAULT NULL,
  `recruiter_id` bigint DEFAULT NULL,
  `recruiter_name` varchar(255) DEFAULT NULL,
  `coordinator_id` bigint DEFAULT NULL,
  `coordinator_name` varchar(255) DEFAULT NULL,
  `can_email` tinyint(1) NOT NULL DEFAULT '1',
  `tags` json DEFAULT NULL,
  `educations` json DEFAULT NULL,
  `employments` json DEFAULT NULL,
  `linked_user_ids` json DEFAULT NULL,
  `custom_fields` json DEFAULT NULL,
  `keyed_custom_fields` json DEFAULT NULL,
  `created_at_local` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at_local` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_first_name` (`first_name`),
  KEY `idx_last_name` (`last_name`),
  KEY `idx_created_at` (`created_at`),
  KEY `idx_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `greenhouse_scorecards` (
  `id` bigint NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `interview` varchar(255) DEFAULT NULL,
  `interview_step_id` bigint DEFAULT NULL,
  `interview_step_name` varchar(255) DEFAULT NULL,
  `candidate_id` bigint DEFAULT NULL,
  `application_id` bigint DEFAULT NULL,
  `interviewed_at` datetime DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `submitted_by_id` bigint DEFAULT NULL,
  `submitted_by_name` varchar(255) DEFAULT NULL,
  `interviewer_id` bigint DEFAULT NULL,
  `interviewer_name` varchar(255) DEFAULT NULL,
  `overall_recommendation` varchar(50) DEFAULT NULL,
  `attributes` json DEFAULT NULL,
  `ratings` json DEFAULT NULL,
  `questions` json DEFAULT NULL,
  `key_takeaways` text,
  `private_notes` text,
  `created_at_local` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at_local` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_candidate_id` (`candidate_id`),
  KEY `idx_application_id` (`application_id`),
  KEY `idx_interviewed_at` (`interviewed_at`),
  KEY `idx_overall_recommendation` (`overall_recommendation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `greenhouse_webhooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payload` json DEFAULT NULL,
  `gh_action` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`payload`,_utf8mb4'$.action'))) STORED,
  PRIMARY KEY (`id`),
  KEY `gh_action` (`gh_action`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_chat_daily_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id_locked` varchar(255) DEFAULT NULL,
  `module_text` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_chat_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_id` int NOT NULL,
  `source_user_id` int DEFAULT NULL,
  `is_moderator_flag` tinyint(1) DEFAULT '0',
  `category` varchar(255) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`,`source_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_chat_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel_id` varchar(45) NOT NULL,
  `name` varchar(128) NOT NULL,
  `icon_url` varchar(256) NOT NULL,
  `description` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_chat_memberships` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  `group_chat_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_chat_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trace_id` varchar(255) NOT NULL,
  `group_id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text,
  `last_flag_category` varchar(255) DEFAULT NULL,
  `last_flag_id` int DEFAULT NULL,
  `moderator_reviewed` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trace_id` (`trace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthplan_handlers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plan_name` varchar(255) DEFAULT NULL,
  `handler_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hidden_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_on_user_post_action` (`user_id`,`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3759 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hidden_system_exercise_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `exposureID` varchar(64) NOT NULL,
  `messageTypeID` varchar(255) NOT NULL,
  `messageType` varchar(64) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_exposure_exercise_messages_on_userID` (`userID`,`exposureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hloc_therapy_note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `note_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `note_reason` enum('Referred to HLOC','Stepping down from HLOC','No Longer Applicable') DEFAULT NULL,
  `note_details` text,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holiday_creation_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `holiday_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`,`holiday_id`),
  UNIQUE KEY `holiday_id` (`holiday_id`,`clinician_email`),
  CONSTRAINT `holiday_creation_ledger_ibfk_1` FOREIGN KEY (`holiday_id`) REFERENCES `holidays` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holidays` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `all_day` tinyint(1) NOT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `schedule_timezone` enum('America/Chicago') DEFAULT NULL,
  `description` text,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  CONSTRAINT `all_day_cant_have_tz` CHECK (((`all_day` is null) or (`all_day` = 0) or (`schedule_timezone` is null))),
  CONSTRAINT `holidays_schedule` CHECK (regexp_like(`schedule`,_utf8mb4'^[0-9:APM; -]+$'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homework_plan_migration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_migration_id` int NOT NULL,
  `record_id` int NOT NULL,
  `record_table` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `record_id` (`record_id`,`record_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icd_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `is_hidden` tinyint(1) DEFAULT '0',
  `is_provisional` tinyint(1) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iframe_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_ts` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `in_app_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `source` varchar(255) NOT NULL,
  `feedback` text,
  `stars` int DEFAULT NULL,
  `popupCancelled` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `initial_ybocs_prompt` (
  `user_id` int NOT NULL,
  `started_at` timestamp(6) NULL DEFAULT NULL,
  `skipped_at` timestamp(6) NULL DEFAULT NULL,
  `completed_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_id` int NOT NULL,
  `cpt_code` varchar(255) DEFAULT NULL,
  `degree_type` varchar(32) NOT NULL,
  `rate` int NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `insurance_id` (`insurance_id`,`degree_type`,`cpt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_scheduled_rates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_id` int NOT NULL,
  `start_date` date NOT NULL DEFAULT '2000-01-01',
  `end_date` date NOT NULL DEFAULT '2038-01-01',
  `cpt_code` varchar(255) DEFAULT NULL,
  `degree_type` varchar(32) NOT NULL,
  `rate` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_reason` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rate_for_time_range` (`insurance_id`,`degree_type`,`cpt_code`,`start_date`,`end_date`,`archived_at`),
  KEY `start_date` (`start_date`,`end_date`),
  CONSTRAINT `intake_insurance_fk` FOREIGN KEY (`insurance_id`) REFERENCES `intake_insurances` (`id`),
  CONSTRAINT `end_date` CHECK ((cast(`end_date` as time) = _utf8mb4'00:00:00')),
  CONSTRAINT `start_date` CHECK ((cast(`start_date` as time) = _utf8mb4'00:00:00'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_scheduled_rates_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_scheduled_rates_id` int NOT NULL,
  `insurance_id` int NOT NULL,
  `start_date` date NOT NULL DEFAULT '2000-01-01',
  `end_date` date NOT NULL DEFAULT '2038-01-01',
  `cpt_code` varchar(255) DEFAULT NULL,
  `degree_type` varchar(32) NOT NULL,
  `rate` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_reason` text,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `transaction_type` enum('insert','update','delete','archive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_scheduled_rates_simulation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_id` int NOT NULL,
  `start_date` date NOT NULL DEFAULT '2000-01-01',
  `end_date` date NOT NULL DEFAULT '2038-01-01',
  `cpt_code` varchar(255) DEFAULT NULL,
  `degree_type` varchar(32) NOT NULL,
  `rate` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_reason` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rate_for_time_range` (`insurance_id`,`degree_type`,`cpt_code`,`start_date`,`end_date`,`archived_at`),
  KEY `start_date` (`start_date`,`end_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3064 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intake_calls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_call_in` tinyint(1) DEFAULT NULL,
  `appointment_id` varchar(255) DEFAULT NULL,
  `record_id` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `intake_specialist` varchar(255) DEFAULT NULL,
  `is_child_adolescent` tinyint(1) DEFAULT NULL,
  `how_did_you_hear_about_nocd` text,
  `app_user` tinyint(1) DEFAULT NULL,
  `how_do_you_like_the_nocd_app` text,
  `has_insurance` tinyint(1) DEFAULT NULL,
  `insurance_provider` varchar(255) DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `currently_seeing_therapist` varchar(255) DEFAULT NULL,
  `what_prompted_you_to_reach_out_for_therapy_now` text,
  `notes` text,
  `source` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `canceled` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `last_action` varchar(255) DEFAULT NULL,
  `scheduled_at` timestamp(6) NULL DEFAULT NULL,
  `call_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `therapy_appointment_at` timestamp(6) NULL DEFAULT NULL,
  `therapy_appointment_timezone` varchar(32) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `call_delay_reason` varchar(255) DEFAULT '',
  `protocol_type` varchar(255) DEFAULT NULL,
  `billing_notes` text,
  `clinician_email` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `disposition_not_converting` varchar(255) DEFAULT NULL,
  `intake_specialist_who_last_updated_outcome_label` varchar(255) DEFAULT NULL,
  `therapy_type_cbt` tinyint(1) DEFAULT NULL,
  `therapy_type_erp` tinyint(1) DEFAULT NULL,
  `therapy_type_act` tinyint(1) DEFAULT NULL,
  `therapy_type_other` tinyint(1) DEFAULT NULL,
  `therapy_best_describes_you` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `responsible_party_first_name` varchar(255) DEFAULT NULL,
  `responsible_party_last_name` varchar(255) DEFAULT NULL,
  `responsible_party_relation_to_patient` varchar(255) DEFAULT NULL,
  `scheduling_reason` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `is_callback` tinyint(1) DEFAULT NULL,
  `how_did_you_hear_about_nocd_v2` json DEFAULT NULL,
  `peer_advisor_email` varchar(255) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `greeting_q_1` int DEFAULT NULL,
  `greeting_q_2` int DEFAULT NULL,
  `greeting_q_3` int DEFAULT NULL,
  `greeting_q_4` int DEFAULT NULL,
  `greeting_comment` text,
  `greeting_points_available` int DEFAULT NULL,
  `greeting_points_earned` int DEFAULT NULL,
  `structure_q_1` int DEFAULT NULL,
  `structure_q_2` int DEFAULT NULL,
  `structure_q_3` int DEFAULT NULL,
  `structure_q_4` int DEFAULT NULL,
  `structure_q_5` int DEFAULT NULL,
  `structure_comment` text,
  `structure_points_available` int DEFAULT NULL,
  `structure_points_earned` int DEFAULT NULL,
  `cost_q_1` int DEFAULT NULL,
  `cost_q_2` int DEFAULT NULL,
  `cost_q_3` int DEFAULT NULL,
  `cost_comment` text,
  `cost_points_available` int DEFAULT NULL,
  `cost_points_earned` int DEFAULT NULL,
  `language_and_communication_q_1` int DEFAULT NULL,
  `language_and_communication_q_2` int DEFAULT NULL,
  `language_and_communication_comment` text,
  `language_and_communication_points_available` int DEFAULT NULL,
  `language_and_communication_points_earned` int DEFAULT NULL,
  `service_excellence_q_1` int DEFAULT NULL,
  `service_excellence_q_2` int DEFAULT NULL,
  `service_excellence_q_3` int DEFAULT NULL,
  `service_excellence_comment` text,
  `service_excellence_points_available` int DEFAULT NULL,
  `service_excellence_points_earned` int DEFAULT NULL,
  `doc_q_1` int DEFAULT NULL,
  `doc_comment` text,
  `doc_points_earned` int DEFAULT NULL,
  `closing_q_1` int DEFAULT NULL,
  `closing_q_2` int DEFAULT NULL,
  `closing_q_3` int DEFAULT NULL,
  `closing_q_4` int DEFAULT NULL,
  `closing_comment` text,
  `closing_points_available` int DEFAULT NULL,
  `closing_points_earned` int DEFAULT NULL,
  `doc_points_available` int DEFAULT NULL,
  `audit_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_self_service` tinyint(1) DEFAULT NULL,
  `who_are_you_seeking_therapy_for` varchar(255) DEFAULT NULL,
  `where_are_you_in_your_ocd_journey` varchar(255) DEFAULT NULL,
  `what_information_do_you_want_from_your_call` varchar(255) DEFAULT NULL,
  `therapist_preferences` json DEFAULT NULL,
  `preferred_clinician_user_ids` json DEFAULT NULL,
  `what_would_you_like_your_therapist_to_help_with` json DEFAULT NULL,
  `is_biohaven` tinyint(1) DEFAULT NULL,
  `experience_with_erp` varchar(255) DEFAULT NULL,
  `subtypes` varchar(255) DEFAULT NULL,
  `distress_level` varchar(255) DEFAULT NULL,
  `special_requests` text,
  `preferred_therapy_session_availability` text,
  `partner` varchar(255) DEFAULT NULL,
  `wants_move_up` tinyint(1) DEFAULT NULL,
  `initial_metadata` json DEFAULT NULL,
  `therapist_preference_gender` varchar(255) DEFAULT NULL,
  `therapist_preference_additional_specialty` varchar(255) DEFAULT NULL,
  `therapist_preference_cultural_identity` varchar(255) DEFAULT NULL,
  `therapist_preference_religious_affiliation` varchar(255) DEFAULT NULL,
  `is_zocdoc` tinyint(1) DEFAULT NULL,
  `interested_in_sca` tinyint(1) NOT NULL DEFAULT '0',
  `therapist_preference_additional_specialty_json` json DEFAULT NULL,
  `therapist_preference_cultural_identity_json` json DEFAULT NULL,
  `therapist_preference_religious_affiliation_json` json DEFAULT NULL,
  `therapist_preference_specific_populations_json` json DEFAULT NULL,
  `primary_conditions_json` json DEFAULT NULL,
  `opted_in_to_marketing_sms` tinyint DEFAULT NULL,
  `has_kp_referral` tinyint(1) NOT NULL DEFAULT '0',
  `referring_provider` varchar(255) DEFAULT NULL,
  `using_medicaid_or_medicare` tinyint DEFAULT NULL,
  `scheduling_preferences` json DEFAULT NULL,
  `preferred_clinician_email` varchar(255) DEFAULT NULL,
  `hospitalized_recently` enum('Yes','No') DEFAULT NULL,
  `followup_care_recently` enum('Yes','No') DEFAULT NULL,
  `intent_self_harm_recently` enum('Yes','No') DEFAULT NULL,
  `current_intent_self_harm` enum('Yes','No') DEFAULT NULL,
  `hospital_discharge_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `appointment_id` (`appointment_id`),
  KEY `assigned_to` (`assigned_to`),
  KEY `call_at` (`call_at`),
  KEY `date_email` (`call_at`,`email`),
  KEY `email` (`email`),
  KEY `record_id` (`record_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intake_calls_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intake_calls_id` int NOT NULL,
  `event` varchar(255) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `intake_calls_id` (`intake_calls_id`),
  CONSTRAINT `intake_calls_audit_ibfk_1` FOREIGN KEY (`intake_calls_id`) REFERENCES `intake_calls` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `intake_calls_cleaned` AS SELECT 
 1 AS `id`,
 1 AS `is_call_in`,
 1 AS `appointment_id`,
 1 AS `record_id`,
 1 AS `user_id`,
 1 AS `email`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `phone`,
 1 AS `state`,
 1 AS `timezone`,
 1 AS `assigned_to`,
 1 AS `intake_specialist`,
 1 AS `is_child_adolescent`,
 1 AS `how_did_you_hear_about_nocd`,
 1 AS `app_user`,
 1 AS `how_do_you_like_the_nocd_app`,
 1 AS `has_insurance`,
 1 AS `insurance_provider`,
 1 AS `insurance_type`,
 1 AS `school`,
 1 AS `currently_seeing_therapist`,
 1 AS `what_prompted_you_to_reach_out_for_therapy_now`,
 1 AS `notes`,
 1 AS `source`,
 1 AS `label`,
 1 AS `canceled`,
 1 AS `completed`,
 1 AS `last_action`,
 1 AS `scheduled_at`,
 1 AS `call_at`,
 1 AS `therapy_appointment_at`,
 1 AS `therapy_appointment_timezone`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `call_delay_reason`,
 1 AS `protocol_type`,
 1 AS `billing_notes`,
 1 AS `clinician_email`,
 1 AS `is_deleted`,
 1 AS `disposition_not_converting`,
 1 AS `intake_specialist_who_last_updated_outcome_label`,
 1 AS `therapy_type_cbt`,
 1 AS `therapy_type_erp`,
 1 AS `therapy_type_act`,
 1 AS `therapy_type_other`,
 1 AS `therapy_best_describes_you`,
 1 AS `dob`,
 1 AS `responsible_party_first_name`,
 1 AS `responsible_party_last_name`,
 1 AS `responsible_party_relation_to_patient`,
 1 AS `scheduling_reason`,
 1 AS `session_id`,
 1 AS `is_callback`,
 1 AS `how_did_you_hear_about_nocd_v2`,
 1 AS `peer_advisor_email`,
 1 AS `country_code`,
 1 AS `greeting_q_1`,
 1 AS `greeting_q_2`,
 1 AS `greeting_q_3`,
 1 AS `greeting_q_4`,
 1 AS `greeting_comment`,
 1 AS `greeting_points_available`,
 1 AS `greeting_points_earned`,
 1 AS `structure_q_1`,
 1 AS `structure_q_2`,
 1 AS `structure_q_3`,
 1 AS `structure_q_4`,
 1 AS `structure_q_5`,
 1 AS `structure_comment`,
 1 AS `structure_points_available`,
 1 AS `structure_points_earned`,
 1 AS `cost_q_1`,
 1 AS `cost_q_2`,
 1 AS `cost_q_3`,
 1 AS `cost_comment`,
 1 AS `cost_points_available`,
 1 AS `cost_points_earned`,
 1 AS `language_and_communication_q_1`,
 1 AS `language_and_communication_q_2`,
 1 AS `language_and_communication_comment`,
 1 AS `language_and_communication_points_available`,
 1 AS `language_and_communication_points_earned`,
 1 AS `service_excellence_q_1`,
 1 AS `service_excellence_q_2`,
 1 AS `service_excellence_q_3`,
 1 AS `service_excellence_comment`,
 1 AS `service_excellence_points_available`,
 1 AS `service_excellence_points_earned`,
 1 AS `doc_q_1`,
 1 AS `doc_comment`,
 1 AS `doc_points_earned`,
 1 AS `closing_q_1`,
 1 AS `closing_q_2`,
 1 AS `closing_q_3`,
 1 AS `closing_q_4`,
 1 AS `closing_comment`,
 1 AS `closing_points_available`,
 1 AS `closing_points_earned`,
 1 AS `doc_points_available`,
 1 AS `audit_enabled`,
 1 AS `is_self_service`,
 1 AS `who_are_you_seeking_therapy_for`,
 1 AS `where_are_you_in_your_ocd_journey`,
 1 AS `what_information_do_you_want_from_your_call`,
 1 AS `therapist_preferences`,
 1 AS `preferred_clinician_user_ids`,
 1 AS `what_would_you_like_your_therapist_to_help_with`,
 1 AS `is_biohaven`,
 1 AS `experience_with_erp`,
 1 AS `subtypes`,
 1 AS `distress_level`,
 1 AS `special_requests`,
 1 AS `preferred_therapy_session_availability`,
 1 AS `partner`,
 1 AS `wants_move_up`,
 1 AS `initial_metadata`,
 1 AS `therapist_preference_gender`,
 1 AS `therapist_preference_additional_specialty`,
 1 AS `therapist_preference_cultural_identity`,
 1 AS `therapist_preference_religious_affiliation`,
 1 AS `is_zocdoc`,
 1 AS `interested_in_sca`,
 1 AS `therapist_preference_additional_specialty_json`,
 1 AS `therapist_preference_cultural_identity_json`,
 1 AS `therapist_preference_religious_affiliation_json`,
 1 AS `therapist_preference_specific_populations_json`,
 1 AS `primary_conditions_json`,
 1 AS `opted_in_to_marketing_sms`,
 1 AS `has_kp_referral`,
 1 AS `referring_provider`,
 1 AS `using_medicaid_or_medicare`,
 1 AS `scheduling_preferences`,
 1 AS `preferred_clinician_email`,
 1 AS `hospitalized_recently`,
 1 AS `followup_care_recently`,
 1 AS `intent_self_harm_recently`,
 1 AS `current_intent_self_harm`,
 1 AS `hospital_discharge_date`,
 1 AS `converted`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intake_calls_international` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_call_in` tinyint(1) DEFAULT NULL,
  `appointment_id` varchar(255) DEFAULT NULL,
  `record_id` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(32) DEFAULT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `intake_specialist` varchar(255) DEFAULT NULL,
  `is_child_adolescent` tinyint(1) DEFAULT NULL,
  `how_did_you_hear_about_nocd` text,
  `app_user` tinyint(1) DEFAULT NULL,
  `how_do_you_like_the_nocd_app` text,
  `has_insurance` tinyint(1) DEFAULT NULL,
  `insurance_provider` varchar(255) DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `currently_seeing_therapist` varchar(255) DEFAULT NULL,
  `what_prompted_you_to_reach_out_for_therapy_now` text,
  `notes` text,
  `source` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `canceled` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `last_action` varchar(255) DEFAULT NULL,
  `scheduled_at` timestamp(6) NULL DEFAULT NULL,
  `call_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `therapy_appointment_at` timestamp(6) NULL DEFAULT NULL,
  `therapy_appointment_timezone` varchar(32) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `call_delay_reason` varchar(255) DEFAULT '',
  `protocol_type` varchar(255) DEFAULT NULL,
  `billing_notes` text,
  `clinician_email` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `disposition_not_converting` varchar(255) DEFAULT NULL,
  `intake_specialist_who_last_updated_outcome_label` varchar(255) DEFAULT NULL,
  `therapy_type_cbt` tinyint(1) DEFAULT NULL,
  `therapy_type_erp` tinyint(1) DEFAULT NULL,
  `therapy_type_act` tinyint(1) DEFAULT NULL,
  `therapy_type_other` tinyint(1) DEFAULT NULL,
  `therapy_best_describes_you` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `responsible_party_first_name` varchar(255) DEFAULT NULL,
  `responsible_party_last_name` varchar(255) DEFAULT NULL,
  `responsible_party_relation_to_patient` varchar(255) DEFAULT NULL,
  `scheduling_reason` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `is_callback` tinyint(1) DEFAULT NULL,
  `how_did_you_hear_about_nocd_v2` json DEFAULT NULL,
  `peer_advisor_email` varchar(255) DEFAULT NULL,
  `country_code` varchar(2) DEFAULT NULL,
  `greeting_q_1` int DEFAULT NULL,
  `greeting_q_2` int DEFAULT NULL,
  `greeting_q_3` int DEFAULT NULL,
  `greeting_q_4` int DEFAULT NULL,
  `greeting_comment` text,
  `greeting_points_available` int DEFAULT NULL,
  `greeting_points_earned` int DEFAULT NULL,
  `structure_q_1` int DEFAULT NULL,
  `structure_q_2` int DEFAULT NULL,
  `structure_q_3` int DEFAULT NULL,
  `structure_q_4` int DEFAULT NULL,
  `structure_q_5` int DEFAULT NULL,
  `structure_comment` text,
  `structure_points_available` int DEFAULT NULL,
  `structure_points_earned` int DEFAULT NULL,
  `cost_q_1` int DEFAULT NULL,
  `cost_q_2` int DEFAULT NULL,
  `cost_q_3` int DEFAULT NULL,
  `cost_comment` text,
  `cost_points_available` int DEFAULT NULL,
  `cost_points_earned` int DEFAULT NULL,
  `language_and_communication_q_1` int DEFAULT NULL,
  `language_and_communication_q_2` int DEFAULT NULL,
  `language_and_communication_comment` text,
  `language_and_communication_points_available` int DEFAULT NULL,
  `language_and_communication_points_earned` int DEFAULT NULL,
  `service_excellence_q_1` int DEFAULT NULL,
  `service_excellence_q_2` int DEFAULT NULL,
  `service_excellence_q_3` int DEFAULT NULL,
  `service_excellence_comment` text,
  `service_excellence_points_available` int DEFAULT NULL,
  `service_excellence_points_earned` int DEFAULT NULL,
  `doc_q_1` int DEFAULT NULL,
  `doc_comment` text,
  `doc_points_earned` int DEFAULT NULL,
  `closing_q_1` int DEFAULT NULL,
  `closing_q_2` int DEFAULT NULL,
  `closing_q_3` int DEFAULT NULL,
  `closing_q_4` int DEFAULT NULL,
  `closing_comment` text,
  `closing_points_available` int DEFAULT NULL,
  `closing_points_earned` int DEFAULT NULL,
  `doc_points_available` int DEFAULT NULL,
  `audit_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_self_service` tinyint(1) DEFAULT NULL,
  `who_are_you_seeking_therapy_for` varchar(255) DEFAULT NULL,
  `where_are_you_in_your_ocd_journey` varchar(255) DEFAULT NULL,
  `what_information_do_you_want_from_your_call` varchar(255) DEFAULT NULL,
  `therapist_preferences` json DEFAULT NULL,
  `preferred_clinician_user_ids` json DEFAULT NULL,
  `what_would_you_like_your_therapist_to_help_with` json DEFAULT NULL,
  `is_biohaven` tinyint(1) DEFAULT NULL,
  `experience_with_erp` varchar(255) DEFAULT NULL,
  `subtypes` varchar(255) DEFAULT NULL,
  `distress_level` varchar(255) DEFAULT NULL,
  `special_requests` text,
  `preferred_therapy_session_availability` text,
  `partner` varchar(255) DEFAULT NULL,
  `wants_move_up` tinyint(1) DEFAULT NULL,
  `initial_metadata` json DEFAULT NULL,
  `opted_in_to_marketing_sms` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `appointment_id` (`appointment_id`),
  KEY `email` (`email`),
  KEY `date_email` (`call_at`,`email`),
  KEY `user_id` (`user_id`),
  KEY `assigned_to` (`assigned_to`),
  KEY `call_at` (`call_at`),
  KEY `record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intake_calls_rubric` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `agent_email` varchar(255) NOT NULL,
  `intake_call_id` int NOT NULL,
  `talkdesk_call_id` varchar(255) NOT NULL,
  `rubric_scores` json DEFAULT NULL,
  `predicted_rubric_scores` json DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `reviewed_by` varchar(255) DEFAULT NULL,
  `conversation_id` varchar(255) DEFAULT NULL,
  `trained_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `intake_calls_view` AS SELECT 
 1 AS `id`,
 1 AS `is_call_in`,
 1 AS `appointment_id`,
 1 AS `user_id`,
 1 AS `email`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `phone`,
 1 AS `state`,
 1 AS `timezone`,
 1 AS `assigned_to`,
 1 AS `intake_specialist`,
 1 AS `is_child_adolescent`,
 1 AS `how_did_you_hear_about_nocd`,
 1 AS `app_user`,
 1 AS `how_do_you_like_the_nocd_app`,
 1 AS `has_insurance`,
 1 AS `insurance_provider`,
 1 AS `insurance_type`,
 1 AS `school`,
 1 AS `currently_seeing_therapist`,
 1 AS `what_prompted_you_to_reach_out_for_therapy_now`,
 1 AS `notes`,
 1 AS `source`,
 1 AS `label`,
 1 AS `canceled`,
 1 AS `completed`,
 1 AS `last_action`,
 1 AS `scheduled_at`,
 1 AS `call_at`,
 1 AS `therapy_appointment_at`,
 1 AS `therapy_appointment_timezone`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `call_delay_reason`,
 1 AS `source_history`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intake_conqueror_milestones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `milestone` int NOT NULL,
  `agent_email` varchar(255) NOT NULL,
  `achieved_at` timestamp(6) NULL DEFAULT NULL,
  `celebrated_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `agent_email` (`agent_email`,`milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intake_insurances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance` varchar(255) NOT NULL,
  `insurance_tags_ids` json DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `financial_class_code` varchar(64) DEFAULT NULL,
  `additional_notes` text,
  `plan_manager` varchar(255) DEFAULT '-',
  `apero_trading_partner_id` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `fee_schedule_plan` varchar(255) DEFAULT NULL,
  `fee_schedule_plan_id` int DEFAULT NULL,
  `days_to_invoice_claim` int DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `skip_manual_cancels` tinyint(1) DEFAULT NULL,
  `medicare` tinyint(1) DEFAULT NULL,
  `medicaid` tinyint(1) DEFAULT NULL,
  `facility_id` varchar(255) DEFAULT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `avg_remit_time_in_days` int DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `external_display_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intake_promotions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `number_of_months_promotion_lasts` int NOT NULL DEFAULT '1',
  `min_30_rate` int NOT NULL DEFAULT '100',
  `min_45_rate` int NOT NULL DEFAULT '200',
  `min_60_rate` int NOT NULL DEFAULT '300',
  `created_by` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `min_90_rate` int NOT NULL DEFAULT '400',
  `is_indefinite` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interest_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `interest` varchar(255) NOT NULL,
  `category_id` int DEFAULT NULL COMMENT 'References interest_categories.id',
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internal_meeting_transcriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meeting_name` varchar(255) DEFAULT NULL,
  `meeting_description` text,
  `participants` json DEFAULT NULL,
  `transcript` json DEFAULT NULL,
  `generated_note` longtext,
  `transcription_status` varchar(255) DEFAULT NULL,
  `transcription_errors` text,
  `generated_note_status` varchar(255) DEFAULT NULL,
  `trace_id` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internal_reminders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reminder_url` varchar(255) DEFAULT NULL,
  `reminder_text` text NOT NULL,
  `reminder_team` varchar(255) DEFAULT NULL,
  `reminder_date` datetime NOT NULL,
  `completed_date` datetime DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `reminder_intent` text,
  `reminder_intent_description` text,
  `reminder_assigned_to` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internal_reminders_history` (
  `id` int NOT NULL,
  `version` int NOT NULL AUTO_INCREMENT,
  `reminder_url` varchar(255) DEFAULT NULL,
  `reminder_text` text NOT NULL,
  `reminder_team` varchar(255) DEFAULT NULL,
  `reminder_date` datetime NOT NULL,
  `completed_date` datetime DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `reminder_intent` text,
  `reminder_intent_description` text,
  `reminder_assigned_to` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iterable_sync` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sync_type` varchar(255) DEFAULT NULL COMMENT 'Used to categorize the sync type. Different sync operations are run based on this field.',
  `sync_name` varchar(255) DEFAULT NULL COMMENT 'The sync name is an additional identifier that can be used to uniquely identify a sync or to designate a sync batch.',
  `reference_id` int DEFAULT NULL COMMENT 'The reference row ID that is being synced.',
  `user_id` int DEFAULT NULL COMMENT 'The ID of the user to sync the value for.',
  `user_email` varchar(255) DEFAULT NULL COMMENT 'The email of the user to sync the value for.',
  `sync_value` text COMMENT 'The value to sync.',
  `sync_status` varchar(255) NOT NULL DEFAULT 'NOT_STARTED' COMMENT 'Sync status (NOT_STARTED, COMPLETED, FAILED)',
  `sync_priority` int DEFAULT '0' COMMENT 'Sync queue priority to optimize large batch operations.',
  `sync_order` int DEFAULT '0' COMMENT 'Ordering ID for running order dependent sync operations in sequence.',
  `sync_attempt` int DEFAULT '0' COMMENT 'Track sync and failure attempts. Used to stop sync operations with errors.',
  `synced` tinyint(1) DEFAULT '0' COMMENT 'Convenience value for sync success. TRUE if sync is successful.',
  `synced_at` timestamp(6) NULL DEFAULT NULL COMMENT 'Sync attempt time. Sync could succeed or fail. The attempt time is recorded in this field.',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kaiser_expired_scheduling_alerts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `member_billing_coverages_id` int DEFAULT NULL,
  `member_insurance_authorizations_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `member_billing_coverages_id` (`member_billing_coverages_id`),
  KEY `member_insurance_authorizations_id` (`member_insurance_authorizations_id`),
  CONSTRAINT `kaiser_expired_scheduling_alerts_ibfk_1` FOREIGN KEY (`member_billing_coverages_id`) REFERENCES `member_billing_coverages` (`id`),
  CONSTRAINT `kaiser_expired_scheduling_alerts_ibfk_2` FOREIGN KEY (`member_insurance_authorizations_id`) REFERENCES `member_insurance_authorizations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kaiser_non_member_referral_errors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_url` text,
  `first_name` text,
  `last_name` text,
  `phone_number_raw` text,
  `error_reason` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resolved_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kaiser_renewal_admin_sent_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kaiser_renewal_clinician_submissions_id` int NOT NULL,
  `member_id` int NOT NULL,
  `clinician_id` int NOT NULL,
  `sent_to` varchar(255) NOT NULL,
  `subject_line` text NOT NULL,
  `body` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `kaiser_renewal_clinician_submissions_id` (`kaiser_renewal_clinician_submissions_id`),
  KEY `member_id` (`member_id`),
  KEY `clinician_id` (`clinician_id`),
  CONSTRAINT `kaiser_renewal_admin_sent_log_ibfk_1` FOREIGN KEY (`kaiser_renewal_clinician_submissions_id`) REFERENCES `kaiser_renewal_clinician_submissions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kaiser_renewal_clinician_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `billing_coverage_id` int NOT NULL,
  `member_id` int NOT NULL,
  `clinician_id` int NOT NULL,
  `dsm_5_diagnoses` text NOT NULL,
  `symptoms_and_impairments` text NOT NULL,
  `attendance_compliance` text NOT NULL,
  `measurable_progress` text NOT NULL,
  `sessions_smart_usage` text NOT NULL,
  `sent_to_kaiser` tinyint(1) DEFAULT '0',
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `clinician_id` (`clinician_id`),
  KEY `billing_coverage_id` (`billing_coverage_id`),
  CONSTRAINT `kaiser_renewal_clinician_submissions_ibfk_1` FOREIGN KEY (`billing_coverage_id`) REFERENCES `member_billing_coverages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kp_renewal_request_forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_filled` date NOT NULL,
  `provider_name` varchar(255) NOT NULL,
  `provider_phone_number` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_dob` date NOT NULL,
  `patient_mrn` int NOT NULL,
  `start_date` date NOT NULL,
  `request_reason` varchar(255) NOT NULL,
  `specifications_for_request_reason` varchar(255) NOT NULL,
  `diagnosis` text,
  `symptoms` text,
  `attendance` text,
  `progress` text,
  `smart_goals` text,
  `completed_at` timestamp(6) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landing_page_visitors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `traceID` varchar(255) NOT NULL,
  `calendly` tinyint(1) DEFAULT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `utmSource` varchar(255) NOT NULL,
  `utmMedium` varchar(255) NOT NULL,
  `utmCampaign` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alreadyAppUser` tinyint(1) DEFAULT NULL,
  `becameAppUser` tinyint(1) DEFAULT NULL,
  `submitted` tinyint(1) DEFAULT NULL,
  `referred` tinyint(1) DEFAULT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `last_app_open_by_user_id_view` AS SELECT 
 1 AS `id`,
 1 AS `deviceID`,
 1 AS `sessionID`,
 1 AS `firstOpen`,
 1 AS `userID`,
 1 AS `tokenID`,
 1 AS `reauthed`,
 1 AS `register`,
 1 AS `login`,
 1 AS `logout`,
 1 AS `auth_at`,
 1 AS `deauth_at`,
 1 AS `deviceType`,
 1 AS `bundleName`,
 1 AS `version`,
 1 AS `buildID`,
 1 AS `modelName`,
 1 AS `osVersion`,
 1 AS `locale`,
 1 AS `timezone`,
 1 AS `ipAddress`,
 1 AS `country`,
 1 AS `state`,
 1 AS `city`,
 1 AS `zip`,
 1 AS `latitude`,
 1 AS `longitude`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `ended_at`,
 1 AS `maxJoinID`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `last_app_opens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `deviceID` varchar(255) NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `userID` int DEFAULT NULL,
  `deviceType` varchar(16) NOT NULL,
  `bundleName` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `buildID` varchar(255) NOT NULL,
  `modelName` varchar(255) NOT NULL,
  `osVersion` varchar(255) NOT NULL,
  `locale` varchar(64) DEFAULT NULL,
  `timezone` varchar(64) DEFAULT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `xCFip` varchar(255) DEFAULT NULL,
  `xForwarded` varchar(255) DEFAULT NULL,
  `remote` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_on_user` (`userID`),
  KEY `country_state` (`country`,`state`),
  KEY `index_created_at` (`created_at`),
  KEY `ipAddress` (`ipAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `last_charge_view` AS SELECT 
 1 AS `user_id`,
 1 AS `stripe_charge_status`,
 1 AS `created_at`,
 1 AS `stripe_charge_amount`,
 1 AS `row_num`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifetime_token_storage` (
  `token_type` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp(6) NOT NULL,
  `set_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`token_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `source_user_id` int NOT NULL,
  `target_user_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `likes_idx_on_post_id_and_user_id` (`post_id`,`source_user_id`),
  UNIQUE KEY `likes_idx_on_user_id_and_post_id` (`source_user_id`,`post_id`),
  KEY `likes_idx_on_post_id_and_metadata_type` (`post_id`),
  KEY `likes_idx_on_target_user_id_and_post_id` (`target_user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lineage_view` AS SELECT 
 1 AS `depth`,
 1 AS `parent`,
 1 AS `child`,
 1 AS `root`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_account_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `root_account_user_id` int NOT NULL,
  `connected_account_user_id` int NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_account_relation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `root_account_user_id` int NOT NULL,
  `connected_account_user_id` int NOT NULL,
  `access_level` enum('login_enabled','login_disabled') DEFAULT 'login_enabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by_type` enum('intake','other') DEFAULT 'other',
  `created_by_meta` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_by_type` enum('intake','other') DEFAULT 'other',
  `deleted_by_meta` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `root_account_user_id` (`root_account_user_id`,`connected_account_user_id`),
  CONSTRAINT `linked_account_relation_ibfk_1` FOREIGN KEY (`root_account_user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links_clicked_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(32) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `link_info` varchar(255) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ip_address` (`ip_address`,`email`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ma_crm_task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `task_type` int DEFAULT NULL,
  `task_title` varchar(255) DEFAULT NULL,
  `task_summary` text,
  `task_notes` text,
  `user_id` int NOT NULL,
  `assigned_peer_advisor_id` int DEFAULT NULL,
  `reason_not_converting` varchar(255) DEFAULT NULL,
  `re_target_channel` varchar(255) DEFAULT NULL,
  `re_target_note` varchar(255) DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_peer_advisor_id` (`assigned_peer_advisor_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ma_crm_task_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `ma_crm_task_ibfk_2` FOREIGN KEY (`assigned_peer_advisor_id`) REFERENCES `peer_advisors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manual_revenue_recognition` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_id` int DEFAULT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `created_note` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ma_id` (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing_campaign_call_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `duration_in_mins` int NOT NULL,
  `slack_channel_id` varchar(255) DEFAULT NULL,
  `assembled_activity_type` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing_campaign_calls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `call_type_id` int NOT NULL,
  `start_ts` timestamp(6) NOT NULL,
  `timezone` varchar(255) NOT NULL,
  `data` json DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `gcal_event_id` varchar(255) DEFAULT NULL,
  `override_id` int DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `call_type_id` (`call_type_id`),
  CONSTRAINT `marketing_campaign_calls_ibfk_1` FOREIGN KEY (`call_type_id`) REFERENCES `marketing_campaign_call_types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marketing_spend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spend` double DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetup_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `day_of_week` int NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `description` text,
  `duration` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `internal_name` varchar(255) NOT NULL,
  `timezone` varchar(255) DEFAULT 'America/Chicago',
  `is_alumni_only` tinyint DEFAULT '0',
  `is_pre_therapy_only` tinyint DEFAULT '0',
  `cover_image_url` varchar(255) DEFAULT NULL,
  `is_conqueror_only` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meetup_type_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_ts` timestamp(6) NOT NULL,
  `end_ts` timestamp(6) NOT NULL,
  `description` text,
  `host_email` varchar(255) NOT NULL,
  `zoom_link` varchar(255) NOT NULL,
  `capacity` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `day_of_week` int NOT NULL,
  `timezone` varchar(255) DEFAULT 'America/Chicago',
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `event_id` varchar(255) DEFAULT NULL,
  `gcal_id` varchar(255) DEFAULT NULL,
  `zoom_id` varchar(255) DEFAULT NULL,
  `zoom_password` varchar(255) DEFAULT NULL,
  `cover_image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetups_signups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `meetup_id` int NOT NULL,
  `24hr_reminder_sent` tinyint DEFAULT '0',
  `24hr_reminder_sent_at` timestamp(6) NULL DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `1hr_reminder_sent` tinyint DEFAULT '0',
  `1hr_reminder_sent_at` timestamp(6) NULL DEFAULT NULL,
  `meetups_subscriptions_id` int DEFAULT NULL,
  `attended` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_signup` (`email`,`meetup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetups_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `meetup_type_id` int NOT NULL,
  `subscription_start_ts` timestamp(6) NOT NULL,
  `subscription_end_ts` timestamp(6) NULL DEFAULT NULL,
  `is_canceled` tinyint DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_subscription` (`email`,`meetup_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_advocate_marketing_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `member_advocate_id` int NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_advocate_id` (`member_advocate_id`),
  CONSTRAINT `member_advocate_marketing_questions_ibfk_1` FOREIGN KEY (`member_advocate_id`) REFERENCES `peer_advisors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointment_billing_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `billing_plan` varchar(255) DEFAULT NULL,
  `billing_contact_name` varchar(255) DEFAULT NULL,
  `billing_contact_email` varchar(255) DEFAULT NULL,
  `billing_contact_phone` varchar(255) DEFAULT NULL,
  `billing_contact_relation_to_patient` varchar(255) DEFAULT NULL,
  `billing_cash_pay_payment_terms` varchar(255) DEFAULT NULL,
  `billing_cash_pay_payment_plan` varchar(255) DEFAULT NULL,
  `billing_cash_pay_90_min` varchar(255) DEFAULT NULL,
  `billing_cash_pay_60_min` varchar(255) DEFAULT NULL,
  `billing_cash_pay_45_min` varchar(64) DEFAULT NULL,
  `billing_cash_pay_30_min` varchar(255) DEFAULT NULL,
  `billing_cash_pay_special_payment_terms` text,
  `billing_ins_carrier` varchar(255) DEFAULT NULL,
  `billing_ins_plan_type` varchar(255) DEFAULT NULL,
  `billing_ins_group_number` varchar(255) DEFAULT NULL,
  `billing_ins_sub_first_name` varchar(255) DEFAULT NULL,
  `billing_ins_sub_last_name` varchar(255) DEFAULT NULL,
  `billing_ins_sub_dob` varchar(255) DEFAULT NULL,
  `billing_ins_sub_member_id` varchar(255) DEFAULT NULL,
  `billing_ins_sub_relation_to_patient` varchar(255) DEFAULT NULL,
  `billing_ins_coverage` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointment_bills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `appointment_id` int DEFAULT NULL,
  `charge_timestamp` timestamp(3) NOT NULL,
  `charge_amount` varchar(255) NOT NULL,
  `charge_authorizer` varchar(255) NOT NULL,
  `billing_notes` varchar(255) NOT NULL,
  `billing_label` varchar(255) NOT NULL,
  `billing_completed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `appointment_id` (`appointment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `appointment_date` datetime DEFAULT NULL,
  `appointment_type` varchar(255) DEFAULT NULL,
  `needs_audit` tinyint(1) DEFAULT NULL,
  `notes` text,
  `diagnosed_with_ocd` tinyint(1) DEFAULT NULL,
  `diamond_distress_score` int DEFAULT NULL,
  `diamond_functional_score` int DEFAULT NULL,
  `diamond_severity_score` int DEFAULT NULL,
  `dass_depression` int DEFAULT NULL,
  `dass_anxiety` int DEFAULT NULL,
  `dass_stress` int DEFAULT NULL,
  `docs_severity` int DEFAULT NULL,
  `next_step` varchar(255) DEFAULT NULL,
  `discharge` tinyint(1) DEFAULT NULL,
  `session_length` varchar(255) DEFAULT NULL,
  `session_length_int` date GENERATED ALWAYS AS (cast(`session_length` as unsigned)) STORED,
  `completion_info` varchar(255) DEFAULT NULL,
  `billing_complete` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `has_scores` varchar(255) DEFAULT NULL,
  `qles` int DEFAULT NULL,
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `start_time_in_iso8601_utc` varchar(255) DEFAULT NULL,
  `end_time_in_iso8601_utc` varchar(255) DEFAULT NULL,
  `session_type` varchar(255) DEFAULT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `gcal_id` varchar(255) DEFAULT NULL,
  `zoom_id` varchar(255) DEFAULT NULL,
  `zoom_join_link` varchar(255) DEFAULT NULL,
  `zoom_password` varchar(255) DEFAULT NULL,
  `appointment_state` varchar(255) DEFAULT NULL,
  `clinician_signed_email` varchar(255) DEFAULT NULL,
  `rescheduled_signed_email` varchar(255) DEFAULT NULL,
  `member_takeaway_notes` text,
  `successfully_completed_and_billable` tinyint(1) DEFAULT NULL,
  `completion_at` timestamp NULL DEFAULT NULL,
  `rescheduled_at` timestamp NULL DEFAULT NULL,
  `needs_clinical_review` tinyint(1) DEFAULT NULL,
  `needs_billing_review` tinyint(1) DEFAULT NULL,
  `needs_clinical_review_notes` text,
  `needs_billing_review_notes` text,
  `needs_review_notes` text,
  `rescheduled_review_notes` text,
  `bg_diagnostics_id` int DEFAULT NULL,
  `bg_reported_current_address` varchar(255) DEFAULT NULL,
  `bg_address_setter` varchar(64) DEFAULT NULL,
  `bg_followup_changes_to_medication` varchar(255) DEFAULT NULL,
  `bg_followup_changes_to_medication_text` text,
  `bg_followup_changes_to_doctor_visits` varchar(255) DEFAULT NULL,
  `bg_followup_changes_to_doctor_visits_text` text,
  `medical_within_normal_limits` tinyint(1) DEFAULT NULL,
  `medical_json` json DEFAULT NULL,
  `risk_assessment_json` json DEFAULT NULL,
  `summary_start_time` timestamp(6) NULL DEFAULT NULL,
  `summary_end_time` timestamp(6) NULL DEFAULT NULL,
  `summary_present_json` json DEFAULT NULL,
  `summary_present_other` varchar(255) DEFAULT NULL,
  `summary_icd_json` json DEFAULT NULL,
  `summary_cpt` varchar(255) DEFAULT NULL,
  `summary_private_notes` text,
  `summary_private_notes_rich` json DEFAULT NULL,
  `summary_appropriate_for_nocd` varchar(255) DEFAULT NULL,
  `summary_types_of_treatment_erp` tinyint(1) DEFAULT NULL,
  `summary_types_of_treatment_other` text,
  `summary_treatment_goals` json DEFAULT NULL,
  `summary_treatment_response` varchar(255) DEFAULT NULL,
  `summary_not_continuing_nocd_plan` varchar(255) DEFAULT NULL,
  `summary_not_continuing_nocd_text` text,
  `summary_treatment_progress` tinyint(1) DEFAULT NULL,
  `billing_state` enum('completed','invoiced','not_billed','waived','claim_filed','mr_transferred') DEFAULT 'not_billed',
  `admd_visit_id` int DEFAULT NULL,
  `medical_additional_comments` text,
  `cancellation_info` varchar(255) DEFAULT NULL,
  `rescheduled_info` varchar(255) DEFAULT NULL,
  `cancelled_via_reschedule` tinyint(1) DEFAULT NULL,
  `clinician_compensated` varchar(255) DEFAULT NULL,
  `rescheduled_to` int DEFAULT NULL,
  `has_forms` tinyint(1) DEFAULT NULL,
  `clinical_forms_diamond_adult_id` int DEFAULT NULL,
  `clinical_forms_diamond_youth_id` int DEFAULT NULL,
  `clinical_forms_dass21_id` int DEFAULT NULL,
  `clinical_forms_docs_id` int DEFAULT NULL,
  `clinical_forms_qles_id` int DEFAULT NULL,
  `amd_appt_backfill` varchar(64) DEFAULT NULL,
  `override_cpt` varchar(255) DEFAULT NULL,
  `override_cpt_by` varchar(255) DEFAULT NULL,
  `claim_status` varchar(255) DEFAULT NULL,
  `claim_reference_id` varchar(255) DEFAULT NULL,
  `cancellation_ts` timestamp NULL DEFAULT NULL,
  `cancellation_author` varchar(255) DEFAULT NULL,
  `booked_author` varchar(255) DEFAULT NULL,
  `autoinvoice_id` int DEFAULT NULL,
  `docs_symmetry_score` int DEFAULT NULL,
  `docs_unacceptable_thoughts_score` int DEFAULT NULL,
  `docs_responsibility_score` int DEFAULT NULL,
  `docs_contamination_score` int DEFAULT NULL,
  `gcal_backstop_id` varchar(255) DEFAULT NULL,
  `use_backstop` tinyint(1) DEFAULT NULL,
  `back_stop_value` int DEFAULT NULL,
  `note_version` varchar(255) DEFAULT NULL,
  `apero_visit_id` varchar(32) DEFAULT NULL,
  `summary_icd_specifiers_text` text,
  `bg_reported_current_state` varchar(64) DEFAULT NULL,
  `apero_lineitem_id` varchar(255) DEFAULT NULL,
  `member_billing_details_id` int DEFAULT NULL,
  `canadian_masters_level` tinyint(1) DEFAULT NULL,
  `canadian_diagnostic_info` varchar(32) DEFAULT NULL,
  `member_billing_coverage_id` int DEFAULT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `cancellation_reason_detail` varchar(255) DEFAULT NULL,
  `needs_service_team_to_reschedule` tinyint(1) DEFAULT NULL,
  `cancelled_within_24_hours` tinyint(1) DEFAULT NULL,
  `cancelled_waive_late_fee` tinyint(1) DEFAULT NULL,
  `cancelled_waive_late_fee_reason` varchar(255) DEFAULT NULL,
  `cancelled_waive_late_fee_reason_notes` text,
  `canadian_province` varchar(255) DEFAULT NULL,
  `sign_note_session_length` varchar(255) DEFAULT NULL,
  `reviewed_assessments_with_member` tinyint(1) DEFAULT '0',
  `zocdoc_booked` tinyint(1) DEFAULT NULL,
  `apero_claim_status` varchar(255) DEFAULT NULL,
  `apero_claim_errors` text,
  `apero_finalized_at` text,
  `zocdoc_location_id` smallint DEFAULT NULL,
  `initial_appt_id` int DEFAULT NULL,
  `needs_service_team_to_reschedule_status` text,
  `therapy_case_type` varchar(255) DEFAULT NULL,
  `needs_supervisor_review` tinyint DEFAULT '0',
  `requested_supervisor` varchar(255) DEFAULT NULL,
  `billing_state_reason` text,
  `review_requested_by` varchar(255) DEFAULT NULL,
  `review_requested_at` timestamp NULL DEFAULT NULL,
  `ignore_appt_reason` enum('amd_appointment','forms_placeholder','billing_placeholder') DEFAULT NULL,
  `ehr_origin_source` enum('nocd_ehr','amd_appointment','forms_placeholder','billing_placeholder','legacy_invoice') DEFAULT 'nocd_ehr',
  `authorizer` varchar(255) DEFAULT NULL,
  `apero_eligibility_checks_id` int DEFAULT NULL,
  `member_billing_coverage_override` enum('nocd411','cancellation') DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `diamond_severity_score_max` int DEFAULT NULL,
  `cpt_manual_review_reason` varchar(255) DEFAULT NULL,
  `is_transfer_session` tinyint(1) DEFAULT NULL,
  `copay_charged_at` timestamp NULL DEFAULT NULL,
  `primary_icd_code` varchar(255) DEFAULT NULL,
  `is_initial_assessments_created` tinyint DEFAULT '0',
  `summary_types_of_treatment_hrt` tinyint(1) DEFAULT NULL,
  `is_assessments_refused_to_complete` tinyint DEFAULT NULL,
  `assessments_refused_to_complete_notes` varchar(255) DEFAULT NULL,
  `scheduling_frequency` text,
  `therapy_case_type_details` text,
  `supervisor_review_status` varchar(125) DEFAULT NULL,
  `completed_timezone` varchar(255) DEFAULT NULL,
  `completed_start_ts_in_member_timezone` timestamp GENERATED ALWAYS AS (convert_tz(`start_ts`,_utf8mb4'UTC',ifnull(`completed_timezone`,_utf8mb4'America/Chicago'))) STORED NULL,
  `completed_start_ts_date_in_member_timezone` date GENERATED ALWAYS AS (cast(`completed_start_ts_in_member_timezone` as date)) STORED,
  `start_ts_in_chicago_timezone` timestamp GENERATED ALWAYS AS (convert_tz(`start_ts`,_utf8mb4'UTC',_utf8mb4'America/Chicago')) STORED NULL,
  `appt_day_in_chicago_tz` date GENERATED ALWAYS AS (date_format(`start_ts_in_chicago_timezone`,_utf8mb4'%Y-%m-%d')) STORED,
  `appt_day_int` int GENERATED ALWAYS AS ((to_days(`appt_day_in_chicago_tz`) - to_days(_utf8mb4'2000-01-01'))) STORED,
  `appt_day_name_in_chicago_tz` varchar(255) GENERATED ALWAYS AS (dayname(`start_ts_in_chicago_timezone`)) STORED,
  `appt_week_in_chicago_tz` date GENERATED ALWAYS AS (date_format((`start_ts_in_chicago_timezone` + interval (1 - dayofweek(`start_ts_in_chicago_timezone`)) day),_utf8mb4'%Y-%m-%d')) STORED,
  `appt_month_in_chicago_tz` date GENERATED ALWAYS AS (date_format(`start_ts_in_chicago_timezone`,_utf8mb4'%Y-%m-01')) STORED,
  `appt_month_int` int GENERATED ALWAYS AS ((month(`appt_day_in_chicago_tz`) + (year(`appt_day_in_chicago_tz`) * 12))) STORED,
  `appt_year_in_chicago_tz` date GENERATED ALWAYS AS (date_format(`start_ts_in_chicago_timezone`,_utf8mb4'%Y-01-01')) STORED,
  `start_ts_date_in_chicago_timezone` date GENERATED ALWAYS AS (cast(`start_ts_in_chicago_timezone` as date)) STORED,
  `start_ts_in_chicago_dayname` varchar(255) GENERATED ALWAYS AS (dayname(`start_ts_in_chicago_timezone`)) STORED,
  `start_ts_date` date GENERATED ALWAYS AS (cast(`start_ts` as date)) STORED,
  `start_ts_month` date GENERATED ALWAYS AS (((last_day(`start_ts_date`) - interval 1 month) + interval 1 day)) STORED,
  `start_ts_dayname` varchar(255) GENERATED ALWAYS AS (dayname(`start_ts_in_chicago_timezone`)) STORED,
  `type_of_medication_referral` text,
  `medication_referral_notes` text,
  `medication_referral_settings_preference` text,
  `interested_in_medication_referral` tinyint DEFAULT NULL,
  `requires_psychotic_treatment` tinyint DEFAULT NULL,
  `actively_suicidal` tinyint DEFAULT NULL,
  `psych_hospital_in_last_six_months` tinyint DEFAULT NULL,
  `member_has_medicaid` tinyint DEFAULT NULL,
  `secondary_icd_codes` json DEFAULT NULL,
  `availability_score` decimal(12,3) DEFAULT NULL,
  `send_cancel_follow_up` tinyint DEFAULT NULL,
  `medication_referral_preferred_times` json DEFAULT NULL,
  `talk_about_psychiatric_consultation` varchar(64) DEFAULT NULL,
  `therapist_would_like_to_refer_member` varchar(64) DEFAULT NULL,
  `agree_to_increase_scheduling_frequency` varchar(64) DEFAULT NULL,
  `talk_about_psychiatric_consultation_text` text,
  `therapist_would_like_to_refer_member_text` text,
  `agree_to_increase_scheduling_frequency_text` text,
  `ma_clinician_timezone` varchar(255) DEFAULT NULL,
  `ma_clinician_start_ts` timestamp NULL DEFAULT NULL,
  `ma_clinician_end_ts` timestamp NULL DEFAULT NULL,
  `ma_clinician_appt_day` date DEFAULT NULL,
  `is_confirmed_diamond_assessment` tinyint(1) DEFAULT NULL,
  `member_reviewed_waived_late_fee` tinyint(1) DEFAULT NULL,
  `is_reviewed_summary_private_notes` tinyint DEFAULT NULL,
  `not_late_reason` text,
  `provisional_icd_code_json` json DEFAULT NULL,
  `provisional_referral_needed` varchar(255) DEFAULT NULL,
  `needs_diagnosis_approval` tinyint(1) DEFAULT '0',
  `diagnosis_approval_status` varchar(255) DEFAULT NULL,
  `send_post_assessment_summary` tinyint(1) DEFAULT NULL,
  `is_will_assess_count_disabled` tinyint DEFAULT NULL,
  `will_assess_count_disabled_notes` varchar(255) DEFAULT NULL,
  `medication_referral_metro_area` text,
  `columbia_risk_protective_factors` json DEFAULT NULL,
  `columbia_high_risk` json DEFAULT NULL,
  `suicidal_behavior_form_id` int DEFAULT NULL,
  `homicidal_risk_assessment` json DEFAULT NULL,
  `booked_during_co_therapy` tinyint DEFAULT '0',
  `is_next_session_exceeding_days` tinyint(1) DEFAULT NULL,
  `next_session_exceeding_days_reason` text,
  `attempted_care_coordination` varchar(45) DEFAULT NULL,
  `attempted_care_coordination_providers` json DEFAULT NULL,
  `attempted_care_coordination_other` text,
  `attempted_care_coordination_reason` text,
  `treatment_plan_version` int DEFAULT NULL,
  `non_clinical_time_spent_in_mins` int DEFAULT NULL,
  `non_clinical_time_reason` text,
  `is_fs_with_clinician` tinyint DEFAULT NULL,
  `confirm_icd_codes_correct` tinyint DEFAULT NULL,
  `non_bulk_scheduled_reason` text,
  `bundle_participant_identifier_id` int DEFAULT NULL,
  `bundle_period_config_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `apero_visit_id` (`apero_visit_id`,`apero_lineitem_id`),
  KEY `appointment_state` (`appointment_state`),
  KEY `clinician_email` (`clinician_email`,`end_ts`,`start_ts`),
  KEY `event_id` (`event_id`),
  KEY `start_ts` (`start_ts`),
  KEY `user_id` (`user_id`),
  KEY `needs_diagnosis_approval` (`needs_diagnosis_approval`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointments_audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appointment_id` int NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `updated_by_reason` text,
  `updated_fields` json DEFAULT NULL,
  `prior_data` json DEFAULT NULL,
  `current_data` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `member_appointments_audit_log_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointments_billing_state_change` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_id` int NOT NULL,
  `user_id` int NOT NULL,
  `old_billing_state` varchar(64) NOT NULL,
  `new_billing_state` varchar(64) NOT NULL,
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointments_calendar_ics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `event_ics` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointments_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_appointment_id` varchar(255) NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `member_user_id` int NOT NULL,
  `session_type` varchar(255) DEFAULT NULL,
  `start_ts` timestamp NOT NULL,
  `diagnostic_timezone` varchar(32) DEFAULT NULL,
  `clinician_timezone` varchar(32) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `is_bulk_booking` tinyint DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointments_reminders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `created_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `created_reminder_channels` json DEFAULT NULL,
  `now_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `now_reminder_channels` json DEFAULT NULL,
  `30_min_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `30_min_reminder_channels` json DEFAULT NULL,
  `1hr_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `1hr_reminder_channels` json DEFAULT NULL,
  `24hr_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `24hr_reminder_channels` json DEFAULT NULL,
  `48hr_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `48hr_reminder_channels` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `3_day_peer_support_sent_at` timestamp NULL DEFAULT NULL,
  `3_day_peer_support_channels` json DEFAULT NULL,
  `1_day_confirmation_sent_at` timestamp NULL DEFAULT NULL,
  `1_day_confirmation_channels` json DEFAULT NULL,
  `final_appointment_confirmation` tinyint(1) DEFAULT NULL,
  `session_survey_sent_at` timestamp NULL DEFAULT NULL,
  `session_survey_channels` json DEFAULT NULL,
  `follow_up_sent_at` timestamp NULL DEFAULT NULL,
  `follow_up_channels` json DEFAULT NULL,
  `14_day_peer_support_sent` tinyint(1) DEFAULT NULL,
  `manual_reminder_sent` tinyint(1) DEFAULT NULL,
  `session_survey_sent_success` tinyint(1) DEFAULT NULL,
  `3_day_peer_support_sent_success` tinyint(1) DEFAULT NULL,
  `72hr_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `72hr_reminder_channels` json DEFAULT NULL,
  `5_day_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `5_day_reminder_channels` json DEFAULT NULL,
  `7_day_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `7_day_reminder_channels` json DEFAULT NULL,
  `get_ready_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `get_ready_reminder_channels` json DEFAULT NULL,
  `insurance_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `insurance_reminder_channels` json DEFAULT NULL,
  `same_day_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `same_day_reminder_channels` json DEFAULT NULL,
  `4_day_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `4_day_reminder_channels` json DEFAULT NULL,
  `6_day_reminder_sent_at` timestamp NULL DEFAULT NULL,
  `6_day_reminder_channels` json DEFAULT NULL,
  `cancel_follow_up_1_sent_at` timestamp NULL DEFAULT NULL,
  `cancel_follow_up_2_sent_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appointments_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `appointment_type` varchar(255) DEFAULT NULL,
  `slot_one` timestamp NOT NULL,
  `slot_two` timestamp NULL DEFAULT NULL,
  `slot_three` timestamp NULL DEFAULT NULL,
  `duration_in_minutes` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `appt_id` int DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appt_id` (`appt_id`),
  CONSTRAINT `member_appointments_requests_ibfk_1` FOREIGN KEY (`appt_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_appts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visit_number` int NOT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `patient_email` varchar(255) DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `appt_status` varchar(255) DEFAULT NULL,
  `appt_date` datetime DEFAULT NULL,
  `appt_type` varchar(255) DEFAULT NULL,
  `diamond_severity_score` int DEFAULT NULL,
  `dass_depression` int DEFAULT NULL,
  `dass_anxiety` int DEFAULT NULL,
  `dass_stress` int DEFAULT NULL,
  `docs_severity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visit_number` (`visit_number`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_auth_utilization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `authorization_id` int NOT NULL,
  `cpt_code` int NOT NULL,
  `authorized_units` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`authorization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_billing_coverages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `start_date_utc` timestamp NOT NULL,
  `end_date_utc` timestamp NOT NULL,
  `plan` enum('Cash Pay','Insurance') DEFAULT NULL,
  `cash_pay_90_min` int DEFAULT NULL,
  `cash_pay_60_min` int DEFAULT NULL,
  `cash_pay_45_min` int DEFAULT NULL,
  `cash_pay_30_min` int DEFAULT NULL,
  `currency` char(3) DEFAULT 'USD',
  `insurance_id_primary` int DEFAULT NULL,
  `insurance_id_secondary` int DEFAULT NULL,
  `insurance_id_tertiary` int DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `coverage_status` varchar(255) DEFAULT NULL,
  `archived_reason` text,
  `promotion_name` text,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `is_pending_renewal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`id`),
  CONSTRAINT `end_date_is_zero` CHECK ((cast(`end_date_utc` as time) = _utf8mb4'00:00:00')),
  CONSTRAINT `start_date_is_zero` CHECK ((cast(`start_date_utc` as time) = _utf8mb4'00:00:00'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_billing_flag_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `billing_flag_type` enum('book_appointment_disabled_flag','no_active_subscription_flag','billing_flag_override','no_assigned_clinician_flag','prior_appts_no_cvg_flag','high_balance_flag','medium_balance_pp_req_flag','last_charge_failed_flag') DEFAULT NULL,
  `billing_flag_reason` json DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resolved_by` varchar(255) DEFAULT NULL,
  `resolved_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_billing_flag_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `high_balance_status` tinyint(1) DEFAULT '0',
  `last_charge_status` tinyint(1) DEFAULT '0',
  `flag_updated` set('Last Charge Flag','High Balance Flag') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_billing_insurances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `insurance_id` int DEFAULT NULL,
  `behavioral_health_insurance_id` int DEFAULT NULL,
  `claim_submission_insurance_id` int DEFAULT NULL,
  `insurance_rates_id` int DEFAULT NULL,
  `state_insurance_id` int DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `carrier` varchar(255) DEFAULT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `sub_member_id` varchar(255) DEFAULT NULL,
  `sub_group_number` varchar(255) DEFAULT NULL,
  `sub_relation_to_patient` enum('Self','Child','Spouse','Other Adult') DEFAULT 'Self',
  `sub_first_name` varchar(255) DEFAULT NULL,
  `sub_last_name` varchar(255) DEFAULT NULL,
  `sub_dob` date DEFAULT NULL,
  `sub_gender` varchar(32) DEFAULT NULL,
  `coverage` text,
  `dependent_relation_to_sub` varchar(255) DEFAULT NULL,
  `dependent_first_name` varchar(255) DEFAULT NULL,
  `dependent_last_name` varchar(255) DEFAULT NULL,
  `dependent_dob` date DEFAULT NULL,
  `dependent_gender` varchar(32) DEFAULT NULL,
  `prior_auth` varchar(64) DEFAULT NULL,
  `currency` char(3) NOT NULL DEFAULT 'USD',
  `deductible_cents` int DEFAULT NULL,
  `copay_cents` int DEFAULT NULL,
  `coinsurance_cents` int DEFAULT NULL,
  `apero_coverage_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `single_case_agreement` tinyint(1) DEFAULT NULL,
  `archived_reason` text,
  `is_eligible` tinyint(1) DEFAULT NULL,
  `apero_eligibility_id` varchar(255) DEFAULT NULL,
  `is_medicaid_plan` tinyint(1) DEFAULT NULL,
  `is_medicare_plan` tinyint(1) DEFAULT NULL,
  `sub_address` varchar(255) DEFAULT NULL,
  `sub_city` varchar(255) DEFAULT NULL,
  `sub_state` varchar(255) DEFAULT NULL,
  `sub_zip_code` varchar(255) DEFAULT NULL,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `in_network_email_sent` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `check_copay_max` CHECK (((`copay_cents` >= 0) and (`copay_cents` <= 10000)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_billing_insurances_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_insurance_id` int NOT NULL,
  `user_id` int NOT NULL,
  `insurance_id` int DEFAULT NULL,
  `behavioral_health_insurance_id` int DEFAULT NULL,
  `state_insurance_id` int DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `carrier` varchar(255) DEFAULT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `sub_member_id` varchar(255) DEFAULT NULL,
  `sub_group_number` varchar(255) DEFAULT NULL,
  `sub_relation_to_patient` enum('Self','Child','Spouse','Other Adult') DEFAULT 'Self',
  `sub_first_name` varchar(255) DEFAULT NULL,
  `sub_last_name` varchar(255) DEFAULT NULL,
  `sub_dob` date DEFAULT NULL,
  `sub_gender` varchar(32) DEFAULT NULL,
  `sub_address` varchar(255) DEFAULT NULL,
  `sub_city` varchar(255) DEFAULT NULL,
  `sub_state` varchar(255) DEFAULT NULL,
  `sub_zip_code` varchar(255) DEFAULT NULL,
  `coverage` text,
  `dependent_relation_to_sub` varchar(255) DEFAULT NULL,
  `dependent_first_name` varchar(255) DEFAULT NULL,
  `dependent_last_name` varchar(255) DEFAULT NULL,
  `dependent_dob` date DEFAULT NULL,
  `dependent_gender` varchar(32) DEFAULT NULL,
  `prior_auth` varchar(64) DEFAULT NULL,
  `currency` char(3) NOT NULL DEFAULT 'USD',
  `deductible_cents` int DEFAULT NULL,
  `copay_cents` int DEFAULT NULL,
  `coinsurance_cents` int DEFAULT NULL,
  `apero_coverage_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_reason` text,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_reason` text,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `single_case_agreement` tinyint(1) DEFAULT NULL,
  `is_eligible` tinyint(1) DEFAULT NULL,
  `apero_eligibility_id` varchar(255) DEFAULT NULL,
  `is_medicaid_plan` tinyint(1) DEFAULT NULL,
  `is_medicare_plan` tinyint(1) DEFAULT NULL,
  `transaction_type` enum('insert','update','delete','archive') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `member_coverages_id` (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_billing_promos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `application_order` int NOT NULL DEFAULT '0',
  `limit_type` varchar(255) NOT NULL,
  `promo_type` varchar(255) NOT NULL,
  `start_date_utc` timestamp NULL DEFAULT NULL,
  `end_date_utc` timestamp NULL DEFAULT NULL,
  `duration_days` int DEFAULT NULL,
  `appointment_count` int DEFAULT NULL,
  `currency` char(3) NOT NULL DEFAULT 'USD',
  `discounted_rate_90min_cents` int DEFAULT NULL,
  `discounted_rate_60min_cents` int DEFAULT NULL,
  `discounted_rate_45min_cents` int DEFAULT NULL,
  `discounted_rate_30min_cents` int DEFAULT NULL,
  `discount_percentage` int DEFAULT NULL,
  `nocd_credit_cents` int DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `archived_at` varchar(255) DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_care_coordination_review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `status` varchar(100) NOT NULL,
  `care_coordination_notes` text,
  `clinical_notes` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `archived_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `dummy_archived_at` timestamp GENERATED ALWAYS AS (if((`archived_at` is null),_utf8mb4'2038-01-01',`archived_at`)) STORED NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `therapist_conversation_notes` text,
  `clinical_recommendation` varchar(255) DEFAULT NULL,
  `clinical_recommendation_made_at` timestamp NULL DEFAULT NULL,
  `acknowledged_checkin_agreement_at` timestamp NULL DEFAULT NULL,
  `confirmed_checkin_completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_dummy_archive` (`user_id`,`dummy_archived_at`),
  CONSTRAINT `member_cc_review_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_charges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `charge_amount` int NOT NULL,
  `payment_plan` varchar(255) DEFAULT NULL,
  `internal_note` varchar(255) DEFAULT NULL,
  `member_note` varchar(255) DEFAULT NULL,
  `authorizer` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `member_charged_direct` tinyint(1) DEFAULT NULL,
  `member_refunds_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_charges_v2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `payment_table` enum('payment_stripe_charge','payment_stripe_refund','refund_check') DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_amount` int NOT NULL,
  `payment_currency` varchar(255) NOT NULL,
  `payment_at` timestamp NULL DEFAULT NULL,
  `payment_description` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `payment_at_date` date GENERATED ALWAYS AS (cast(`payment_at` as date)) STORED,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_table` (`payment_table`,`payment_id`),
  KEY `payment_id` (`payment_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_concern_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `note` text,
  `expires_at` timestamp NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_consequence` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `obsession_id` varchar(64) NOT NULL,
  `consequence` text,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `obsession_id` (`obsession_id`),
  CONSTRAINT `member_consequence_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `member_consequence_ibfk_2` FOREIGN KEY (`obsession_id`) REFERENCES `user_obsession` (`obsessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_coverages_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_coverages_id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_date_utc` timestamp NOT NULL,
  `end_date_utc` timestamp NOT NULL,
  `plan` enum('Cash Pay','Insurance') DEFAULT NULL,
  `cash_pay_90_min` int DEFAULT NULL,
  `cash_pay_60_min` int DEFAULT NULL,
  `cash_pay_45_min` int DEFAULT NULL,
  `cash_pay_30_min` int DEFAULT NULL,
  `currency` char(3) DEFAULT 'USD',
  `insurance_id_primary` int DEFAULT NULL,
  `insurance_id_secondary` int DEFAULT NULL,
  `insurance_id_tertiary` int DEFAULT NULL,
  `notes` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `coverage_status` varchar(255) DEFAULT NULL,
  `archived_reason` text,
  `promotion_name` text,
  `transaction_type` enum('insert','update','delete','archive') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `member_coverages_id` (`member_coverages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_exercise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `member_exposure_id` int NOT NULL,
  `member_homework_id` int NOT NULL,
  `quantity` int DEFAULT '1',
  `unit` enum('suds','duration','rep') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_exposure_id` (`member_exposure_id`),
  KEY `member_homework_id` (`member_homework_id`),
  CONSTRAINT `member_exercise_ibfk_1` FOREIGN KEY (`member_exposure_id`) REFERENCES `member_exposure` (`id`),
  CONSTRAINT `member_exercise_ibfk_2` FOREIGN KEY (`member_homework_id`) REFERENCES `member_homework` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_exercise_session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `member_exercise_id` int NOT NULL,
  `distress_before` tinyint DEFAULT NULL,
  `distress_after` tinyint DEFAULT NULL,
  `did_resist` tinyint DEFAULT NULL,
  `note` text,
  PRIMARY KEY (`id`),
  KEY `functional_index` (`member_exercise_id`,(cast(`completed_at` as date))),
  CONSTRAINT `fk_exercise_id` FOREIGN KEY (`member_exercise_id`) REFERENCES `member_exercise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_experience_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `experience_star_review` tinyint(1) DEFAULT NULL,
  `experience_comment_text` text,
  `member_advocates_star_review` tinyint(1) DEFAULT NULL,
  `member_advocates_comment_text` text,
  `billing_star_review` tinyint(1) DEFAULT NULL,
  `billing_comment_text` text,
  `app_star_review` tinyint(1) DEFAULT NULL,
  `app_comment_text` text,
  `survey_type` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_exposure` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `exposure` text,
  `distress` tinyint NOT NULL,
  `user_id` int NOT NULL,
  `obsession_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `member_exposure_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_goals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `target_date` timestamp(6) NOT NULL,
  `achieved_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_goals_progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `goal_id` int NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `goal_id` (`goal_id`),
  KEY `idx_user_id` (`user_id`),
  CONSTRAINT `member_goals_progress_ibfk_1` FOREIGN KEY (`goal_id`) REFERENCES `member_goals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_homework` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `obsession_id` varchar(64) NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `published_message` text,
  `archived_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `obsession_id` (`obsession_id`),
  CONSTRAINT `member_homework_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `member_homework_ibfk_2` FOREIGN KEY (`obsession_id`) REFERENCES `user_obsession` (`obsessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_homework_compulsion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_compulsion_id` varchar(64) NOT NULL,
  `member_homework_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_compulsion_id` (`user_compulsion_id`),
  KEY `member_homework_id` (`member_homework_id`),
  CONSTRAINT `member_homework_compulsion_ibfk_1` FOREIGN KEY (`user_compulsion_id`) REFERENCES `user_compulsion` (`compulsionID`),
  CONSTRAINT `member_homework_compulsion_ibfk_2` FOREIGN KEY (`member_homework_id`) REFERENCES `member_homework` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_homework_prevention_tip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `member_prevention_tip_id` int NOT NULL,
  `member_homework_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_prevention_tip_id` (`member_prevention_tip_id`),
  KEY `member_homework_id` (`member_homework_id`),
  CONSTRAINT `member_homework_prevention_tip_ibfk_1` FOREIGN KEY (`member_prevention_tip_id`) REFERENCES `member_prevention_tip` (`id`),
  CONSTRAINT `member_homework_prevention_tip_ibfk_2` FOREIGN KEY (`member_homework_id`) REFERENCES `member_homework` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_homework_tool` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `member_tool_id` int NOT NULL,
  `member_homework_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `member_tool_id` (`member_tool_id`),
  KEY `member_homework_id` (`member_homework_id`),
  CONSTRAINT `member_homework_tool_ibfk_1` FOREIGN KEY (`member_tool_id`) REFERENCES `member_tool` (`id`),
  CONSTRAINT `member_homework_tool_ibfk_2` FOREIGN KEY (`member_homework_id`) REFERENCES `member_homework` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_homework_trigger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_trigger_id` varchar(64) NOT NULL,
  `member_homework_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_trigger_id` (`user_trigger_id`),
  KEY `member_homework_id` (`member_homework_id`),
  CONSTRAINT `member_homework_trigger_ibfk_1` FOREIGN KEY (`user_trigger_id`) REFERENCES `user_trigger` (`triggerID`),
  CONSTRAINT `member_homework_trigger_ibfk_2` FOREIGN KEY (`member_homework_id`) REFERENCES `member_homework` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_insurance_authorization` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_date_utc` timestamp NOT NULL,
  `end_date_utc` timestamp NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_reason` text,
  `authorized_units_payload` json DEFAULT NULL,
  `copay_cents` int DEFAULT NULL,
  `sub_first_name` varchar(255) DEFAULT NULL,
  `sub_last_name` varchar(255) DEFAULT NULL,
  `sub_dob` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_insurance_authorizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `referral_num` varchar(255) NOT NULL,
  `ref_provider_first_name` varchar(255) DEFAULT NULL,
  `ref_provider_last_name` varchar(255) DEFAULT NULL,
  `mrn_id` longtext,
  `copay_amount` text,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `start_date_utc` timestamp NULL DEFAULT NULL,
  `end_date_utc` timestamp NULL DEFAULT NULL,
  `authorized_units_payload` json DEFAULT NULL,
  `auth_written_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `needs_review` tinyint(1) DEFAULT '0',
  `is_medica` tinyint(1) DEFAULT '0',
  `npi_id` varchar(255) DEFAULT NULL,
  `call_outcome` varchar(255) DEFAULT NULL,
  `payer_address` varchar(255) NOT NULL,
  `payer_claims_billing_name` varchar(255) DEFAULT NULL,
  `payer_claims_billing_address` varchar(255) DEFAULT NULL,
  `member_billing_coverage_id` int DEFAULT NULL,
  `auto_elig_errors` varchar(255) DEFAULT NULL,
  `auto_elig_needs_review` tinyint(1) DEFAULT '0',
  `member_billing_insurance_id` int DEFAULT NULL,
  `has_correct_s3_url` tinyint(1) NOT NULL DEFAULT '0',
  `s3_url` varchar(255) DEFAULT NULL,
  `freshdesk_ticket_id` int DEFAULT NULL,
  `is_renewal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `referral_num` (`referral_num`,`id`),
  KEY `npi_id` (`npi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5904 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `original_amount` int NOT NULL,
  `invoice_amount` int NOT NULL,
  `copay_amount` int DEFAULT NULL,
  `insurance_billed_amount` int DEFAULT NULL,
  `internal_note` varchar(255) DEFAULT '',
  `member_note` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `authorizer` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `invoice_type` enum('Cash Pay','Insurance') NOT NULL,
  `revenue_type` varchar(255) DEFAULT NULL,
  `invoice_insurance_reference_id` varchar(255) DEFAULT NULL,
  `created_from_member_refunds_id` int DEFAULT NULL,
  `apero_visit_id` varchar(255) DEFAULT NULL,
  `apero_line_item_id` varchar(255) DEFAULT NULL,
  `invoice_currency` varchar(16) NOT NULL DEFAULT 'USD',
  `is_invalid` tinyint(1) DEFAULT NULL,
  `last_adjustment_id` int DEFAULT NULL,
  `invoice_amount_after_all_adjustments` int DEFAULT NULL,
  `member_billing_coverages_id` int DEFAULT NULL,
  `expected_amount` int DEFAULT NULL,
  `invoice_amount_locked` tinyint(1) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_reason` varchar(255) DEFAULT NULL,
  `apero_invoice_status` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `version_number` int DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ma_idx` (`member_appointments_id`),
  KEY `apero_line_item_id` (`apero_line_item_id`),
  KEY `apero_visit_id` (`apero_visit_id`),
  KEY `fk_ma_user_id` (`user_id`,`member_appointments_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_ma_user_id` FOREIGN KEY (`user_id`, `member_appointments_id`) REFERENCES `member_appointments` (`user_id`, `id`),
  CONSTRAINT `member_invoices_ibfk_1` FOREIGN KEY (`member_appointments_id`) REFERENCES `member_appointments` (`id`),
  CONSTRAINT `member_invoices_chk_1` CHECK ((`invoice_amount` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_invoices_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_invoices_id` int NOT NULL,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `original_amount` int NOT NULL,
  `invoice_amount` int NOT NULL,
  `copay_amount` int DEFAULT NULL,
  `insurance_billed_amount` int DEFAULT NULL,
  `internal_note` varchar(255) DEFAULT '',
  `member_note` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `authorizer` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `invoice_type` enum('Cash Pay','Insurance') NOT NULL,
  `invoice_insurance_reference_id` varchar(255) DEFAULT NULL,
  `created_from_member_refunds_id` int DEFAULT NULL,
  `apero_visit_id` varchar(255) DEFAULT NULL,
  `apero_line_item_id` varchar(255) DEFAULT NULL,
  `invoice_currency` varchar(16) NOT NULL DEFAULT 'USD',
  `is_invalid` tinyint(1) DEFAULT NULL,
  `last_adjustment_id` int DEFAULT NULL,
  `invoice_amount_after_all_adjustments` int DEFAULT NULL,
  `member_billing_coverages_id` int DEFAULT NULL,
  `expected_amount` int DEFAULT NULL,
  `invoice_amount_locked` tinyint(1) DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `archived_reason` varchar(255) DEFAULT NULL,
  `apero_invoice_status` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `transaction_type` enum('insert','update','delete') NOT NULL,
  `previous_amount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `member_invoices_id` (`member_invoices_id`),
  KEY `apero_visit_id` (`apero_visit_id`),
  KEY `apero_line_item_id` (`apero_line_item_id`),
  KEY `fk_ma_user_id` (`user_id`,`member_appointments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=516130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_invoices_to_charges_mapping` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_invoices_id` int NOT NULL,
  `member_charges_id` int NOT NULL,
  `executed_amount` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `member_refunds_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_invoices_id` (`member_invoices_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_journal_entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `content` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `member_journal_entries_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_journal_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`type`),
  CONSTRAINT `member_journal_types_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_line_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_id` int DEFAULT NULL,
  `member_invoices_id` int NOT NULL,
  `user_id` int NOT NULL,
  `application_type` enum('adjustment','payment','apero_adjustment','apero_payment','manually_reported_payment','write_off') NOT NULL,
  `amount` int DEFAULT NULL,
  `member_charges_type` enum('apply','reversal') DEFAULT NULL,
  `member_charges_id` int DEFAULT NULL,
  `adjustment_reason` varchar(255) DEFAULT NULL,
  `member_note` varchar(255) DEFAULT NULL,
  `internal_note` varchar(255) DEFAULT NULL,
  `date_posted` timestamp NOT NULL,
  `authorizer` varchar(255) DEFAULT NULL,
  `unapplied_by_line_application_id` int DEFAULT NULL,
  `member_billing_promos_id` int DEFAULT NULL,
  `reverses_line_application_id` int DEFAULT NULL,
  `apero_line_application_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `adjustment_detail` enum('paypal','insurance_superbill_bank_payment') DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `apero_line_application_id` (`apero_line_application_id`),
  KEY `fk_appt_user_id` (`user_id`,`ma_id`),
  KEY `ma_id` (`ma_id`,`member_invoices_id`),
  KEY `member_appointments_id` (`member_invoices_id`),
  KEY `user_id_2` (`user_id`,`member_invoices_id`,`application_type`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_appt_user_id` FOREIGN KEY (`user_id`, `ma_id`) REFERENCES `member_appointments` (`user_id`, `id`),
  CONSTRAINT `fk_inv_user_id` FOREIGN KEY (`user_id`, `member_invoices_id`) REFERENCES `member_invoices` (`user_id`, `id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_line_applications_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `line_application_id` int NOT NULL,
  `ma_id` int DEFAULT NULL,
  `member_invoices_id` int NOT NULL,
  `user_id` int NOT NULL,
  `application_type` enum('adjustment','payment','apero_adjustment','apero_payment','manually_reported_payment') NOT NULL,
  `amount` int DEFAULT NULL,
  `member_charges_type` enum('apply','reversal') DEFAULT NULL,
  `member_charges_id` int DEFAULT NULL,
  `adjustment_reason` varchar(255) DEFAULT NULL,
  `member_note` varchar(255) DEFAULT NULL,
  `internal_note` varchar(255) DEFAULT NULL,
  `date_posted` timestamp NOT NULL,
  `authorizer` varchar(255) DEFAULT NULL,
  `unapplied_by_line_application_id` int DEFAULT NULL,
  `member_billing_promos_id` int DEFAULT NULL,
  `reverses_line_application_id` int DEFAULT NULL,
  `apero_line_application_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `adjustment_detail` enum('paypal','insurance_superbill_bank_payment') DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_reason` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `transaction_type` enum('insert','update','delete') NOT NULL,
  `previous_amount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`,`member_invoices_id`,`application_type`),
  KEY `member_appointments_id` (`member_invoices_id`),
  KEY `ma_id` (`ma_id`,`member_invoices_id`),
  KEY `fk_appt_user_id` (`user_id`,`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_medications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `medication_name` varchar(100) NOT NULL,
  `dosage` int DEFAULT NULL,
  `units` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `is_current_medication` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `medication_note` text,
  `form_of_medication` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `member_medications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_move_up_cache` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `available_slots` int NOT NULL DEFAULT '0',
  `rejected_slots` int NOT NULL DEFAULT '0',
  `earliest_date` timestamp NULL DEFAULT NULL,
  `latest_date` timestamp NULL DEFAULT NULL,
  `has_error` text,
  `clinicians` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slot_details` json DEFAULT NULL,
  `potential_clinicians` json DEFAULT NULL,
  `same_clinician_slots` json DEFAULT NULL,
  `same_clinician_slot_count` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_move_up_rejections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `rejected_therapist_gender` enum('M','F','No Preference') NOT NULL DEFAULT 'No Preference',
  `rejected_therapists` json DEFAULT NULL,
  `rejected_days_of_week` json DEFAULT NULL,
  `rejected_dates` json DEFAULT NULL,
  `rejected_hours` json DEFAULT NULL,
  `rejected_day_hours` json DEFAULT NULL,
  `rejected_slots` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_needs_assessment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `longer_sessions` tinyint(1) DEFAULT NULL,
  `more_frequent` tinyint(1) DEFAULT NULL,
  `need_higher_level` tinyint(1) DEFAULT NULL,
  `referred_to_program` varchar(255) DEFAULT NULL,
  `referred_to_state` varchar(255) DEFAULT NULL,
  `referred_to_wait_weeks` tinyint(1) DEFAULT NULL,
  `referred_to_IOP` tinyint(1) DEFAULT NULL,
  `referred_to_PHP` tinyint(1) DEFAULT NULL,
  `psych_currently_receiving` tinyint(1) DEFAULT NULL,
  `psych_unable_to_access` tinyint(1) DEFAULT NULL,
  `psych_interest_telepsych` tinyint(1) DEFAULT NULL,
  `meds_by_PCP` tinyint(1) DEFAULT NULL,
  `FutureStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_notifications_channel_preferences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email_enabled` tinyint(1) DEFAULT '1',
  `sms_enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_notifications_preferences` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notification_type_name` varchar(100) NOT NULL,
  `sms_enabled` tinyint(1) DEFAULT NULL,
  `email_enabled` tinyint(1) DEFAULT NULL,
  `app_push_enabled` tinyint(1) DEFAULT NULL,
  `send_to_member` tinyint(1) NOT NULL DEFAULT '1',
  `send_to_responsible_party` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_pref_user_id_fk` (`user_id`),
  CONSTRAINT `notification_pref_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_outcome_response` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `subscore_name` varchar(255) DEFAULT NULL,
  `subscore_id` int DEFAULT NULL,
  `baseline_idx` int DEFAULT NULL,
  `first_sub_clinical_idx` int DEFAULT NULL,
  `latest_sub_clinical_idx` int DEFAULT NULL,
  `first_response_idx` int DEFAULT NULL,
  `latest_response_idx` int DEFAULT NULL,
  `baseline_at` timestamp NULL DEFAULT NULL,
  `baseline_score` decimal(12,3) DEFAULT NULL,
  `first_sub_clinical_at` timestamp NULL DEFAULT NULL,
  `first_sub_clinical_score` decimal(12,3) DEFAULT NULL,
  `latest_sub_clinical_at` timestamp NULL DEFAULT NULL,
  `latest_sub_clinical_score` decimal(12,3) DEFAULT NULL,
  `first_response_at` timestamp NULL DEFAULT NULL,
  `first_response_score` decimal(12,3) DEFAULT NULL,
  `first_response_score_perc` decimal(12,3) DEFAULT NULL,
  `latest_response_at` timestamp NULL DEFAULT NULL,
  `latest_response_score` decimal(12,3) DEFAULT NULL,
  `latest_response_score_perc` decimal(12,3) DEFAULT NULL,
  `current_quarterly_conqueror_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `latest_completed_session_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`),
  KEY `idx_conqueror_status` (`current_quarterly_conqueror_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_payment_plan_agreements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `signature` varchar(255) NOT NULL,
  `relationship_to_member` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_payment_plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `payment_plan_id` int NOT NULL,
  `amount` int NOT NULL,
  `currency` enum('USD') NOT NULL,
  `frequency` enum('weekly','monthly','biweekly') NOT NULL,
  `default_plan_overwritten` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `active_after` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_2` (`user_id`),
  KEY `fk_payment_plan_id` (`payment_plan_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `fk_payment_plan_id` FOREIGN KEY (`payment_plan_id`) REFERENCES `payment_plans` (`id`),
  CONSTRAINT `fk_payment_user_id` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_payment_plans_archived` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `payment_plan_id` int NOT NULL,
  `amount` int NOT NULL,
  `currency` enum('USD') NOT NULL,
  `frequency` enum('weekly','monthly','biweekly') NOT NULL,
  `default_plan_overwritten` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  `active_after` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_payment_plan_id` (`payment_plan_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_portal_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_context` varchar(255) NOT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `sent_at` timestamp(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_event_name` (`event_name`),
  KEY `idx_event_context` (`event_context`),
  KEY `idx_event_name_context` (`event_context`,`event_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_prevention_tip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `tip` text,
  `user_id` int NOT NULL,
  `obsession_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `member_prevention_tip_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_professional_disclosure_document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `signed_at` timestamp NOT NULL,
  `member_document_id` int NOT NULL,
  `clinician_professional_disclosure_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_member_signature` (`user_id`,`member_document_id`,`clinician_professional_disclosure_id`),
  KEY `member_document_id` (`member_document_id`),
  KEY `clinician_professional_disclosure_id` (`clinician_professional_disclosure_id`),
  CONSTRAINT `member_professional_disclosure_document_ibfk_1` FOREIGN KEY (`member_document_id`) REFERENCES `members_documents` (`id`),
  CONSTRAINT `member_professional_disclosure_document_ibfk_2` FOREIGN KEY (`clinician_professional_disclosure_id`) REFERENCES `clinician_professional_disclosure_document` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `is_primary_provider` tinyint(1) DEFAULT NULL,
  `bootstrap_log_id` int DEFAULT NULL,
  `chat_channel_id` int DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_reactivation_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `freshdesk_ticket_id` int DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `member_reactivation_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_referrals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `referral_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `referral_provider` varchar(255) DEFAULT NULL,
  `clinician_signed_email` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `problem_area` varchar(255) DEFAULT NULL,
  `level_of_care` varchar(255) DEFAULT NULL,
  `needs_treatment_for_psychotic_disorder` tinyint DEFAULT NULL,
  `is_actively_suicidal` tinyint DEFAULT NULL,
  `admitted_to_hospital_for_psychiatric_reason` tinyint DEFAULT NULL,
  `has_medicaid` tinyint DEFAULT NULL,
  `request_notes` text,
  `external_providers_id` int DEFAULT NULL,
  `additional_providers` json DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type_of_treatment` varchar(255) DEFAULT NULL,
  `setting_preference` varchar(255) DEFAULT NULL,
  `referred_at` timestamp NULL DEFAULT NULL,
  `preferred_times` json DEFAULT NULL,
  `connected_with_external_provider` varchar(255) DEFAULT NULL,
  `still_want_to_be_referred` varchar(255) DEFAULT NULL,
  `new_referral_needed` varchar(255) DEFAULT NULL,
  `is_national_provider_referral` tinyint(1) DEFAULT NULL,
  `metro_area` varchar(255) DEFAULT NULL,
  `is_auto_matched` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `external_providers_id` (`external_providers_id`),
  CONSTRAINT `member_referrals_ibfk_1` FOREIGN KEY (`external_providers_id`) REFERENCES `external_providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_referrals_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_referrals_id` int NOT NULL,
  `notes` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `member_referrals_id` (`member_referrals_id`),
  CONSTRAINT `member_referrals_notes_ibfk_1` FOREIGN KEY (`member_referrals_id`) REFERENCES `member_referrals` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_refunds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_charges_id` int NOT NULL,
  `refund_type` varchar(255) NOT NULL,
  `refund_id` varchar(255) NOT NULL,
  `refund_amount` int NOT NULL,
  `authorizer` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `invoices_recreated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_charges_id` (`member_charges_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `member_reviews` AS SELECT 
 1 AS `row_id`,
 1 AS `id`,
 1 AS `is_featured`,
 1 AS `created_at`,
 1 AS `user_id`,
 1 AS `title`,
 1 AS `body`,
 1 AS `rating`,
 1 AS `name`,
 1 AS `share_avatar`,
 1 AS `reply_body`,
 1 AS `reply_date`,
 1 AS `status`,
 1 AS `subtypes`,
 1 AS `clinician_page_slug`,
 1 AS `clinician_first_name`,
 1 AS `clinician_last_name`,
 1 AS `clinician_image_id`,
 1 AS `clinician_email`,
 1 AS `clinician_user_id`,
 1 AS `avatar_type`,
 1 AS `custom_avatar_url`,
 1 AS `avatar_url`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_s3_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `delete_reason` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `member_s3_files_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_safety_plan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `warning_signs` text,
  `coping_strategies` text,
  `social_distractions` text,
  `people_support` text,
  `crisis_help` text,
  `safe_environment` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `emergency_contact_verified` tinyint(1) DEFAULT '0',
  `people_support_json` json DEFAULT NULL,
  `triggers_and_stressors` text,
  `worth_living_for` text,
  `professionals_agencies_support_json` json DEFAULT NULL,
  `discussed_safe_environment` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_scheduled_address_changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `change_date` date NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('scheduled','cancelled','failed','completed') DEFAULT 'scheduled',
  `new_address` varchar(255) NOT NULL,
  `new_city` varchar(64) NOT NULL,
  `new_zipcode` varchar(64) NOT NULL,
  `new_state` varchar(255) NOT NULL,
  `new_country_code` varchar(2) NOT NULL,
  `new_diagnostic_timezone` varchar(32) NOT NULL,
  `old_address` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_scores_metrics` (
  `forms_table_id` int NOT NULL,
  `forms_table_id_subscore` varchar(255) NOT NULL,
  `subscore_name` varchar(255) NOT NULL,
  `response_type` varchar(255) DEFAULT NULL,
  `response_threshold` double DEFAULT NULL,
  `response_direction` int DEFAULT NULL,
  PRIMARY KEY (`forms_table_id`,`forms_table_id_subscore`),
  CONSTRAINT `member_scores_metrics_ibfk_1` FOREIGN KEY (`forms_table_id`) REFERENCES `forms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_service_communication_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `communication_mode` varchar(64) NOT NULL,
  `communication_outcome` varchar(225) NOT NULL,
  `communication_note` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_temp_leave_return_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rippling_leave_request_id` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_ids` json DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `two_week_notification_sent_at` timestamp(6) NULL DEFAULT NULL,
  `two_week_notification_output` json DEFAULT NULL,
  `one_week_notification_sent_at` timestamp(6) NULL DEFAULT NULL,
  `one_week_notification_output` json DEFAULT NULL,
  `three_day_notification_sent_at` timestamp(6) NULL DEFAULT NULL,
  `three_day_notification_output` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rippling_leave_request_id` (`rippling_leave_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_tool` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `tool_type` enum('image','looptape','script','link','video') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `metadata` json DEFAULT NULL,
  `source` text,
  `created_by` int NOT NULL,
  `obsession_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `member_tool_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_transfers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `transfer_stage` enum('Not Started','In Progress','New Therapists Contacted','Therapist Accepted','Therapist Rejected','RCM Contacted','Pending, complete in future','Done','Self Service Transfers','Unresponsive','Maine','Nova Scotia','Colorado','Alaska') DEFAULT NULL,
  `transfer_start_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `transfer_reason_category` set('Therapist Resignation','Member Request','Therapist Request','Mutual Decision') DEFAULT NULL,
  `transfer_reason_details` set('Symptom Severity/Provider Experience','Therapist Match (Scheduling)','Therapist Match (Not Scheduling)','Member not in Provider area') DEFAULT NULL,
  `number_of_sessions_before_transfer` int DEFAULT NULL,
  `delay_reason` set('Therapist not Identified','Speciality Needed','State Availability','Member Availability','Therapist Requested','Member Unresponsive','Member Request to Wait','Billing Flag','Pausing Treatment','Insurance') DEFAULT NULL,
  `new_therapist_preferences` text,
  `availability` set('Morning','Afternoon','Evening','Mondays','Tuesdays','Wednesdays','Thursdays','Fridays','Saturdays','Sundays','Not Sure Yet','Open') DEFAULT NULL,
  `new_therapist_1` varchar(255) DEFAULT NULL,
  `new_therapist_2` varchar(255) DEFAULT NULL,
  `new_therapist_3` varchar(255) DEFAULT NULL,
  `freshdesk_ticket` text,
  `insurance_related` tinyint(1) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_website_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `age` varchar(64) DEFAULT NULL,
  `review_title` varchar(255) DEFAULT NULL,
  `review_text` text,
  `subtype_json` json DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `is_live` tinyint(1) DEFAULT '0',
  `dob` date DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `stars` int DEFAULT NULL,
  `review_reply` text,
  `reply_date` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` int NOT NULL,
  `user_id` int NOT NULL,
  `payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `submission_id` varchar(255) NOT NULL,
  `metadata` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `expired_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `members_documents_ibfk_1` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`),
  CONSTRAINT `members_documents_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messaging_health` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `chat_channel_id` int DEFAULT NULL,
  `scores_json` json DEFAULT NULL,
  `total_score` int DEFAULT NULL,
  `max_score` int NOT NULL,
  `score` float DEFAULT NULL,
  `message_date_cutoff` timestamp(6) NOT NULL,
  `quarter_start` date NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clinician_email` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `milestone_letter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` text NOT NULL,
  `where_you_started` text,
  `what_changed` text,
  `impressed_by` text,
  `what_we_learned` text,
  `outcome_measures` json DEFAULT NULL,
  `signed_at` timestamp(6) NULL DEFAULT NULL,
  `badge_id` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `first_assessment_at` timestamp NULL DEFAULT NULL,
  `last_assessment_at` timestamp NULL DEFAULT NULL,
  `snooze_reason` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderator_default_replies` (
  `label` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderator_notes` (
  `user_id` int NOT NULL,
  `notes` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderator_post_labels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thread_id` int NOT NULL,
  `post_id` int NOT NULL,
  `label` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `moderators` (
  `user_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `invited_by` varchar(255) DEFAULT NULL,
  `notify_preferences` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_contact_access` tinyint(1) DEFAULT '0',
  `clinician_administration` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email`),
  UNIQUE KEY `index_moderators_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitored_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `requestor` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `requestor` (`requestor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mysql_to_bq_jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) NOT NULL,
  `sql` text NOT NULL,
  `bq_path` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_name` (`job_name`),
  UNIQUE KEY `bq_path` (`bq_path`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `netops_availability_audit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `authorizer` varchar(255) NOT NULL,
  `authorized_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_features_user_eligibility` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_addendum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `member_appointments_id` int NOT NULL,
  `addendum` text,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `text` text,
  `author` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `is_pinned` tinyint(1) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `unavailable_reason` varchar(255) DEFAULT NULL,
  `unavailable_from` date DEFAULT NULL,
  `unavailable_to` date DEFAULT NULL,
  `ticket_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `device_id` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `permission` varchar(32) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`device_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notification_token` varchar(255) NOT NULL,
  `token_type` varchar(16) NOT NULL,
  `env_name` varchar(255) NOT NULL,
  `bundle_identifier` varchar(255) NOT NULL,
  `userTokenId` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `device_id` text,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1236742 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_tokens_backup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notification_token` varchar(255) NOT NULL,
  `token_type` varchar(16) DEFAULT NULL,
  `env_name` varchar(255) NOT NULL,
  `bundle_identifier` varchar(255) NOT NULL,
  `userTokenId` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`notification_token`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `user_id_uniq` (`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=440410 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_external_provider_ledger_feed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payload` json NOT NULL,
  `overall_send_status` enum('not_sent','attempted_send','sent','ignored','error','testing') NOT NULL DEFAULT 'not_sent',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`),
  KEY `idx_notification_type_name` (`notification_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_internal_ledger_feed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payload` json DEFAULT NULL,
  `overall_send_status` enum('not_sent','attempted_send','sent','ignored','error','testing','skipped') NOT NULL DEFAULT 'not_sent',
  `send_status_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_member_ledger_feed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(100) NOT NULL,
  `duplicate_control` varchar(100) DEFAULT NULL,
  `ledger_type` enum('member','internal') DEFAULT 'member',
  `user_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `rendered_body` text,
  `overall_send_status` enum('not_sent','attempted_send','sent','ignored','error','testing','skipped','queued') NOT NULL DEFAULT 'not_sent',
  `send_status_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `seen_at` timestamp NULL DEFAULT NULL,
  `open_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_email_idx` (`ledger_type`,`email`,`notification_type_name`,`duplicate_control`),
  UNIQUE KEY `pk_user_idx` (`ledger_type`,`user_id`,`notification_type_name`,`duplicate_control`),
  UNIQUE KEY `user_id` (`user_id`,`notification_type_name`,`duplicate_control`),
  KEY `idx_open_key` (`open_key`),
  KEY `ndx_user_id` (`user_id`),
  KEY `ndx_notification_type_name` (`notification_type_name`),
  KEY `overall_send_status` (`overall_send_status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications_member_ledger_sends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `member_notifications_feed_ledger_id` int NOT NULL,
  `channel` enum('sms','email','app_push') NOT NULL,
  `payload` json DEFAULT NULL,
  `send_status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_member_ledger_sends_feed_fk` (`member_notifications_feed_ledger_id`),
  CONSTRAINT `notifications_member_ledger_sends_feed_fk` FOREIGN KEY (`member_notifications_feed_ledger_id`) REFERENCES `notifications_member_ledger_feed` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noto_banners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(128) DEFAULT NULL,
  `dismissed_at` timestamp NULL DEFAULT NULL,
  `dismissed_by` varchar(128) NOT NULL,
  `metadata` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clinician_id` (`clinician_id`),
  KEY `idx_member_id` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noto_clinician_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `feedback_details` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_dismissed` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `clinician_email_indx` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noto_pro_tips` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `clinician_user_ids` json DEFAULT NULL,
  `clinical_regions` json DEFAULT NULL,
  `is_network_tip` tinyint(1) DEFAULT NULL,
  `type` enum('image','html') DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noto_thought_of_the_day` (
  `id` int NOT NULL AUTO_INCREMENT,
  `text` text,
  `assigned_date` date DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noto_web_alerts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `alert_type` varchar(128) NOT NULL,
  `badge_number` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(128) NOT NULL,
  `dismissed_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obsession_time_spent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obsessionID` varchar(64) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `spentTime` double NOT NULL,
  `otsID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  `userID` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_obsession_time_spent_on_user_id_ots_id` (`userID`,`otsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocd_directory_providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `verification_status` enum('not_started','pending_verification_by_provider','pending_verification_by_nocd','verified_by_nocd','rejected_by_nocd','needs_reverification') DEFAULT 'not_started',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `npi_number` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `credentials` json DEFAULT NULL,
  `types_of_services` json DEFAULT NULL,
  `specialties` json DEFAULT NULL,
  `insurances_accepted` json DEFAULT NULL,
  `ages_served` json DEFAULT NULL,
  `ocd_experience` text,
  `about_me` text,
  `languages` json DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `pronouns` varchar(255) DEFAULT NULL,
  `cultural_competencies` json DEFAULT NULL,
  `religious_competencies` json DEFAULT NULL,
  `screening_questions` json DEFAULT NULL,
  `licensed_areas` json DEFAULT NULL,
  `locations` json DEFAULT NULL,
  `accepts_virtual_visits` tinyint DEFAULT NULL,
  `accepts_in_person_visits` tinyint DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `license` json DEFAULT NULL,
  `license_other` varchar(255) DEFAULT NULL,
  `treatment_approach` json DEFAULT NULL,
  `treatment_approach_other` text,
  `what_assessment_tools` text,
  `first_treatment_step` text,
  `who_do_you_consult_with` text,
  `reccomendations_for_not_responding` text,
  `client_and_family_risk_factors` text,
  `ritual_and_pure_o_difference` text,
  `is_checking_body_functions_ocd` text,
  `harm_ocd_prevention_techniques` text,
  `when_clients_dont_do_homework` text,
  `exposure_vs_response_prevention` text,
  `if_exposures_are_against_client_values` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `npi_number` (`npi_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocd_is_affecting_me` (
  `user_id` int NOT NULL,
  `ocd_severity` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocd_journey_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'anonymous',
  `email` varchar(255) NOT NULL,
  `description` text,
  `response_sent` tinyint DEFAULT '0',
  `is_live` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onboarded` (
  `user_id` varchar(255) NOT NULL,
  `community` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onboarding_flags` (
  `user_id` int NOT NULL,
  `onboarding_type` varchar(32) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`user_id`,`onboarding_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onboarding_visited_screens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `onboarding_menu` varchar(64) NOT NULL,
  `screen` varchar(64) NOT NULL,
  `action` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_onboarding_visited_screens_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `one_time_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `one_time_code` varchar(255) NOT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `one_time_code` (`one_time_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `openai_chat_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `engine` varchar(255) DEFAULT NULL,
  `query` text NOT NULL,
  `response` text NOT NULL,
  `total_tokens` int NOT NULL,
  `prompt_tokens` int NOT NULL,
  `completion_tokens` int NOT NULL,
  `authorizer` varchar(255) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `display_order` int NOT NULL DEFAULT '0',
  `param_group` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text,
  `description` text NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_group` (`param_group`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parental_lock_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_apps_flyer_id_user_id` (`user_id`,`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payer_effective_dates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance` varchar(255) NOT NULL,
  `apero_trading_partner_id` varchar(255) NOT NULL,
  `effective_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_plans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `currency` varchar(3) NOT NULL,
  `frequency` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_stripe_charge` (
  `stripe_charge_id` varchar(255) NOT NULL,
  `stripe_charge_customer_id` varchar(255) DEFAULT NULL,
  `stripe_charge_description` varchar(255) DEFAULT NULL,
  `stripe_charge_amount` int DEFAULT NULL,
  `stripe_charge_amount_captured` int DEFAULT NULL,
  `stripe_charge_amount_refunded` int DEFAULT NULL,
  `stripe_charge_currency` varchar(255) DEFAULT NULL,
  `stripe_charge_status` varchar(255) DEFAULT NULL,
  `stripe_charge_metadata` json DEFAULT NULL,
  `stripe_charge_created` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stripe_charge_payment_intent` varchar(255) DEFAULT NULL,
  `stripe_charge_receipt_url` varchar(255) DEFAULT NULL,
  `stripe_charge_failure_code` varchar(255) DEFAULT NULL,
  `stripe_charge_failure_message` varchar(255) DEFAULT NULL,
  `stripe_charge_failure_ignored` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`stripe_charge_id`),
  KEY `stripe_charge_customer_id` (`stripe_charge_customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_stripe_dispute` (
  `user_id` int NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `stripe_dispute_id` varchar(255) NOT NULL,
  `stripe_dispute_charge_id` varchar(255) DEFAULT NULL,
  `stripe_dispute_description` varchar(255) DEFAULT NULL,
  `stripe_dispute_amount` int DEFAULT NULL,
  `stripe_dispute_currency` varchar(255) DEFAULT NULL,
  `stripe_dispute_status` varchar(255) DEFAULT NULL,
  `stripe_dispute_raw_data` json DEFAULT NULL,
  `stripe_dispute_created` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stripe_dispute_payment_intent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stripe_dispute_id`),
  KEY `stripe_dispute_charge_id` (`stripe_dispute_charge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_stripe_payment_intent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stripe_payment_intent_id` varchar(255) NOT NULL,
  `stripe_payment_intent_customer_id` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_description` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_amount` int DEFAULT NULL,
  `stripe_payment_intent_amount_capturable` int DEFAULT NULL,
  `stripe_payment_intent_amount_received` int DEFAULT NULL,
  `stripe_payment_intent_currency` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_status` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_metadata` json DEFAULT NULL,
  `stripe_payment_intent_next_action` json DEFAULT NULL,
  `stripe_payment_intent_payment_method` varchar(255) DEFAULT NULL,
  `stripe_payment_intent_created` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripe_payment_intent_id` (`stripe_payment_intent_id`),
  KEY `stripe_payment_intent_customer_id` (`stripe_payment_intent_customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_stripe_refund` (
  `stripe_refund_id` varchar(255) NOT NULL,
  `stripe_refund_charge_id` varchar(255) DEFAULT NULL,
  `stripe_refund_amount` int DEFAULT NULL,
  `stripe_refund_metadata` json DEFAULT NULL,
  `stripe_refund_reason` varchar(255) DEFAULT NULL,
  `stripe_refund_created` timestamp NULL DEFAULT NULL,
  `stripe_refund_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stripe_refund_payment_intent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stripe_refund_id`),
  KEY `stripe_refund_charge_id` (`stripe_refund_charge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peer_advisors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `calendly_link` varchar(255) DEFAULT NULL,
  `image_id` varchar(255) DEFAULT '',
  `is_test_user` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pause_user` tinyint(1) DEFAULT '0',
  `about_me` text,
  `nocd_experience` text,
  `resources_to_share` text,
  `vimeo_video` varchar(255) DEFAULT '',
  `preferred_pronouns` varchar(32) DEFAULT '',
  `title` varchar(256) DEFAULT '',
  `video_quote` text,
  `specialty_themes` varchar(255) DEFAULT NULL,
  `relevant_links` json DEFAULT NULL,
  `video_thumbnail_id` text,
  `email_body` text,
  `premium_region_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `auto_add_advisor_to_chat_channel` tinyint(1) DEFAULT NULL,
  `can_send_automated_message` int DEFAULT '1',
  `you_can_also_ask_about` json DEFAULT NULL,
  `profile_subheading` text,
  `can_send_converted_auto_messages` tinyint DEFAULT '0',
  `can_send_trial_auto_messages` tinyint DEFAULT '0',
  `has_lived_experience` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peer_advisors_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `peer_advisor_email` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `call_log` json DEFAULT NULL,
  `da_feedback` tinyint(1) DEFAULT '0',
  `session_6_feedback` tinyint(1) DEFAULT '0',
  `session_12_feedback` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perf_monitoring` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `method_caller` varchar(255) DEFAULT NULL,
  `method_traceback` text,
  `method_args` json DEFAULT NULL,
  `latency_a_in_ms` int DEFAULT NULL,
  `latency_b_in_ms` int DEFAULT NULL,
  `result_a` json DEFAULT NULL,
  `result_b` json DEFAULT NULL,
  `exc_a` text,
  `exc_b` text,
  `results_match` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `method_caller` (`method_caller`,`created_at`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perspective_api` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `toxicity_score` float DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_call_appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) NOT NULL,
  `acuity_id` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `intake_team_member` varchar(255) DEFAULT NULL,
  `appt_scheduled_at` timestamp(6) NULL DEFAULT NULL,
  `appt_time` timestamp(6) NULL DEFAULT NULL,
  `appt_label` varchar(255) DEFAULT NULL,
  `appt_label_full` varchar(255) DEFAULT NULL,
  `what_can_we_help_with` text,
  `how_did_you_hear_about_nocd` text,
  `current_app_user` tinyint(1) DEFAULT NULL,
  `has_insurance` tinyint(1) DEFAULT NULL,
  `insurance_provider` varchar(255) DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `currently_seeing_therapist` tinyint(1) DEFAULT NULL,
  `additional_information` text,
  `reason_for_not_converting` text,
  `source` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `assigned_clinician_user_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid` (`guid`),
  KEY `acuity_id` (`acuity_id`),
  KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pinned_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `postID` int NOT NULL,
  `startDate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `endDate` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `geoFilter` tinyint(1) DEFAULT '0',
  `country` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(255) NOT NULL DEFAULT '',
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pinned_posts_seen_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trace_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `cycled_post_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `cycled_posts_seen_idx` (`user_id`,`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=295724 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `locationAddress` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `placeID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_places_on_user_id_place_id` (`userID`,`placeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pmetrics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matchlk` int NOT NULL,
  `start_date` date DEFAULT '2000-01-01',
  `end_date` date DEFAULT '2038-01-01',
  `rtype` enum('r1','r2') NOT NULL DEFAULT 'r1',
  `r1` int DEFAULT '10000',
  `r2` int DEFAULT '10000000',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `matchlk` (`matchlk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_annotations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `action_name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_on_user_post_action` (`user_id`,`post_id`,`action_name`)
) ENGINE=InnoDB AUTO_INCREMENT=963 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_assessment_summary` (
  `appointment_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `member_document_id` int DEFAULT NULL,
  `therapist_comments` text,
  `goals` json DEFAULT NULL,
  `copied_from_appointment_id` int DEFAULT NULL,
  `sent_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_assessment_summary_overrides` (
  `appointment_id` int NOT NULL,
  `reason` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_classifications` (
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `pure_ocd` tinyint(1) DEFAULT NULL,
  `relationship_ocd` tinyint(1) DEFAULT NULL,
  `perfectionism_ocd` tinyint(1) DEFAULT NULL,
  `harm_ocd` tinyint(1) DEFAULT NULL,
  `real_events_ocd` tinyint(1) DEFAULT NULL,
  `contamination_ocd` tinyint(1) DEFAULT NULL,
  `order_and_symmetry_ocd` tinyint(1) DEFAULT NULL,
  `false_memory_ocd` tinyint(1) DEFAULT NULL,
  `existential_ocd` tinyint(1) DEFAULT NULL,
  `religion_and_spirituality_ocd` tinyint(1) DEFAULT NULL,
  `health_concern_ocd` tinyint(1) DEFAULT NULL,
  `magical_thinking_ocd` tinyint(1) DEFAULT NULL,
  `somatic_ocd` tinyint(1) DEFAULT NULL,
  `sexual_orientation_ocd` tinyint(1) DEFAULT NULL,
  `pocd` tinyint(1) DEFAULT NULL,
  `suicidal_ocd` tinyint(1) DEFAULT NULL,
  `transgender_ocd` tinyint(1) DEFAULT NULL,
  `postpartum_ocd` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_context_menu_seen_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59041 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_crp_awards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `giver_user_id` int NOT NULL,
  `receiver_user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `user_crp_credit_transaction_id` int NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id_2` (`post_id`,`giver_user_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_deletion_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `is_resolved` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_discharge_reactivation_campaign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notification_1_send_status` enum('queued','sent','error','skipped') DEFAULT 'queued',
  `notification_1_send_status_reason` varchar(255) DEFAULT NULL,
  `notification_1_sent_at` timestamp(6) NULL DEFAULT NULL,
  `notification_2_send_status` enum('queued','sent','error','skipped') DEFAULT 'queued',
  `notification_2_send_status_reason` varchar(255) DEFAULT NULL,
  `notification_2_sent_at` timestamp(6) NULL DEFAULT NULL,
  `notification_3_send_status` enum('queued','sent','error','skipped') DEFAULT 'queued',
  `notification_3_send_status_reason` varchar(255) DEFAULT NULL,
  `notification_3_sent_at` timestamp(6) NULL DEFAULT NULL,
  `notification_4_send_status` enum('queued','sent','error','skipped') DEFAULT 'queued',
  `notification_4_send_status_reason` varchar(255) DEFAULT NULL,
  `notification_4_sent_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `post_discharge_reactivation_campaign_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_embeddings_ledger` (
  `post_id` int NOT NULL,
  `in_chroma` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_insurances` (
  `post_id` int NOT NULL,
  `insurance` varchar(255) NOT NULL,
  PRIMARY KEY (`post_id`,`insurance`),
  CONSTRAINT `post_insurances_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_label_mappings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `post_label_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `post_label_id` (`post_label_id`),
  CONSTRAINT `post_label_mappings_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `post_label_mappings_ibfk_2` FOREIGN KEY (`post_label_id`) REFERENCES `post_labels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_labels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_rate_limit_rules` (
  `post_id` int NOT NULL,
  `window_max_count` smallint unsigned DEFAULT NULL,
  `window_size` smallint unsigned DEFAULT NULL COMMENT 'in hours',
  `max_total_count` smallint unsigned DEFAULT NULL,
  `visibility_duration` smallint unsigned DEFAULT NULL COMMENT 'in hours',
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `post_reply_counts` AS SELECT 
 1 AS `id`,
 1 AS `replies`,
 1 AS `likes`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_scores` (
  `post_id` int NOT NULL,
  `insightful` tinyint NOT NULL,
  `constructive` tinyint NOT NULL,
  `empathy` tinyint NOT NULL,
  `helpful` tinyint NOT NULL,
  `encouragement` tinyint NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_sentiments` (
  `post_id` int NOT NULL,
  `sentiment` varchar(255) NOT NULL,
  `sentiment_score` double NOT NULL,
  `metadata` json NOT NULL DEFAULT (_utf8mb4'{}'),
  `suppress` tinyint(1) DEFAULT NULL,
  `suppression_reason` varchar(255) DEFAULT NULL,
  `post_created_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `idx_post_created_at_sentiment_suppress` (`post_created_at`,`sentiment`,`suppress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_seo_titles` (
  `post_id` int NOT NULL,
  `title_seo` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `index_on_post_tags` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_topics` (
  `post_id` int NOT NULL,
  `topic_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  CONSTRAINT `post_topics_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`topic_id`),
  CONSTRAINT `post_topics_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_topics_pre_subtypes` (
  `post_id` int NOT NULL,
  `topic_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`,`topic_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_user_reactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `reaction_type` enum('like','helpful','laugh','sad','triggering','good_vibes','support','thumbs_up') NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `reactions_idx_on_user_id_and_post_id` (`user_id`,`post_id`),
  KEY `reactions_idx_on_post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thread_id` int NOT NULL,
  `db_depth` int DEFAULT '0',
  `body` text NOT NULL,
  `fallback_body` text,
  `user_id` varchar(255) NOT NULL,
  `post_replied_to` int DEFAULT NULL,
  `mentioned_post_id` int DEFAULT NULL,
  `post_type` varchar(30) NOT NULL,
  `post_type_data` text,
  `accepted_reassurance_pledge` tinyint(1) DEFAULT NULL,
  `trigger_warning` tinyint(1) DEFAULT NULL,
  `created_by_moderator` tinyint(1) DEFAULT '0',
  `reviewed` tinyint(1) DEFAULT '0',
  `reviewed_by` varchar(255) DEFAULT NULL,
  `flag_state` varchar(255) DEFAULT NULL,
  `cycled` tinyint(1) DEFAULT '0',
  `position_type` varchar(255) DEFAULT 'TRADITIONAL',
  `name` varchar(255) NOT NULL DEFAULT '',
  `geo_locked` varchar(255) DEFAULT NULL,
  `user_id_mod_10_filter` varchar(255) DEFAULT NULL,
  `sql_filter` varchar(255) DEFAULT NULL,
  `render_html` tinyint(1) DEFAULT '0',
  `library_post` tinyint(1) DEFAULT '0',
  `dm_end_at` timestamp(6) NULL DEFAULT NULL,
  `dm_start_at` timestamp(6) NULL DEFAULT NULL,
  `dm_rank` int unsigned DEFAULT NULL,
  `dm_tag` varchar(255) DEFAULT NULL,
  `dm_day` int DEFAULT NULL,
  `feed_placement` varchar(255) NOT NULL DEFAULT 'MAIN',
  `feed_placement_src` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '1',
  `is_locked` tinyint(1) DEFAULT NULL,
  `lock_status` varchar(255) DEFAULT NULL,
  `inactive_reason` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT '0',
  `hide_for_therapy_members` tinyint DEFAULT '0',
  `posting_title` varchar(255) DEFAULT NULL,
  `therapist_alumni_reply_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `cohort` varchar(255) DEFAULT NULL,
  `unsupported_question` tinyint(1) DEFAULT '0',
  `ml_emotions` text,
  `is_therapy_members_feed_post` tinyint(1) NOT NULL DEFAULT '0',
  `expires_at` timestamp NULL DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `post_carousel_data` json DEFAULT NULL,
  `highlight_new_replies` tinyint(1) DEFAULT NULL,
  `edited_at` timestamp(6) NULL DEFAULT NULL,
  `hide_for_non_insurance_members` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `feed_placement` (`feed_placement`,`position_type`,`id`),
  KEY `position_type` (`position_type`,`id`),
  KEY `posts_idx_on_replied_post_replied_to` (`post_replied_to`),
  KEY `posts_idx_on_replies` (`id`,`post_replied_to`),
  KEY `posts_idx_on_thread_id` (`thread_id`),
  KEY `posts_idx_on_user` (`user_id`),
  KEY `therapist_alumni_reply_at` (`therapist_alumni_reply_at`),
  KEY `posts_idx_therapy_members_post_replied_to` (`is_therapy_members_feed_post`,`post_replied_to`),
  FULLTEXT KEY `idx_body` (`body`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_ml_annotations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `analysis_complete` tinyint(1) DEFAULT NULL,
  `needs_additional_anaylsis` tinyint(1) DEFAULT NULL,
  `is_triggering` tinyint(1) DEFAULT NULL,
  `is_reassurance` tinyint(1) DEFAULT NULL,
  `is_featurable` tinyint(1) DEFAULT NULL,
  `is_medication_post` tinyint(1) DEFAULT NULL,
  `has_subtype` tinyint(1) DEFAULT NULL,
  `reason_additional_analysis` varchar(1024) NOT NULL,
  `primary_subtype` varchar(255) NOT NULL,
  `secondary_subtype` varchar(255) NOT NULL,
  `signal_phrase_1` varchar(255) NOT NULL,
  `signal_phrase_2` varchar(255) NOT NULL,
  `signal_phrase_3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_scheduled` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `go_live_at` timestamp NOT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `go_live_success_at` timestamp NULL DEFAULT NULL,
  `created_post_id` int DEFAULT NULL,
  `post_json` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_seo_metadata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `title` text,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `posts_seo_metadata_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practice_counters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `exposureID` varchar(64) NOT NULL,
  `exerciseID` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exerciseID` (`exerciseID`),
  KEY `index_exposure_messages_on_user_id_exposure_id` (`userID`,`exposureID`)
) ENGINE=InnoDB AUTO_INCREMENT=21135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferred_provider_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(255) NOT NULL,
  `organization_short_name` varchar(255) DEFAULT NULL,
  `match_strings` json DEFAULT (json_array()),
  `is_preferred_provider` tinyint(1) DEFAULT NULL,
  `is_screening_partner` tinyint(1) DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_app_page_visitors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `deviceID` varchar(255) NOT NULL,
  `sessionID` varchar(255) NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `utmSource` varchar(255) NOT NULL,
  `utmMedium` varchar(255) NOT NULL,
  `utmCampaign` varchar(255) NOT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90740 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_cancel_reasons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reason_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `premium_cancel_reasons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_charge_promo_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promo_code_id` varchar(255) NOT NULL,
  `percent_off` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `promo_code_id_2` (`promo_code_id`),
  KEY `promo_code_id` (`promo_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trace_id` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `channel_user_id` int NOT NULL,
  `channel_clinician_user_id` int DEFAULT NULL,
  `member_user_id` int DEFAULT NULL,
  `clinician_user_id` int DEFAULT NULL,
  `automated` varchar(128) DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `subscribed_message` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `deleted_channel_user_id` int DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `chat_channel_id` int DEFAULT NULL,
  `sent_by_user_id` int DEFAULT NULL,
  `sent_by_user_type` enum('premium_users','premium_clinicians','peer_advisors','support_team','nocd_bot','clinical_leadership') DEFAULT NULL,
  `type` enum('text','image','link','file') NOT NULL DEFAULT 'text',
  `attachment_data` json DEFAULT NULL,
  `button_data` json DEFAULT NULL,
  `implies_response` tinyint DEFAULT '0',
  `therapist_conversation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trace_id` (`trace_id`),
  KEY `channel_user_id` (`channel_user_id`),
  KEY `chat_channel_id` (`chat_channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_auditors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_audits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `audit_type` varchar(255) NOT NULL,
  `audit_completed_at` timestamp NOT NULL,
  `audit_completed_by` varchar(255) NOT NULL,
  `audit_score` int NOT NULL,
  `qep_recommended` tinyint(1) DEFAULT NULL,
  `qep_recommended_at` timestamp NULL DEFAULT NULL,
  `qep_started_at` timestamp NULL DEFAULT NULL,
  `qep_expired_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_cam_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `training_start_date` date DEFAULT NULL,
  `cam_1_date` date DEFAULT NULL,
  `cam_2_date` date DEFAULT NULL,
  `cam_3_date` date DEFAULT NULL,
  `cam_4_date` date DEFAULT NULL,
  `cam_5_date` date DEFAULT NULL,
  `cam_6_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_author` varchar(255) DEFAULT NULL,
  `disabled_for_booking` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_condition` (`email`,`condition`),
  CONSTRAINT `premium_clinician_conditions_ibfk_1` FOREIGN KEY (`email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `premium_country_code` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `disabled_for_bookings` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_country_code` (`email`,`premium_country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `spotlight_data` text,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_id` int NOT NULL,
  `flag_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `flag_end_date` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_clinician_id_flag_name` (`clinician_id`,`flag_name`),
  KEY `clinician_id_idx` (`clinician_id`),
  KEY `flag_name` (`flag_name`)
) ENGINE=InnoDB AUTO_INCREMENT=26429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `image_link_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_user_id` (`clinician_user_id`,`image_name`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_quality_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `quality_rating` varchar(255) NOT NULL,
  `rated_at` timestamp NOT NULL,
  `rating_note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_retool` (
  `id` int NOT NULL AUTO_INCREMENT,
  `retool_user_email` varchar(255) DEFAULT NULL,
  `session_guid` varchar(255) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_guid` (`session_guid`)
) ENGINE=InnoDB AUTO_INCREMENT=54006 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_seen_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel_user_id` varchar(255) NOT NULL,
  `clinician_user_id` int NOT NULL,
  `seen_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_user_id` (`clinician_user_id`,`channel_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1049316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_specialties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `specialty` enum('Autism Spectrum Disorder','Young Adult','Parent/Caregiver Education','Advanced Therapy') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_author` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_speciality` (`email`,`specialty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_star_rating` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `star_rating` varchar(255) DEFAULT 'bronze',
  `performance_note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `clinician_user_id` (`clinician_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_state_licenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `license_status` enum('Full','Temporary','Emergency','Registry') DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `license_expiry` date DEFAULT NULL,
  `license_notes` text,
  `expiry_reminder_sent` tinyint(1) DEFAULT NULL,
  `caqh_state_verified_at` date DEFAULT NULL,
  `submitted_app_permanent_license` tinyint(1) DEFAULT NULL,
  `state_credentials` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `country_code` varchar(2) NOT NULL,
  `disabled_for_booking` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`state`),
  KEY `fk_country_code` (`country_code`),
  CONSTRAINT `fk_country_code` FOREIGN KEY (`country_code`) REFERENCES `premium_country` (`country_code`),
  CONSTRAINT `premium_clinician_state_licenses_ibfk_1` FOREIGN KEY (`email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinician_states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `state` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_user_id` (`clinician_user_id`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinicians` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `activation_sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activation_used_at` timestamp NULL DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '1',
  `ready_for_members` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `user_id` int DEFAULT NULL,
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `nickname` varchar(255) DEFAULT '',
  `title` varchar(255) DEFAULT '',
  `slack_channel` varchar(255) DEFAULT '',
  `description` text,
  `image_id` varchar(255) DEFAULT '',
  `image_height` int DEFAULT NULL,
  `image_width` int DEFAULT NULL,
  `profile_metadata` json DEFAULT NULL,
  `reminder_email_sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `welcome_message` text,
  `intake_welcome_message` text,
  `unsubscribed_welcome_message` text,
  `states` varchar(1024) DEFAULT '',
  `states_json` json DEFAULT NULL,
  `welcome_video` varchar(255) DEFAULT '',
  `star_rating` varchar(32) DEFAULT NULL,
  `audit_notes` text,
  `needs_audit` tinyint(1) DEFAULT NULL,
  `intake_availability` text,
  `availability_notes` varchar(255) DEFAULT 'proceed',
  `npi_id` varchar(32) DEFAULT NULL,
  `external_links` text,
  `intake_accept_member_status` varchar(255) DEFAULT NULL,
  `current_status` varchar(255) DEFAULT NULL,
  `spec_religious` tinyint(1) DEFAULT NULL,
  `spec_faith` varchar(255) DEFAULT NULL,
  `certified_ages` varchar(255) DEFAULT NULL,
  `spec_child` tinyint(1) DEFAULT NULL,
  `pass_quiz` tinyint(1) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `clinician_timezone` varchar(255) DEFAULT '',
  `sunday_schedule` varchar(255) DEFAULT '',
  `monday_schedule` varchar(255) DEFAULT '',
  `tuesday_schedule` varchar(255) DEFAULT '',
  `wednesday_schedule` varchar(255) DEFAULT '',
  `thursday_schedule` varchar(255) DEFAULT '',
  `friday_schedule` varchar(255) DEFAULT '',
  `saturday_schedule` varchar(255) DEFAULT '',
  `sort_order` varchar(255) DEFAULT NULL,
  `accepting_new_patients` tinyint(1) DEFAULT '1',
  `short_quote` text,
  `slug` varchar(255) DEFAULT NULL,
  `current_status_notes` text,
  `protocol_types_json` json DEFAULT NULL,
  `hours_per_week` varchar(255) DEFAULT NULL,
  `psychology_today_link` varchar(255) DEFAULT NULL,
  `schedule_text` text,
  `licensing_level` varchar(255) DEFAULT NULL,
  `gender` varchar(32) DEFAULT NULL,
  `tiering` varchar(255) DEFAULT NULL,
  `insurance_expiration_date` date DEFAULT NULL,
  `insurance_expiry_reminder_sent` tinyint(1) DEFAULT NULL,
  `clinician_marketing_page_ready` tinyint(1) DEFAULT NULL,
  `therapist_directory_ready` tinyint(1) DEFAULT NULL,
  `title_website` text,
  `education` text,
  `ocd_experience` text,
  `about_me` text,
  `video_quote` text,
  `specialities` json DEFAULT NULL,
  `specialities_json` json DEFAULT NULL,
  `caqh_credentials` varchar(255) DEFAULT NULL,
  `ssn` varchar(32) DEFAULT NULL,
  `caqh_member_id` varchar(32) DEFAULT NULL,
  `caqh_username` varchar(32) DEFAULT NULL,
  `caqh_password` varchar(32) DEFAULT NULL,
  `dob` varchar(32) DEFAULT NULL,
  `caqh_profile_verified_at` date DEFAULT NULL,
  `min_age` int DEFAULT NULL,
  `communication_log` text,
  `network_op_owner` varchar(255) DEFAULT NULL,
  `da_availability` varchar(255) DEFAULT NULL,
  `current_status_reviewed_date` date DEFAULT NULL,
  `live_again_date` date DEFAULT NULL,
  `in_new_system` tinyint(1) DEFAULT '1',
  `send_bcc_email` tinyint(1) DEFAULT '0',
  `rate_clinical` int DEFAULT NULL,
  `rate_non_clinical` int DEFAULT NULL,
  `doxy_me_link` varchar(64) DEFAULT NULL,
  `video_type` varchar(64) DEFAULT NULL,
  `languages_spoken` json DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `committed_hours` int DEFAULT NULL,
  `taxonomy_code` varchar(64) DEFAULT NULL,
  `zoom_key` varchar(32) DEFAULT NULL,
  `verified_zoom_v2` tinyint(1) DEFAULT '0',
  `zoom_meeting_link` varchar(255) DEFAULT NULL,
  `max_das_in_week` int DEFAULT NULL,
  `time_in_mins_backstop_after_da` int DEFAULT '0',
  `time_in_mins_backstop_before_da` int DEFAULT '0',
  `clinician_type` varchar(255) DEFAULT NULL,
  `live_da_date` date DEFAULT NULL,
  `first_da_date` date DEFAULT NULL,
  `termination_da_date` date DEFAULT NULL,
  `enable_gcal` tinyint(1) NOT NULL DEFAULT '0',
  `max_da_per_day` int DEFAULT NULL,
  `time_between_da_sessions` int DEFAULT '0',
  `reside_in_state` varchar(255) DEFAULT NULL,
  `preferred_pronouns` varchar(32) DEFAULT NULL,
  `psypact` tinyint(1) NOT NULL DEFAULT '0',
  `use_new_note` tinyint(1) DEFAULT NULL,
  `break_for_sixty_min_sessions` int DEFAULT NULL,
  `break_for_thirty_min_sessions` int DEFAULT NULL,
  `break_for_ninety_min_sessions` int DEFAULT NULL,
  `hours_of_notice` int DEFAULT NULL,
  `apero_provider_id` varchar(32) DEFAULT NULL,
  `use_new_chart` tinyint DEFAULT NULL,
  `committee_approval_date` date DEFAULT NULL,
  `clinical_supervisor` varchar(255) DEFAULT NULL,
  `hubspot_link` varchar(255) DEFAULT NULL,
  `use_new_messaging` tinyint DEFAULT '0',
  `staffing_agency` varchar(255) DEFAULT NULL,
  `accepting_transfers` enum('accepting','not_accepting','accepting_members_under_4_sessions') DEFAULT 'accepting',
  `zocdoc_live` tinyint(1) DEFAULT NULL,
  `member_can_book_and_reschedule` tinyint(1) DEFAULT '0',
  `clinical_director` text,
  `resignation_date` date DEFAULT NULL,
  `auto_max_da_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `verifiable_guid` varchar(255) DEFAULT NULL,
  `rcm_notes` text,
  `disabled_for_cash_pay` tinyint(1) DEFAULT '0',
  `disabled_for_insurance` tinyint(1) DEFAULT '0',
  `form_automation_enabled` tinyint DEFAULT '1',
  `frequently_asked_questions` json DEFAULT NULL,
  `article_links` json DEFAULT NULL,
  `facebook_link` text,
  `twitter_link` text,
  `education_and_training` json DEFAULT NULL,
  `certificates` json DEFAULT NULL,
  `training_programs` text,
  `should_use_v2_profile` tinyint(1) DEFAULT '0',
  `understanding_conditions` json DEFAULT NULL,
  `understanding_conditions_other` text,
  `understanding_cultural_identity_groups` json DEFAULT NULL,
  `understanding_cultural_identity_groups_other` text,
  `understanding_religious_affiliations` json DEFAULT NULL,
  `understanding_religious_affiliations_other` text,
  `understanding_lgbtq_plus` text,
  `languages_spoken_other` text,
  `ignore_zoom_check` tinyint(1) DEFAULT NULL,
  `use_vacation_responder` tinyint DEFAULT '0',
  `vacation_responder_message` text,
  `updated_by` varchar(255) DEFAULT NULL,
  `public_phone_number` varchar(15) DEFAULT NULL,
  `ca_npi` varchar(32) DEFAULT NULL,
  `autofill_claims` enum('auto_submit','dont_submit') DEFAULT 'auto_submit',
  `needs_supervisor_review` tinyint(1) DEFAULT '0',
  `associate_supervisor` varchar(255) DEFAULT NULL,
  `how_did_you_hear_about_nocd` varchar(255) DEFAULT NULL,
  `how_did_you_hear_about_nocd_notes` text,
  `current_clinician_role` enum('Fully Dedicated Clinician','Split-Role Clinician','Non-CLinician','Associate Clinician') DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `hire_week` date DEFAULT NULL,
  `has_seen_homework_builder_overview` tinyint DEFAULT '0',
  `badges` json DEFAULT NULL,
  `can_member_schedule_session` tinyint(1) DEFAULT '1',
  `can_member_reschedule_session` tinyint(1) DEFAULT '1',
  `can_member_cancel_session` tinyint(1) DEFAULT NULL,
  `degree` varchar(25) DEFAULT NULL,
  `board_certification` varchar(50) DEFAULT NULL,
  `recred_approval_date` date DEFAULT NULL,
  `recred_due_date` date DEFAULT NULL,
  `onboarding_status` varchar(70) NOT NULL DEFAULT 'Not Started',
  `ignore_gcal_events` tinyint(1) DEFAULT NULL,
  `require_approval_for_schedule` tinyint(1) DEFAULT NULL,
  `uses_scheduling_team` tinyint(1) DEFAULT NULL,
  `scheduling_team_notes` text,
  `weekly_cancelled_appts` int DEFAULT NULL,
  `associate_level` enum('associate_1_over_750_hours','associate_2_less_750_hours_erp_experience','associate_3_less_750_hours_no_past_experience') DEFAULT NULL,
  `extended_bio` text,
  `clinical_region` enum('region_1','region_2','region_3','region_4') DEFAULT NULL,
  `is_test_clinician` tinyint(1) DEFAULT NULL,
  `modalities` json DEFAULT NULL,
  `ocd_experience_since` int DEFAULT NULL,
  `expected_evening_working_hours` int DEFAULT NULL,
  `expected_weekend_working_hours` int DEFAULT NULL,
  `assigned_specialties_for_training` json DEFAULT NULL,
  `is_associate_ready_for_clinical_specialty` tinyint DEFAULT NULL,
  `rippling_preferred_first_name` varchar(255) DEFAULT NULL,
  `preferred_first_name` varchar(255) GENERATED ALWAYS AS (if(((`preferred_first_name_input` is null) or (trim(`preferred_first_name_input`) = _utf8mb4'')),`first_name`,trim(`preferred_first_name_input`))) STORED,
  `preferred_first_name_input` varchar(255) DEFAULT NULL,
  `go_live_date` date DEFAULT NULL,
  `protocol_preferences` json DEFAULT NULL,
  `cohort_id` int DEFAULT NULL,
  `base_plus_enabled` tinyint(1) DEFAULT NULL,
  `only_available_for_specialties` tinyint(1) DEFAULT NULL,
  `need_diagnosis_approval` tinyint(1) DEFAULT '0',
  `diagnosis_approver` varchar(255) DEFAULT NULL,
  `cancellation_detection_setting` enum('enabled','disabled','disabled_within_working_hours') NOT NULL DEFAULT 'enabled',
  `opt_in_transcript_retention` timestamp NULL DEFAULT NULL,
  `override_associate_for_enrollment` tinyint(1) DEFAULT NULL,
  `degree_year` year DEFAULT NULL,
  `opt_out_of_auto_dial` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `link_to_user_table` (`email`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `cohort_id` (`cohort_id`),
  CONSTRAINT `link_to_user_table` FOREIGN KEY (`email`, `user_id`) REFERENCES `user` (`email`, `userID`),
  CONSTRAINT `premium_clinicians_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `premium_clinicians_ibfk_2` FOREIGN KEY (`cohort_id`) REFERENCES `cohort` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinicians_audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_by_reason` text,
  `examined_fields` json DEFAULT NULL,
  `updated_fields` json DEFAULT NULL,
  `prior_data` json DEFAULT NULL,
  `current_data` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `clinician_email` (`clinician_email`),
  CONSTRAINT `premium_clinicians_audit_log_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinicians_daily_snapshot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `committed_hours` decimal(10,2) DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `current_status` varchar(255) DEFAULT NULL,
  `as_of_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `current_clinician_role` varchar(255) DEFAULT NULL,
  `onboarding_status` varchar(255) DEFAULT NULL,
  `associate_level` varchar(255) DEFAULT NULL,
  `need_diagnosis_approval` tinyint(1) DEFAULT NULL,
  `diagnosis_approver` varchar(255) DEFAULT NULL,
  `clinical_region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clinician_email_date` (`clinician_email`,`as_of_date`),
  KEY `idx_date_clinician_email` (`as_of_date`,`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_clinicians_weekly_snapshot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `committed_hours` decimal(10,2) DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `current_status` varchar(255) DEFAULT NULL,
  `as_of_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_weekly_clinician_email_date` (`clinician_email`,`as_of_date`),
  KEY `idx_weekly_date_clinician_email` (`as_of_date`,`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `premium_conversions` AS SELECT 
 1 AS `email`,
 1 AS `free`,
 1 AS `source`,
 1 AS `promo_used`,
 1 AS `registered_at`,
 1 AS `last_opened_at`,
 1 AS `invited_at`,
 1 AS `saw_premium_at`,
 1 AS `subscribed_at`,
 1 AS `userID`,
 1 AS `registered`,
 1 AS `open_id`,
 1 AS `opened_app`,
 1 AS `customer_id`,
 1 AS `saw_premium`,
 1 AS `subscription_id`,
 1 AS `subscribed`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currency` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`country_code`),
  UNIQUE KEY `country_code` (`country_code`,`country_name`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_eligibility` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `free` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `source` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_flags` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_form_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `form_method` varchar(255) DEFAULT NULL,
  `saw_quiz` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `contact_me` tinyint(1) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `utm_source` (`utm_source`,`utm_campaign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_join_reasons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reason` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `reason_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`reason_id`),
  CONSTRAINT `premium_join_reasons_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_landing_page_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11093 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_landing_page_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `saw_quiz` varchar(64) DEFAULT NULL,
  `clicked_get_started_1` tinyint(1) DEFAULT NULL,
  `clicked_get_started_1_at` timestamp NULL DEFAULT NULL,
  `clicked_get_started_2` tinyint(1) DEFAULT NULL,
  `clicked_get_started_2_at` timestamp NULL DEFAULT NULL,
  `clicked_get_started_3` tinyint(1) DEFAULT NULL,
  `clicked_get_started_3_at` timestamp NULL DEFAULT NULL,
  `clicked_get_started_4` tinyint(1) DEFAULT NULL,
  `clicked_get_started_4_at` timestamp NULL DEFAULT NULL,
  `submitted_information` tinyint(1) DEFAULT NULL,
  `submitted_information_at` timestamp NULL DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `sent_notification_id` varchar(255) DEFAULT NULL,
  `not_sent_reason` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `channel_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `premium_notifications_idx_on_user_id_and_post_id` (`target_user_id`,`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_psychiatrists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `bio` text,
  `pronouns` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `accepts_insurance` tinyint NOT NULL DEFAULT '0',
  `is_accepting_new_appointments` tinyint NOT NULL DEFAULT '0',
  `is_accepting_in_person_appointments` tinyint NOT NULL DEFAULT '0',
  `is_accepting_virtual_appointments` tinyint NOT NULL DEFAULT '0',
  `specializations` json DEFAULT NULL,
  `patients_seen` json DEFAULT NULL,
  `languages_spoken` json DEFAULT NULL,
  `education` json DEFAULT NULL,
  `is_profile_live` tinyint NOT NULL DEFAULT '0',
  `website_url` varchar(255) DEFAULT NULL,
  `us_licensed_states` json DEFAULT NULL,
  `canadian_licensed_provinces` json DEFAULT NULL,
  `other_licensed_countries` json DEFAULT NULL,
  `accepted_insurances` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_psychiatrists_contact_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `psychiatrist_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `psychiatrist_id` (`psychiatrist_id`),
  CONSTRAINT `premium_psychiatrists_contact_details_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `premium_psychiatrists` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_quiz_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `data_version` varchar(255) DEFAULT NULL,
  `get_started` tinyint(1) DEFAULT NULL,
  `get_started_at` timestamp NULL DEFAULT NULL,
  `answer_1` varchar(255) DEFAULT NULL,
  `answer_1_at` timestamp NULL DEFAULT NULL,
  `answer_2` varchar(255) DEFAULT NULL,
  `answer_2_at` timestamp NULL DEFAULT NULL,
  `answer_3` varchar(255) DEFAULT NULL,
  `answer_3_at` timestamp NULL DEFAULT NULL,
  `answer_4` varchar(255) DEFAULT NULL,
  `answer_4_at` timestamp NULL DEFAULT NULL,
  `answer_5` varchar(255) DEFAULT NULL,
  `answer_5_at` timestamp NULL DEFAULT NULL,
  `answer_6` varchar(255) DEFAULT NULL,
  `answer_6_at` timestamp NULL DEFAULT NULL,
  `answer_7` varchar(255) DEFAULT NULL,
  `answer_7_at` timestamp NULL DEFAULT NULL,
  `answer_8` varchar(255) DEFAULT NULL,
  `answer_8_at` timestamp NULL DEFAULT NULL,
  `answer_9` varchar(255) DEFAULT NULL,
  `answer_9_at` timestamp NULL DEFAULT NULL,
  `answer_10` varchar(255) DEFAULT NULL,
  `answer_10_at` timestamp NULL DEFAULT NULL,
  `answer_11` varchar(255) DEFAULT NULL,
  `answer_11_at` timestamp NULL DEFAULT NULL,
  `answer_12` varchar(255) DEFAULT NULL,
  `answer_12_at` timestamp NULL DEFAULT NULL,
  `quiz_result_has_ocd` tinyint(1) DEFAULT NULL,
  `quiz_result_has_ocd_at` timestamp NULL DEFAULT NULL,
  `last_screen` varchar(255) DEFAULT NULL,
  `last_screen_seen_at` timestamp NULL DEFAULT NULL,
  `symptoms` varchar(2048) DEFAULT NULL,
  `symptoms_at` varchar(2048) DEFAULT NULL,
  `submitted_information` tinyint(1) DEFAULT NULL,
  `submitted_information_at` timestamp NULL DEFAULT NULL,
  `closed_screen` varchar(255) DEFAULT NULL,
  `closed_screen_at` timestamp NULL DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL,
  `rcd_email` varchar(255) DEFAULT NULL,
  `member_advocate_email` varchar(255) DEFAULT NULL,
  `accepting_trial_advocate_chat_channels` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_sponsored_eligibility` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_state_eligibility_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `not_in_us` tinyint(1) DEFAULT NULL,
  `older_than_18` tinyint(1) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(32) NOT NULL,
  `state_abbr` varchar(2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `age_barrier` enum('adults','adults + adolescents') NOT NULL DEFAULT 'adults',
  `clinician_priority` int NOT NULL DEFAULT '51',
  `premium_country_id` int DEFAULT '5',
  `medicare_medicaid` tinyint DEFAULT NULL,
  `rcm_region` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`),
  KEY `fk_country` (`premium_country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`premium_country_id`) REFERENCES `premium_country` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_submission_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `above18` varchar(255) DEFAULT NULL,
  `createdAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `premium_subscriber_view` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `yob`,
 1 AS `state`,
 1 AS `insurance`,
 1 AS `selected_clinician_user_id`,
 1 AS `assigned_clinician_user_id`,
 1 AS `customer_id`,
 1 AS `subscription_id`,
 1 AS `created_at`,
 1 AS `status`,
 1 AS `stripe_created`,
 1 AS `billing_cycle_anchor`,
 1 AS `current_period_start`,
 1 AS `current_period_end`,
 1 AS `cancel_at_period_end`,
 1 AS `ended_at`,
 1 AS `stripe_updated_at`,
 1 AS `coupon_id`,
 1 AS `cancel_reason`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_user_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_user_tags` (
  `user_id` int NOT NULL,
  `tag` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`,`tag`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` varchar(54) DEFAULT NULL,
  `session_id` varchar(54) DEFAULT NULL,
  `user_id` int NOT NULL,
  `intake_call_id` int DEFAULT NULL,
  `sponsored` tinyint(1) NOT NULL DEFAULT '0',
  `saw_premium_screen_at` timestamp NULL DEFAULT NULL,
  `intake_clinician_user_id` int DEFAULT NULL,
  `intake_phase` tinyint(1) DEFAULT NULL,
  `onboarding_screen_with_chat_selection` varchar(92) DEFAULT NULL,
  `show_get_started` tinyint(1) DEFAULT '0',
  `clicked_get_started` tinyint(1) NOT NULL DEFAULT '0',
  `clicked_get_started_at` timestamp NULL DEFAULT NULL,
  `entered_motivations` tinyint(1) DEFAULT NULL,
  `entered_motivations_at` timestamp NULL DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `entered_dob_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(77) DEFAULT NULL,
  `last_name` varchar(53) DEFAULT NULL,
  `responsible_party_first_name` varchar(14) DEFAULT NULL,
  `responsible_party_last_name` varchar(18) DEFAULT NULL,
  `entered_name_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(99) DEFAULT NULL,
  `phone_cleaned` varchar(99) GENERATED ALWAYS AS (regexp_replace(`phone`,_utf8mb4'[^0-9]',_utf8mb4'')) STORED,
  `phone_cleaned_reversed` varchar(99) GENERATED ALWAYS AS (reverse(`phone_cleaned`)) STORED,
  `state` varchar(38) DEFAULT NULL,
  `entered_state_at` timestamp NULL DEFAULT NULL,
  `insurance` varchar(92) DEFAULT NULL,
  `entered_insurance_at` timestamp NULL DEFAULT NULL,
  `selected_clinician_user_id` int DEFAULT NULL,
  `selected_clinician_at` timestamp NULL DEFAULT NULL,
  `agreed_to_premium_policy` tinyint(1) DEFAULT NULL,
  `agreed_to_premium_policy_at` timestamp NULL DEFAULT NULL,
  `sent_first_demo_message` tinyint(1) DEFAULT NULL,
  `sent_first_demo_message_at` timestamp NULL DEFAULT NULL,
  `seen_payments_screen` tinyint(1) DEFAULT NULL,
  `seen_payments_screen_at` timestamp NULL DEFAULT NULL,
  `last_scheduled_informational_session_appointment_id` int DEFAULT NULL,
  `last_completed_informational_session_appointment_id` int DEFAULT NULL,
  `last_scheduled_informational_session_at` timestamp NULL DEFAULT NULL,
  `failed_to_convert_informational_session` tinyint(1) DEFAULT '0',
  `failed_to_convert_informational_session_at` timestamp NULL DEFAULT NULL,
  `wants_clinical_consultation` tinyint(1) DEFAULT NULL,
  `wants_clinical_consultation_at` timestamp NULL DEFAULT NULL,
  `completed_clinical_consultation` tinyint(1) DEFAULT NULL,
  `completed_clinical_consultation_at` timestamp NULL DEFAULT NULL,
  `wants_therapy` tinyint(1) DEFAULT NULL,
  `wants_therapy_at` timestamp NULL DEFAULT NULL,
  `completed_therapy` tinyint(1) DEFAULT NULL,
  `completed_therapy_at` timestamp NULL DEFAULT NULL,
  `clinical_consultation_promo_code_id` varchar(11) DEFAULT NULL,
  `therapy_promo_code_id` varchar(11) DEFAULT NULL,
  `assigned_clinician_user_id` int DEFAULT NULL,
  `customer_id` varchar(32) DEFAULT NULL,
  `subscription_id` varchar(27) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `send_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `discussion_loop_open` tinyint(1) DEFAULT '0',
  `discussion_loop_opened_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `first_subscribed` tinyint(1) DEFAULT NULL,
  `first_subscribed_at` timestamp NULL DEFAULT NULL,
  `onboarding_show_products` tinyint(1) DEFAULT NULL,
  `seen_products_offering_screen` tinyint(1) DEFAULT NULL,
  `seen_products_offering_screen_at` timestamp NULL DEFAULT NULL,
  `seen_consultation_product_screen` tinyint(1) DEFAULT NULL,
  `seen_consultation_product_screen_at` timestamp NULL DEFAULT NULL,
  `seen_therapy_product_screen` tinyint(1) DEFAULT NULL,
  `seen_therapy_product_screen_at` timestamp NULL DEFAULT NULL,
  `seen_support_product_screen` tinyint(1) DEFAULT NULL,
  `seen_support_product_screen_at` timestamp NULL DEFAULT NULL,
  `sent_first_live_message` tinyint(1) DEFAULT NULL,
  `sent_first_live_message_at` timestamp NULL DEFAULT NULL,
  `internal_user` tinyint(1) DEFAULT '0',
  `hidden_user` tinyint(1) DEFAULT '0',
  `ab_test_show_paywall` tinyint(1) DEFAULT NULL,
  `ab_test_intake_workflow` tinyint(1) DEFAULT NULL,
  `ab_test_onboarding_screen_with_chats` tinyint(1) DEFAULT NULL,
  `inserted_scheduling_intake_steps` tinyint(1) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `had_assigned_clinician` tinyint(1) DEFAULT '0',
  `active_subscription` tinyint(1) DEFAULT '0',
  `current_service` varchar(23) DEFAULT NULL,
  `quick_note` varchar(255) DEFAULT '',
  `is_test_user` tinyint(1) DEFAULT '0',
  `per_session_price` varchar(3) DEFAULT '',
  `billing_notes` text,
  `data_entry_needs_audit` tinyint(1) DEFAULT NULL,
  `data_entry_notes` varchar(255) DEFAULT NULL,
  `protocol_type` varchar(15) DEFAULT NULL,
  `session_length` varchar(12) DEFAULT NULL,
  `discharge_reason` varchar(255) DEFAULT NULL,
  `diagnostic_date` datetime DEFAULT NULL,
  `diagnostic_at` timestamp NULL DEFAULT NULL,
  `diagnostic_timezone` varchar(45) DEFAULT NULL,
  `diagnostic_status` varchar(14) DEFAULT NULL,
  `external_id` int DEFAULT NULL,
  `diagnosed_with_ocd` tinyint(1) DEFAULT NULL,
  `eligible_for_nocd_therapy` tinyint(1) DEFAULT NULL,
  `clinician_push_disabled` tinyint(1) DEFAULT NULL,
  `age_range` varchar(255) DEFAULT NULL,
  `snooze_clinician_notifications` tinyint(1) DEFAULT NULL,
  `insurance_id` int DEFAULT NULL,
  `how_did_you_hear_about_nocd` text,
  `app_user` tinyint(1) DEFAULT NULL,
  `how_do_you_like_the_nocd_app` text,
  `what_prompted_you_to_reach_out_for_therapy_now` text,
  `therapy_best_describes_you` text,
  `therapy_type_cbt` tinyint(1) DEFAULT NULL,
  `therapy_type_erp` tinyint(1) DEFAULT NULL,
  `therapy_type_act` tinyint(1) DEFAULT NULL,
  `therapy_type_other` tinyint(1) DEFAULT NULL,
  `notes` text,
  `insurance_provider` varchar(92) DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `insurance_notes` text,
  `school` varchar(102) DEFAULT NULL,
  `billing_additional_notes` text,
  `rp_first_name` varchar(87) DEFAULT NULL,
  `rp_last_name` varchar(30) DEFAULT NULL,
  `rp_relation` varchar(72) DEFAULT NULL,
  `rp_phone` varchar(83) DEFAULT NULL,
  `rp_email` varchar(92) DEFAULT NULL,
  `emergency_name` varchar(107) DEFAULT NULL,
  `emergency_relation` varchar(255) DEFAULT NULL,
  `emergency_phone` varchar(87) DEFAULT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `responsible_party_relation_to_patient` varchar(255) DEFAULT NULL,
  `clinician_signed` tinyint(1) DEFAULT NULL,
  `clinician_signed_email` varchar(255) DEFAULT NULL,
  `email_optin` tinyint(1) DEFAULT NULL,
  `text_optin` tinyint(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(83) DEFAULT NULL,
  `zipcode` varchar(50) DEFAULT NULL,
  `rp_name` varchar(96) DEFAULT NULL,
  `emergency_email` varchar(86) DEFAULT NULL,
  `notification_preferences_json` json DEFAULT NULL,
  `billing_plan` varchar(14) DEFAULT NULL,
  `billing_contact_name` varchar(71) DEFAULT NULL,
  `billing_contact_email` varchar(255) DEFAULT NULL,
  `billing_contact_phone` varchar(72) DEFAULT NULL,
  `billing_contact_relation_to_patient` varchar(54) DEFAULT NULL,
  `billing_cash_pay_payment_terms` varchar(14) DEFAULT NULL,
  `billing_cash_pay_payment_plan` varchar(23) DEFAULT NULL,
  `billing_cash_pay_90_min` varchar(9) DEFAULT NULL,
  `billing_cash_pay_60_min` varchar(9) DEFAULT NULL,
  `billing_cash_pay_45_min` varchar(11) DEFAULT NULL,
  `billing_cash_pay_30_min` varchar(9) DEFAULT NULL,
  `billing_cash_pay_special_payment_terms` text,
  `billing_ins_carrier` varchar(45) DEFAULT NULL,
  `billing_ins_plan_type` varchar(108) DEFAULT NULL,
  `billing_ins_group_number` varchar(71) DEFAULT NULL,
  `billing_ins_sub_first_name` varchar(54) DEFAULT NULL,
  `billing_ins_sub_last_name` varchar(54) DEFAULT NULL,
  `billing_ins_sub_dob` varchar(36) DEFAULT NULL,
  `billing_ins_sub_member_id` varchar(54) DEFAULT NULL,
  `billing_ins_sub_relation_to_patient` varchar(29) DEFAULT NULL,
  `billing_ins_coverage` text,
  `billing_verified_at` timestamp NULL DEFAULT NULL,
  `billing_verified_by` text,
  `billing_ins_dependent_first_name` varchar(48) DEFAULT NULL,
  `billing_ins_dependent_last_name` varchar(32) DEFAULT NULL,
  `billing_ins_dependent_dob` text,
  `notify_pref_method_email` tinyint(1) DEFAULT '1',
  `notify_pref_method_sms` tinyint(1) DEFAULT '1',
  `notify_pref_method_push` tinyint(1) DEFAULT '1',
  `notify_pref_freq_48hr` tinyint(1) DEFAULT '1',
  `notify_pref_freq_24hr` tinyint(1) DEFAULT '1',
  `notify_pref_freq_1hr` tinyint(1) DEFAULT '1',
  `amd_backfill_chart_id` int DEFAULT NULL,
  `summary_private_notes_global` text,
  `therapy_session_count_start` int DEFAULT '1',
  `therapy_checkin_count_start` int DEFAULT '1',
  `billing_verification_status` varchar(108) DEFAULT 'Not Verified',
  `billing_paused_states` enum('Not Paused','First Attempt','Second Attempt','Third Attempt','Sent to Collections','Persistent CC Issues','Non Payment') NOT NULL DEFAULT 'Not Paused',
  `billing_version` varchar(15) DEFAULT 'legacy',
  `superbill_support` varchar(20) DEFAULT 'no_superbills',
  `billing_owner` varchar(64) DEFAULT NULL,
  `auto_billing_status` enum('autobill','do_not_autobill') DEFAULT 'autobill',
  `auto_bill_timer` timestamp NULL DEFAULT NULL,
  `billing_ins_sub_gender` varchar(2) DEFAULT NULL,
  `billing_ins_dependent_gender` varchar(2) DEFAULT NULL,
  `billing_ins_deductible_cents` int DEFAULT NULL,
  `billing_ins_copay_cents` int DEFAULT NULL,
  `billing_ins_prior_auth` varchar(96) DEFAULT NULL,
  `billing_ins_coinsurance_cents` int DEFAULT NULL,
  `how_did_you_hear_about_nocd_v2` json DEFAULT NULL,
  `peer_advisor_email` varchar(47) DEFAULT NULL,
  `country_code` varchar(3) DEFAULT NULL,
  `do_not_book` tinyint(1) DEFAULT NULL,
  `billing_additional_info` varchar(65) DEFAULT NULL,
  `drop_off` tinyint(1) DEFAULT NULL,
  `drop_off_reasons` json DEFAULT NULL,
  `prevented_drop_off_reasons` json DEFAULT NULL,
  `care_team_flag` tinyint(1) DEFAULT NULL,
  `care_team_flag_reason` text,
  `drop_off_reviewed` tinyint(1) DEFAULT NULL,
  `apero_patient_id` varchar(26) DEFAULT NULL,
  `apero_insurance_id` varchar(27) DEFAULT NULL,
  `welcome_outreach_sent` tinyint(1) DEFAULT NULL,
  `default_currency` varchar(5) DEFAULT 'USD',
  `billing_superbill_enabled` tinyint NOT NULL DEFAULT '0',
  `preferred_name` text,
  `clinical_scratchpad` text,
  `kudos_survey_sent` tinyint(1) DEFAULT NULL,
  `zocdoc_patient` tinyint(1) DEFAULT NULL,
  `therapist_preferences` json DEFAULT NULL,
  `pronouns` text,
  `form_automation_active` tinyint DEFAULT '0',
  `form_automation_create_at` timestamp(6) NULL DEFAULT NULL,
  `form_automation_initialized` tinyint DEFAULT '0',
  `form_automation_initialized_by` text,
  `form_automation_initialized_at` timestamp(6) NULL DEFAULT NULL,
  `form_automation_user_form_settings_authorized_by` text,
  `form_automation_user_form_settings_authorized_at` timestamp(6) NULL DEFAULT NULL,
  `form_automation_paused_by` text,
  `form_automation_paused_at` timestamp(6) NULL DEFAULT NULL,
  `billing_paused_states_note` text,
  `billing_paused_states_clinician_internal_note` text,
  `billing_paused_states_member_note` text,
  `is_self_scheduling_enabled` tinyint(1) DEFAULT '1',
  `authorizer` text,
  `sca_status` varchar(62) DEFAULT NULL,
  `optin_anon_research` varchar(15) DEFAULT 'auto_optin',
  `eligible_for_transfer` tinyint(1) DEFAULT NULL,
  `opted_in_to_marketing_sms` tinyint DEFAULT NULL,
  `form_automation_frequency` int DEFAULT '21',
  `show_payment_plan_member_portal` tinyint(1) DEFAULT '0',
  `insurance_card_upload_status` enum('cash_only','requested_insurance_cards','insurance_card_uploaded','insurance_rejected','insurance_verified') DEFAULT NULL,
  `balance_status` enum('okay','warn','error') DEFAULT 'okay',
  `balance_status_updated_at` timestamp NULL DEFAULT NULL,
  `fears_and_responses_enabled` tinyint(1) DEFAULT '0',
  `credit_card_status` enum('okay','failure_1','invalid') DEFAULT 'okay',
  `credit_card_status_updated_at` timestamp NULL DEFAULT NULL,
  `balance_status_enabled` tinyint(1) DEFAULT '1',
  `can_transfer_therapist` tinyint(1) DEFAULT '1',
  `can_schedule_session` tinyint(1) DEFAULT '1',
  `can_reschedule_session` tinyint(1) DEFAULT '1',
  `can_cancel_session` tinyint(1) DEFAULT NULL,
  `has_kp_referral` tinyint(1) NOT NULL DEFAULT '0',
  `member_preferred_first_name` varchar(92) GENERATED ALWAYS AS (if(((`preferred_name` is null) or (trim(`preferred_name`) = _utf8mb4'')),`first_name`,trim(`preferred_name`))) STORED,
  `responsible_party_preferred_first_name` varchar(95) GENERATED ALWAYS AS (if(((`rp_name` is null) or (trim(`rp_name`) = _utf8mb4'')),`first_name`,trim(`rp_name`))) STORED,
  `mr_notif_ts` timestamp NULL DEFAULT NULL,
  `member_advocate_region` int DEFAULT NULL,
  `message_reminder_notif_ts` timestamp NULL DEFAULT NULL,
  `bill_late_cancels` tinyint(1) DEFAULT '1',
  `billing_flag_override` tinyint(1) NOT NULL DEFAULT '0',
  `billing_flag_override_timer` timestamp(6) NULL DEFAULT NULL,
  `member_balance_restrictions` enum('no_restriction','medicaid','medicare') DEFAULT 'no_restriction',
  `auto_charging_insurance_mr` enum('autocharge','do_not_autocharge') DEFAULT NULL,
  `show_enroll_in_auto_charging_insurance_mr` tinyint(1) DEFAULT NULL,
  `is_nocd_staff` tinyint DEFAULT '0',
  `is_nocd_alumni` tinyint(1) DEFAULT NULL,
  `alumni_start_date` date DEFAULT NULL,
  `billing_paused_states_last_updated_at` timestamp(6) NULL DEFAULT NULL,
  `second_address` varchar(114) DEFAULT NULL,
  `second_address_city` varchar(35) DEFAULT NULL,
  `second_address_zipcode` varchar(35) DEFAULT NULL,
  `specialties_json` json DEFAULT NULL,
  `book_appointment_disabled` enum('no_restriction','disabled_by_billing') DEFAULT 'no_restriction',
  `account_type` enum('member_admin','admin','member') NOT NULL DEFAULT 'member',
  `member_availability_json` json DEFAULT NULL,
  `current_scheduling_frequency` text,
  `bill_ptsd_as_cash` tinyint(1) DEFAULT NULL,
  `is_referred_to_hloc_therapy` tinyint(1) DEFAULT '0',
  `using_medicaid_or_medicare` tinyint DEFAULT NULL,
  `show_therapy_milestone_announcement_flow` tinyint(1) DEFAULT '0',
  `parents_living_status` varchar(125) DEFAULT NULL,
  `gov_healthcare_program` varchar(32) DEFAULT NULL,
  `has_shared_custody` varchar(25) DEFAULT NULL,
  `country_other` text,
  `scheduling_preferences` json DEFAULT NULL,
  `new_insurance_card_upload_pending` tinyint(1) DEFAULT '0',
  `required_therapist_gender` varchar(50) DEFAULT 'No preference',
  `required_therapist` varchar(100) DEFAULT NULL,
  `clinical_reviewed_scheduling_frequency` varchar(64) DEFAULT NULL,
  `clinical_reviewed_scheduling_frequency_updated_at` timestamp NULL DEFAULT NULL,
  `clinical_reviewed_scheduling_frequency_updated_by` varchar(100) DEFAULT NULL,
  `bulk_scheduling_guidance` varchar(64) DEFAULT NULL,
  `member_adherence_expectation` varchar(125) DEFAULT NULL,
  `member_adherence_expectation_details` text,
  `compatibility_rate_with_member` varchar(125) DEFAULT NULL,
  `compatibility_rate_with_member_details` text,
  `pause_discharge_flow_until` timestamp NULL DEFAULT NULL,
  `scheduling_preferences_dow` json DEFAULT NULL,
  `clinical_reviewed_scheduling_frequency_reason` varchar(255) DEFAULT NULL,
  `month_day` varchar(5) GENERATED ALWAYS AS (date_format(`dob`,_utf8mb4'%m-%d')) STORED,
  `hospitalized_recently` enum('Yes','No') DEFAULT NULL,
  `followup_care_recently` enum('Yes','No') DEFAULT NULL,
  `intent_self_harm_recently` enum('Yes','No') DEFAULT NULL,
  `current_intent_self_harm` enum('Yes','No') DEFAULT NULL,
  `hospital_discharge_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `amd_backfill_chart_id` (`amd_backfill_chart_id`),
  KEY `assigned_clinician_and_user_id` (`assigned_clinician_user_id`,`user_id`),
  KEY `billing_paused_states` (`billing_paused_states`),
  KEY `billing_verification_status` (`billing_verification_status`),
  KEY `customer_id` (`customer_id`),
  KEY `member_advocate_region` (`member_advocate_region`),
  KEY `phone_cleaned_user_id_idx` (`phone_cleaned`,`user_id`),
  KEY `phone_cleaned_reversed_user_id_idx` (`phone_cleaned_reversed`,`user_id`),
  KEY `month_day` (`month_day`),
  CONSTRAINT `premium_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `premium_users_ibfk_2` FOREIGN KEY (`member_advocate_region`) REFERENCES `premium_region` (`id`),
  CONSTRAINT `diagnostic_timezone_check` CHECK ((`diagnostic_timezone` <> _utf8mb4'Pacific/Kanton'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_amd_backfill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chart_id` int NOT NULL,
  `user_id` int NOT NULL,
  `mapping_type` varchar(255) DEFAULT NULL,
  `amd_patient_email` varchar(255) DEFAULT NULL,
  `amd_patient_name` varchar(255) DEFAULT NULL,
  `amd_patient_provider` varchar(255) DEFAULT NULL,
  `retool_patient_email` varchar(255) DEFAULT NULL,
  `retool_patient_name` varchar(255) DEFAULT NULL,
  `retool_patient_provider` varchar(255) DEFAULT NULL,
  `backfilled_pdf` varchar(255) DEFAULT NULL,
  `backfilled_demographics` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `chart_id` (`chart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4365 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_amd_backfill_ignored_charts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chart_id` int NOT NULL,
  `amd_patient_email` varchar(255) DEFAULT NULL,
  `amd_patient_name` varchar(255) DEFAULT NULL,
  `amd_patient_provider` varchar(255) DEFAULT NULL,
  `ignored_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chart_id` (`chart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_balance_status_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `new_status` enum('okay','warn','error') NOT NULL,
  `reason_for_status_change` text,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_billing_detector` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `card_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) NOT NULL,
  `stripe_pm_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_change_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `column_updated` varchar(255) NOT NULL,
  `old_varchar_value` varchar(255) DEFAULT NULL,
  `new_varchar_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_credit_card_status_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `new_status` enum('okay','failure_1','invalid') NOT NULL,
  `reason_for_status_change` text,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_flags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `flag_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `flag_metadata` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_id_flag_name` (`user_id`,`flag_name`),
  KEY `user_id_idx` (`user_id`),
  KEY `flag_name` (`flag_name`),
  CONSTRAINT `premium_users_flags_ibfk_1` FOREIGN KEY (`flag_name`) REFERENCES `premium_flags` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_users_notifications_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email_json` json DEFAULT (json_object()),
  `sms_json` json DEFAULT (json_object()),
  `push_json` json DEFAULT (json_object()),
  `therapist_in_app_json` json DEFAULT (json_object()),
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `premium_users_view` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `clicked_get_started`,
 1 AS `yob`,
 1 AS `state`,
 1 AS `insurance`,
 1 AS `selected_clinician_user_id`,
 1 AS `assigned_clinician_user_id`,
 1 AS `customer_id`,
 1 AS `subscription_id`,
 1 AS `send_notifications`,
 1 AS `discussion_loop_open`,
 1 AS `discussion_loop_opened_at`,
 1 AS `first_subscribed_at`,
 1 AS `internal_user`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premium_waitlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `insurance` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=970 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `limit_type` varchar(255) NOT NULL,
  `promo_type` varchar(255) NOT NULL,
  `duration_days` int DEFAULT NULL,
  `appointment_count` int DEFAULT NULL,
  `currency` char(3) NOT NULL,
  `discounted_rate_90min_cents` int DEFAULT NULL,
  `discounted_rate_60min_cents` int DEFAULT NULL,
  `discounted_rate_45min_cents` int DEFAULT NULL,
  `discounted_rate_30min_cents` int DEFAULT NULL,
  `discount_percentage` int DEFAULT NULL,
  `nocd_credit_cents` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `archived_at` varchar(255) DEFAULT NULL,
  `archived_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_credentialing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `premium_clinicians_email` varchar(64) DEFAULT NULL,
  `provider_type` enum('supervisor_as_rendering','independently_licensed') DEFAULT NULL,
  `credentialing_status` varchar(64) DEFAULT 'Not Started',
  `credentialing_live_date` timestamp NULL DEFAULT NULL,
  `follow_up` tinyint(1) DEFAULT NULL,
  `follow_up_date` timestamp NULL DEFAULT NULL,
  `additional_comments` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `plan_manager` varchar(255) NOT NULL,
  `credentialing_terminated_date` timestamp NULL DEFAULT NULL,
  `disabled_for_booking` tinyint(1) DEFAULT '0',
  `status_updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `healthcare_plan_notified_date` timestamp NULL DEFAULT NULL,
  `projected_in_network_date` timestamp NULL DEFAULT NULL,
  `application_in_process_date` timestamp NULL DEFAULT NULL,
  `waiting_for_provider_documentation_date` timestamp NULL DEFAULT NULL,
  `initial_submission_date` timestamp NULL DEFAULT NULL,
  `resubmission_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`,`plan_manager`,`premium_clinicians_email`),
  KEY `premium_clinicians_email` (`premium_clinicians_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_credentialing_insurance_managers` (
  `insurance_plan` varchar(255) NOT NULL,
  `insurance_manager` varchar(255) NOT NULL,
  `is_national` tinyint(1) DEFAULT NULL,
  `plan_information_link` varchar(255) DEFAULT NULL,
  `provider_forms_1` varchar(255) DEFAULT NULL,
  `provider_forms_2` varchar(255) DEFAULT NULL,
  `provider_forms_3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`insurance_plan`,`insurance_manager`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_credentialing_state_insurance_managers` (
  `state` varchar(50) NOT NULL,
  `state_manager` varchar(255) NOT NULL,
  PRIMARY KEY (`state`,`state_manager`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_credentialing_status_history` (
  `id` int NOT NULL,
  `version` int NOT NULL AUTO_INCREMENT,
  `premium_clinicians_email` varchar(255) DEFAULT NULL,
  `credentialing_status` varchar(64) DEFAULT 'Not Started',
  `state` varchar(255) DEFAULT NULL,
  `plan_manager` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`version`),
  KEY `version` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_credentialing_status_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_credentialing_id` varchar(64) DEFAULT NULL,
  `updated_status` varchar(64) DEFAULT NULL,
  `previous_status` varchar(64) DEFAULT NULL,
  `premium_clinicians_email` varchar(64) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `plan_manager` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `provider_credentialing_id` (`provider_credentialing_id`,`updated_status`,`previous_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider_onboarding` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(64) NOT NULL,
  `selected_option` varchar(255) DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `states_licensed_in` json DEFAULT NULL,
  `health_plans_already_credentialed_with` varchar(255) DEFAULT NULL,
  `graduate_degree_received_from` varchar(255) DEFAULT NULL,
  `option_1_username` varchar(225) DEFAULT NULL,
  `option_1_password` varchar(225) DEFAULT NULL,
  `option_1_checklist` varchar(225) DEFAULT NULL,
  `option_2_caqh_number` varchar(225) DEFAULT NULL,
  `option_2_npi_number` varchar(225) DEFAULT NULL,
  `option_2_phonenumber` varchar(225) DEFAULT NULL,
  `option_2_medicare_number` varchar(225) DEFAULT NULL,
  `option_2_medicaid_number` varchar(225) DEFAULT NULL,
  `option_2_specialty` varchar(225) DEFAULT NULL,
  `option_2_dob` varchar(225) DEFAULT NULL,
  `option_2_checklist` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q1` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q2` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q3` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q4` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q5` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q6` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q7` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q8` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q9` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q10` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q11` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q12` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q13` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q14` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q15` varchar(225) DEFAULT NULL,
  `option_2_disclosure_q16` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxied_page_visits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxy_collection_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request` json DEFAULT NULL,
  `notes` text,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxy_healthcheck` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `sha` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxy_path_patterns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `src_host` varchar(255) DEFAULT NULL,
  `dest_host` varchar(255) DEFAULT NULL,
  `regex` varchar(255) NOT NULL,
  `shape` varchar(255) NOT NULL,
  `logging` enum('FULL','MINIMAL','NONE') DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `prefix_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `src_host` (`src_host`,`regex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxy_traffic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `src_host` varchar(255) DEFAULT NULL,
  `dest_host` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`src_host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pto_allotment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) DEFAULT NULL,
  `credit_day` date DEFAULT NULL,
  `pto_credit_mins` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_reason` varchar(255) DEFAULT NULL,
  `do_not_resync` tinyint(1) DEFAULT NULL,
  `do_not_resync_reason` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `leave_type` enum('PTO','Holiday','Bereavement','Jury Duty','Unpaid','Adhoc') DEFAULT NULL,
  `leave_request_id` int DEFAULT NULL,
  `week` date GENERATED ALWAYS AS ((case when (dayofweek(`credit_day`) = 1) then `credit_day` else (`credit_day` - interval (dayofweek(`credit_day`) - 1) day) end)) STORED,
  PRIMARY KEY (`id`),
  KEY `clinician_date` (`clinician_email`,`credit_day`),
  KEY `date_clinician` (`credit_day`,`clinician_email`),
  KEY `fk_leave_request_id` (`leave_request_id`),
  KEY `week` (`week`,`leave_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pto_analytics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `week` date DEFAULT NULL,
  `pto_hours` float DEFAULT NULL,
  `non_pto_hours` float DEFAULT NULL,
  `pct_pto` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pto_grants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) DEFAULT NULL,
  `year` date DEFAULT NULL,
  `pto_grant_mins` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `leave_type` enum('PTO','Holiday','Bereavement','Jury Duty','Unpaid','Adhoc') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pure_psychiatry_interest_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `other_services` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `call_preference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_expo_id` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_user_id` int NOT NULL,
  `expo_push_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `platform` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_user_id` (`clinician_user_id`,`platform`)
) ENGINE=InnoDB AUTO_INCREMENT=84275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `query_audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `executed_by` varchar(255) NOT NULL,
  `database_name` varchar(255) NOT NULL,
  `command_type` varchar(255) NOT NULL,
  `execution_time` int NOT NULL,
  `query_state` varchar(255) NOT NULL,
  `query_details` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `query_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quilt_configuration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratelimits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `country` varchar(16) DEFAULT NULL,
  `state` varchar(16) DEFAULT NULL,
  `limit_reason` varchar(255) NOT NULL,
  `start_date` timestamp(6) NOT NULL,
  `end_date` timestamp(6) NOT NULL,
  `num_days` int NOT NULL,
  `restrict_new_posts` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`start_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rcm_team_management` (
  `email` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `rcm_region` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `archived_at` timestamp NULL DEFAULT NULL,
  `last_assigned_freshdesk` tinyint(1) NOT NULL DEFAULT '0',
  `last_assigned_eligibility` tinyint(1) NOT NULL DEFAULT '0',
  `last_assigned_apero_task` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referral_call_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `note_content` text,
  `author` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `external_provider_referral_id` int DEFAULT NULL,
  `talkiatry_referral_id` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `kaiser_referral_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_external_provider` (`external_provider_referral_id`),
  KEY `idx_talkiatry` (`talkiatry_referral_id`),
  KEY `kaiser_referral_id` (`kaiser_referral_id`),
  CONSTRAINT `referral_call_notes_ibfk_1` FOREIGN KEY (`external_provider_referral_id`) REFERENCES `external_provider_referrals` (`id`),
  CONSTRAINT `referral_call_notes_ibfk_2` FOREIGN KEY (`talkiatry_referral_id`) REFERENCES `talkiatry_referrals` (`id`),
  CONSTRAINT `referral_call_notes_ibfk_3` FOREIGN KEY (`kaiser_referral_id`) REFERENCES `member_insurance_authorizations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_check` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `refund_amount` int NOT NULL,
  `payee` varchar(255) NOT NULL,
  `check_number` int NOT NULL,
  `account_number` int DEFAULT NULL,
  `routing_number` int DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_line_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `refund_check_id` int NOT NULL,
  `member_charges_id` int NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replication_monitor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reset_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `metadata` json DEFAULT NULL,
  `activated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reset_token` (`reset_token`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resolve_clinician_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `task_type` varchar(255) NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `resolved_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `clinician_email` (`clinician_email`),
  KEY `idx_task_type` (`task_type`),
  CONSTRAINT `resolve_clinician_tasks_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_prevention` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `content` text NOT NULL,
  `entity_id` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_response_prevention_on_user_id_entity_id` (`user_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response_prevention_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obsessionID` varchar(64) DEFAULT NULL,
  `triggerID` varchar(64) DEFAULT NULL,
  `userID` int NOT NULL,
  `header` varchar(255) DEFAULT '',
  `title` mediumtext,
  `order` int NOT NULL,
  `hiddenStatus` tinyint(1) NOT NULL,
  `entityID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_response_prevention_message_on_user_id_entity_id` (`userID`,`entityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retention_analysis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_name` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `period_number` int NOT NULL,
  `discharge_id` int NOT NULL,
  `predicted_category` varchar(255) DEFAULT NULL,
  `predicted_sub_category` varchar(255) DEFAULT NULL,
  `predicted_reason` text,
  `predicted_alternative_care` text,
  `summary` text,
  `trace_id` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `request_name` (`request_name`,`user_id`),
  KEY `request_name_2` (`request_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retention_per_user_and_month` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `period_start` datetime NOT NULL,
  `period_end` datetime NOT NULL,
  `period_number` int NOT NULL,
  `retained` tinyint(1) NOT NULL,
  `first_session_date` datetime NOT NULL,
  `last_session_date` datetime NOT NULL,
  `session_count` int NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`period_number`),
  KEY `idx_retention_per_user` (`user_id`,`first_session_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retool_users_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_email` (`user_email`),
  KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returning_member_acknowledgements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `returning_member_acknowledgements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `returning_member_acknowledgements_ibfk_2` FOREIGN KEY (`member_appointments_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revenue_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_id` int NOT NULL,
  `member_invoices_id` int NOT NULL,
  `user_id` int NOT NULL,
  `amount` int DEFAULT NULL,
  `note` text,
  `event_category` enum('automatic_invoice_recognition','automatic_invoice_unrecognition','manual_adjustment') DEFAULT NULL,
  `event_subcategory` varchar(255) DEFAULT NULL,
  `ledger_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `locked_status` enum('open','locked') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `metadata` json DEFAULT NULL /*!80023 INVISIBLE */,
  PRIMARY KEY (`id`),
  KEY `member_invoices_id` (`member_invoices_id`),
  KEY `user_id` (`user_id`),
  KEY `ma_id` (`ma_id`),
  CONSTRAINT `revenue_ledger_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `revenue_ledger_ibfk_2` FOREIGN KEY (`ma_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rippling_employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `employee_id` varchar(128) NOT NULL,
  `preferredFirstName` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`employee`,_utf8mb4'$.preferredFirstName'))) STORED,
  `workEmail` varchar(255) GENERATED ALWAYS AS (if((json_unquote(json_extract(`employee`,_utf8mb4'$.workEmail')) = _utf8mb4'null'),NULL,json_unquote(json_extract(`employee`,_utf8mb4'$.workEmail')))) STORED,
  `employeeStartDate` date GENERATED ALWAYS AS (if((json_unquote(json_extract(`employee`,_utf8mb4'$.startDate')) = _utf8mb4'null'),NULL,json_unquote(json_extract(`employee`,_utf8mb4'$.startDate')))) STORED,
  `employeeEndDate` date GENERATED ALWAYS AS (if((json_unquote(json_extract(`employee`,_utf8mb4'$.endDate')) = _utf8mb4'null'),NULL,json_unquote(json_extract(`employee`,_utf8mb4'$.endDate')))) STORED,
  `roleState` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`employee`,_utf8mb4'$.roleState'))) STORED,
  `hash` varchar(128) NOT NULL,
  `employee` json NOT NULL,
  `department` varchar(255) GENERATED ALWAYS AS (if((json_unquote(json_extract(`employee`,_utf8mb4'$.department')) = _utf8mb4'null'),NULL,json_unquote(json_extract(`employee`,_utf8mb4'$.department')))) STORED,
  `standard_weekly_hours` decimal(10,2) GENERATED ALWAYS AS (if((json_unquote(json_extract(`employee`,_utf8mb4'$.customFields."Standard Weekly Hours"')) = _utf8mb4'null'),NULL,json_unquote(json_extract(`employee`,_utf8mb4'$.customFields."Standard Weekly Hours"')))) STORED,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_hash` (`employee_id`),
  KEY `workEmail` (`workEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rippling_leave_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `leave_request_id` varchar(128) NOT NULL,
  `endDate` date GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.endDate'))) STORED,
  `endDateEndTime` varchar(255) GENERATED ALWAYS AS (if((json_unquote(json_extract(`leave_request`,_utf8mb4'$.endDateEndTime')) = _utf8mb4'null'),NULL,json_unquote(json_extract(`leave_request`,_utf8mb4'$.endDateEndTime')))) STORED,
  `status` varchar(128) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.status'))) STORED,
  `startDate` date GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.startDate'))) STORED,
  `startDateStartTime` varchar(255) GENERATED ALWAYS AS (if((json_unquote(json_extract(`leave_request`,_utf8mb4'$.startDateStartTime')) = _utf8mb4'null'),NULL,json_unquote(json_extract(`leave_request`,_utf8mb4'$.startDateStartTime')))) STORED,
  `requestedBy` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.requestedBy'))) STORED,
  `roleTimezone` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.roleTimezone'))) STORED,
  `role` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.role'))) STORED,
  `reasonForLeave` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.reasonForLeave'))) STORED,
  `processedBy` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.processedBy'))) STORED,
  `hash` varchar(128) NOT NULL,
  `leave_request` json NOT NULL,
  `computedStartUTC` timestamp GENERATED ALWAYS AS (ifnull(convert_tz(str_to_date(`startDateStartTime`,_utf8mb4'%Y-%m-%dT%H:%i:%s'),substr(`startDateStartTime`,-(6)),_utf8mb4'UTC'),convert_tz(`startDate`,`roleTimezone`,_utf8mb4'UTC'))) STORED NULL,
  `numMinutes` int GENERATED ALWAYS AS (cast(json_unquote(json_extract(`leave_request`,_utf8mb4'$.numMinutes')) as signed)) STORED,
  `computedEndUTC` timestamp GENERATED ALWAYS AS (ifnull(convert_tz(str_to_date(`endDateEndTime`,_utf8mb4'%Y-%m-%dT%H:%i:%s'),substr(`endDateEndTime`,-(6)),_utf8mb4'UTC'),ifnull(if(((`startDateStartTime` is not null) and (`endDate` = `startDate`)),convert_tz((str_to_date(`startDateStartTime`,_utf8mb4'%Y-%m-%dT%H:%i:%s') + interval `numMinutes` minute),substr(`startDateStartTime`,-(6)),_utf8mb4'UTC'),convert_tz((`endDate` + interval 1 day),`roleTimezone`,_utf8mb4'UTC')),convert_tz((`endDate` + interval 1 day),`roleTimezone`,_utf8mb4'UTC')))) STORED NULL,
  `leaveType` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.leaveType'))) STORED,
  `leavePolicy` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.leavePolicy'))) STORED,
  `policyDisplayName` varchar(255) GENERATED ALWAYS AS (json_unquote(json_extract(`leave_request`,_utf8mb4'$.policyDisplayName'))) STORED,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leave_request_hash` (`leave_request_id`),
  KEY `requestedBy` (`requestedBy`),
  KEY `requestedBy_2` (`requestedBy`,`computedStartUTC`),
  KEY `role` (`role`,`computedStartUTC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rippling_leave_requests_by_day` (
  `id` int NOT NULL AUTO_INCREMENT,
  `leave_request_id` varchar(128) DEFAULT NULL,
  `leave_request_date` date DEFAULT NULL,
  `smear_num_minutes` decimal(10,4) DEFAULT NULL,
  `rippling_status` varchar(128) DEFAULT NULL,
  `leave_reason` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `committed_hours` decimal(10,2) DEFAULT NULL,
  `credited_mins` decimal(10,4) GENERATED ALWAYS AS (((((`smear_num_minutes` / 60) * `committed_hours`) / `pto_accrual_divider`) * 60)) STORED,
  `pto_accrual_divider` int DEFAULT '40',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112315 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rippling_leave_requests_pto_hours` (
  `id` int NOT NULL AUTO_INCREMENT,
  `leave_request_id` varchar(128) DEFAULT NULL,
  `leave_request_date` date DEFAULT NULL,
  `raw_num_minutes` double DEFAULT NULL,
  `adjusted_num_minutes` double DEFAULT NULL,
  `rippling_status` varchar(128) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `leave_reason` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `adjusted_by` varchar(255) DEFAULT NULL,
  `adjustment_reason` varchar(255) DEFAULT NULL,
  `counts_towards_pto` tinyint(1) DEFAULT '1',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_generated_weekend` tinyint DEFAULT '0',
  `policyDisplayName` varchar(255) DEFAULT NULL,
  `leavePolicy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62223 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `start_time_in_iso8601_utc` varchar(255) NOT NULL,
  `end_time_in_iso8601_utc` varchar(255) NOT NULL,
  `session_length` int NOT NULL,
  `session_type` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `gcal_id` varchar(255) DEFAULT NULL,
  `zoom_id` varchar(255) DEFAULT NULL,
  `zoom_join_link` varchar(255) DEFAULT NULL,
  `zoom_password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `clinician_email` (`clinician_email`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheduled_erp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entryID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `done` tinyint NOT NULL DEFAULT '0',
  `scheduledDate` datetime DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `obssesion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `trigger` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `place` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `obsessionID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `triggerID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `userID` int NOT NULL DEFAULT '0',
  `scheduledID` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `spentTime` double NOT NULL,
  `anxiety` int NOT NULL,
  `trainingType` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `placeID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `promptID` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `intensityGoal` int NOT NULL,
  `heartRate` int NOT NULL,
  `timeForSession` int NOT NULL,
  `updated` bigint NOT NULL,
  `promtMessage` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `practice_type` varchar(255) DEFAULT NULL,
  `practice_goal` int DEFAULT NULL,
  `distress_before` tinyint DEFAULT NULL,
  `distress_after` tinyint DEFAULT NULL,
  `completed_note` text,
  `did_resist_compulsions` tinyint DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_scheduled_erp_on_scheduled_id` (`scheduledID`),
  KEY `index_scheduled_erp_on_user_id_scheduled_id` (`userID`,`scheduledID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screen_seen_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `screen` varchar(255) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`screen`)
) ENGINE=InnoDB AUTO_INCREMENT=2476445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_index` (
  `id` int NOT NULL AUTO_INCREMENT,
  `__pinecone_id` varchar(255) GENERATED ALWAYS AS (concat(`type`,_utf8mb4'_',`content_id`,_utf8mb4'_',`section_id`)) VIRTUAL,
  `type` varchar(255) NOT NULL,
  `content_id` varchar(255) NOT NULL,
  `section_id` int NOT NULL,
  `author` varchar(255) NOT NULL,
  `chunk` text NOT NULL,
  `content_hash` varchar(255) NOT NULL,
  `num_tokens` int NOT NULL,
  `uri` varchar(255) NOT NULL,
  `content_created_at` timestamp NOT NULL,
  `encoder_model` varchar(255) NOT NULL,
  `index_name` varchar(255) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_type_content_id_section_id_index_name` (`type`,`content_id`,`section_id`,`index_name`),
  KEY `idx_type` (`type`),
  KEY `idx_content_id` (`content_id`),
  KEY `idx_type_index_name` (`type`,`index_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `query` varchar(1024) DEFAULT NULL,
  `page` int DEFAULT NULL,
  `includes_posts` tinyint(1) DEFAULT NULL,
  `includes_website` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_queries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `attrID` varchar(255) DEFAULT NULL,
  `searchPage` varchar(255) NOT NULL,
  `searchTerm` varchar(255) NOT NULL,
  `resultsCount` int NOT NULL DEFAULT '0',
  `searchResults` varchar(255) DEFAULT NULL,
  `durationInMillis` int NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=90276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `second_therapist_surveys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `therapist_unavailable` tinyint(1) DEFAULT '0',
  `scheduling_issues` tinyint(1) DEFAULT '0',
  `additional_support` tinyint(1) DEFAULT '0',
  `other` text,
  `extra_comments` text,
  `therapist_unexpectedly_cancelled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_analysis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `answerIndex` varchar(255) NOT NULL,
  `questionIndex` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `analysDate` varchar(64) NOT NULL,
  `ybocsID` varchar(255) NOT NULL,
  `isPremium` tinyint(1) DEFAULT '0',
  `diagnosed` tinyint(1) DEFAULT NULL,
  `score` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_self_analysis_on_user_id_ybocs_id` (`userID`,`ybocsID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_scheduler_visitor_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visitor_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_name` text,
  `event_payload` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitor_id` (`visitor_id`),
  CONSTRAINT `self_scheduler_visitor_events_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `self_scheduler_visitors` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_scheduler_visitors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visitor_id` varchar(255) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `ip_country` varchar(255) DEFAULT NULL,
  `ip_state` varchar(255) DEFAULT NULL,
  `referrer` text,
  `user_agent` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `scheduled_from_page_url` text,
  `user_id` int DEFAULT NULL,
  `appointment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visitor_id` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_service_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_provider` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `protocol_type` enum('Adult','Adolescent','Child') DEFAULT NULL,
  `clinician_count` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `earliest_session_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `self_service_results_key` (`insurance_provider`,`state`,`protocol_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_service_results_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `insurance_provider` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `protocol_type` enum('Adult','Adolescent','Child') DEFAULT NULL,
  `clinician_count` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `earliest_session_date` date DEFAULT NULL,
  `results_at_ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `earliest_session_date_non_da` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sent_notifications` (
  `id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `badge_count` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `index_sent_notifications_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seo_indexed_posts` (
  `post_id` int NOT NULL,
  `indexing_reason` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`post_id`),
  KEY `idx_indexing_reason` (`indexing_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_address_state` varchar(64) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `groupII_NPI_id` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_service_address` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `zip_code` varchar(64) DEFAULT NULL,
  `covid_19_status` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `apero_facility` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_address_state` (`service_address_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_evaluations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appt_id` int NOT NULL,
  `member_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `session_type` varchar(50) NOT NULL,
  `output` json DEFAULT NULL,
  `trace_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `appt_id` (`appt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_survey` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointment_id` int DEFAULT NULL,
  `star_review` int DEFAULT NULL,
  `technology_negative_experience` tinyint DEFAULT NULL,
  `therapist_negative_experience` tinyint DEFAULT NULL,
  `other_negative_experience` tinyint DEFAULT NULL,
  `technology_positive_experience` tinyint DEFAULT NULL,
  `conversation_positive_experience` tinyint DEFAULT NULL,
  `therapist_positive_experience` tinyint DEFAULT NULL,
  `other_positive_experience` tinyint DEFAULT NULL,
  `comment_text` text,
  `follow_up_notes` text,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `post_id` int DEFAULT NULL,
  `q_compare_to_expectations_da` int DEFAULT NULL,
  `q_rate_your_session_da` int DEFAULT NULL,
  `q_session_90_minutes_da` int DEFAULT NULL,
  `q_therapist_thoughts_da` int DEFAULT NULL,
  `q_comment_text_da` text,
  `survey_type` varchar(255) DEFAULT NULL,
  `therapist_star_review` int DEFAULT NULL,
  `felt_seen_and_heard` tinyint(1) DEFAULT NULL,
  `therapist_conducted_well` tinyint(1) DEFAULT NULL,
  `optimistic_willing_to_help` tinyint(1) DEFAULT NULL,
  `not_seen_and_heard` tinyint(1) DEFAULT NULL,
  `therapist_conducted_poorly` tinyint(1) DEFAULT NULL,
  `not_optimistic_willing_to_help` tinyint(1) DEFAULT NULL,
  `technology_star_review` int DEFAULT NULL,
  `therapist_comment_text` text,
  `technology_comment_text` text,
  `therapist_comment_reply` text,
  `reply_date` timestamp(3) NULL DEFAULT NULL,
  `public_review` text,
  `has_given_initials_consent` tinyint(1) DEFAULT NULL,
  `public_review_title` text,
  `status` enum('REJECTED','PUBLISHED_ON_WEBSITE','PUBLISHED_ON_WEBSITE_AND_THERAPIST_PROFILE') DEFAULT 'PUBLISHED_ON_WEBSITE_AND_THERAPIST_PROFILE',
  `clinician_user_id` int DEFAULT NULL,
  `subtypes` json DEFAULT NULL,
  `therapist_processes_and_policies_stars` tinyint(1) DEFAULT NULL,
  `therapist_starting_to_know_me_stars` tinyint(1) DEFAULT NULL,
  `therapist_cares_about_me_stars` tinyint(1) DEFAULT NULL,
  `therapist_uses_session_time_wisely_stars` tinyint(1) DEFAULT NULL,
  `therapy_going_overall_stars` tinyint(1) DEFAULT NULL,
  `more_about_experience` json DEFAULT NULL,
  `more_about_experience_text` text,
  `feeling_about_progress_stars` tinyint(1) DEFAULT NULL,
  `more_about_progress` json DEFAULT NULL,
  `more_about_progress_text` text,
  `how_supported_stars` tinyint(1) DEFAULT NULL,
  `more_about_where_youre_at` json DEFAULT NULL,
  `more_about_how_supported_text` text,
  `outcome_label` varchar(255) DEFAULT NULL,
  `outcome_notes` text,
  `outcome_set_by` varchar(255) DEFAULT NULL,
  `outcome_set_at` timestamp NULL DEFAULT NULL,
  `assigned_to` varchar(255) DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `member_appointment_id` (`member_appointment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `session_survey_ibfk_1` FOREIGN KEY (`member_appointment_id`) REFERENCES `member_appointments` (`id`),
  CONSTRAINT `session_survey_ibfk_2` FOREIGN KEY (`member_appointment_id`) REFERENCES `member_appointments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_survey_follow_ups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `session_survey_id` int NOT NULL,
  `textline_post_uuid` varchar(255) NOT NULL,
  `textline_conversation_uuid` varchar(255) NOT NULL,
  `send_at` timestamp NOT NULL,
  `send_status` varchar(255) NOT NULL,
  `send_status_reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`session_survey_id`),
  KEY `session_survey_id` (`session_survey_id`),
  CONSTRAINT `session_survey_follow_ups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `session_survey_follow_ups_ibfk_2` FOREIGN KEY (`session_survey_id`) REFERENCES `session_survey` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `scheduledID` varchar(64) NOT NULL,
  `staredExposureID` varchar(64) NOT NULL,
  `completedSessions` int NOT NULL,
  `numberOfSessions` int NOT NULL,
  `currentExerciseGoalTime` double NOT NULL,
  `defaultGoalTime` double NOT NULL,
  `goalResistanceTime` double NOT NULL,
  `incrementTime` double NOT NULL,
  `startGoalTime` double NOT NULL,
  `ybocsFrequency` varchar(255) NOT NULL,
  `reminders` varchar(255) NOT NULL,
  `settingID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signalling_phrases` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phrase` varchar(255) NOT NULL,
  `is_trigger_phrase` tinyint(1) DEFAULT NULL,
  `is_reassurance_phrase` tinyint(1) DEFAULT NULL,
  `subtype_phrase` tinyint(1) DEFAULT NULL,
  `medication_phrase` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phrase` (`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slack_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(255) DEFAULT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `text` text,
  `is_reply` tinyint(1) DEFAULT NULL,
  `parent_message_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slots_offered_to_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `slot` timestamp(6) NOT NULL,
  `duration_in_mins` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `chosen_candidate_user_id` int NOT NULL,
  `chosen_candidate` json DEFAULT NULL,
  `seen_by_chosen_candidate_at` timestamp(6) NULL DEFAULT NULL,
  `appointment_id` int DEFAULT NULL,
  `candidates` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `expires_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clinician_email` (`clinician_email`,`slot`,`chosen_candidate_user_id`),
  KEY `chosen_candidate_user_id` (`chosen_candidate_user_id`),
  CONSTRAINT `slots_offered_to_members_ibfk_1` FOREIGN KEY (`chosen_candidate_user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `slots_offered_to_members_ibfk_2` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slots_to_offer_members` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `slot` timestamp(6) NOT NULL,
  `duration_in_mins` int NOT NULL,
  `clinician_override_availability_id` int DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `user_ids` json DEFAULT NULL,
  `status` enum('queued','cancelled','completed') DEFAULT 'queued',
  `status_reason` varchar(255) DEFAULT NULL,
  `output` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_email` (`clinician_email`),
  KEY `clinician_override_availability_id` (`clinician_override_availability_id`),
  CONSTRAINT `slots_to_offer_members_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`),
  CONSTRAINT `slots_to_offer_members_ibfk_2` FOREIGN KEY (`clinician_override_availability_id`) REFERENCES `clinician_override_availability` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `phone` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `textline_group_name` varchar(255) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `sent` tinyint(1) DEFAULT '0',
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `body` text,
  `template_variable_schema` json DEFAULT NULL,
  `textline_group` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snapshot_metadata_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dest_table` varchar(255) NOT NULL,
  `create_table_stmt` longtext NOT NULL,
  `bq_query` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snapshot_monitor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) DEFAULT NULL,
  `env` varchar(255) NOT NULL,
  `func` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `exc` varchar(255) DEFAULT NULL,
  `elapsed_time` int DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `completed_at` timestamp NULL DEFAULT NULL,
  `dest_table` varchar(255) NOT NULL,
  `bq_query` varchar(255) NOT NULL,
  `primary_key` varchar(255) NOT NULL,
  `indexes` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `num_records` int NOT NULL,
  `columns` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`func`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snoozed_clinician_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `task_type` varchar(255) NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `expires_at` timestamp(6) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `idx_clinician_task_expires` (`clinician_email`,`task_type`,`expires_at`),
  KEY `idx_expires_at` (`expires_at`),
  CONSTRAINT `snoozed_clinician_tasks_ibfk_1` FOREIGN KEY (`clinician_email`) REFERENCES `premium_clinicians` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sos_episodes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `sos_subtype_id` int NOT NULL,
  `sos_subtype_name` varchar(64) NOT NULL,
  `media_duration_seconds` int NOT NULL,
  `elapsed_media_duration_seconds` int DEFAULT NULL,
  `text_progress_percent` int DEFAULT NULL,
  `end_media_mode` varchar(64) DEFAULT NULL,
  `quit_reason` varchar(64) DEFAULT NULL,
  `quit` tinyint(1) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  `create_trace_id` varchar(255) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `ended_at` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `create_trace_id` (`create_trace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sos_episodes_v2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `obsession_id` varchar(64) DEFAULT NULL,
  `trigger_id` varchar(64) DEFAULT NULL,
  `compulsion_id` varchar(64) DEFAULT NULL,
  `start_distress` tinyint NOT NULL,
  `end_distress` tinyint DEFAULT NULL,
  `did_resist_compulsions` tinyint(1) DEFAULT NULL,
  `completed_note` text,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `completed_at` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sos_prevention_tip_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `response_prevention_message_id` int NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`response_prevention_message_id`),
  KEY `response_prevention_message_id` (`response_prevention_message_id`),
  CONSTRAINT `sos_prevention_tip_assignments_ibfk_1` FOREIGN KEY (`response_prevention_message_id`) REFERENCES `response_prevention_messages` (`id`),
  CONSTRAINT `sos_prevention_tip_assignments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sos_subtypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rank` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `is_general` tinyint(1) DEFAULT '0',
  `is_tutorial` tinyint(1) DEFAULT '0',
  `icon_image_url` varchar(255) NOT NULL,
  `info_image_url` varchar(255) NOT NULL,
  `media_duration_seconds` int NOT NULL,
  `media_text` text NOT NULL,
  `media_transcript` text NOT NULL,
  `media_audio_url` varchar(255) NOT NULL,
  `media_video_url` varchar(255) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sos_tool_assignments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `exercise_tool_id` int NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`exercise_tool_id`),
  KEY `exercise_tool_id` (`exercise_tool_id`),
  CONSTRAINT `sos_tool_assignments_ibfk_1` FOREIGN KEY (`exercise_tool_id`) REFERENCES `exercise_tools` (`id`),
  CONSTRAINT `sos_tool_assignments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `specialty` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_author` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `specialty` (`specialty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `split_test_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `variant_name` varchar(255) NOT NULL,
  `has_variant` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sql_ide_queries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT 'Untitled',
  `query` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `archived_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_insurances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL,
  `insurance_id` int NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `ready_for_credentialing` tinyint(1) DEFAULT NULL,
  `sca` tinyint(1) DEFAULT NULL,
  `allows_associate` tinyint(1) DEFAULT '0',
  `hide_from_external_display` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `insurance_id` (`insurance_id`,`state`),
  UNIQUE KEY `state` (`state`,`insurance_id`),
  CONSTRAINT `state_insurances_ibfk_1` FOREIGN KEY (`insurance_id`) REFERENCES `intake_insurances` (`id`),
  CONSTRAINT `state_insurances_state` FOREIGN KEY (`state`) REFERENCES `premium_states` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_of_focus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  `starting_at` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streamlit_audit_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `audit_id` varchar(255) DEFAULT NULL,
  `question_id` varchar(255) DEFAULT NULL,
  `question_detail` text,
  `clinician_email` varchar(255) DEFAULT NULL,
  `member_user_id` int DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `message` longtext,
  `agent_logs` longtext,
  `is_sufficient` tinyint(1) DEFAULT NULL,
  `is_reviewed` timestamp(6) NULL DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `is_test` tinyint(1) DEFAULT '0',
  `model_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streamlit_chat_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `chat_id` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streamlit_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_role_unique` (`email`,`role`,`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `stripe_customer_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_api_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `request` varchar(64) NOT NULL,
  `request_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `response` blob,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_balance_transactions_ledger` (
  `__row_id` int NOT NULL AUTO_INCREMENT,
  `id` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `fee` int NOT NULL,
  `net` int NOT NULL,
  `created` int NOT NULL,
  `created_ts` timestamp GENERATED ALWAYS AS (from_unixtime(`created`)) VIRTUAL NULL,
  `source` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `balance_transaction_payload` json NOT NULL,
  `record_type` enum('insert','update','delete') NOT NULL,
  `recorded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`__row_id`),
  KEY `transaction_id` (`id`),
  KEY `transaction_source` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_charge_failures_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `failure_reason` varchar(255) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `stripe_created_at` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `created` timestamp NOT NULL,
  `event_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `request_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `object_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `object_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `subscription_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `api_version` varchar(16) NOT NULL,
  `metadata` json DEFAULT NULL,
  `previous_attributes` json DEFAULT NULL,
  `event` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_payment_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `stripe_customer_id` varchar(255) NOT NULL,
  `stripe_payment_method_id` varchar(255) DEFAULT NULL,
  `card_last4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripe_payment_method_id` (`stripe_payment_method_id`),
  KEY `card_last4` (`card_last4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_payout_ledger` (
  `__row_id` int NOT NULL AUTO_INCREMENT,
  `id` varchar(128) NOT NULL,
  `amount` int NOT NULL,
  `arrival_date` int NOT NULL,
  `arrival_date_ts` timestamp GENERATED ALWAYS AS (from_unixtime(`arrival_date`)) VIRTUAL NULL,
  `destination` varchar(128) NOT NULL,
  `balance_transaction` varchar(128) NOT NULL,
  `status` varchar(128) NOT NULL,
  `payout` json NOT NULL,
  `record_type` enum('insert','update','delete') NOT NULL,
  `recorded_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`__row_id`),
  KEY `payout_id` (`id`),
  KEY `balance_transaction` (`balance_transaction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subscription_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `user_id` int DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL,
  `stripe_created` timestamp NULL DEFAULT NULL,
  `billing_cycle_anchor` timestamp NULL DEFAULT NULL,
  `current_period_start` timestamp NULL DEFAULT NULL,
  `current_period_end` timestamp NULL DEFAULT NULL,
  `cancel_at_period_end` tinyint(1) DEFAULT NULL,
  `ended_at` timestamp NULL DEFAULT NULL,
  `stripe_updated_at` timestamp NULL DEFAULT NULL,
  `coupon_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `cancel_reason` varchar(64) DEFAULT NULL,
  `webhook_delete_request_id_populated` tinyint(1) DEFAULT NULL,
  `webhook_invoice_payment_failed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_id` (`subscription_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subsequent_ybocs_prompt` (
  `user_id` int NOT NULL,
  `started_at` timestamp(6) NULL DEFAULT NULL,
  `skipped_at` timestamp(6) NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suicidal_behavior_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `member_appointments_id` int DEFAULT NULL,
  `session_type` varchar(255) DEFAULT NULL,
  `protocol_type` varchar(255) DEFAULT NULL,
  `q1_prep_acts_nssi` varchar(255) DEFAULT NULL,
  `q1_prep_acts_nssi_lifetime` varchar(255) DEFAULT NULL,
  `q1_prep_acts_nssi_last_time` varchar(255) DEFAULT NULL,
  `q1_prep_acts_nssi_date` text,
  `q1_prep_acts_si` varchar(255) DEFAULT NULL,
  `q1_prep_acts_si_lifetime` varchar(255) DEFAULT NULL,
  `q1_prep_acts_si_last_time` varchar(255) DEFAULT NULL,
  `q1_prep_acts_si_date` text,
  `q2_aborted_acts_nssi` varchar(255) DEFAULT NULL,
  `q2_aborted_acts_nssi_lifetime` varchar(255) DEFAULT NULL,
  `q2_aborted_acts_nssi_last_time` varchar(255) DEFAULT NULL,
  `q2_aborted_acts_nssi_date` text,
  `q2_aborted_acts_si` varchar(255) DEFAULT NULL,
  `q2_aborted_acts_si_lifetime` varchar(255) DEFAULT NULL,
  `q2_aborted_acts_si_last_time` varchar(255) DEFAULT NULL,
  `q2_aborted_acts_si_date` text,
  `q2_aborted_acts_med_damage` text,
  `q2_aborted_acts_med_damage_text` text,
  `q3_interrupted_acts_nssi` varchar(255) DEFAULT NULL,
  `q3_interrupted_acts_nssi_lifetime` varchar(255) DEFAULT NULL,
  `q3_interrupted_acts_nssi_last_time` varchar(255) DEFAULT NULL,
  `q3_interrupted_acts_nssi_date` text,
  `q3_interrupted_acts_si` varchar(255) DEFAULT NULL,
  `q3_interrupted_acts_si_lifetime` varchar(255) DEFAULT NULL,
  `q3_interrupted_acts_si_last_time` varchar(255) DEFAULT NULL,
  `q3_interrupted_acts_si_date` text,
  `q3_interrupted_acts_med_damage` text,
  `q3_interrupted_acts_med_damage_text` text,
  `q4_actual_acts_nssi` varchar(255) DEFAULT NULL,
  `q4_actual_acts_nssi_lifetime` varchar(255) DEFAULT NULL,
  `q4_actual_acts_nssi_last_time` varchar(255) DEFAULT NULL,
  `q4_actual_acts_nssi_date` text,
  `q4_actual_acts_si` varchar(255) DEFAULT NULL,
  `q4_actual_acts_si_lifetime` varchar(255) DEFAULT NULL,
  `q4_actual_acts_si_last_time` varchar(255) DEFAULT NULL,
  `q4_actual_acts_si_date` text,
  `q4_actual_acts_med_damage` text,
  `q4_actual_acts_med_damage_text` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `q1_prep_acts_nssi_details` text,
  `q1_prep_acts_si_details` text,
  `q2_aborted_acts_nssi_details` text,
  `q2_aborted_acts_si_details` text,
  `q3_interrupted_acts_nssi_details` text,
  `q3_interrupted_acts_si_details` text,
  `q4_actual_acts_nssi_details` text,
  `q4_actual_acts_si_details` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_appointments_id` (`member_appointments_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supervision_name` varchar(255) DEFAULT NULL,
  `zoom_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisions_attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supervision_id` int NOT NULL,
  `supervision_name` varchar(255) DEFAULT NULL,
  `clinician_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trace_id` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `channel_user_id` int NOT NULL,
  `member_user_id` int DEFAULT NULL,
  `support_user_id` int DEFAULT NULL,
  `automated` varchar(32) DEFAULT NULL,
  `button_type` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trace_id` (`trace_id`),
  KEY `channel_user_id` (`channel_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17620 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_chat_pinned_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `support_user_id` int NOT NULL,
  `member_user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `support_user_id` (`support_user_id`,`member_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_chat_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_chat_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_sent_first_message` tinyint(1) DEFAULT '0',
  `total_user_messages_sent` int DEFAULT '0',
  `total_support_messages_sent` int DEFAULT '0',
  `last_user_message_sent_at` timestamp NULL DEFAULT NULL,
  `last_support_message_sent_at` timestamp NULL DEFAULT NULL,
  `last_message_sent_at` timestamp NULL DEFAULT NULL,
  `support_seen_latest_message` tinyint(1) DEFAULT '1',
  `user_seen_latest_message` tinyint(1) DEFAULT NULL,
  `support_seen_channel_at` timestamp NULL DEFAULT NULL,
  `user_seen_channel_at` timestamp NULL DEFAULT NULL,
  `discussion_loop_open` tinyint(1) DEFAULT '0',
  `discussion_loop_opened_at` timestamp NULL DEFAULT NULL,
  `bootstrapped_chat` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `discussion_loop_open` (`discussion_loop_open`),
  CONSTRAINT `support_chat_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_group_allow_overrides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `support_group_allow_overrides_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_group_bans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `support_group_bans_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `sent_notification_id` varchar(255) DEFAULT NULL,
  `not_sent_reason` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `support_notifications_idx_on_user_id_and_post_id` (`target_user_id`,`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT '',
  `last_name` varchar(255) DEFAULT '',
  `image_id` varchar(255) DEFAULT '',
  `is_test_user` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_user_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `notes` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_user_tags` (
  `user_id` int NOT NULL,
  `tag` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`,`tag`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_onboarding_motivations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `motivation` varchar(64) DEFAULT NULL,
  `addMyOwn` tinyint(1) DEFAULT '0',
  `version` varchar(16) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`,`motivation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_onboarding_therapy_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `therapy_type` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`therapy_type`)
) ENGINE=InnoDB AUTO_INCREMENT=41919 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_onboarding_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `stage` varchar(64) DEFAULT NULL,
  `therapist_experience` varchar(64) NOT NULL,
  `therapist_experience_add_my_own` tinyint(1) NOT NULL,
  `no_therapist_reason` varchar(64) DEFAULT NULL,
  `no_therapist_reason_add_my_own` tinyint(1) DEFAULT NULL,
  `nocd_hope` varchar(64) DEFAULT NULL,
  `therapy_interest` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attribution_source` varchar(255) DEFAULT NULL,
  `attribution_source_details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_onboarding_v3_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `stage` varchar(64) DEFAULT NULL COMMENT 'Enum of "stage_1", "stage_2", "stage_3"',
  `diagnosed_with_ocd` tinyint(1) NOT NULL,
  `erp_experience` varchar(64) NOT NULL COMMENT 'Enum of "do_not_know_erp", "know_erp", "tried_erp", "actively_practicing_erp"',
  `therapy_interest` varchar(64) NOT NULL COMMENT 'Enum of "yes", "no", "unsure"',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attribution_source` varchar(255) DEFAULT NULL,
  `attribution_source_details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=862 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `survey_onboarding_who_are_you` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `whoAreYou` varchar(64) DEFAULT NULL,
  `skipped` tinyint(1) DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talkiatry_referrals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `referral_date` date NOT NULL,
  `referral_partner_patient_identifier` int DEFAULT NULL,
  `patient_name_last` varchar(255) DEFAULT NULL,
  `patient_name_first` varchar(255) DEFAULT NULL,
  `patient_date_of_birth` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_mobile` varchar(255) DEFAULT NULL,
  `phone_other` varchar(255) DEFAULT NULL,
  `partner_referring_provider` varchar(255) DEFAULT NULL,
  `partner_facility_site` varchar(255) DEFAULT NULL,
  `partner_facility_department` varchar(255) DEFAULT NULL,
  `patient_state` varchar(255) DEFAULT NULL,
  `patient_zip` varchar(255) DEFAULT NULL,
  `partner_referring_provider_npi` varchar(255) DEFAULT NULL,
  `guardian_name_last` varchar(255) DEFAULT NULL,
  `guardian_name_first` varchar(255) DEFAULT NULL,
  `additional_json` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `user_id` int DEFAULT NULL,
  `call_outcome` varchar(255) DEFAULT NULL,
  `external_providers_id` int DEFAULT NULL,
  `is_provider_reviewed` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `referral_date_key` (`referral_date`,`referral_partner_patient_identifier`),
  KEY `user_id` (`user_id`),
  KEY `external_providers_id` (`external_providers_id`),
  CONSTRAINT `talkiatry_referrals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `talkiatry_referrals_ibfk_2` FOREIGN KEY (`external_providers_id`) REFERENCES `external_providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_amazon_connect_calls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(255) NOT NULL,
  `call_id` varchar(255) NOT NULL,
  `amazon_phone_number` varchar(255) NOT NULL,
  `contact_phone_number` varchar(255) NOT NULL,
  `call_at` timestamp NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `agent_email` varchar(255) DEFAULT NULL,
  `waiting_time` varchar(255) DEFAULT NULL,
  `recording_url` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `total_duration` varchar(255) DEFAULT NULL,
  `notes` text,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `s3_link_id` varchar(255) DEFAULT NULL,
  `transcript` longtext,
  `summary` longtext,
  `cluster` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `call_id` (`call_id`),
  KEY `agent_email` (`agent_email`),
  KEY `call_id_idx` (`call_id`),
  KEY `contact_phone_number` (`contact_phone_number`),
  KEY `amazon_phone_number` (`amazon_phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_organization_call` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_organization_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accepts_warm_transfers` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `should_receive_screener` tinyint(1) DEFAULT '0',
  `call_priority_order` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_talkdesk_calls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(255) NOT NULL,
  `call_id` varchar(255) NOT NULL,
  `talkdesk_phone_number` varchar(255) NOT NULL,
  `contact_phone_number` varchar(255) NOT NULL,
  `time_now` timestamp NOT NULL,
  `contact_id` varchar(255) NOT NULL,
  `agent_email` varchar(255) DEFAULT NULL,
  `waiting_time` varchar(255) DEFAULT NULL,
  `recording_url` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `total_duration` varchar(255) DEFAULT NULL,
  `notes` text,
  `call_disposition` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `talkdesk_phone_number` (`talkdesk_phone_number`),
  KEY `contact_phone_number` (`contact_phone_number`),
  KEY `agent_email` (`agent_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_twilio_cc_sent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message_sid` varchar(255) NOT NULL,
  `agent_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_twilio_text_messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `to_number` varchar(255) NOT NULL,
  `from_number` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `message_sid` varchar(255) NOT NULL,
  `sent_at` timestamp NOT NULL,
  `thread_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `message_sid` (`message_sid`),
  KEY `index_on_user_number` (`thread_number`),
  KEY `index_on_sent_at` (`sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textline_conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `conversation_uuid` varchar(255) DEFAULT NULL,
  `textline_created_at_unix` varchar(10) DEFAULT NULL,
  `textline_created_at` timestamp NULL DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_uuid` varchar(255) DEFAULT NULL,
  `customer_phone_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `conversation_uuid` (`conversation_uuid`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `textline_conversations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textline_customer_uuids` (
  `id` int NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) NOT NULL,
  `customer_uuid` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `textline_posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `body` text,
  `conversation_uuid` varchar(255) DEFAULT NULL,
  `thread_uuid` varchar(255) DEFAULT NULL,
  `creator_uuid` varchar(255) DEFAULT NULL,
  `post_uuid` varchar(255) DEFAULT NULL,
  `creator_name` varchar(255) DEFAULT NULL,
  `textline_user_type` varchar(255) DEFAULT NULL,
  `textline_user_email` varchar(255) DEFAULT NULL,
  `textline_user_phone` varchar(255) DEFAULT NULL,
  `is_first_post` tinyint(1) DEFAULT NULL,
  `is_first_response` tinyint(1) DEFAULT NULL,
  `textline_created_at_unix` varchar(10) DEFAULT NULL,
  `textline_created_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_uuid` (`post_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapist_application_submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `licensed_states` json DEFAULT NULL,
  `licensed_provinces` json DEFAULT NULL,
  `primary_license_type` varchar(255) DEFAULT NULL,
  `has_worked_with_ocd_patients` tinyint DEFAULT NULL,
  `can_diagnose_and_treat_without_oversight` tinyint DEFAULT NULL,
  `position_type` varchar(255) DEFAULT NULL,
  `resume_path` varchar(255) DEFAULT NULL,
  `how_did_you_hear_about_us` varchar(255) DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `why_do_you_want_to_work_for_us` text,
  `is_completed` tinyint DEFAULT '0',
  `committed_hours` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utm_source` varchar(255) DEFAULT NULL,
  `utm_campaign` varchar(255) DEFAULT NULL,
  `utm_term` varchar(255) DEFAULT NULL,
  `utm_content` varchar(255) DEFAULT NULL,
  `utm_medium` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapist_conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `chat_channel_id` int DEFAULT NULL,
  `description` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_channel_id` (`chat_channel_id`),
  CONSTRAINT `therapist_conversations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`),
  CONSTRAINT `therapist_conversations_ibfk_2` FOREIGN KEY (`chat_channel_id`) REFERENCES `chat_channels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapist_directory_factors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) DEFAULT NULL,
  `record_date` date GENERATED ALWAYS AS (cast(`created_at` as date)) STORED,
  `available_fs_slots_in_next_two_weeks` int DEFAULT NULL,
  `retention_to_session_6_last_180_days` float DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_clinician_day` (`clinician_email`,`record_date`),
  KEY `idx_clinician_record_date` (`clinician_email`,`record_date` DESC),
  KEY `idx_record_date_clinician` (`record_date` DESC,`clinician_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapist_messaging_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `message_id` int DEFAULT NULL,
  `chat_channel_id` int DEFAULT NULL,
  `is_timed_event` tinyint(1) DEFAULT NULL,
  `event_time` timestamp(6) NULL DEFAULT NULL,
  `event` varchar(255) NOT NULL,
  `event_reason` varchar(255) NOT NULL,
  `suggested_responses` text,
  `trace_id` varchar(255) DEFAULT NULL,
  `send_at` timestamp(6) NULL DEFAULT NULL,
  `expires_at` timestamp(6) NULL DEFAULT NULL,
  `dismissed` tinyint(1) DEFAULT NULL,
  `final_response` text,
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_change_request_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_id` int NOT NULL,
  `user_id` int NOT NULL,
  `request_reason` varchar(255) NOT NULL,
  `request_status` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `request_id` (`request_id`),
  CONSTRAINT `therapy_change_request_ledger_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `therapy_change_request_note` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_change_request_note` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `request_reason` varchar(255) NOT NULL,
  `request_note` text NOT NULL,
  `request_status` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `primary_icd_code` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `decline_reason_note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Therapy_Day_Gaps` (
  `Appointment_Start_Date` text,
  `Patient_Name` text,
  `Appointment_Type` text,
  `Appointment_Status` text,
  `Provider` text,
  `Patient_Email` text,
  `Patient_Chart_Number` double DEFAULT NULL,
  `Days_Gap` bigint DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_homescreen_question_seen_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `index_on_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_homescreen_seen_at` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_id` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `trace_id` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `therapy_status_screen_id` int NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `index_on_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61681 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_milestone_share_prompt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission` tinyint(1) DEFAULT NULL,
  `channels` json DEFAULT NULL,
  `response` json DEFAULT NULL COMMENT 'includes channels and handles',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10760 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_onboarding_completion` (
  `user_id` int NOT NULL,
  `onboarding_type` varchar(64) NOT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`onboarding_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_session_analysis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `clinician_user_id` int NOT NULL,
  `member_user_id` int NOT NULL,
  `appointment_id` int NOT NULL,
  `did_spend_30_mins_rapport` tinyint(1) DEFAULT NULL,
  `minutes_spent_rapport` int DEFAULT NULL,
  `timestamps_rapport` json DEFAULT NULL,
  `feedback` text,
  `transcript` json NOT NULL,
  `transcript_accurate` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `appointment_id` (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_session_transcriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_id` int NOT NULL,
  `trace_id` varchar(255) DEFAULT NULL,
  `consent` timestamp(6) NULL DEFAULT NULL,
  `transcript_consent` timestamp(6) NULL DEFAULT NULL,
  `transcript` json DEFAULT NULL,
  `live_transcript` json DEFAULT NULL,
  `generated_note` longtext,
  `output_ids` text,
  `final_output_file_id` text,
  `transcription_status` varchar(255) DEFAULT NULL,
  `transcription_errors` text,
  `generated_note_status` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `rerun_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `audio_deleted_at` timestamp NULL DEFAULT NULL,
  `audio_deleted_by` varchar(255) DEFAULT NULL,
  `similarity_score` decimal(10,2) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `is_draft` tinyint DEFAULT NULL,
  `speaker_count` int DEFAULT NULL,
  `transcript_deleted_at` timestamp NULL DEFAULT NULL,
  `transcript_deleted_by` varchar(255) DEFAULT NULL,
  `self_dictation` tinyint DEFAULT '0',
  `session_summary` longtext,
  `keep_for_30_days` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ma_id` (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_status_screen_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `therapy_status_screen_id` int NOT NULL,
  `ordering_id` int DEFAULT '0',
  `image_type` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `image_link_type` varchar(255) NOT NULL DEFAULT 'system',
  `platform` varchar(64) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_status_screens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `therapy_status` varchar(64) NOT NULL,
  `variant_id` int NOT NULL DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `platform_restriction` varchar(16) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_therapy_status_screens_on_therapy_status_variant_id` (`therapy_status`,`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_temp` (
  `user_id` int NOT NULL,
  `app_created_date` date DEFAULT NULL,
  `first_therapy_date` date DEFAULT NULL,
  `last_therapy_date` date DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `therapy_user_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `question` text,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threads_last_seen_at` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `thread_id` varchar(255) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `ended_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_thread_id` (`user_id`,`thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5407500 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threads_seen_at` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `thread_id` varchar(255) NOT NULL,
  `metadata` json DEFAULT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `created_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  `ended_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`thread_id`),
  KEY `thread_id` (`thread_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5407500 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `description` text,
  `complexity` enum('low','medium','high') NOT NULL,
  `chat_channel_id` int DEFAULT NULL,
  `message_id` int DEFAULT NULL,
  `related_message_ids` text,
  `due_at` timestamp(6) NULL DEFAULT NULL,
  `resolved_by` varchar(255) DEFAULT NULL,
  `resolved_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets_ledger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `description` text,
  `complexity` enum('low','medium','high') NOT NULL,
  `chat_channel_id` int DEFAULT NULL,
  `message_id` int DEFAULT NULL,
  `related_message_ids` text,
  `due_at` timestamp(6) NULL DEFAULT NULL,
  `resolved_at` timestamp(6) NULL DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL,
  `change_type` enum('insert','update') NOT NULL,
  `change_timestamp` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_spent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `spentTime` double NOT NULL,
  `timeID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_time_spent_on_user_id_time_id` (`userID`,`timeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toggle_call_now_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `call_now_disabled` tinyint(1) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `toggled_by` varchar(255) NOT NULL,
  `logged_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics` (
  `topic_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `about_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `ordering` int DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_internal` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `title` (`title`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topics_pre_subtypes` (
  `topic_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `about_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `ordering` int DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `title` (`title`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_request_automation_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transfer_request_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` enum('running','stopped','completed') NOT NULL DEFAULT 'running',
  `last_notification` varchar(255) NOT NULL,
  `last_notification_sent_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `started_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `stopped_at` timestamp NULL DEFAULT NULL,
  `stopped_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_transfer_request_user` (`transfer_request_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_request_notes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transfer_request_id` int NOT NULL,
  `note` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `transfer_request_id` (`transfer_request_id`),
  CONSTRAINT `transfer_request_notes_ibfk_1` FOREIGN KEY (`transfer_request_id`) REFERENCES `transfer_requests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `reason` varchar(255) NOT NULL,
  `reason_details` text NOT NULL,
  `conditions` json DEFAULT NULL,
  `clinician_transferring_from_email` varchar(255) NOT NULL,
  `is_current_clinician_continuing_treatment` tinyint DEFAULT '0',
  `current_clinician_treatment_end_date` timestamp(6) NULL DEFAULT NULL,
  `clinician_transferred_to_email` varchar(255) DEFAULT NULL,
  `bootstrap_log_id` int DEFAULT NULL,
  `status` varchar(255) DEFAULT 'not_started',
  `action` enum('replace','add') DEFAULT 'replace',
  `assigned_to` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `updated_by` varchar(255) DEFAULT NULL,
  `primary_clinician_state` varchar(255) DEFAULT NULL,
  `secondary_clinician_state` varchar(255) DEFAULT NULL,
  `current_conditions` json DEFAULT NULL,
  `primary_day_availability` json DEFAULT NULL,
  `co_therapy_duration` varchar(32) DEFAULT NULL,
  `condition_reason_details` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `clinician_transferring_from_email` (`clinician_transferring_from_email`),
  KEY `clinician_transferred_to_email` (`clinician_transferred_to_email`),
  KEY `bootstrap_log_id` (`bootstrap_log_id`),
  CONSTRAINT `transfer_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`),
  CONSTRAINT `transfer_requests_ibfk_2` FOREIGN KEY (`clinician_transferring_from_email`) REFERENCES `premium_clinicians` (`email`),
  CONSTRAINT `transfer_requests_ibfk_3` FOREIGN KEY (`clinician_transferred_to_email`) REFERENCES `premium_clinicians` (`email`),
  CONSTRAINT `transfer_requests_ibfk_4` FOREIGN KEY (`bootstrap_log_id`) REFERENCES `bootstrap_log` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_surveys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `clinician_user_id` int NOT NULL,
  `clinician_email` varchar(255) NOT NULL,
  `not_felt_seen_and_heard` tinyint(1) DEFAULT '0',
  `session_not_conducted_well` tinyint(1) DEFAULT '0',
  `therapist_unable_to_help` tinyint(1) DEFAULT '0',
  `other` text,
  `extra_comments` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `scheduling_issues` tinyint(1) DEFAULT '0',
  `member_moving` tinyint(1) DEFAULT '0',
  `therapist_leaving` tinyint(1) DEFAULT '0',
  `freshdesk_ticket_id` int DEFAULT NULL,
  `therapist_does_not_accept_insurance` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clinician_user_id` (`clinician_user_id`),
  CONSTRAINT `transfer_surveys_ibfk_1` FOREIGN KEY (`clinician_user_id`) REFERENCES `premium_clinicians` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfers_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `old_clinician_user_id` int DEFAULT NULL,
  `new_clinician_user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `transfer_survey_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `transfers_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trauma_interview_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `q1_trauma_details` text,
  `q2_other_traumatic_events` text,
  `q3_target_trauma` text,
  `q4_remember_feeling` tinyint(1) DEFAULT NULL,
  `q5_feel_helpless` tinyint(1) DEFAULT NULL,
  `q6_who_was_assailant` json DEFAULT NULL,
  `q7_authority_figure_details` text,
  `q8_assailant_other` text,
  `q9_assailant_unknown` varchar(255) DEFAULT NULL,
  `q10_where_trauma_occur` json DEFAULT NULL,
  `q11_where_trauma_occur_other` varchar(255) DEFAULT NULL,
  `q12_physical_injuries` text,
  `q13_medical_attention` text,
  `q14_legal_action_resulted` text,
  `q15_blame_for_trauma` json DEFAULT NULL,
  `q16_blame_for_trauma_other` text,
  `q17_blame_for_trauma_details` text,
  `q18_feeling_guilty` text,
  `q19_current_physical_health` varchar(64) DEFAULT NULL,
  `q20_health_problems` text,
  `q21_support_system` text,
  `q22_mood_details` text,
  `q23_deliberately_harm_yourself` text,
  `q24_sought_psychiatric_help` tinyint(1) DEFAULT NULL,
  `q25_sought_psychiatric_help_details` text,
  `q26_been_hospitalised` tinyint(1) DEFAULT NULL,
  `q27_been_hospitalised_details` text,
  `q28_prescription_medications` text,
  `q29_street_drugs` text,
  `q30_over_the_counter_medications` varchar(255) DEFAULT NULL,
  `q31_alcohol_consumption` text,
  `q32_drug_legal_social_problems` tinyint(1) DEFAULT NULL,
  `q33_consider_to_have_drug_problem` tinyint(1) DEFAULT NULL,
  `q34_life_trauma_summary_details` text,
  `completed` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment_interfering_behavior_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `q1_not_acknowledge_problem` json DEFAULT NULL,
  `q2_not_acknowledge_severity_impact` json DEFAULT NULL,
  `q3_not_identify_treatment_goals` json DEFAULT NULL,
  `q4_argues_with_treatment_team` json DEFAULT NULL,
  `q5_change_focus_of_sessions` json DEFAULT NULL,
  `q6_difficulty_explaining_treatment_plan` json DEFAULT NULL,
  `q7_difficult_answering_questions` json DEFAULT NULL,
  `q8_frequently_late_or_no_show` json DEFAULT NULL,
  `q9_difficulty_following_treatment_plan` json DEFAULT NULL,
  `q10_provides_inaccurate_information` json DEFAULT NULL,
  `q11_engaging_in_self_destructive_acts` json DEFAULT NULL,
  `q12_makes_team_feel_physically_threatened` json DEFAULT NULL,
  `q13_other` text,
  `completed` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `treatment_interfering_behavior_form_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment_recommendations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `recommendation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trigger_locks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trigger_name` varchar(225) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `paymentType` varchar(255) NOT NULL,
  `payed` tinyint NOT NULL DEFAULT '0',
  `diagnosed` tinyint NOT NULL DEFAULT '0',
  `userProfileimageUrl` varchar(255) NOT NULL,
  `userSettings` longtext,
  `guid` varchar(64) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `community_handle` varchar(255) DEFAULT 'Anonymous',
  `avatar_name` varchar(255) DEFAULT NULL,
  `about` text,
  `internal_user` tinyint(1) NOT NULL DEFAULT '0',
  `support_chat_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `group_chat_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `post_and_comment_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `bookmark_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `following_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `pro_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `reminder_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `nocd_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `is_survey_onboarding_complete` tinyint(1) NOT NULL DEFAULT '1',
  `is_survey_onboarding_v2_complete` tinyint(1) NOT NULL DEFAULT '1',
  `mod_10` int DEFAULT NULL,
  `internal_debug_build` tinyint(1) DEFAULT NULL,
  `internal_pagination_build` tinyint(1) DEFAULT NULL,
  `needs_password_reset` tinyint(1) DEFAULT NULL,
  `reserving_user_id` tinyint(1) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `advocate_chat_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `show_community_onboarding` varchar(64) DEFAULT 'new_user_community_onboarding' COMMENT 'Enum of NULL, "new_user_community_onboarding", "existing_user_community_onboarding"',
  `can_post_media` tinyint(1) DEFAULT '1',
  `show_interests_on_profile` tinyint DEFAULT '1',
  `show_subtypes_on_profile` tinyint DEFAULT '1',
  `show_caption_on_profile` tinyint DEFAULT '1',
  `show_about_on_profile` tinyint DEFAULT '1',
  `show_questions_on_profile` tinyint DEFAULT '1',
  `avatar_type` varchar(255) DEFAULT 'default' COMMENT 'for enhanced user profiles, specifies custom or default avatar, takes values "custom", "default"',
  `custom_avatar_url` varchar(255) DEFAULT NULL,
  `avatar_id` int DEFAULT '0',
  `bio_image_url` varchar(255) DEFAULT NULL,
  `caption` text,
  `default_profile_bio_image_id` int DEFAULT '1',
  `custom_profile_bio_image_url` varchar(255) DEFAULT NULL,
  `profile_bio_image_type` varchar(255) DEFAULT 'default' COMMENT 'for enhanced user profiles, specifies custom or default profile background, takes values "custom", "default"',
  `original_email` varchar(255) DEFAULT NULL,
  `email_status` varchar(64) DEFAULT NULL,
  `mark_notifications_seen_at` timestamp NULL DEFAULT NULL,
  `has_seen_therapy_welcome_banner` tinyint NOT NULL DEFAULT '0',
  `signup_source` varchar(255) DEFAULT NULL,
  `is_private_linked_account` tinyint(1) DEFAULT NULL,
  `community_handle_is_sensitive` tinyint DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `index_user_on_email` (`email`),
  UNIQUE KEY `index_user_on_guid` (`guid`),
  KEY `community_handle` (`community_handle`),
  KEY `index_user_on_mod` (`mod_10`,`userID`),
  KEY `transaction_id` (`transaction_id`),
  KEY `email` (`email`),
  CONSTRAINT `private_accounts_have_emails` CHECK (((`is_private_linked_account` is null) or (`is_private_linked_account` = 0) or (`email` is not null)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_assets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `bucket` varchar(64) NOT NULL,
  `asset_id` varchar(64) NOT NULL,
  `reference_table` varchar(64) DEFAULT NULL,
  `secret_key` varchar(64) NOT NULL,
  `secret_md5` varchar(64) NOT NULL,
  `pending` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_assets_on_asset_id` (`asset_id`),
  KEY `index_user_assets_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_badges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `badge_name` varchar(255) DEFAULT NULL,
  `user_id` int NOT NULL,
  `is_enabled` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `badge_name_user_id_key` (`badge_name`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_blocks` (
  `user_id` varchar(255) NOT NULL,
  `block_reason` varchar(255) NOT NULL,
  `moderator_email` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_community_profiles` (
  `user_id` int NOT NULL,
  `show_interests` tinyint(1) NOT NULL DEFAULT '1',
  `show_bio` tinyint(1) NOT NULL DEFAULT '1',
  `show_facts` tinyint(1) NOT NULL DEFAULT '1',
  `show_details` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_compulsion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obsessionID` varchar(64) NOT NULL,
  `compulsion` text,
  `compulsionID` varchar(64) NOT NULL,
  `default_compulsion_id` varchar(32) DEFAULT NULL,
  `tempObsID` varchar(255) DEFAULT NULL,
  `updated` bigint NOT NULL,
  `userID` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_compulsion_on_user_id_compulsion_id` (`userID`,`compulsionID`),
  KEY `compulsionID` (`compulsionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_contact` AS SELECT 
 1 AS `userID`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_type` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_type_key` (`user_id`,`contact_type`),
  CONSTRAINT `user_contacts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_counters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `viewed_insurance_banner_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_crm` (
  `userID` int NOT NULL,
  `jsonData` json DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_crp_award_balances` (
  `user_id` int NOT NULL,
  `balance` int NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_crp_award_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `source` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `balance_after` int NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`,`source`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_crp_credit_balances` (
  `user_id` int NOT NULL,
  `balance` int NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_crp_credit_transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `source` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `balance_after` int NOT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`,`source`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_debugging_impersonation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `src_user_email` varchar(255) NOT NULL,
  `impersonate_as_email` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp(6) NULL DEFAULT NULL,
  `src_host` varchar(255) DEFAULT 'app',
  PRIMARY KEY (`id`),
  KEY `src_user_email` (`src_user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_diagnosed` (
  `user_id` int NOT NULL,
  `diagnosis` tinyint(1) NOT NULL,
  `updated_at` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_email_validation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `is_disposable_address` tinyint(1) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `risk` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `mailgun_result` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_email_verification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `temp_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=398 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) NOT NULL,
  `event` varchar(255) NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB AUTO_INCREMENT=522189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_expiration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_apps` (
  `appID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `app` varchar(255) NOT NULL,
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`appID`),
  KEY `index_user_favorite_apps_on_user_id` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_hobbies` (
  `hobbyID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`hobbyID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_interests` (
  `interestID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `interest` varchar(255) NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`interestID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorite_tasks` (
  `taskID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `task` varchar(255) NOT NULL,
  `updated` bigint NOT NULL,
  PRIMARY KEY (`taskID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_flags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `give_back_expanded` tinyint(1) DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_flow_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `flowSessionID` varchar(255) NOT NULL,
  `eventType` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `appVersion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_interests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `interest_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`interest_id`),
  KEY `interest_id` (`interest_id`),
  CONSTRAINT `interests_ibfk_1` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_last_feed_params` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `initial_feed_type` varchar(255) NOT NULL,
  `feed_type` varchar(255) NOT NULL,
  `app_open_id` int DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1188077 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_last_posts_seen` (
  `user_id` int NOT NULL,
  `metadata` json NOT NULL DEFAULT (_utf8mb4'{}'),
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_metadata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` varchar(255) NOT NULL,
  `json_data` json DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT '0',
  `int_value` int DEFAULT NULL,
  `double_value` double DEFAULT NULL,
  `string_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `idx_type_user_id` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_motivations` (
  `motivation_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `motivation` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `selected` tinyint(1) DEFAULT '0',
  `default_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`motivation_id`),
  KEY `index_user_motivations_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_muted_threads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `thread_id` int NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`thread_id`),
  KEY `thread_id` (`thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=946 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification_flows` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  `data` json DEFAULT NULL,
  `seen_at` timestamp(3) NULL DEFAULT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_obsession` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `obsession` text,
  `default_obsession_id` varchar(32) DEFAULT NULL,
  `created_during_onboarding` tinyint(1) DEFAULT '0',
  `subtype_id` varchar(32) DEFAULT NULL,
  `isRPMHidden` tinyint(1) NOT NULL,
  `obsessionID` varchar(64) NOT NULL,
  `updated` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_obsession_on_user_id_obsession_id` (`userID`,`obsessionID`),
  KEY `index_user_obsession_on_user_id_default_obsession_id` (`userID`),
  KEY `obsessionID` (`obsessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `new_posts_go_to_featured` tinyint(1) DEFAULT '0',
  `can_make_replies_to_locked_posts` tinyint(1) DEFAULT '0',
  `trusted_moderator` tinyint(1) DEFAULT '0',
  `can_see_moderation_feed` tinyint(1) DEFAULT '0',
  `ratelimit_bypass` tinyint(1) DEFAULT '0',
  `ctx_menu_dynamic_modules` tinyint(1) DEFAULT '0',
  `ctx_menu_featured_feed` tinyint(1) DEFAULT '0',
  `ctx_menu_hide_for_all` tinyint(1) DEFAULT '0',
  `ctx_menu_lock_threads` tinyint(1) DEFAULT '0',
  `ctx_menu_block_user` tinyint(1) DEFAULT '0',
  `ctx_menu_shadow_user` tinyint(1) DEFAULT '0',
  `ctx_menu_can_mark_as_trigger_warning` tinyint(1) DEFAULT '0',
  `ctx_menu_can_mark_subtypes` tinyint(1) DEFAULT '0',
  `ctx_menu_can_mark_with_subtypes` tinyint(1) DEFAULT '0',
  `ctx_menu_can_see_link_to_dynamic_context_menus` tinyint(1) DEFAULT '0',
  `ctx_menu_moderation_flags` tinyint(1) DEFAULT '0',
  `ctx_menu_highlight_reply` tinyint(1) DEFAULT '0',
  `pagination_viewer` tinyint(1) DEFAULT '0',
  `post_feed_placement_position_type_metadata_viewer` tinyint(1) DEFAULT '0',
  `post_current_flag_viewer` tinyint(1) DEFAULT '0',
  `post_user_id_viewer` tinyint(1) DEFAULT '0',
  `geo_viewer` tinyint(1) DEFAULT '0',
  `device_detail_viewer` tinyint(1) DEFAULT '0',
  `therapy_interaction_viewer` tinyint(1) DEFAULT '0',
  `user_creation_info_viewer` tinyint(1) DEFAULT '0',
  `user_who_are_you_viewer` tinyint(1) DEFAULT '0',
  `user_goals_from_nocd_viewer` tinyint(1) DEFAULT '0',
  `post_annotation_viewer` tinyint(1) DEFAULT '0',
  `view_count_viewer` tinyint(1) DEFAULT '0',
  `post_frequency_viewer` tinyint(1) DEFAULT '0',
  `app_opens_viewer` tinyint(1) DEFAULT '0',
  `post_flags_viewer` tinyint(1) DEFAULT '0',
  `is_user_internal` tinyint(1) DEFAULT '0',
  `can_transfer_therapist` tinyint(1) DEFAULT NULL,
  `can_schedule_session` tinyint(1) DEFAULT NULL,
  `can_reschedule_session` tinyint(1) DEFAULT NULL,
  `can_cancel_session` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_personalized_feeds` (
  `user_id` int NOT NULL,
  `metadata` json NOT NULL DEFAULT (_utf8mb4'{}'),
  `usage_metadata` json NOT NULL DEFAULT (_utf8mb4'{}'),
  `feed_created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `feed_used_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_popular_feed_last_seen_at` (
  `user_id` int NOT NULL,
  `last_seen_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_post_rate_limit_log` (
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `total_count` int unsigned NOT NULL DEFAULT '0',
  `timestamps` json DEFAULT NULL,
  `created_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`user_id`,`post_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_fact_responses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `fact_id` int NOT NULL,
  `response` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_fact` (`user_id`,`fact_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_facts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fact` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_ocd_detail_responses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `detail_id` int NOT NULL,
  `response` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_user_detail` (`user_id`,`detail_id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_ocd_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_question_answers` (
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` text NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_active` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `selected` tinyint DEFAULT '0',
  PRIMARY KEY (`user_id`,`question_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `user_profile_questions_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `user_profile_questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `question` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_promos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `promo_code` varchar(255) NOT NULL,
  `notes` text,
  `status` varchar(255) NOT NULL DEFAULT 'Not Applied',
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `promo_code` (`promo_code`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_promos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_push_notification_setting_ledger` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `category` varchar(255) NOT NULL,
  `old_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `new_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_push_notification_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `community_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `messages_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `therapy_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `marketing_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_resolved_insurances` (
  `user_id` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `insurance` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `idx_state_insurance` (`state`,`insurance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_self_service_overrides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `operation` enum('transfer','schedule','reschedule','cancel') DEFAULT NULL,
  `reason` varchar(255) NOT NULL,
  `deleted` tinyint DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_self_service_overrides_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_state_insurances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `state` varchar(255) NOT NULL,
  `insurance` varchar(255) NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `created_at` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `deviceId` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `auditing` varchar(255) DEFAULT NULL,
  `auditor` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_tokens_on_access_token` (`accessToken`),
  KEY `index_user_tokens_on_user_id_device_id` (`userID`,`deviceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_trigger` (
  `id` int NOT NULL AUTO_INCREMENT,
  `obsessionID` varchar(64) NOT NULL,
  `trigger` text,
  `anxiety` int NOT NULL COMMENT 'legacy column -- use severity instead',
  `triggerID` varchar(64) NOT NULL,
  `default_trigger_id` varchar(32) DEFAULT NULL,
  `tempObsID` varchar(255) DEFAULT NULL,
  `updated` bigint NOT NULL,
  `userID` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) DEFAULT '0',
  `severity` int NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_on_trigger_id` (`triggerID`),
  KEY `index_user_trigger_on_user_id_trigger_id` (`userID`,`triggerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_uploaded_insurance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `front_image` varchar(255) DEFAULT NULL,
  `rear_image` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` varchar(255) DEFAULT NULL,
  `sub_address` varchar(255) DEFAULT NULL,
  `sub_city` varchar(255) DEFAULT NULL,
  `sub_zip_code` varchar(255) DEFAULT NULL,
  `sub_state` varchar(255) DEFAULT NULL,
  `sub_first_name` varchar(255) DEFAULT NULL,
  `sub_last_name` varchar(255) DEFAULT NULL,
  `sub_relation_to_patient` varchar(255) DEFAULT NULL,
  `sub_dob` date DEFAULT NULL,
  `sub_gender` varchar(255) DEFAULT NULL,
  `member_id` varchar(255) DEFAULT NULL,
  `group_number` varchar(255) DEFAULT NULL,
  `prior_auth` varchar(255) DEFAULT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `other_insurance` varchar(255) DEFAULT NULL,
  `insurance_id` int DEFAULT NULL,
  `using_medicaid_or_medicare` tinyint DEFAULT NULL,
  `mbi_id` int DEFAULT NULL,
  `auto_elig_errors` text,
  `needs_review` tinyint(1) DEFAULT '0',
  `is_third_party_admin` tinyint(1) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insurance_card_verification_status` enum('cash_only','insurance_rejected','insurance_verified') DEFAULT NULL,
  `insurance_card_verification_status_updated_at` timestamp NULL DEFAULT NULL,
  `insurance_card_verification_status_updated_by` varchar(255) DEFAULT NULL,
  `card_active_for_year` varchar(255) DEFAULT NULL,
  `predicted_sub_first_name` varchar(255) DEFAULT NULL,
  `predicted_sub_last_name` varchar(255) DEFAULT NULL,
  `predicted_member_id` varchar(255) DEFAULT NULL,
  `predicted_group_number` varchar(255) DEFAULT NULL,
  `predicted_insurance_id` int DEFAULT NULL,
  `predicted_reason` text,
  `is_primary` tinyint(1) DEFAULT '1',
  `is_multi_upload` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_uploaded_insurance_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `premium_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `user_view` AS SELECT 
 1 AS `email`,
 1 AS `internal_user`,
 1 AS `guid`,
 1 AS `community_handle`,
 1 AS `avatar_name`,
 1 AS `user_created_at`,
 1 AS `id`,
 1 AS `deviceID`,
 1 AS `sessionID`,
 1 AS `firstOpen`,
 1 AS `userID`,
 1 AS `tokenID`,
 1 AS `reauthed`,
 1 AS `register`,
 1 AS `login`,
 1 AS `logout`,
 1 AS `auth_at`,
 1 AS `deauth_at`,
 1 AS `deviceType`,
 1 AS `bundleName`,
 1 AS `version`,
 1 AS `buildID`,
 1 AS `modelName`,
 1 AS `osVersion`,
 1 AS `locale`,
 1 AS `timezone`,
 1 AS `ipAddress`,
 1 AS `country`,
 1 AS `state`,
 1 AS `city`,
 1 AS `zip`,
 1 AS `latitude`,
 1 AS `longitude`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `ended_at`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userSettings` (
  `settingID` int NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `timeForSession` int DEFAULT NULL,
  `avgResTimer` int DEFAULT NULL,
  `hourForSession` int DEFAULT NULL,
  `dayForSession` int DEFAULT NULL,
  `userSettings` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`settingID`),
  KEY `index_user_settings_on_user_id` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilization_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `day` date DEFAULT NULL,
  `completed_sessions` int DEFAULT NULL,
  `late_cancels` int DEFAULT NULL,
  `pto_credit` int DEFAULT NULL,
  `audit` json DEFAULT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `working_hours` int DEFAULT NULL,
  `first_sessions` int DEFAULT NULL,
  `scheduled_sessions` int DEFAULT NULL,
  `pto_only_credit` decimal(10,4) DEFAULT NULL,
  `adhoc_only_credit` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34073 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilization_history_v2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clinician_email` varchar(255) NOT NULL,
  `day` date DEFAULT NULL,
  `completed_sessions` int DEFAULT NULL,
  `late_cancels` int DEFAULT NULL,
  `pto_only_credit` decimal(10,4) DEFAULT NULL,
  `holiday_only_credit` int DEFAULT NULL,
  `adhoc_only_credit` decimal(10,4) DEFAULT NULL,
  `total_leave_credit` decimal(10,4) GENERATED ALWAYS AS (((`pto_only_credit` + `holiday_only_credit`) + `adhoc_only_credit`)) VIRTUAL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `working_hours` int DEFAULT NULL,
  `first_sessions` int DEFAULT NULL,
  `scheduled_sessions` int DEFAULT NULL,
  `week` date GENERATED ALWAYS AS ((case when (dayofweek(`day`) = 1) then `day` else (`day` - interval (dayofweek(`day`) - 1) day) end)) STORED,
  `signed_minutes` int DEFAULT NULL,
  `s_adj_cal_util` int GENERATED ALWAYS AS (((ifnull(`completed_sessions`,0) + ifnull(`total_leave_credit`,0)) + ifnull(`late_cancels`,0))) STORED,
  `s_adj_sign_util` int GENERATED ALWAYS AS (((ifnull(`signed_minutes`,0) + ifnull(`total_leave_credit`,0)) + ifnull(`late_cancels`,0))) STORED,
  `uncredited_leave` decimal(10,4) DEFAULT NULL,
  `grant_only_credit` decimal(10,4) DEFAULT NULL,
  `v_adj_cal_util` int GENERATED ALWAYS AS ((((ifnull(`completed_sessions`,0) + ifnull(`total_leave_credit`,0)) + ifnull(`late_cancels`,0)) + ifnull(`grant_only_credit`,0))) VIRTUAL,
  `v_adj_sign_util` int GENERATED ALWAYS AS ((((ifnull(`signed_minutes`,0) + ifnull(`total_leave_credit`,0)) + ifnull(`late_cancels`,0)) + ifnull(`grant_only_credit`,0))) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `day_clinician_email` (`day`,`clinician_email`),
  KEY `clinician_email_day` (`clinician_email`,`day`),
  KEY `week_clinician_email` (`week`,`clinician_email`),
  KEY `clinician_email_week` (`clinician_email`,`week`)
) ENGINE=InnoDB AUTO_INCREMENT=5253731 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_apero_line_applications_agged` AS SELECT 
 1 AS `line_item_id`,
 1 AS `li_total_in_cents`,
 1 AS `count_li_total`,
 1 AS `adjustment_total_in_cents`,
 1 AS `payment_total_in_cents`,
 1 AS `count_adjustment_total`,
 1 AS `count_payment_total`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_apero_line_applications_joined` AS SELECT 
 1 AS `visit_id`,
 1 AS `line_item_id`,
 1 AS `appt_id`,
 1 AS `__pt_rowid`,
 1 AS `id`,
 1 AS `adjustment_reason`,
 1 AS `amount`,
 1 AS `application_type`,
 1 AS `line_item`,
 1 AS `payment`,
 1 AS `is_deleted`,
 1 AS `deleted_at`,
 1 AS `amount_in_cents`,
 1 AS `created`,
 1 AS `line_application_amount_in_cents`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_apero_line_items_agged` AS SELECT 
 1 AS `line_item_id`,
 1 AS `amount_charged`,
 1 AS `amount_charged_as_cents`,
 1 AS `line_item_linked_ehr_id`,
 1 AS `service_date`,
 1 AS `visit`,
 1 AS `visit_id`,
 1 AS `created`,
 1 AS `created_date`,
 1 AS `created_year`,
 1 AS `created_month`,
 1 AS `created_week`,
 1 AS `days_since_created`,
 1 AS `insurance_primary`,
 1 AS `linked_member_appointments_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_provider_id`,
 1 AS `visit_status`,
 1 AS `visit_date`,
 1 AS `filing_delay_in_days`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`,
 1 AS `trading_partner_id`,
 1 AS `linked_user_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `name`,
 1 AS `state_code`,
 1 AS `li_total_in_cents`,
 1 AS `adjustment_total_in_cents`,
 1 AS `payment_total_in_cents`,
 1 AS `count_li_total`,
 1 AS `count_adjustment_total`,
 1 AS `count_payment_total`,
 1 AS `remaining_amount_in_cents`,
 1 AS `apero_allowed_amount`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_apero_line_items_joined` AS SELECT 
 1 AS `line_item_id`,
 1 AS `amount_charged`,
 1 AS `amount_charged_as_cents`,
 1 AS `line_item_linked_ehr_id`,
 1 AS `service_date`,
 1 AS `visit`,
 1 AS `visit_id`,
 1 AS `created`,
 1 AS `created_date`,
 1 AS `created_year`,
 1 AS `created_month`,
 1 AS `created_week`,
 1 AS `days_since_created`,
 1 AS `insurance_primary`,
 1 AS `linked_member_appointments_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_provider_id`,
 1 AS `visit_status`,
 1 AS `visit_date`,
 1 AS `filing_delay_in_days`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`,
 1 AS `trading_partner_id`,
 1 AS `linked_user_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `name`,
 1 AS `state_code`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_apero_visits_joined` AS SELECT 
 1 AS `visit_id`,
 1 AS `created`,
 1 AS `created_date`,
 1 AS `created_year`,
 1 AS `created_month`,
 1 AS `created_week`,
 1 AS `days_since_created`,
 1 AS `insurance_primary`,
 1 AS `linked_member_appointments_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_provider_id`,
 1 AS `visit_status`,
 1 AS `visit_date`,
 1 AS `filing_delay_in_days`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`,
 1 AS `trading_partner_id`,
 1 AS `linked_user_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `name`,
 1 AS `state_code`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_calendar_dates_insurance_scheduled_rates` AS SELECT 
 1 AS `day`,
 1 AS `insurance_id`,
 1 AS `insurance`,
 1 AS `cpt_code`,
 1 AS `masters_rate`,
 1 AS `phd_rate`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_calendar_dates_with_payers` AS SELECT 
 1 AS `day`,
 1 AS `insurance_id`,
 1 AS `insurance`,
 1 AS `cpt_code`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_appointments_agged` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_visit_id`,
 1 AS `apero_lineitem_id`,
 1 AS `start_time_in_iso8601_utc`,
 1 AS `summary_cpt`,
 1 AS `session_length`,
 1 AS `sign_note_session_length`,
 1 AS `clinician_email`,
 1 AS `session_type`,
 1 AS `start_ts`,
 1 AS `completion_at`,
 1 AS `billing_state`,
 1 AS `member_billing_coverage_id`,
 1 AS `member_billing_coverage_override`,
 1 AS `needs_billing_review`,
 1 AS `needs_billing_review_notes`,
 1 AS `appointment_state`,
 1 AS `appointment_type`,
 1 AS `amd_appt_backfill`,
 1 AS `ehr_origin_source`,
 1 AS `cancellation_author`,
 1 AS `cancellation_ts`,
 1 AS `cancellation_reason`,
 1 AS `cancelled_within_24_hours`,
 1 AS `cancelled_waive_late_fee`,
 1 AS `needs_review_notes`,
 1 AS `billable_cancelled_session`,
 1 AS `coverage_id`,
 1 AS `plan`,
 1 AS `cash_pay_30_min`,
 1 AS `cash_pay_45_min`,
 1 AS `cash_pay_60_min`,
 1 AS `cash_pay_90_min`,
 1 AS `insurance_id_primary`,
 1 AS `cash_amount_from_session_length`,
 1 AS `cash_amount_from_cancelled_session_length`,
 1 AS `insurance`,
 1 AS `apero_trading_partner_id`,
 1 AS `days_to_invoice_claim`,
 1 AS `last_day_to_file`,
 1 AS `is_test_user`,
 1 AS `member_balance_restrictions`,
 1 AS `customer_id`,
 1 AS `member_timezone`,
 1 AS `appt_time_in_member_timezone`,
 1 AS `appt_date_in_member_timezone`,
 1 AS `payment_plan_frequency`,
 1 AS `payment_plan_active_after`,
 1 AS `auto_billing_status`,
 1 AS `billing_paused_states`,
 1 AS `assigned_clinician_user_id`,
 1 AS `bill_late_cancels`,
 1 AS `bill_ptsd_as_cash`,
 1 AS `licensing_level`,
 1 AS `rate`,
 1 AS `degree_type`,
 1 AS `copay_cents`,
 1 AS `member_billing_insurances_id`,
 1 AS `behavioral_health_insurance_id`,
 1 AS `apero_coverage_id`,
 1 AS `has_invoice`,
 1 AS `member_invoices_id`,
 1 AS `member_invoices_type`,
 1 AS `invoice_currency`,
 1 AS `member_invoices_billing_coverages_id`,
 1 AS `invoice_copay_amount`,
 1 AS `member_invoices_plan`,
 1 AS `invoice_amount`,
 1 AS `member_appointments_retool_url`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`,
 1 AS `owed_amount`,
 1 AS `total_mr`,
 1 AS `adjustment_total`,
 1 AS `payment_total`,
 1 AS `manually_reported_payment_total`,
 1 AS `apero_adjustment_total`,
 1 AS `apero_payment_total`,
 1 AS `adjustment_count`,
 1 AS `payment_count`,
 1 AS `manually_reported_payment_count`,
 1 AS `apero_adjustment_count`,
 1 AS `apero_payment_count`,
 1 AS `allowed_amount`,
 1 AS `patient_responsibility`,
 1 AS `billed_amount`,
 1 AS `member_paid`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_appointments_agged_with_ins_rates` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_visit_id`,
 1 AS `apero_lineitem_id`,
 1 AS `start_time_in_iso8601_utc`,
 1 AS `summary_cpt`,
 1 AS `session_length`,
 1 AS `sign_note_session_length`,
 1 AS `clinician_email`,
 1 AS `session_type`,
 1 AS `start_ts`,
 1 AS `completion_at`,
 1 AS `billing_state`,
 1 AS `member_billing_coverage_id`,
 1 AS `member_billing_coverage_override`,
 1 AS `needs_billing_review`,
 1 AS `needs_billing_review_notes`,
 1 AS `appointment_state`,
 1 AS `appointment_type`,
 1 AS `amd_appt_backfill`,
 1 AS `ehr_origin_source`,
 1 AS `cancellation_author`,
 1 AS `cancellation_ts`,
 1 AS `cancellation_reason`,
 1 AS `cancelled_within_24_hours`,
 1 AS `cancelled_waive_late_fee`,
 1 AS `needs_review_notes`,
 1 AS `billable_cancelled_session`,
 1 AS `coverage_id`,
 1 AS `plan`,
 1 AS `cash_pay_30_min`,
 1 AS `cash_pay_45_min`,
 1 AS `cash_pay_60_min`,
 1 AS `cash_pay_90_min`,
 1 AS `insurance_id_primary`,
 1 AS `cash_amount_from_session_length`,
 1 AS `cash_amount_from_cancelled_session_length`,
 1 AS `insurance`,
 1 AS `apero_trading_partner_id`,
 1 AS `days_to_invoice_claim`,
 1 AS `last_day_to_file`,
 1 AS `is_test_user`,
 1 AS `member_balance_restrictions`,
 1 AS `customer_id`,
 1 AS `member_timezone`,
 1 AS `appt_time_in_member_timezone`,
 1 AS `appt_date_in_member_timezone`,
 1 AS `payment_plan_frequency`,
 1 AS `payment_plan_active_after`,
 1 AS `auto_billing_status`,
 1 AS `billing_paused_states`,
 1 AS `assigned_clinician_user_id`,
 1 AS `bill_late_cancels`,
 1 AS `bill_ptsd_as_cash`,
 1 AS `licensing_level`,
 1 AS `rate`,
 1 AS `degree_type`,
 1 AS `copay_cents`,
 1 AS `member_billing_insurances_id`,
 1 AS `behavioral_health_insurance_id`,
 1 AS `apero_coverage_id`,
 1 AS `has_invoice`,
 1 AS `member_invoices_id`,
 1 AS `member_invoices_type`,
 1 AS `invoice_currency`,
 1 AS `member_invoices_billing_coverages_id`,
 1 AS `invoice_copay_amount`,
 1 AS `member_invoices_plan`,
 1 AS `invoice_amount`,
 1 AS `member_appointments_retool_url`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`,
 1 AS `owed_amount`,
 1 AS `total_mr`,
 1 AS `adjustment_total`,
 1 AS `payment_total`,
 1 AS `manually_reported_payment_total`,
 1 AS `apero_adjustment_total`,
 1 AS `apero_payment_total`,
 1 AS `adjustment_count`,
 1 AS `payment_count`,
 1 AS `manually_reported_payment_count`,
 1 AS `apero_adjustment_count`,
 1 AS `apero_payment_count`,
 1 AS `allowed_amount`,
 1 AS `patient_responsibility`,
 1 AS `billed_amount`,
 1 AS `member_paid`,
 1 AS `insurance_masters_rate`,
 1 AS `insurance_phd_rate`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_appointments_apero_invoices_joined` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_visit_id`,
 1 AS `apero_lineitem_id`,
 1 AS `start_time_in_iso8601_utc`,
 1 AS `summary_cpt`,
 1 AS `session_length`,
 1 AS `sign_note_session_length`,
 1 AS `clinician_email`,
 1 AS `session_type`,
 1 AS `start_ts`,
 1 AS `completion_at`,
 1 AS `billing_state`,
 1 AS `member_billing_coverage_id`,
 1 AS `member_billing_coverage_override`,
 1 AS `needs_billing_review`,
 1 AS `needs_billing_review_notes`,
 1 AS `appointment_state`,
 1 AS `appointment_type`,
 1 AS `amd_appt_backfill`,
 1 AS `ehr_origin_source`,
 1 AS `cancellation_author`,
 1 AS `cancellation_ts`,
 1 AS `cancellation_reason`,
 1 AS `cancelled_within_24_hours`,
 1 AS `cancelled_waive_late_fee`,
 1 AS `needs_review_notes`,
 1 AS `billable_cancelled_session`,
 1 AS `coverage_id`,
 1 AS `plan`,
 1 AS `cash_pay_30_min`,
 1 AS `cash_pay_45_min`,
 1 AS `cash_pay_60_min`,
 1 AS `cash_pay_90_min`,
 1 AS `insurance_id_primary`,
 1 AS `cash_amount_from_session_length`,
 1 AS `cash_amount_from_cancelled_session_length`,
 1 AS `insurance`,
 1 AS `apero_trading_partner_id`,
 1 AS `days_to_invoice_claim`,
 1 AS `last_day_to_file`,
 1 AS `is_test_user`,
 1 AS `member_balance_restrictions`,
 1 AS `customer_id`,
 1 AS `member_timezone`,
 1 AS `appt_time_in_member_timezone`,
 1 AS `appt_date_in_member_timezone`,
 1 AS `payment_plan_frequency`,
 1 AS `payment_plan_active_after`,
 1 AS `auto_billing_status`,
 1 AS `billing_paused_states`,
 1 AS `assigned_clinician_user_id`,
 1 AS `bill_late_cancels`,
 1 AS `bill_ptsd_as_cash`,
 1 AS `licensing_level`,
 1 AS `rate`,
 1 AS `degree_type`,
 1 AS `copay_cents`,
 1 AS `member_billing_insurances_id`,
 1 AS `behavioral_health_insurance_id`,
 1 AS `apero_coverage_id`,
 1 AS `has_invoice`,
 1 AS `member_invoices_id`,
 1 AS `member_invoices_type`,
 1 AS `invoice_currency`,
 1 AS `member_invoices_billing_coverages_id`,
 1 AS `invoice_copay_amount`,
 1 AS `member_invoices_plan`,
 1 AS `invoice_amount`,
 1 AS `member_appointments_retool_url`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`,
 1 AS `owed_amount`,
 1 AS `total_mr`,
 1 AS `adjustment_total`,
 1 AS `payment_total`,
 1 AS `manually_reported_payment_total`,
 1 AS `apero_adjustment_total`,
 1 AS `apero_payment_total`,
 1 AS `adjustment_count`,
 1 AS `payment_count`,
 1 AS `manually_reported_payment_count`,
 1 AS `apero_adjustment_count`,
 1 AS `apero_payment_count`,
 1 AS `allowed_amount`,
 1 AS `patient_responsibility`,
 1 AS `billed_amount`,
 1 AS `member_paid`,
 1 AS `line_item_id`,
 1 AS `amount_charged`,
 1 AS `amount_charged_as_cents`,
 1 AS `line_item_linked_ehr_id`,
 1 AS `service_date`,
 1 AS `visit`,
 1 AS `visit_id`,
 1 AS `created`,
 1 AS `created_date`,
 1 AS `created_year`,
 1 AS `created_month`,
 1 AS `created_week`,
 1 AS `days_since_created`,
 1 AS `insurance_primary`,
 1 AS `linked_member_appointments_id`,
 1 AS `apero_provider_id`,
 1 AS `visit_status`,
 1 AS `visit_date`,
 1 AS `filing_delay_in_days`,
 1 AS `trading_partner_id`,
 1 AS `linked_user_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `email`,
 1 AS `name`,
 1 AS `state_code`,
 1 AS `li_total_in_cents`,
 1 AS `adjustment_total_in_cents`,
 1 AS `payment_total_in_cents`,
 1 AS `count_li_total`,
 1 AS `count_adjustment_total`,
 1 AS `count_payment_total`,
 1 AS `remaining_amount_in_cents`,
 1 AS `apero_allowed_amount`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_appointments_joined` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_visit_id`,
 1 AS `apero_lineitem_id`,
 1 AS `start_time_in_iso8601_utc`,
 1 AS `summary_cpt`,
 1 AS `session_length`,
 1 AS `sign_note_session_length`,
 1 AS `clinician_email`,
 1 AS `session_type`,
 1 AS `start_ts`,
 1 AS `completion_at`,
 1 AS `billing_state`,
 1 AS `member_billing_coverage_id`,
 1 AS `member_billing_coverage_override`,
 1 AS `needs_billing_review`,
 1 AS `needs_billing_review_notes`,
 1 AS `appointment_state`,
 1 AS `appointment_type`,
 1 AS `amd_appt_backfill`,
 1 AS `ehr_origin_source`,
 1 AS `cancellation_author`,
 1 AS `cancellation_ts`,
 1 AS `cancellation_reason`,
 1 AS `cancelled_within_24_hours`,
 1 AS `cancelled_waive_late_fee`,
 1 AS `needs_review_notes`,
 1 AS `billable_cancelled_session`,
 1 AS `coverage_id`,
 1 AS `plan`,
 1 AS `cash_pay_30_min`,
 1 AS `cash_pay_45_min`,
 1 AS `cash_pay_60_min`,
 1 AS `cash_pay_90_min`,
 1 AS `insurance_id_primary`,
 1 AS `cash_amount_from_session_length`,
 1 AS `cash_amount_from_cancelled_session_length`,
 1 AS `insurance`,
 1 AS `apero_trading_partner_id`,
 1 AS `days_to_invoice_claim`,
 1 AS `last_day_to_file`,
 1 AS `is_test_user`,
 1 AS `member_balance_restrictions`,
 1 AS `customer_id`,
 1 AS `member_timezone`,
 1 AS `appt_time_in_member_timezone`,
 1 AS `appt_date_in_member_timezone`,
 1 AS `payment_plan_frequency`,
 1 AS `payment_plan_active_after`,
 1 AS `auto_billing_status`,
 1 AS `billing_paused_states`,
 1 AS `assigned_clinician_user_id`,
 1 AS `bill_late_cancels`,
 1 AS `bill_ptsd_as_cash`,
 1 AS `licensing_level`,
 1 AS `rate`,
 1 AS `degree_type`,
 1 AS `copay_cents`,
 1 AS `member_billing_insurances_id`,
 1 AS `behavioral_health_insurance_id`,
 1 AS `apero_coverage_id`,
 1 AS `has_invoice`,
 1 AS `member_invoices_id`,
 1 AS `member_invoices_type`,
 1 AS `invoice_currency`,
 1 AS `member_invoices_billing_coverages_id`,
 1 AS `invoice_copay_amount`,
 1 AS `member_invoices_plan`,
 1 AS `invoice_amount`,
 1 AS `member_appointments_retool_url`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_appointments_with_guessed_coverages` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `apero_patient_id`,
 1 AS `apero_visit_id`,
 1 AS `apero_lineitem_id`,
 1 AS `start_time_in_iso8601_utc`,
 1 AS `summary_cpt`,
 1 AS `session_length`,
 1 AS `sign_note_session_length`,
 1 AS `clinician_email`,
 1 AS `session_type`,
 1 AS `start_ts`,
 1 AS `completion_at`,
 1 AS `billing_state`,
 1 AS `member_billing_coverage_id`,
 1 AS `member_billing_coverage_override`,
 1 AS `needs_billing_review`,
 1 AS `needs_billing_review_notes`,
 1 AS `appointment_state`,
 1 AS `appointment_type`,
 1 AS `amd_appt_backfill`,
 1 AS `ehr_origin_source`,
 1 AS `cancellation_author`,
 1 AS `cancellation_ts`,
 1 AS `cancellation_reason`,
 1 AS `cancelled_within_24_hours`,
 1 AS `cancelled_waive_late_fee`,
 1 AS `needs_review_notes`,
 1 AS `billable_cancelled_session`,
 1 AS `coverage_id`,
 1 AS `plan`,
 1 AS `cash_pay_30_min`,
 1 AS `cash_pay_45_min`,
 1 AS `cash_pay_60_min`,
 1 AS `cash_pay_90_min`,
 1 AS `insurance_id_primary`,
 1 AS `cash_amount_from_session_length`,
 1 AS `cash_amount_from_cancelled_session_length`,
 1 AS `insurance`,
 1 AS `apero_trading_partner_id`,
 1 AS `days_to_invoice_claim`,
 1 AS `last_day_to_file`,
 1 AS `is_test_user`,
 1 AS `member_balance_restrictions`,
 1 AS `customer_id`,
 1 AS `member_timezone`,
 1 AS `appt_time_in_member_timezone`,
 1 AS `appt_date_in_member_timezone`,
 1 AS `payment_plan_frequency`,
 1 AS `payment_plan_active_after`,
 1 AS `auto_billing_status`,
 1 AS `billing_paused_states`,
 1 AS `assigned_clinician_user_id`,
 1 AS `bill_late_cancels`,
 1 AS `bill_ptsd_as_cash`,
 1 AS `licensing_level`,
 1 AS `rate`,
 1 AS `degree_type`,
 1 AS `copay_cents`,
 1 AS `member_billing_insurances_id`,
 1 AS `behavioral_health_insurance_id`,
 1 AS `apero_coverage_id`,
 1 AS `has_invoice`,
 1 AS `member_invoices_id`,
 1 AS `member_invoices_type`,
 1 AS `invoice_currency`,
 1 AS `member_invoices_billing_coverages_id`,
 1 AS `invoice_copay_amount`,
 1 AS `member_invoices_plan`,
 1 AS `invoice_amount`,
 1 AS `member_appointments_retool_url`,
 1 AS `apero_patient_url`,
 1 AS `apero_visit_url`,
 1 AS `guessed_coverage_id`,
 1 AS `guessed_plan`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_charges_v2_agged` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `payment_table`,
 1 AS `payment_id`,
 1 AS `payment_amount`,
 1 AS `payment_currency`,
 1 AS `payment_at`,
 1 AS `payment_description`,
 1 AS `created_at`,
 1 AS `payment_at_date`,
 1 AS `net_applyable`,
 1 AS `net_applied`,
 1 AS `num_applications`,
 1 AS `amount_to_apply`,
 1 AS `was_lost_dispute`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_charges_v2_grouped_by_user_id` AS SELECT 
 1 AS `user_id`,
 1 AS `sum_charges`,
 1 AS `count_charges`,
 1 AS `count_stripe_charges`,
 1 AS `count_stripe_refunds`,
 1 AS `count_stripe_disputes`,
 1 AS `sum_stripe_charges`,
 1 AS `sum_stripe_refunds`,
 1 AS `sum_stripe_disputes`,
 1 AS `most_recent_charge_at`,
 1 AS `days_since_last_charge`,
 1 AS `days_since_last_payment_plan_charge`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_line_applications_group_by_member_charges_id` AS SELECT 
 1 AS `member_charges_id`,
 1 AS `total_applied`,
 1 AS `total_count`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_line_applications_grouped_by_invoice` AS SELECT 
 1 AS `user_id`,
 1 AS `member_invoices_id`,
 1 AS `la_total`,
 1 AS `adjustment_total`,
 1 AS `payment_total`,
 1 AS `manually_reported_payment_total`,
 1 AS `apero_adjustment_total`,
 1 AS `apero_payment_total`,
 1 AS `adjustment_count`,
 1 AS `payment_count`,
 1 AS `manually_reported_payment_count`,
 1 AS `apero_adjustment_count`,
 1 AS `apero_payment_count`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_line_applications_joined` AS SELECT 
 1 AS `id`,
 1 AS `ma_id`,
 1 AS `member_invoices_id`,
 1 AS `user_id`,
 1 AS `application_type`,
 1 AS `amount`,
 1 AS `member_charges_type`,
 1 AS `member_charges_id`,
 1 AS `adjustment_reason`,
 1 AS `member_note`,
 1 AS `internal_note`,
 1 AS `date_posted`,
 1 AS `authorizer`,
 1 AS `unapplied_by_line_application_id`,
 1 AS `member_billing_promos_id`,
 1 AS `reverses_line_application_id`,
 1 AS `apero_line_application_id`,
 1 AS `adjustment_detail`,
 1 AS `updated_by`,
 1 AS `updated_at`,
 1 AS `updated_reason`,
 1 AS `deleted_by`,
 1 AS `deleted_at`,
 1 AS `deleted_reason`,
 1 AS `member_invs_id`,
 1 AS `member_appointments_id`,
 1 AS `start_ts`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_member_refunds_v2_agged` AS SELECT 
 1 AS `stripe_refund_charge_id`,
 1 AS `total_refund`,
 1 AS `total_count`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_premium_users_agged` AS SELECT 
 1 AS `user_id`,
 1 AS `customer_id`,
 1 AS `diagnostic_timezone`,
 1 AS `apero_patient_id`,
 1 AS `auto_billing_status`,
 1 AS `is_test_user`,
 1 AS `billing_paused_states`,
 1 AS `credit_card_status`,
 1 AS `assigned_clinician_user_id`,
 1 AS `bill_late_cancels`,
 1 AS `member_balance_restrictions`,
 1 AS `bill_ptsd_as_cash`,
 1 AS `payment_plan_frequency`,
 1 AS `payment_plan_amount`,
 1 AS `payment_plan_currency`,
 1 AS `payment_plan_active_after`,
 1 AS `balance_status`,
 1 AS `balance_status_updated_at`,
 1 AS `premium_users_retool_url`,
 1 AS `sum_stripe_charges`,
 1 AS `sum_stripe_refunds`,
 1 AS `sum_stripe_disputes`,
 1 AS `count_stripe_charges`,
 1 AS `count_stripe_refunds`,
 1 AS `count_stripe_disputes`,
 1 AS `most_recent_charge_at`,
 1 AS `last_charge_status`,
 1 AS `last_charge_amount`,
 1 AS `days_since_last_charge`,
 1 AS `days_since_last_payment_plan_charge`,
 1 AS `owed_amount`,
 1 AS `total_mr`,
 1 AS `net_charges`,
 1 AS `unapplied_amount`,
 1 AS `applyable_amount`,
 1 AS `adjustment_total`,
 1 AS `payment_total`,
 1 AS `apero_adjustment_total`,
 1 AS `apero_payment_total`,
 1 AS `adjustment_count`,
 1 AS `payment_count`,
 1 AS `apero_adjustment_count`,
 1 AS `apero_payment_count`,
 1 AS `num_appointments`,
 1 AS `first_appt_dos`,
 1 AS `last_appt_dos`,
 1 AS `num_scheduled_appts`,
 1 AS `num_cancelled_appts`,
 1 AS `num_completed_appts`,
 1 AS `num_cash_invoices`,
 1 AS `num_insurance_invoices`,
 1 AS `billing_flag_high_balance`,
 1 AS `billing_flag_failed_last_charge`,
 1 AS `active_coverage`,
 1 AS `plan`,
 1 AS `clinician_email`,
 1 AS `first_call_at`,
 1 AS `most_recent_call_at`,
 1 AS `converted`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_premium_users_grouped_by_member_appointments` AS SELECT 
 1 AS `user_id`,
 1 AS `num_appointments`,
 1 AS `first_appt_dos`,
 1 AS `last_appt_dos`,
 1 AS `num_scheduled_appts`,
 1 AS `num_cancelled_appts`,
 1 AS `num_billable_cancelled_appts`,
 1 AS `num_completed_appts`,
 1 AS `num_cash_invoices`,
 1 AS `num_insurance_invoices`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_billing_premium_users_joined` AS SELECT 
 1 AS `user_id`,
 1 AS `customer_id`,
 1 AS `diagnostic_timezone`,
 1 AS `apero_patient_id`,
 1 AS `auto_billing_status`,
 1 AS `is_test_user`,
 1 AS `billing_paused_states`,
 1 AS `credit_card_status`,
 1 AS `assigned_clinician_user_id`,
 1 AS `bill_late_cancels`,
 1 AS `member_balance_restrictions`,
 1 AS `bill_ptsd_as_cash`,
 1 AS `payment_plan_frequency`,
 1 AS `payment_plan_amount`,
 1 AS `payment_plan_currency`,
 1 AS `payment_plan_active_after`,
 1 AS `balance_status`,
 1 AS `balance_status_updated_at`,
 1 AS `premium_users_retool_url`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_calendar_dates` AS SELECT 
 1 AS `id`,
 1 AS `day`,
 1 AS `dayname`,
 1 AS `monthname`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_member_billing_insurances_windowed_agg` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `insurance_id`,
 1 AS `behavioral_health_insurance_id`,
 1 AS `claim_submission_insurance_id`,
 1 AS `insurance_rates_id`,
 1 AS `state_insurance_id`,
 1 AS `provider`,
 1 AS `carrier`,
 1 AS `plan_type`,
 1 AS `sub_member_id`,
 1 AS `sub_group_number`,
 1 AS `sub_relation_to_patient`,
 1 AS `sub_first_name`,
 1 AS `sub_last_name`,
 1 AS `sub_dob`,
 1 AS `sub_gender`,
 1 AS `coverage`,
 1 AS `dependent_relation_to_sub`,
 1 AS `dependent_first_name`,
 1 AS `dependent_last_name`,
 1 AS `dependent_dob`,
 1 AS `dependent_gender`,
 1 AS `prior_auth`,
 1 AS `currency`,
 1 AS `deductible_cents`,
 1 AS `copay_cents`,
 1 AS `coinsurance_cents`,
 1 AS `apero_coverage_id`,
 1 AS `created_at`,
 1 AS `created_by`,
 1 AS `updated_at`,
 1 AS `updated_by`,
 1 AS `archived_at`,
 1 AS `archived_by`,
 1 AS `single_case_agreement`,
 1 AS `archived_reason`,
 1 AS `is_eligible`,
 1 AS `apero_eligibility_id`,
 1 AS `is_medicaid_plan`,
 1 AS `is_medicare_plan`,
 1 AS `sub_address`,
 1 AS `sub_city`,
 1 AS `sub_state`,
 1 AS `sub_zip_code`,
 1 AS `updated_reason`,
 1 AS `deleted_by`,
 1 AS `deleted_at`,
 1 AS `deleted_reason`,
 1 AS `in_network_email_sent`,
 1 AS `count`,
 1 AS `row_num_id_asc`,
 1 AS `row_num_id_desc`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_recruiting_candidate_applications` AS SELECT 
 1 AS `id`,
 1 AS `candidate_id`,
 1 AS `application_id`,
 1 AS `job_id`,
 1 AS `job_name`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `state_licenses`,
 1 AS `status`,
 1 AS `current_stage`,
 1 AS `candidate_source`,
 1 AS `recruiter`,
 1 AS `gh_url`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_recruiting_candidate_applications_by_state` AS SELECT 
 1 AS `id`,
 1 AS `candidate_id`,
 1 AS `application_id`,
 1 AS `job_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_recruiting_greenhouse_webhooks_stage_changes` AS SELECT 
 1 AS `id`,
 1 AS `candidate_id`,
 1 AS `application_id`,
 1 AS `job_id`,
 1 AS `job_name`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `stage`,
 1 AS `created_at`*/;
SET character_set_client = @saved_cs_client;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_transfer_items_joined` AS SELECT 
 1 AS `id`,
 1 AS `user_id`,
 1 AS `assigned_to`,
 1 AS `transfer_stage`,
 1 AS `transfer_start_date`,
 1 AS `transfer_reason_category`,
 1 AS `transfer_reason_details`,
 1 AS `number_of_sessions_before_transfer`,
 1 AS `delay_reason`,
 1 AS `new_therapist_preferences`,
 1 AS `availability`,
 1 AS `new_therapist_1`,
 1 AS `new_therapist_2`,
 1 AS `new_therapist_3`,
 1 AS `freshdesk_ticket`,
 1 AS `insurance_related`,
 1 AS `updated_at`,
 1 AS `appointment_date`,
 1 AS `appointment_type`,
 1 AS `state`,
 1 AS `clinician_id`,
 1 AS `total_appointments`,
 1 AS `plan`,
 1 AS `insurance`,
 1 AS `clinician_email`,
 1 AS `member_age`*/;
SET character_set_client = @saved_cs_client;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vimeo_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `vimeo_id` varchar(255) NOT NULL,
  `post_id` int DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_ts` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107813 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waitlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `intake_calls_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(255) NOT NULL,
  `zoom_meeting_link` varchar(255) DEFAULT NULL,
  `payload` json DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zoom_id` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.id'))) VIRTUAL,
  `uuid` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.uuid'))) VIRTUAL,
  `host_id` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.host_id'))) VIRTUAL,
  `topic` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.topic'))) VIRTUAL,
  `duration` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.duration'))) VIRTUAL,
  `start_time` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.start_time'))) VIRTUAL,
  `timezone` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.timezone'))) VIRTUAL,
  `participant_id` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.participant.id'))) VIRTUAL,
  `participant_user_id` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.participant.user_id'))) VIRTUAL,
  `participant_join_time` varchar(255) GENERATED ALWAYS AS (trim(_utf8mb4'"' from json_extract(`payload`,_utf8mb4'$.object.participant.join_time'))) VIRTUAL,
  `event` varchar(255) DEFAULT NULL,
  `event_ts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `website_redirects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_deleted` tinyint NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `permanent` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `source` (`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekly_invoice_charging` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bq_table_name` varchar(255) NOT NULL,
  `status` enum('not_started','running','completed','failed') DEFAULT 'not_started',
  `stage` enum('calculation_started','calculation_completed','notification_started','notification_completed','charging_started','charging_completed') DEFAULT NULL,
  `invoice_calculation_started_at` timestamp NULL DEFAULT NULL,
  `invoice_calculation_completed_at` timestamp NULL DEFAULT NULL,
  `invoice_notification_started_at` timestamp NULL DEFAULT NULL,
  `invoice_notification_completed_at` timestamp NULL DEFAULT NULL,
  `invoice_charging_started_at` timestamp NULL DEFAULT NULL,
  `invoice_charging_completed_at` timestamp NULL DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `active` tinyint DEFAULT '0',
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weekly_invoice_charging_adhoc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bq_table_name` varchar(255) NOT NULL,
  `status` enum('not_started','running','completed','failed') DEFAULT 'not_started',
  `stage` enum('calculation_started','calculation_completed','notification_started','notification_completed','charging_started','charging_completed') DEFAULT NULL,
  `invoice_calculation_started_at` timestamp NULL DEFAULT NULL,
  `invoice_calculation_completed_at` timestamp NULL DEFAULT NULL,
  `invoice_notification_started_at` timestamp NULL DEFAULT NULL,
  `invoice_notification_completed_at` timestamp NULL DEFAULT NULL,
  `invoice_charging_started_at` timestamp NULL DEFAULT NULL,
  `invoice_charging_completed_at` timestamp NULL DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `active` tinyint DEFAULT '0',
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ybocs_displayed_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `prompt_type` varchar(255) NOT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17747 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ybocs_reminder` (
  `user_id` int NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `next_reminder_utc_time` timestamp NULL DEFAULT NULL,
  `sent_notification` tinyint(1) DEFAULT NULL,
  `sent_notification_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `next_reminder_utc_time` (`next_reminder_utc_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ybocs_reminders_sent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `sent_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50001 DROP VIEW IF EXISTS `clinician_param_ranges_latest_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clinician_param_ranges_latest_view` AS select `clinician_param_ranges`.`id` AS `id`,`clinician_param_ranges`.`clinician_email` AS `clinician_email`,`clinician_param_ranges`.`param_name` AS `param_name`,`clinician_param_ranges`.`param_int_value` AS `param_int_value`,`clinician_param_ranges`.`param_string_value` AS `param_string_value`,`clinician_param_ranges`.`start_date` AS `start_date`,`clinician_param_ranges`.`end_date` AS `end_date`,`clinician_param_ranges`.`created_at` AS `created_at`,`clinician_param_ranges`.`created_by` AS `created_by`,`clinician_param_ranges`.`created_reason` AS `created_reason`,`clinician_param_ranges`.`updated_at` AS `updated_at`,`clinician_param_ranges`.`updated_by` AS `updated_by`,`clinician_param_ranges`.`updated_reason` AS `updated_reason`,`clinician_param_ranges`.`is_deleted` AS `is_deleted` from `clinician_param_ranges` where (now() between `clinician_param_ranges`.`start_date` and `clinician_param_ranges`.`end_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `event_screens`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `event_screens` AS select `s`.`id` AS `start_id`,`e`.`id` AS `end_id`,`s`.`deviceID` AS `deviceID`,`s`.`sessionID` AS `sessionID`,`s`.`userID` AS `userID`,`s`.`screenName` AS `screenName`,`s`.`screenKey` AS `screenKey`,`s`.`prevScreenName` AS `prevScreenName`,`s`.`prevScreenKey` AS `prevScreenKey`,`s2`.`screenName` AS `nextScreen`,`s2`.`screenKey` AS `nextScreenKey`,`s`.`fKey` AS `fKey`,`s`.`fKeyInt` AS `fKeyInt`,`s`.`fKeyString` AS `fKeyString`,`s`.`SECallBeforeSS` AS `SECallBeforeSS`,`e`.`SSCallBeforeSE` AS `SSCallBeforeSE`,`e`.`cta` AS `cta`,`e`.`backClicked` AS `backClicked`,`e`.`exitClicked` AS `exitClicked`,`e`.`closedApp` AS `closedApp`,`e`.`autoEnded` AS `autoEnded`,`s`.`client_ts` AS `open_time`,`e`.`client_ts` AS `close_time`,time_to_sec(timediff(`e`.`client_ts`,`s`.`client_ts`)) AS `time_spent` from ((`event_screen_start` `s` left join `event_screen_end` `e` on((`s`.`screenKey` = `e`.`screenKey`))) left join `event_screen_start` `s2` on((`s`.`screenKey` = `s2`.`prevScreenKey`))) order by `s`.`client_ts` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `form_automation_user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `form_automation_user_view` AS with `cte_appointments` as (select `member_appointments`.`user_id` AS `user_id`,max(`member_appointments`.`id`) AS `max_id`,`member_appointments`.`start_ts` AS `start_ts`,`member_appointments`.`session_type` AS `session_type` from `member_appointments` where ((`member_appointments`.`appointment_state` = 'Completed') and (`member_appointments`.`session_type` in ('*OCD DIAGNOSTIC ASSESSMENT','Followup Assessment','Second Session','Reassessment'))) group by `member_appointments`.`user_id`), `cte_created_forms` as (select `fs`.`user_id` AS `user_id`,group_concat(distinct `f`.`id` order by `f`.`id` ASC separator ',') AS `created_form_ids`,group_concat(distinct `f`.`name` order by `f`.`id` ASC separator ',') AS `created_form_names` from ((`form_submissions` `fs` join `forms` `f` on((`f`.`id` = `fs`.`form_id`))) left join `member_appointments` `ma` on((`ma`.`id` = `fs`.`appointment_id`))) where ((`fs`.`is_deleted` = 0) and ((`ma`.`appointment_state` is null) or (`ma`.`appointment_state` <> 'cancelled'))) group by `fs`.`user_id`), `cte_user_form_settings` as (select `faufs`.`user_id` AS `user_id`,group_concat(distinct `f`.`id` order by `f`.`id` ASC separator ',') AS `setting_form_ids`,group_concat(distinct `f`.`name` order by `f`.`id` ASC separator ',') AS `setting_form_names` from (`form_automation_user_form_settings` `faufs` join `forms` `f` on((`f`.`id` = `faufs`.`form_id`))) group by `faufs`.`user_id`) select `u`.`email` AS `email`,`pu`.`user_id` AS `user_id`,`pu`.`protocol_type` AS `protocol_type`,`pu`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`pc`.`email` AS `clinician_email`,`pc`.`form_automation_enabled` AS `clinician_form_automation_enabled`,`pu`.`active_subscription` AS `active_subscription`,`pu`.`form_automation_active` AS `form_automation_active`,`pu`.`form_automation_create_at` AS `form_automation_create_at`,`pu`.`form_automation_initialized` AS `form_automation_initialized`,`pu`.`form_automation_initialized_by` AS `form_automation_initialized_by`,`pu`.`form_automation_initialized_at` AS `form_automation_initialized_at`,`pu`.`form_automation_user_form_settings_authorized_by` AS `form_automation_user_form_settings_authorized_by`,`pu`.`form_automation_user_form_settings_authorized_at` AS `form_automation_user_form_settings_authorized_at`,`pu`.`form_automation_paused_by` AS `form_automation_paused_by`,`pu`.`form_automation_paused_at` AS `form_automation_paused_at`,`cufs`.`setting_form_ids` AS `setting_form_ids`,`cufs`.`setting_form_names` AS `setting_form_names`,`ccf`.`created_form_ids` AS `created_form_ids`,`ccf`.`created_form_names` AS `created_form_names`,`ma`.`start_ts` AS `start_ts`,`ma`.`session_type` AS `session_type`,if((`ca`.`max_id` is not null),1,0) AS `second_session_or_reassessment_completed`,if(((0 <> (select `clinician_form_automation_enabled`)) and (0 <> (select `pu`.`form_automation_active`)) and (0 <> `pu`.`active_subscription`) and (0 <> (select `second_session_or_reassessment_completed`))),1,0) AS `form_automation_should_create` from ((((((`premium_users` `pu` left join `cte_appointments` `ca` on((`ca`.`user_id` = `pu`.`user_id`))) left join `premium_clinicians` `pc` on((`pc`.`user_id` = `pu`.`assigned_clinician_user_id`))) left join `cte_created_forms` `ccf` on((`ccf`.`user_id` = `pu`.`user_id`))) left join `cte_user_form_settings` `cufs` on((`cufs`.`user_id` = `pu`.`user_id`))) left join `member_appointments` `ma` on((`ma`.`id` = `ca`.`max_id`))) left join `user` `u` on((`u`.`userID` = `pu`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `intake_calls_cleaned`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `intake_calls_cleaned` AS select `ic`.`id` AS `id`,`ic`.`is_call_in` AS `is_call_in`,`ic`.`appointment_id` AS `appointment_id`,`ic`.`record_id` AS `record_id`,`ic`.`user_id` AS `user_id`,`ic`.`email` AS `email`,`ic`.`first_name` AS `first_name`,`ic`.`last_name` AS `last_name`,`ic`.`phone` AS `phone`,`ic`.`state` AS `state`,`ic`.`timezone` AS `timezone`,`ic`.`assigned_to` AS `assigned_to`,`ic`.`intake_specialist` AS `intake_specialist`,`ic`.`is_child_adolescent` AS `is_child_adolescent`,`ic`.`how_did_you_hear_about_nocd` AS `how_did_you_hear_about_nocd`,`ic`.`app_user` AS `app_user`,`ic`.`how_do_you_like_the_nocd_app` AS `how_do_you_like_the_nocd_app`,`ic`.`has_insurance` AS `has_insurance`,`ic`.`insurance_provider` AS `insurance_provider`,`ic`.`insurance_type` AS `insurance_type`,`ic`.`school` AS `school`,`ic`.`currently_seeing_therapist` AS `currently_seeing_therapist`,`ic`.`what_prompted_you_to_reach_out_for_therapy_now` AS `what_prompted_you_to_reach_out_for_therapy_now`,`ic`.`notes` AS `notes`,`ic`.`source` AS `source`,`ic`.`label` AS `label`,`ic`.`canceled` AS `canceled`,`ic`.`completed` AS `completed`,`ic`.`last_action` AS `last_action`,`ic`.`scheduled_at` AS `scheduled_at`,`ic`.`call_at` AS `call_at`,`ic`.`therapy_appointment_at` AS `therapy_appointment_at`,`ic`.`therapy_appointment_timezone` AS `therapy_appointment_timezone`,`ic`.`created_at` AS `created_at`,`ic`.`updated_at` AS `updated_at`,`ic`.`call_delay_reason` AS `call_delay_reason`,`ic`.`protocol_type` AS `protocol_type`,`ic`.`billing_notes` AS `billing_notes`,`ic`.`clinician_email` AS `clinician_email`,`ic`.`is_deleted` AS `is_deleted`,`ic`.`disposition_not_converting` AS `disposition_not_converting`,`ic`.`intake_specialist_who_last_updated_outcome_label` AS `intake_specialist_who_last_updated_outcome_label`,`ic`.`therapy_type_cbt` AS `therapy_type_cbt`,`ic`.`therapy_type_erp` AS `therapy_type_erp`,`ic`.`therapy_type_act` AS `therapy_type_act`,`ic`.`therapy_type_other` AS `therapy_type_other`,`ic`.`therapy_best_describes_you` AS `therapy_best_describes_you`,`ic`.`dob` AS `dob`,`ic`.`responsible_party_first_name` AS `responsible_party_first_name`,`ic`.`responsible_party_last_name` AS `responsible_party_last_name`,`ic`.`responsible_party_relation_to_patient` AS `responsible_party_relation_to_patient`,`ic`.`scheduling_reason` AS `scheduling_reason`,`ic`.`session_id` AS `session_id`,`ic`.`is_callback` AS `is_callback`,`ic`.`how_did_you_hear_about_nocd_v2` AS `how_did_you_hear_about_nocd_v2`,`ic`.`peer_advisor_email` AS `peer_advisor_email`,`ic`.`country_code` AS `country_code`,`ic`.`greeting_q_1` AS `greeting_q_1`,`ic`.`greeting_q_2` AS `greeting_q_2`,`ic`.`greeting_q_3` AS `greeting_q_3`,`ic`.`greeting_q_4` AS `greeting_q_4`,`ic`.`greeting_comment` AS `greeting_comment`,`ic`.`greeting_points_available` AS `greeting_points_available`,`ic`.`greeting_points_earned` AS `greeting_points_earned`,`ic`.`structure_q_1` AS `structure_q_1`,`ic`.`structure_q_2` AS `structure_q_2`,`ic`.`structure_q_3` AS `structure_q_3`,`ic`.`structure_q_4` AS `structure_q_4`,`ic`.`structure_q_5` AS `structure_q_5`,`ic`.`structure_comment` AS `structure_comment`,`ic`.`structure_points_available` AS `structure_points_available`,`ic`.`structure_points_earned` AS `structure_points_earned`,`ic`.`cost_q_1` AS `cost_q_1`,`ic`.`cost_q_2` AS `cost_q_2`,`ic`.`cost_q_3` AS `cost_q_3`,`ic`.`cost_comment` AS `cost_comment`,`ic`.`cost_points_available` AS `cost_points_available`,`ic`.`cost_points_earned` AS `cost_points_earned`,`ic`.`language_and_communication_q_1` AS `language_and_communication_q_1`,`ic`.`language_and_communication_q_2` AS `language_and_communication_q_2`,`ic`.`language_and_communication_comment` AS `language_and_communication_comment`,`ic`.`language_and_communication_points_available` AS `language_and_communication_points_available`,`ic`.`language_and_communication_points_earned` AS `language_and_communication_points_earned`,`ic`.`service_excellence_q_1` AS `service_excellence_q_1`,`ic`.`service_excellence_q_2` AS `service_excellence_q_2`,`ic`.`service_excellence_q_3` AS `service_excellence_q_3`,`ic`.`service_excellence_comment` AS `service_excellence_comment`,`ic`.`service_excellence_points_available` AS `service_excellence_points_available`,`ic`.`service_excellence_points_earned` AS `service_excellence_points_earned`,`ic`.`doc_q_1` AS `doc_q_1`,`ic`.`doc_comment` AS `doc_comment`,`ic`.`doc_points_earned` AS `doc_points_earned`,`ic`.`closing_q_1` AS `closing_q_1`,`ic`.`closing_q_2` AS `closing_q_2`,`ic`.`closing_q_3` AS `closing_q_3`,`ic`.`closing_q_4` AS `closing_q_4`,`ic`.`closing_comment` AS `closing_comment`,`ic`.`closing_points_available` AS `closing_points_available`,`ic`.`closing_points_earned` AS `closing_points_earned`,`ic`.`doc_points_available` AS `doc_points_available`,`ic`.`audit_enabled` AS `audit_enabled`,`ic`.`is_self_service` AS `is_self_service`,`ic`.`who_are_you_seeking_therapy_for` AS `who_are_you_seeking_therapy_for`,`ic`.`where_are_you_in_your_ocd_journey` AS `where_are_you_in_your_ocd_journey`,`ic`.`what_information_do_you_want_from_your_call` AS `what_information_do_you_want_from_your_call`,`ic`.`therapist_preferences` AS `therapist_preferences`,`ic`.`preferred_clinician_user_ids` AS `preferred_clinician_user_ids`,`ic`.`what_would_you_like_your_therapist_to_help_with` AS `what_would_you_like_your_therapist_to_help_with`,`ic`.`is_biohaven` AS `is_biohaven`,`ic`.`experience_with_erp` AS `experience_with_erp`,`ic`.`subtypes` AS `subtypes`,`ic`.`distress_level` AS `distress_level`,`ic`.`special_requests` AS `special_requests`,`ic`.`preferred_therapy_session_availability` AS `preferred_therapy_session_availability`,`ic`.`partner` AS `partner`,`ic`.`wants_move_up` AS `wants_move_up`,`ic`.`initial_metadata` AS `initial_metadata`,`ic`.`therapist_preference_gender` AS `therapist_preference_gender`,`ic`.`therapist_preference_additional_specialty` AS `therapist_preference_additional_specialty`,`ic`.`therapist_preference_cultural_identity` AS `therapist_preference_cultural_identity`,`ic`.`therapist_preference_religious_affiliation` AS `therapist_preference_religious_affiliation`,`ic`.`is_zocdoc` AS `is_zocdoc`,`ic`.`interested_in_sca` AS `interested_in_sca`,`ic`.`therapist_preference_additional_specialty_json` AS `therapist_preference_additional_specialty_json`,`ic`.`therapist_preference_cultural_identity_json` AS `therapist_preference_cultural_identity_json`,`ic`.`therapist_preference_religious_affiliation_json` AS `therapist_preference_religious_affiliation_json`,`ic`.`therapist_preference_specific_populations_json` AS `therapist_preference_specific_populations_json`,`ic`.`primary_conditions_json` AS `primary_conditions_json`,`ic`.`opted_in_to_marketing_sms` AS `opted_in_to_marketing_sms`,`ic`.`has_kp_referral` AS `has_kp_referral`,`ic`.`referring_provider` AS `referring_provider`,`ic`.`using_medicaid_or_medicare` AS `using_medicaid_or_medicare`,`ic`.`scheduling_preferences` AS `scheduling_preferences`,`ic`.`preferred_clinician_email` AS `preferred_clinician_email`,`ic`.`hospitalized_recently` AS `hospitalized_recently`,`ic`.`followup_care_recently` AS `followup_care_recently`,`ic`.`intent_self_harm_recently` AS `intent_self_harm_recently`,`ic`.`current_intent_self_harm` AS `current_intent_self_harm`,`ic`.`hospital_discharge_date` AS `hospital_discharge_date`,(case when ((`ic`.`label` = 'Converted') and ((`ic`.`is_deleted` = 0) or (`ic`.`is_deleted` is null)) and (`ic`.`canceled` = 0)) then 1 else 0 end) AS `converted` from `intake_calls` `ic` where ((`ic`.`call_at` is not null) and (`ic`.`user_id` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `intake_calls_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `intake_calls_view` AS with `source_history` as (select `intake_calls`.`email` AS `email`,group_concat(`intake_calls`.`source` order by `intake_calls`.`id` ASC separator ', ') AS `source_history` from `intake_calls` where ((`intake_calls`.`canceled` = 0) and (`intake_calls`.`email` <> '')) group by `intake_calls`.`email`) select `ic`.`id` AS `id`,`ic`.`is_call_in` AS `is_call_in`,`ic`.`appointment_id` AS `appointment_id`,`ic`.`user_id` AS `user_id`,`ic`.`email` AS `email`,`ic`.`first_name` AS `first_name`,`ic`.`last_name` AS `last_name`,`ic`.`phone` AS `phone`,`ic`.`state` AS `state`,`ic`.`timezone` AS `timezone`,`ic`.`assigned_to` AS `assigned_to`,`ic`.`intake_specialist` AS `intake_specialist`,`ic`.`is_child_adolescent` AS `is_child_adolescent`,`ic`.`how_did_you_hear_about_nocd` AS `how_did_you_hear_about_nocd`,`ic`.`app_user` AS `app_user`,`ic`.`how_do_you_like_the_nocd_app` AS `how_do_you_like_the_nocd_app`,`ic`.`has_insurance` AS `has_insurance`,`ic`.`insurance_provider` AS `insurance_provider`,`ic`.`insurance_type` AS `insurance_type`,`ic`.`school` AS `school`,`ic`.`currently_seeing_therapist` AS `currently_seeing_therapist`,`ic`.`what_prompted_you_to_reach_out_for_therapy_now` AS `what_prompted_you_to_reach_out_for_therapy_now`,`ic`.`notes` AS `notes`,`ic`.`source` AS `source`,`ic`.`label` AS `label`,`ic`.`canceled` AS `canceled`,`ic`.`completed` AS `completed`,`ic`.`last_action` AS `last_action`,`ic`.`scheduled_at` AS `scheduled_at`,`ic`.`call_at` AS `call_at`,`ic`.`therapy_appointment_at` AS `therapy_appointment_at`,`ic`.`therapy_appointment_timezone` AS `therapy_appointment_timezone`,`ic`.`created_at` AS `created_at`,`ic`.`updated_at` AS `updated_at`,`ic`.`call_delay_reason` AS `call_delay_reason`,`sh`.`source_history` AS `source_history` from (`intake_calls` `ic` left join `source_history` `sh` on((`ic`.`email` = `sh`.`email`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `last_app_open_by_user_id_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `last_app_open_by_user_id_view` AS select `T1`.`id` AS `id`,`T1`.`deviceID` AS `deviceID`,`T1`.`sessionID` AS `sessionID`,`T1`.`firstOpen` AS `firstOpen`,`T1`.`userID` AS `userID`,`T1`.`tokenID` AS `tokenID`,`T1`.`reauthed` AS `reauthed`,`T1`.`register` AS `register`,`T1`.`login` AS `login`,`T1`.`logout` AS `logout`,`T1`.`auth_at` AS `auth_at`,`T1`.`deauth_at` AS `deauth_at`,`T1`.`deviceType` AS `deviceType`,`T1`.`bundleName` AS `bundleName`,`T1`.`version` AS `version`,`T1`.`buildID` AS `buildID`,`T1`.`modelName` AS `modelName`,`T1`.`osVersion` AS `osVersion`,`T1`.`locale` AS `locale`,`T1`.`timezone` AS `timezone`,`T1`.`ipAddress` AS `ipAddress`,`T1`.`country` AS `country`,`T1`.`state` AS `state`,`T1`.`city` AS `city`,`T1`.`zip` AS `zip`,`T1`.`latitude` AS `latitude`,`T1`.`longitude` AS `longitude`,`T1`.`created_at` AS `created_at`,`T1`.`updated_at` AS `updated_at`,`T1`.`ended_at` AS `ended_at`,`t2`.`maxJoinID` AS `maxJoinID` from (`app_opens` `T1` join (select max(`app_opens`.`id`) AS `maxJoinID` from `app_opens` group by `app_opens`.`userID`) `T2` on((`T1`.`id` = `t2`.`maxJoinID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `last_charge_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `last_charge_view` AS with `last_charge_view` as (select `pu`.`user_id` AS `user_id`,`ps`.`stripe_charge_status` AS `stripe_charge_status`,`ps`.`created_at` AS `created_at`,`ps`.`stripe_charge_amount` AS `stripe_charge_amount`,row_number() OVER (PARTITION BY `ps`.`stripe_charge_customer_id` ORDER BY `ps`.`created_at` desc )  AS `row_num` from (`payment_stripe_charge` `ps` join `premium_users` `pu` on((`pu`.`customer_id` = `ps`.`stripe_charge_customer_id`)))) select `last_charge_view`.`user_id` AS `user_id`,`last_charge_view`.`stripe_charge_status` AS `stripe_charge_status`,`last_charge_view`.`created_at` AS `created_at`,`last_charge_view`.`stripe_charge_amount` AS `stripe_charge_amount`,`last_charge_view`.`row_num` AS `row_num` from `last_charge_view` where (`last_charge_view`.`row_num` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `lineage_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lineage_view` AS with recursive `mapping_table` (`parent`,`child`) as (select concat(`information_schema`.`view_table_usage`.`VIEW_SCHEMA`,'.',`information_schema`.`view_table_usage`.`VIEW_NAME`) AS `parent`,concat(`information_schema`.`view_table_usage`.`TABLE_SCHEMA`,'.',`information_schema`.`view_table_usage`.`TABLE_NAME`) AS `child` from `information_schema`.`VIEW_TABLE_USAGE`), `ladder` (`depth`,`parent`,`child`,`root`) as (select 1 AS `depth`,`mapping_table`.`parent` AS `parent`,`mapping_table`.`child` AS `child`,`mapping_table`.`parent` AS `parent` from `mapping_table` union select (`ladder`.`depth` + 1) AS `depth`,`mapping_table`.`parent` AS `parent`,`mapping_table`.`child` AS `child`,`ladder`.`root` AS `root` from (`ladder` join `mapping_table` on((`ladder`.`child` = `mapping_table`.`parent`)))) select `ladder`.`depth` AS `depth`,`ladder`.`parent` AS `parent`,`ladder`.`child` AS `child`,`ladder`.`root` AS `root` from `ladder` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `member_reviews`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `member_reviews` AS with `reviews` as (select `session_survey`.`id` AS `id`,`session_survey`.`is_featured` AS `is_featured`,`session_survey`.`created_at` AS `created_at`,`session_survey`.`user_id` AS `user_id`,`session_survey`.`public_review_title` AS `title`,`session_survey`.`public_review` AS `body`,`session_survey`.`therapist_star_review` AS `rating`,(case when (`session_survey`.`has_given_initials_consent` = 1) then concat(substr(`premium_users`.`first_name`,1,1),'.',substr(`premium_users`.`last_name`,1,1),'.') else 'anonymous' end) AS `name`,`session_survey`.`has_given_initials_consent` AS `share_avatar`,`session_survey`.`therapist_comment_reply` AS `reply_body`,`session_survey`.`reply_date` AS `reply_date`,`session_survey`.`status` AS `status`,`session_survey`.`subtypes` AS `subtypes`,concat(coalesce(`premium_clinicians1`.`user_id`,`premium_clinicians2`.`user_id`),'/',substring_index(coalesce(`premium_clinicians1`.`email`,`premium_clinicians2`.`email`),'@',1)) AS `clinician_page_slug`,coalesce(`premium_clinicians1`.`first_name`,`premium_clinicians2`.`first_name`) AS `clinician_first_name`,coalesce(`premium_clinicians1`.`last_name`,`premium_clinicians2`.`last_name`) AS `clinician_last_name`,coalesce(`premium_clinicians1`.`image_id`,`premium_clinicians2`.`image_id`) AS `clinician_image_id`,coalesce(`premium_clinicians1`.`email`,`premium_clinicians2`.`email`) AS `clinician_email`,coalesce(`premium_clinicians1`.`user_id`,`premium_clinicians2`.`user_id`) AS `clinician_user_id` from ((((`session_survey` join `premium_users` on((`premium_users`.`user_id` = `session_survey`.`user_id`))) left join `member_appointments` on((`member_appointments`.`id` = `session_survey`.`member_appointment_id`))) left join `premium_clinicians` `premium_clinicians1` on((`session_survey`.`clinician_user_id` = `premium_clinicians1`.`user_id`))) left join `premium_clinicians` `premium_clinicians2` on((`member_appointments`.`clinician_email` = `premium_clinicians2`.`email`))) where ((`session_survey`.`public_review` is not null) and (`session_survey`.`therapist_star_review` is not null) and (`session_survey`.`public_review` <> ''))) select row_number() OVER (ORDER BY `reviews`.`created_at` desc )  AS `row_id`,`reviews`.`id` AS `id`,`reviews`.`is_featured` AS `is_featured`,`reviews`.`created_at` AS `created_at`,`reviews`.`user_id` AS `user_id`,`reviews`.`title` AS `title`,`reviews`.`body` AS `body`,`reviews`.`rating` AS `rating`,`reviews`.`name` AS `name`,`reviews`.`share_avatar` AS `share_avatar`,`reviews`.`reply_body` AS `reply_body`,`reviews`.`reply_date` AS `reply_date`,`reviews`.`status` AS `status`,`reviews`.`subtypes` AS `subtypes`,`reviews`.`clinician_page_slug` AS `clinician_page_slug`,`reviews`.`clinician_first_name` AS `clinician_first_name`,`reviews`.`clinician_last_name` AS `clinician_last_name`,`reviews`.`clinician_image_id` AS `clinician_image_id`,`reviews`.`clinician_email` AS `clinician_email`,`reviews`.`clinician_user_id` AS `clinician_user_id`,`user`.`avatar_type` AS `avatar_type`,`user`.`custom_avatar_url` AS `custom_avatar_url`,`avatars`.`avatar_url` AS `avatar_url` from ((`reviews` join `user` on((`user`.`userID` = `reviews`.`user_id`))) left join `avatars` on((`avatars`.`id` = `user`.`avatar_id`))) order by `reviews`.`created_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `post_reply_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `post_reply_counts` AS select `posts`.`id` AS `id`,coalesce(`p2`.`reply_count`,0) AS `replies`,coalesce(`p3`.`like_count`,0) AS `likes`,`posts`.`created_at` AS `created_at` from ((`posts` left join (select `posts`.`post_replied_to` AS `post_replied_to`,count(0) AS `reply_count` from `posts` where (`posts`.`post_replied_to` is not null) group by `posts`.`post_replied_to`) `P2` on((`posts`.`id` = `p2`.`post_replied_to`))) left join (select `likes`.`post_id` AS `post_liked`,count(0) AS `like_count` from `likes` group by `likes`.`post_id`) `P3` on((`posts`.`id` = `p3`.`post_liked`))) where (`posts`.`post_replied_to` is null) order by `posts`.`created_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `premium_conversions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `premium_conversions` AS select `premium_eligibility`.`email` AS `email`,`premium_eligibility`.`free` AS `free`,`premium_eligibility`.`source` AS `source`,`stripe_subscriptions`.`coupon_id` AS `promo_used`,`user_view`.`user_created_at` AS `registered_at`,`user_view`.`created_at` AS `last_opened_at`,`premium_eligibility`.`createdAt` AS `invited_at`,`premium_users`.`created_at` AS `saw_premium_at`,`stripe_subscriptions`.`created_at` AS `subscribed_at`,`user_view`.`userID` AS `userID`,if((`user_view`.`userID` is null),0,1) AS `registered`,`user_view`.`id` AS `open_id`,if((`user_view`.`id` is null),0,1) AS `opened_app`,`premium_users`.`customer_id` AS `customer_id`,if((`premium_users`.`customer_id` is null),0,1) AS `saw_premium`,`stripe_subscriptions`.`subscription_id` AS `subscription_id`,if((`stripe_subscriptions`.`subscription_id` is null),0,1) AS `subscribed` from (((`premium_eligibility` left join `user_view` on((`premium_eligibility`.`email` = `user_view`.`email`))) left join `premium_users` on((`user_view`.`userID` = `premium_users`.`user_id`))) left join `stripe_subscriptions` on((`premium_users`.`subscription_id` = `stripe_subscriptions`.`subscription_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `premium_subscriber_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `premium_subscriber_view` AS select `premium_users`.`id` AS `id`,`premium_users`.`user_id` AS `user_id`,year(`premium_users`.`dob`) AS `yob`,`premium_users`.`state` AS `state`,`premium_users`.`insurance` AS `insurance`,`premium_users`.`selected_clinician_user_id` AS `selected_clinician_user_id`,`premium_users`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`premium_users`.`customer_id` AS `customer_id`,`premium_users`.`subscription_id` AS `subscription_id`,`premium_users`.`created_at` AS `created_at`,`stripe_subscriptions`.`status` AS `status`,`stripe_subscriptions`.`stripe_created` AS `stripe_created`,`stripe_subscriptions`.`billing_cycle_anchor` AS `billing_cycle_anchor`,`stripe_subscriptions`.`current_period_start` AS `current_period_start`,`stripe_subscriptions`.`current_period_end` AS `current_period_end`,`stripe_subscriptions`.`cancel_at_period_end` AS `cancel_at_period_end`,`stripe_subscriptions`.`ended_at` AS `ended_at`,`stripe_subscriptions`.`stripe_updated_at` AS `stripe_updated_at`,ifnull(`stripe_subscriptions`.`coupon_id`,'NO_COUPON') AS `coupon_id`,`stripe_subscriptions`.`cancel_reason` AS `cancel_reason` from (`premium_users` join `stripe_subscriptions` on((`premium_users`.`subscription_id` = `stripe_subscriptions`.`subscription_id`))) where (`premium_users`.`internal_user` = 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `premium_users_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `premium_users_view` AS select `premium_users`.`id` AS `id`,`premium_users`.`user_id` AS `user_id`,`premium_users`.`clicked_get_started` AS `clicked_get_started`,year(`premium_users`.`dob`) AS `yob`,`premium_users`.`state` AS `state`,`premium_users`.`insurance` AS `insurance`,`premium_users`.`selected_clinician_user_id` AS `selected_clinician_user_id`,`premium_users`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`premium_users`.`customer_id` AS `customer_id`,`premium_users`.`subscription_id` AS `subscription_id`,`premium_users`.`send_notifications` AS `send_notifications`,`premium_users`.`discussion_loop_open` AS `discussion_loop_open`,`premium_users`.`discussion_loop_opened_at` AS `discussion_loop_opened_at`,`premium_users`.`first_subscribed_at` AS `first_subscribed_at`,`premium_users`.`internal_user` AS `internal_user`,`premium_users`.`created_at` AS `created_at`,`premium_users`.`updated_at` AS `updated_at` from `premium_users` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `user_contact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_contact` AS select `user`.`userID` AS `userID`,`user`.`email` AS `email` from `user` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `user_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_view` AS select `user`.`email` AS `email`,`user`.`internal_user` AS `internal_user`,`user`.`guid` AS `guid`,`user`.`community_handle` AS `community_handle`,`user`.`avatar_name` AS `avatar_name`,`user`.`created_at` AS `user_created_at`,`T2`.`id` AS `id`,`T2`.`deviceID` AS `deviceID`,`T2`.`sessionID` AS `sessionID`,`T2`.`firstOpen` AS `firstOpen`,`T2`.`userID` AS `userID`,`T2`.`tokenID` AS `tokenID`,`T2`.`reauthed` AS `reauthed`,`T2`.`register` AS `register`,`T2`.`login` AS `login`,`T2`.`logout` AS `logout`,`T2`.`auth_at` AS `auth_at`,`T2`.`deauth_at` AS `deauth_at`,`T2`.`deviceType` AS `deviceType`,`T2`.`bundleName` AS `bundleName`,`T2`.`version` AS `version`,`T2`.`buildID` AS `buildID`,`T2`.`modelName` AS `modelName`,`T2`.`osVersion` AS `osVersion`,`T2`.`locale` AS `locale`,`T2`.`timezone` AS `timezone`,`T2`.`ipAddress` AS `ipAddress`,`T2`.`country` AS `country`,`T2`.`state` AS `state`,`T2`.`city` AS `city`,`T2`.`zip` AS `zip`,`T2`.`latitude` AS `latitude`,`T2`.`longitude` AS `longitude`,`T2`.`created_at` AS `created_at`,`T2`.`updated_at` AS `updated_at`,`T2`.`ended_at` AS `ended_at` from ((`user` left join (select `app_opens`.`userID` AS `userID`,max(`app_opens`.`id`) AS `maxid` from `app_opens` group by `app_opens`.`userID`) `T1` on((`user`.`userID` = `t1`.`userID`))) left join `app_opens` `T2` on((`t1`.`maxid` = `T2`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_apero_line_applications_agged`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_apero_line_applications_agged` AS select `view_billing_apero_line_applications_joined`.`line_item` AS `line_item_id`,sum(`view_billing_apero_line_applications_joined`.`line_application_amount_in_cents`) AS `li_total_in_cents`,count(0) AS `count_li_total`,sum((case when (`view_billing_apero_line_applications_joined`.`application_type` = 'adjustment') then `view_billing_apero_line_applications_joined`.`line_application_amount_in_cents` else 0 end)) AS `adjustment_total_in_cents`,sum((case when (`view_billing_apero_line_applications_joined`.`application_type` = 'payment') then `view_billing_apero_line_applications_joined`.`line_application_amount_in_cents` else 0 end)) AS `payment_total_in_cents`,sum((case when (`view_billing_apero_line_applications_joined`.`application_type` = 'adjustment') then 1 else 0 end)) AS `count_adjustment_total`,sum((case when (`view_billing_apero_line_applications_joined`.`application_type` = 'payment') then 1 else 0 end)) AS `count_payment_total` from `view_billing_apero_line_applications_joined` where ((0 <> `view_billing_apero_line_applications_joined`.`is_deleted`) is not true) group by `view_billing_apero_line_applications_joined`.`line_item` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_apero_line_applications_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_apero_line_applications_joined` AS select `polytomic`.`apero_visits`.`id` AS `visit_id`,`polytomic`.`apero_line_items`.`id` AS `line_item_id`,`member_appointments`.`id` AS `appt_id`,`polytomic`.`apero_line_applications`.`__pt_rowid` AS `__pt_rowid`,`polytomic`.`apero_line_applications`.`id` AS `id`,`polytomic`.`apero_line_applications`.`adjustment_reason` AS `adjustment_reason`,`polytomic`.`apero_line_applications`.`amount` AS `amount`,`polytomic`.`apero_line_applications`.`application_type` AS `application_type`,`polytomic`.`apero_line_applications`.`line_item` AS `line_item`,`polytomic`.`apero_line_applications`.`payment` AS `payment`,`polytomic`.`apero_line_applications`.`is_deleted` AS `is_deleted`,`polytomic`.`apero_line_applications`.`deleted_at` AS `deleted_at`,`polytomic`.`apero_line_applications`.`amount_in_cents` AS `amount_in_cents`,`polytomic`.`apero_line_applications`.`created` AS `created`,cast((100 * cast(`polytomic`.`apero_line_applications`.`amount` as double)) as signed) AS `line_application_amount_in_cents` from (((`polytomic`.`apero_line_applications` join `polytomic`.`apero_line_items` on((`polytomic`.`apero_line_applications`.`line_item` = `polytomic`.`apero_line_items`.`id`))) join `polytomic`.`apero_visits` on((`polytomic`.`apero_line_items`.`visit` = `polytomic`.`apero_visits`.`id`))) left join `member_appointments` on((`member_appointments`.`apero_lineitem_id` = `polytomic`.`apero_line_items`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_apero_line_items_agged`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_apero_line_items_agged` AS select `line_items`.`line_item_id` AS `line_item_id`,`line_items`.`amount_charged` AS `amount_charged`,`line_items`.`amount_charged_as_cents` AS `amount_charged_as_cents`,`line_items`.`line_item_linked_ehr_id` AS `line_item_linked_ehr_id`,`line_items`.`service_date` AS `service_date`,`line_items`.`visit` AS `visit`,`line_items`.`visit_id` AS `visit_id`,`line_items`.`created` AS `created`,`line_items`.`created_date` AS `created_date`,`line_items`.`created_year` AS `created_year`,`line_items`.`created_month` AS `created_month`,`line_items`.`created_week` AS `created_week`,`line_items`.`days_since_created` AS `days_since_created`,`line_items`.`insurance_primary` AS `insurance_primary`,`line_items`.`linked_member_appointments_id` AS `linked_member_appointments_id`,`line_items`.`apero_patient_id` AS `apero_patient_id`,`line_items`.`apero_provider_id` AS `apero_provider_id`,`line_items`.`visit_status` AS `visit_status`,`line_items`.`visit_date` AS `visit_date`,`line_items`.`filing_delay_in_days` AS `filing_delay_in_days`,`line_items`.`apero_patient_url` AS `apero_patient_url`,`line_items`.`apero_visit_url` AS `apero_visit_url`,`line_items`.`trading_partner_id` AS `trading_partner_id`,`line_items`.`linked_user_id` AS `linked_user_id`,`line_items`.`first_name` AS `first_name`,`line_items`.`last_name` AS `last_name`,`line_items`.`email` AS `email`,`line_items`.`name` AS `name`,`line_items`.`state_code` AS `state_code`,ifnull(`line_apps_agged`.`li_total_in_cents`,0) AS `li_total_in_cents`,ifnull(`line_apps_agged`.`adjustment_total_in_cents`,0) AS `adjustment_total_in_cents`,ifnull(`line_apps_agged`.`payment_total_in_cents`,0) AS `payment_total_in_cents`,ifnull(`line_apps_agged`.`count_li_total`,0) AS `count_li_total`,ifnull(`line_apps_agged`.`count_adjustment_total`,0) AS `count_adjustment_total`,ifnull(`line_apps_agged`.`count_payment_total`,0) AS `count_payment_total`,(`line_items`.`amount_charged_as_cents` - ifnull(`line_apps_agged`.`li_total_in_cents`,0)) AS `remaining_amount_in_cents`,(`line_items`.`amount_charged_as_cents` - ifnull(`line_apps_agged`.`adjustment_total_in_cents`,0)) AS `apero_allowed_amount` from (`view_billing_apero_line_items_joined` `line_items` left join `view_billing_apero_line_applications_agged` `line_apps_agged` on((`line_items`.`line_item_id` = `line_apps_agged`.`line_item_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_apero_line_items_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_apero_line_items_joined` AS select `ali`.`id` AS `line_item_id`,`ali`.`amount_charged` AS `amount_charged`,cast((100 * cast(`ali`.`amount_charged` as double)) as signed) AS `amount_charged_as_cents`,`ali`.`linked_ehr_id` AS `line_item_linked_ehr_id`,`ali`.`service_date` AS `service_date`,`ali`.`visit` AS `visit`,`av`.`visit_id` AS `visit_id`,`av`.`created` AS `created`,`av`.`created_date` AS `created_date`,`av`.`created_year` AS `created_year`,`av`.`created_month` AS `created_month`,`av`.`created_week` AS `created_week`,`av`.`days_since_created` AS `days_since_created`,`av`.`insurance_primary` AS `insurance_primary`,`av`.`linked_member_appointments_id` AS `linked_member_appointments_id`,`av`.`apero_patient_id` AS `apero_patient_id`,`av`.`apero_provider_id` AS `apero_provider_id`,`av`.`visit_status` AS `visit_status`,`av`.`visit_date` AS `visit_date`,`av`.`filing_delay_in_days` AS `filing_delay_in_days`,`av`.`apero_patient_url` AS `apero_patient_url`,`av`.`apero_visit_url` AS `apero_visit_url`,`av`.`trading_partner_id` AS `trading_partner_id`,`av`.`linked_user_id` AS `linked_user_id`,`av`.`first_name` AS `first_name`,`av`.`last_name` AS `last_name`,`av`.`email` AS `email`,`av`.`name` AS `name`,`av`.`state_code` AS `state_code` from (`polytomic`.`apero_line_items` `ali` join `view_billing_apero_visits_joined` `av` on((`ali`.`visit` = `av`.`visit_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_apero_visits_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_apero_visits_joined` AS select `av`.`id` AS `visit_id`,`av`.`created` AS `created`,cast(`av`.`created` as date) AS `created_date`,year(`av`.`created`) AS `created_year`,month(`av`.`created`) AS `created_month`,(floor(((dayofmonth(`av`.`created`) - 1) / 7)) + 1) AS `created_week`,(to_days(now()) - to_days(cast(`av`.`created` as datetime(6)))) AS `days_since_created`,`av`.`insurance_primary` AS `insurance_primary`,`av`.`linked_ehr_id` AS `linked_member_appointments_id`,`av`.`patient` AS `apero_patient_id`,`av`.`provider` AS `apero_provider_id`,`av`.`status` AS `visit_status`,`av`.`visit_date` AS `visit_date`,(to_days(`av`.`created`) - to_days(`av`.`visit_date`)) AS `filing_delay_in_days`,concat('https://app.aperohealth.com/dash/patients/',`av`.`patient`) AS `apero_patient_url`,concat('https://app.aperohealth.com/dash/invoices/',`av`.`id`) AS `apero_visit_url`,`ac`.`trading_partner_id` AS `trading_partner_id`,`apa`.`linked_ehr_id` AS `linked_user_id`,`apa`.`first_name` AS `first_name`,`apa`.`last_name` AS `last_name`,`apr`.`email` AS `email`,`af`.`name` AS `name`,`af`.`state_code` AS `state_code` from ((((`polytomic`.`apero_visits` `av` left join `polytomic`.`apero_coverages` `ac` on((`av`.`insurance_primary` = `ac`.`id`))) left join `polytomic`.`apero_patients` `apa` on((`av`.`patient` = `apa`.`id`))) left join `polytomic`.`apero_providers` `apr` on((`av`.`provider` = `apr`.`id`))) left join `polytomic`.`apero_facilities` `af` on((`av`.`facility` = `af`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_calendar_dates_insurance_scheduled_rates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_calendar_dates_insurance_scheduled_rates` AS select `view_billing_calendar_dates_with_payers`.`day` AS `day`,`view_billing_calendar_dates_with_payers`.`insurance_id` AS `insurance_id`,`view_billing_calendar_dates_with_payers`.`insurance` AS `insurance`,`view_billing_calendar_dates_with_payers`.`cpt_code` AS `cpt_code`,`insurance_scheduled_rates_masters`.`rate` AS `masters_rate`,`insurance_scheduled_rates_phd`.`rate` AS `phd_rate` from ((`view_billing_calendar_dates_with_payers` left join `insurance_scheduled_rates` `insurance_scheduled_rates_masters` on(((`insurance_scheduled_rates_masters`.`archived_at` is null) and (`view_billing_calendar_dates_with_payers`.`day` >= `insurance_scheduled_rates_masters`.`start_date`) and (`view_billing_calendar_dates_with_payers`.`day` < `insurance_scheduled_rates_masters`.`end_date`) and (`insurance_scheduled_rates_masters`.`degree_type` = 'Masters') and (`view_billing_calendar_dates_with_payers`.`insurance_id` = `insurance_scheduled_rates_masters`.`insurance_id`) and (`view_billing_calendar_dates_with_payers`.`cpt_code` = `insurance_scheduled_rates_masters`.`cpt_code`)))) left join `insurance_scheduled_rates` `insurance_scheduled_rates_phd` on(((`insurance_scheduled_rates_phd`.`archived_at` is null) and (`view_billing_calendar_dates_with_payers`.`day` >= `insurance_scheduled_rates_phd`.`start_date`) and (`view_billing_calendar_dates_with_payers`.`day` < `insurance_scheduled_rates_phd`.`end_date`) and (`insurance_scheduled_rates_phd`.`degree_type` = 'PhD') and (`view_billing_calendar_dates_with_payers`.`insurance_id` = `insurance_scheduled_rates_phd`.`insurance_id`) and (`view_billing_calendar_dates_with_payers`.`cpt_code` = `insurance_scheduled_rates_phd`.`cpt_code`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_calendar_dates_with_payers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_calendar_dates_with_payers` AS select `calendar_dates`.`day` AS `day`,`t1`.`insurance_id` AS `insurance_id`,`intake_insurances`.`insurance` AS `insurance`,`t2`.`cpt_code` AS `cpt_code` from (((`calendar_dates` join (select distinct `insurance_scheduled_rates`.`insurance_id` AS `insurance_id` from `insurance_scheduled_rates`) `T1`) join (select distinct `insurance_scheduled_rates`.`cpt_code` AS `cpt_code` from `insurance_scheduled_rates`) `T2`) left join `intake_insurances` on((`t1`.`insurance_id` = `intake_insurances`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_appointments_agged`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_appointments_agged` AS select `view_billing_member_appointments_joined`.`id` AS `id`,`view_billing_member_appointments_joined`.`user_id` AS `user_id`,`view_billing_member_appointments_joined`.`apero_patient_id` AS `apero_patient_id`,`view_billing_member_appointments_joined`.`apero_visit_id` AS `apero_visit_id`,`view_billing_member_appointments_joined`.`apero_lineitem_id` AS `apero_lineitem_id`,`view_billing_member_appointments_joined`.`start_time_in_iso8601_utc` AS `start_time_in_iso8601_utc`,`view_billing_member_appointments_joined`.`summary_cpt` AS `summary_cpt`,`view_billing_member_appointments_joined`.`session_length` AS `session_length`,`view_billing_member_appointments_joined`.`sign_note_session_length` AS `sign_note_session_length`,`view_billing_member_appointments_joined`.`clinician_email` AS `clinician_email`,`view_billing_member_appointments_joined`.`session_type` AS `session_type`,`view_billing_member_appointments_joined`.`start_ts` AS `start_ts`,`view_billing_member_appointments_joined`.`completion_at` AS `completion_at`,`view_billing_member_appointments_joined`.`billing_state` AS `billing_state`,`view_billing_member_appointments_joined`.`member_billing_coverage_id` AS `member_billing_coverage_id`,`view_billing_member_appointments_joined`.`member_billing_coverage_override` AS `member_billing_coverage_override`,`view_billing_member_appointments_joined`.`needs_billing_review` AS `needs_billing_review`,`view_billing_member_appointments_joined`.`needs_billing_review_notes` AS `needs_billing_review_notes`,`view_billing_member_appointments_joined`.`appointment_state` AS `appointment_state`,`view_billing_member_appointments_joined`.`appointment_type` AS `appointment_type`,`view_billing_member_appointments_joined`.`amd_appt_backfill` AS `amd_appt_backfill`,`view_billing_member_appointments_joined`.`ehr_origin_source` AS `ehr_origin_source`,`view_billing_member_appointments_joined`.`cancellation_author` AS `cancellation_author`,`view_billing_member_appointments_joined`.`cancellation_ts` AS `cancellation_ts`,`view_billing_member_appointments_joined`.`cancellation_reason` AS `cancellation_reason`,`view_billing_member_appointments_joined`.`cancelled_within_24_hours` AS `cancelled_within_24_hours`,`view_billing_member_appointments_joined`.`cancelled_waive_late_fee` AS `cancelled_waive_late_fee`,`view_billing_member_appointments_joined`.`needs_review_notes` AS `needs_review_notes`,`view_billing_member_appointments_joined`.`billable_cancelled_session` AS `billable_cancelled_session`,`view_billing_member_appointments_joined`.`coverage_id` AS `coverage_id`,`view_billing_member_appointments_joined`.`plan` AS `plan`,`view_billing_member_appointments_joined`.`cash_pay_30_min` AS `cash_pay_30_min`,`view_billing_member_appointments_joined`.`cash_pay_45_min` AS `cash_pay_45_min`,`view_billing_member_appointments_joined`.`cash_pay_60_min` AS `cash_pay_60_min`,`view_billing_member_appointments_joined`.`cash_pay_90_min` AS `cash_pay_90_min`,`view_billing_member_appointments_joined`.`insurance_id_primary` AS `insurance_id_primary`,`view_billing_member_appointments_joined`.`cash_amount_from_session_length` AS `cash_amount_from_session_length`,`view_billing_member_appointments_joined`.`cash_amount_from_cancelled_session_length` AS `cash_amount_from_cancelled_session_length`,`view_billing_member_appointments_joined`.`insurance` AS `insurance`,`view_billing_member_appointments_joined`.`apero_trading_partner_id` AS `apero_trading_partner_id`,`view_billing_member_appointments_joined`.`days_to_invoice_claim` AS `days_to_invoice_claim`,`view_billing_member_appointments_joined`.`last_day_to_file` AS `last_day_to_file`,`view_billing_member_appointments_joined`.`is_test_user` AS `is_test_user`,`view_billing_member_appointments_joined`.`member_balance_restrictions` AS `member_balance_restrictions`,`view_billing_member_appointments_joined`.`customer_id` AS `customer_id`,`view_billing_member_appointments_joined`.`member_timezone` AS `member_timezone`,`view_billing_member_appointments_joined`.`appt_time_in_member_timezone` AS `appt_time_in_member_timezone`,`view_billing_member_appointments_joined`.`appt_date_in_member_timezone` AS `appt_date_in_member_timezone`,`view_billing_member_appointments_joined`.`payment_plan_frequency` AS `payment_plan_frequency`,`view_billing_member_appointments_joined`.`payment_plan_active_after` AS `payment_plan_active_after`,`view_billing_member_appointments_joined`.`auto_billing_status` AS `auto_billing_status`,`view_billing_member_appointments_joined`.`billing_paused_states` AS `billing_paused_states`,`view_billing_member_appointments_joined`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`view_billing_member_appointments_joined`.`bill_late_cancels` AS `bill_late_cancels`,`view_billing_member_appointments_joined`.`bill_ptsd_as_cash` AS `bill_ptsd_as_cash`,`view_billing_member_appointments_joined`.`licensing_level` AS `licensing_level`,`view_billing_member_appointments_joined`.`rate` AS `rate`,`view_billing_member_appointments_joined`.`degree_type` AS `degree_type`,`view_billing_member_appointments_joined`.`copay_cents` AS `copay_cents`,`view_billing_member_appointments_joined`.`member_billing_insurances_id` AS `member_billing_insurances_id`,`view_billing_member_appointments_joined`.`behavioral_health_insurance_id` AS `behavioral_health_insurance_id`,`view_billing_member_appointments_joined`.`apero_coverage_id` AS `apero_coverage_id`,`view_billing_member_appointments_joined`.`has_invoice` AS `has_invoice`,`view_billing_member_appointments_joined`.`member_invoices_id` AS `member_invoices_id`,`view_billing_member_appointments_joined`.`member_invoices_type` AS `member_invoices_type`,`view_billing_member_appointments_joined`.`invoice_currency` AS `invoice_currency`,`view_billing_member_appointments_joined`.`member_invoices_billing_coverages_id` AS `member_invoices_billing_coverages_id`,`view_billing_member_appointments_joined`.`invoice_copay_amount` AS `invoice_copay_amount`,`view_billing_member_appointments_joined`.`member_invoices_plan` AS `member_invoices_plan`,`view_billing_member_appointments_joined`.`invoice_amount` AS `invoice_amount`,`view_billing_member_appointments_joined`.`member_appointments_retool_url` AS `member_appointments_retool_url`,`view_billing_member_appointments_joined`.`apero_patient_url` AS `apero_patient_url`,`view_billing_member_appointments_joined`.`apero_visit_url` AS `apero_visit_url`,(ifnull(`view_billing_member_appointments_joined`.`invoice_amount`,0) - ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`la_total`,0)) AS `owed_amount`,(ifnull(`view_billing_member_appointments_joined`.`invoice_amount`,0) - ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`payment_total`,0)) AS `total_mr`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`adjustment_total`,0) AS `adjustment_total`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`payment_total`,0) AS `payment_total`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`manually_reported_payment_total`,0) AS `manually_reported_payment_total`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_adjustment_total`,0) AS `apero_adjustment_total`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_payment_total`,0) AS `apero_payment_total`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`adjustment_count`,0) AS `adjustment_count`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`payment_count`,0) AS `payment_count`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`manually_reported_payment_count`,0) AS `manually_reported_payment_count`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_adjustment_count`,0) AS `apero_adjustment_count`,ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_payment_count`,0) AS `apero_payment_count`,(ifnull(`view_billing_member_appointments_joined`.`invoice_amount`,0) - ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_adjustment_total`,0)) AS `allowed_amount`,((ifnull(`view_billing_member_appointments_joined`.`invoice_amount`,0) - ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_adjustment_total`,0)) - ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_payment_total`,0)) AS `patient_responsibility`,ifnull(`view_billing_member_appointments_joined`.`invoice_amount`,0) AS `billed_amount`,(ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_adjustment_total`,0) - ifnull(`view_billing_member_line_applications_grouped_by_invoice`.`apero_payment_total`,0)) AS `member_paid` from (`view_billing_member_appointments_joined` left join `view_billing_member_line_applications_grouped_by_invoice` on(((`view_billing_member_appointments_joined`.`user_id` = `view_billing_member_line_applications_grouped_by_invoice`.`user_id`) and (`view_billing_member_appointments_joined`.`member_invoices_id` = `view_billing_member_line_applications_grouped_by_invoice`.`member_invoices_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_appointments_agged_with_ins_rates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_appointments_agged_with_ins_rates` AS select `view_billing_member_appointments_agged`.`id` AS `id`,`view_billing_member_appointments_agged`.`user_id` AS `user_id`,`view_billing_member_appointments_agged`.`apero_patient_id` AS `apero_patient_id`,`view_billing_member_appointments_agged`.`apero_visit_id` AS `apero_visit_id`,`view_billing_member_appointments_agged`.`apero_lineitem_id` AS `apero_lineitem_id`,`view_billing_member_appointments_agged`.`start_time_in_iso8601_utc` AS `start_time_in_iso8601_utc`,`view_billing_member_appointments_agged`.`summary_cpt` AS `summary_cpt`,`view_billing_member_appointments_agged`.`session_length` AS `session_length`,`view_billing_member_appointments_agged`.`sign_note_session_length` AS `sign_note_session_length`,`view_billing_member_appointments_agged`.`clinician_email` AS `clinician_email`,`view_billing_member_appointments_agged`.`session_type` AS `session_type`,`view_billing_member_appointments_agged`.`start_ts` AS `start_ts`,`view_billing_member_appointments_agged`.`completion_at` AS `completion_at`,`view_billing_member_appointments_agged`.`billing_state` AS `billing_state`,`view_billing_member_appointments_agged`.`member_billing_coverage_id` AS `member_billing_coverage_id`,`view_billing_member_appointments_agged`.`member_billing_coverage_override` AS `member_billing_coverage_override`,`view_billing_member_appointments_agged`.`needs_billing_review` AS `needs_billing_review`,`view_billing_member_appointments_agged`.`needs_billing_review_notes` AS `needs_billing_review_notes`,`view_billing_member_appointments_agged`.`appointment_state` AS `appointment_state`,`view_billing_member_appointments_agged`.`appointment_type` AS `appointment_type`,`view_billing_member_appointments_agged`.`amd_appt_backfill` AS `amd_appt_backfill`,`view_billing_member_appointments_agged`.`ehr_origin_source` AS `ehr_origin_source`,`view_billing_member_appointments_agged`.`cancellation_author` AS `cancellation_author`,`view_billing_member_appointments_agged`.`cancellation_ts` AS `cancellation_ts`,`view_billing_member_appointments_agged`.`cancellation_reason` AS `cancellation_reason`,`view_billing_member_appointments_agged`.`cancelled_within_24_hours` AS `cancelled_within_24_hours`,`view_billing_member_appointments_agged`.`cancelled_waive_late_fee` AS `cancelled_waive_late_fee`,`view_billing_member_appointments_agged`.`needs_review_notes` AS `needs_review_notes`,`view_billing_member_appointments_agged`.`billable_cancelled_session` AS `billable_cancelled_session`,`view_billing_member_appointments_agged`.`coverage_id` AS `coverage_id`,`view_billing_member_appointments_agged`.`plan` AS `plan`,`view_billing_member_appointments_agged`.`cash_pay_30_min` AS `cash_pay_30_min`,`view_billing_member_appointments_agged`.`cash_pay_45_min` AS `cash_pay_45_min`,`view_billing_member_appointments_agged`.`cash_pay_60_min` AS `cash_pay_60_min`,`view_billing_member_appointments_agged`.`cash_pay_90_min` AS `cash_pay_90_min`,`view_billing_member_appointments_agged`.`insurance_id_primary` AS `insurance_id_primary`,`view_billing_member_appointments_agged`.`cash_amount_from_session_length` AS `cash_amount_from_session_length`,`view_billing_member_appointments_agged`.`cash_amount_from_cancelled_session_length` AS `cash_amount_from_cancelled_session_length`,`view_billing_member_appointments_agged`.`insurance` AS `insurance`,`view_billing_member_appointments_agged`.`apero_trading_partner_id` AS `apero_trading_partner_id`,`view_billing_member_appointments_agged`.`days_to_invoice_claim` AS `days_to_invoice_claim`,`view_billing_member_appointments_agged`.`last_day_to_file` AS `last_day_to_file`,`view_billing_member_appointments_agged`.`is_test_user` AS `is_test_user`,`view_billing_member_appointments_agged`.`member_balance_restrictions` AS `member_balance_restrictions`,`view_billing_member_appointments_agged`.`customer_id` AS `customer_id`,`view_billing_member_appointments_agged`.`member_timezone` AS `member_timezone`,`view_billing_member_appointments_agged`.`appt_time_in_member_timezone` AS `appt_time_in_member_timezone`,`view_billing_member_appointments_agged`.`appt_date_in_member_timezone` AS `appt_date_in_member_timezone`,`view_billing_member_appointments_agged`.`payment_plan_frequency` AS `payment_plan_frequency`,`view_billing_member_appointments_agged`.`payment_plan_active_after` AS `payment_plan_active_after`,`view_billing_member_appointments_agged`.`auto_billing_status` AS `auto_billing_status`,`view_billing_member_appointments_agged`.`billing_paused_states` AS `billing_paused_states`,`view_billing_member_appointments_agged`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`view_billing_member_appointments_agged`.`bill_late_cancels` AS `bill_late_cancels`,`view_billing_member_appointments_agged`.`bill_ptsd_as_cash` AS `bill_ptsd_as_cash`,`view_billing_member_appointments_agged`.`licensing_level` AS `licensing_level`,`view_billing_member_appointments_agged`.`rate` AS `rate`,`view_billing_member_appointments_agged`.`degree_type` AS `degree_type`,`view_billing_member_appointments_agged`.`copay_cents` AS `copay_cents`,`view_billing_member_appointments_agged`.`member_billing_insurances_id` AS `member_billing_insurances_id`,`view_billing_member_appointments_agged`.`behavioral_health_insurance_id` AS `behavioral_health_insurance_id`,`view_billing_member_appointments_agged`.`apero_coverage_id` AS `apero_coverage_id`,`view_billing_member_appointments_agged`.`has_invoice` AS `has_invoice`,`view_billing_member_appointments_agged`.`member_invoices_id` AS `member_invoices_id`,`view_billing_member_appointments_agged`.`member_invoices_type` AS `member_invoices_type`,`view_billing_member_appointments_agged`.`invoice_currency` AS `invoice_currency`,`view_billing_member_appointments_agged`.`member_invoices_billing_coverages_id` AS `member_invoices_billing_coverages_id`,`view_billing_member_appointments_agged`.`invoice_copay_amount` AS `invoice_copay_amount`,`view_billing_member_appointments_agged`.`member_invoices_plan` AS `member_invoices_plan`,`view_billing_member_appointments_agged`.`invoice_amount` AS `invoice_amount`,`view_billing_member_appointments_agged`.`member_appointments_retool_url` AS `member_appointments_retool_url`,`view_billing_member_appointments_agged`.`apero_patient_url` AS `apero_patient_url`,`view_billing_member_appointments_agged`.`apero_visit_url` AS `apero_visit_url`,`view_billing_member_appointments_agged`.`owed_amount` AS `owed_amount`,`view_billing_member_appointments_agged`.`total_mr` AS `total_mr`,`view_billing_member_appointments_agged`.`adjustment_total` AS `adjustment_total`,`view_billing_member_appointments_agged`.`payment_total` AS `payment_total`,`view_billing_member_appointments_agged`.`manually_reported_payment_total` AS `manually_reported_payment_total`,`view_billing_member_appointments_agged`.`apero_adjustment_total` AS `apero_adjustment_total`,`view_billing_member_appointments_agged`.`apero_payment_total` AS `apero_payment_total`,`view_billing_member_appointments_agged`.`adjustment_count` AS `adjustment_count`,`view_billing_member_appointments_agged`.`payment_count` AS `payment_count`,`view_billing_member_appointments_agged`.`manually_reported_payment_count` AS `manually_reported_payment_count`,`view_billing_member_appointments_agged`.`apero_adjustment_count` AS `apero_adjustment_count`,`view_billing_member_appointments_agged`.`apero_payment_count` AS `apero_payment_count`,`view_billing_member_appointments_agged`.`allowed_amount` AS `allowed_amount`,`view_billing_member_appointments_agged`.`patient_responsibility` AS `patient_responsibility`,`view_billing_member_appointments_agged`.`billed_amount` AS `billed_amount`,`view_billing_member_appointments_agged`.`member_paid` AS `member_paid`,`view_billing_calendar_dates_insurance_scheduled_rates`.`masters_rate` AS `insurance_masters_rate`,`view_billing_calendar_dates_insurance_scheduled_rates`.`phd_rate` AS `insurance_phd_rate` from (`view_billing_member_appointments_agged` left join `view_billing_calendar_dates_insurance_scheduled_rates` on(((`view_billing_member_appointments_agged`.`appt_date_in_member_timezone` = `view_billing_calendar_dates_insurance_scheduled_rates`.`day`) and (`view_billing_member_appointments_agged`.`behavioral_health_insurance_id` = `view_billing_calendar_dates_insurance_scheduled_rates`.`insurance_id`) and (`view_billing_member_appointments_agged`.`summary_cpt` = `view_billing_calendar_dates_insurance_scheduled_rates`.`cpt_code`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_appointments_apero_invoices_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_appointments_apero_invoices_joined` AS select `view_billing_member_appointments_agged`.`id` AS `id`,`view_billing_member_appointments_agged`.`user_id` AS `user_id`,`view_billing_member_appointments_agged`.`apero_patient_id` AS `apero_patient_id`,`view_billing_member_appointments_agged`.`apero_visit_id` AS `apero_visit_id`,`view_billing_member_appointments_agged`.`apero_lineitem_id` AS `apero_lineitem_id`,`view_billing_member_appointments_agged`.`start_time_in_iso8601_utc` AS `start_time_in_iso8601_utc`,`view_billing_member_appointments_agged`.`summary_cpt` AS `summary_cpt`,`view_billing_member_appointments_agged`.`session_length` AS `session_length`,`view_billing_member_appointments_agged`.`sign_note_session_length` AS `sign_note_session_length`,`view_billing_member_appointments_agged`.`clinician_email` AS `clinician_email`,`view_billing_member_appointments_agged`.`session_type` AS `session_type`,`view_billing_member_appointments_agged`.`start_ts` AS `start_ts`,`view_billing_member_appointments_agged`.`completion_at` AS `completion_at`,`view_billing_member_appointments_agged`.`billing_state` AS `billing_state`,`view_billing_member_appointments_agged`.`member_billing_coverage_id` AS `member_billing_coverage_id`,`view_billing_member_appointments_agged`.`member_billing_coverage_override` AS `member_billing_coverage_override`,`view_billing_member_appointments_agged`.`needs_billing_review` AS `needs_billing_review`,`view_billing_member_appointments_agged`.`needs_billing_review_notes` AS `needs_billing_review_notes`,`view_billing_member_appointments_agged`.`appointment_state` AS `appointment_state`,`view_billing_member_appointments_agged`.`appointment_type` AS `appointment_type`,`view_billing_member_appointments_agged`.`amd_appt_backfill` AS `amd_appt_backfill`,`view_billing_member_appointments_agged`.`ehr_origin_source` AS `ehr_origin_source`,`view_billing_member_appointments_agged`.`cancellation_author` AS `cancellation_author`,`view_billing_member_appointments_agged`.`cancellation_ts` AS `cancellation_ts`,`view_billing_member_appointments_agged`.`cancellation_reason` AS `cancellation_reason`,`view_billing_member_appointments_agged`.`cancelled_within_24_hours` AS `cancelled_within_24_hours`,`view_billing_member_appointments_agged`.`cancelled_waive_late_fee` AS `cancelled_waive_late_fee`,`view_billing_member_appointments_agged`.`needs_review_notes` AS `needs_review_notes`,`view_billing_member_appointments_agged`.`billable_cancelled_session` AS `billable_cancelled_session`,`view_billing_member_appointments_agged`.`coverage_id` AS `coverage_id`,`view_billing_member_appointments_agged`.`plan` AS `plan`,`view_billing_member_appointments_agged`.`cash_pay_30_min` AS `cash_pay_30_min`,`view_billing_member_appointments_agged`.`cash_pay_45_min` AS `cash_pay_45_min`,`view_billing_member_appointments_agged`.`cash_pay_60_min` AS `cash_pay_60_min`,`view_billing_member_appointments_agged`.`cash_pay_90_min` AS `cash_pay_90_min`,`view_billing_member_appointments_agged`.`insurance_id_primary` AS `insurance_id_primary`,`view_billing_member_appointments_agged`.`cash_amount_from_session_length` AS `cash_amount_from_session_length`,`view_billing_member_appointments_agged`.`cash_amount_from_cancelled_session_length` AS `cash_amount_from_cancelled_session_length`,`view_billing_member_appointments_agged`.`insurance` AS `insurance`,`view_billing_member_appointments_agged`.`apero_trading_partner_id` AS `apero_trading_partner_id`,`view_billing_member_appointments_agged`.`days_to_invoice_claim` AS `days_to_invoice_claim`,`view_billing_member_appointments_agged`.`last_day_to_file` AS `last_day_to_file`,`view_billing_member_appointments_agged`.`is_test_user` AS `is_test_user`,`view_billing_member_appointments_agged`.`member_balance_restrictions` AS `member_balance_restrictions`,`view_billing_member_appointments_agged`.`customer_id` AS `customer_id`,`view_billing_member_appointments_agged`.`member_timezone` AS `member_timezone`,`view_billing_member_appointments_agged`.`appt_time_in_member_timezone` AS `appt_time_in_member_timezone`,`view_billing_member_appointments_agged`.`appt_date_in_member_timezone` AS `appt_date_in_member_timezone`,`view_billing_member_appointments_agged`.`payment_plan_frequency` AS `payment_plan_frequency`,`view_billing_member_appointments_agged`.`payment_plan_active_after` AS `payment_plan_active_after`,`view_billing_member_appointments_agged`.`auto_billing_status` AS `auto_billing_status`,`view_billing_member_appointments_agged`.`billing_paused_states` AS `billing_paused_states`,`view_billing_member_appointments_agged`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`view_billing_member_appointments_agged`.`bill_late_cancels` AS `bill_late_cancels`,`view_billing_member_appointments_agged`.`bill_ptsd_as_cash` AS `bill_ptsd_as_cash`,`view_billing_member_appointments_agged`.`licensing_level` AS `licensing_level`,`view_billing_member_appointments_agged`.`rate` AS `rate`,`view_billing_member_appointments_agged`.`degree_type` AS `degree_type`,`view_billing_member_appointments_agged`.`copay_cents` AS `copay_cents`,`view_billing_member_appointments_agged`.`member_billing_insurances_id` AS `member_billing_insurances_id`,`view_billing_member_appointments_agged`.`behavioral_health_insurance_id` AS `behavioral_health_insurance_id`,`view_billing_member_appointments_agged`.`apero_coverage_id` AS `apero_coverage_id`,`view_billing_member_appointments_agged`.`has_invoice` AS `has_invoice`,`view_billing_member_appointments_agged`.`member_invoices_id` AS `member_invoices_id`,`view_billing_member_appointments_agged`.`member_invoices_type` AS `member_invoices_type`,`view_billing_member_appointments_agged`.`invoice_currency` AS `invoice_currency`,`view_billing_member_appointments_agged`.`member_invoices_billing_coverages_id` AS `member_invoices_billing_coverages_id`,`view_billing_member_appointments_agged`.`invoice_copay_amount` AS `invoice_copay_amount`,`view_billing_member_appointments_agged`.`member_invoices_plan` AS `member_invoices_plan`,`view_billing_member_appointments_agged`.`invoice_amount` AS `invoice_amount`,`view_billing_member_appointments_agged`.`member_appointments_retool_url` AS `member_appointments_retool_url`,`view_billing_member_appointments_agged`.`apero_patient_url` AS `apero_patient_url`,`view_billing_member_appointments_agged`.`apero_visit_url` AS `apero_visit_url`,`view_billing_member_appointments_agged`.`owed_amount` AS `owed_amount`,`view_billing_member_appointments_agged`.`total_mr` AS `total_mr`,`view_billing_member_appointments_agged`.`adjustment_total` AS `adjustment_total`,`view_billing_member_appointments_agged`.`payment_total` AS `payment_total`,`view_billing_member_appointments_agged`.`manually_reported_payment_total` AS `manually_reported_payment_total`,`view_billing_member_appointments_agged`.`apero_adjustment_total` AS `apero_adjustment_total`,`view_billing_member_appointments_agged`.`apero_payment_total` AS `apero_payment_total`,`view_billing_member_appointments_agged`.`adjustment_count` AS `adjustment_count`,`view_billing_member_appointments_agged`.`payment_count` AS `payment_count`,`view_billing_member_appointments_agged`.`manually_reported_payment_count` AS `manually_reported_payment_count`,`view_billing_member_appointments_agged`.`apero_adjustment_count` AS `apero_adjustment_count`,`view_billing_member_appointments_agged`.`apero_payment_count` AS `apero_payment_count`,`view_billing_member_appointments_agged`.`allowed_amount` AS `allowed_amount`,`view_billing_member_appointments_agged`.`patient_responsibility` AS `patient_responsibility`,`view_billing_member_appointments_agged`.`billed_amount` AS `billed_amount`,`view_billing_member_appointments_agged`.`member_paid` AS `member_paid`,`ali`.`line_item_id` AS `line_item_id`,`ali`.`amount_charged` AS `amount_charged`,`ali`.`amount_charged_as_cents` AS `amount_charged_as_cents`,`ali`.`line_item_linked_ehr_id` AS `line_item_linked_ehr_id`,`ali`.`service_date` AS `service_date`,`ali`.`visit` AS `visit`,`ali`.`visit_id` AS `visit_id`,`ali`.`created` AS `created`,`ali`.`created_date` AS `created_date`,`ali`.`created_year` AS `created_year`,`ali`.`created_month` AS `created_month`,`ali`.`created_week` AS `created_week`,`ali`.`days_since_created` AS `days_since_created`,`ali`.`insurance_primary` AS `insurance_primary`,`ali`.`linked_member_appointments_id` AS `linked_member_appointments_id`,`ali`.`apero_provider_id` AS `apero_provider_id`,`ali`.`visit_status` AS `visit_status`,`ali`.`visit_date` AS `visit_date`,`ali`.`filing_delay_in_days` AS `filing_delay_in_days`,`ali`.`trading_partner_id` AS `trading_partner_id`,`ali`.`linked_user_id` AS `linked_user_id`,`ali`.`first_name` AS `first_name`,`ali`.`last_name` AS `last_name`,`ali`.`email` AS `email`,`ali`.`name` AS `name`,`ali`.`state_code` AS `state_code`,`ali`.`li_total_in_cents` AS `li_total_in_cents`,`ali`.`adjustment_total_in_cents` AS `adjustment_total_in_cents`,`ali`.`payment_total_in_cents` AS `payment_total_in_cents`,`ali`.`count_li_total` AS `count_li_total`,`ali`.`count_adjustment_total` AS `count_adjustment_total`,`ali`.`count_payment_total` AS `count_payment_total`,`ali`.`remaining_amount_in_cents` AS `remaining_amount_in_cents`,`ali`.`apero_allowed_amount` AS `apero_allowed_amount` from (`view_billing_member_appointments_agged` left join `view_billing_apero_line_items_agged` `ali` on((`view_billing_member_appointments_agged`.`apero_visit_id` = `ali`.`visit_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_appointments_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_appointments_joined` AS select `member_appointments`.`id` AS `id`,`member_appointments`.`user_id` AS `user_id`,`view_billing_premium_users_joined`.`apero_patient_id` AS `apero_patient_id`,`member_appointments`.`apero_visit_id` AS `apero_visit_id`,`member_appointments`.`apero_lineitem_id` AS `apero_lineitem_id`,`member_appointments`.`start_time_in_iso8601_utc` AS `start_time_in_iso8601_utc`,`member_appointments`.`summary_cpt` AS `summary_cpt`,`member_appointments`.`session_length` AS `session_length`,`member_appointments`.`sign_note_session_length` AS `sign_note_session_length`,`member_appointments`.`clinician_email` AS `clinician_email`,`member_appointments`.`session_type` AS `session_type`,`member_appointments`.`start_ts` AS `start_ts`,`member_appointments`.`completion_at` AS `completion_at`,`member_appointments`.`billing_state` AS `billing_state`,`member_appointments`.`member_billing_coverage_id` AS `member_billing_coverage_id`,`member_appointments`.`member_billing_coverage_override` AS `member_billing_coverage_override`,`member_appointments`.`needs_billing_review` AS `needs_billing_review`,`member_appointments`.`needs_billing_review_notes` AS `needs_billing_review_notes`,`member_appointments`.`appointment_state` AS `appointment_state`,`member_appointments`.`appointment_type` AS `appointment_type`,`member_appointments`.`amd_appt_backfill` AS `amd_appt_backfill`,`member_appointments`.`ehr_origin_source` AS `ehr_origin_source`,`member_appointments`.`cancellation_author` AS `cancellation_author`,`member_appointments`.`cancellation_ts` AS `cancellation_ts`,`member_appointments`.`cancellation_reason` AS `cancellation_reason`,`member_appointments`.`cancelled_within_24_hours` AS `cancelled_within_24_hours`,`member_appointments`.`cancelled_waive_late_fee` AS `cancelled_waive_late_fee`,`member_appointments`.`needs_review_notes` AS `needs_review_notes`,(case when ((`member_appointments`.`cancelled_within_24_hours` = true) and (`member_appointments`.`cancelled_waive_late_fee` = false)) then 1 else NULL end) AS `billable_cancelled_session`,`member_billing_coverages`.`id` AS `coverage_id`,`member_billing_coverages`.`plan` AS `plan`,`member_billing_coverages`.`cash_pay_30_min` AS `cash_pay_30_min`,`member_billing_coverages`.`cash_pay_45_min` AS `cash_pay_45_min`,`member_billing_coverages`.`cash_pay_60_min` AS `cash_pay_60_min`,`member_billing_coverages`.`cash_pay_90_min` AS `cash_pay_90_min`,`member_billing_coverages`.`insurance_id_primary` AS `insurance_id_primary`,(case when (`member_appointments`.`summary_cpt` = '90791') then `member_billing_coverages`.`cash_pay_60_min` when (`member_appointments`.`sign_note_session_length` = '30 minutes') then `member_billing_coverages`.`cash_pay_30_min` when (`member_appointments`.`sign_note_session_length` = '45 minutes') then `member_billing_coverages`.`cash_pay_45_min` when (`member_appointments`.`sign_note_session_length` = '60 minutes') then `member_billing_coverages`.`cash_pay_60_min` when (`member_appointments`.`sign_note_session_length` = '90 minutes') then `member_billing_coverages`.`cash_pay_90_min` else NULL end) AS `cash_amount_from_session_length`,(case when ((`member_appointments`.`appointment_state` = 'cancelled') and (`member_appointments`.`session_length` = 30)) then `member_billing_coverages`.`cash_pay_30_min` when ((`member_appointments`.`appointment_state` = 'cancelled') and (`member_appointments`.`session_length` = 45)) then `member_billing_coverages`.`cash_pay_45_min` when ((`member_appointments`.`appointment_state` = 'cancelled') and (`member_appointments`.`session_length` = 60)) then `member_billing_coverages`.`cash_pay_60_min` when ((`member_appointments`.`appointment_state` = 'cancelled') and (`member_appointments`.`session_length` = 90)) then `member_billing_coverages`.`cash_pay_90_min` else NULL end) AS `cash_amount_from_cancelled_session_length`,`intake_insurances`.`insurance` AS `insurance`,`intake_insurances`.`apero_trading_partner_id` AS `apero_trading_partner_id`,`intake_insurances`.`days_to_invoice_claim` AS `days_to_invoice_claim`,(`member_appointments`.`start_ts` + interval `intake_insurances`.`days_to_invoice_claim` day) AS `last_day_to_file`,`view_billing_premium_users_joined`.`is_test_user` AS `is_test_user`,`view_billing_premium_users_joined`.`member_balance_restrictions` AS `member_balance_restrictions`,`view_billing_premium_users_joined`.`customer_id` AS `customer_id`,ifnull(`view_billing_premium_users_joined`.`diagnostic_timezone`,'America/Chicago') AS `member_timezone`,convert_tz(`member_appointments`.`start_ts`,'UTC',ifnull(`view_billing_premium_users_joined`.`diagnostic_timezone`,'America/Chicago')) AS `appt_time_in_member_timezone`,cast(convert_tz(`member_appointments`.`start_ts`,'UTC',ifnull(`view_billing_premium_users_joined`.`diagnostic_timezone`,'America/Chicago')) as date) AS `appt_date_in_member_timezone`,`view_billing_premium_users_joined`.`payment_plan_frequency` AS `payment_plan_frequency`,`view_billing_premium_users_joined`.`payment_plan_active_after` AS `payment_plan_active_after`,`view_billing_premium_users_joined`.`auto_billing_status` AS `auto_billing_status`,`view_billing_premium_users_joined`.`billing_paused_states` AS `billing_paused_states`,`view_billing_premium_users_joined`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`view_billing_premium_users_joined`.`bill_late_cancels` AS `bill_late_cancels`,`view_billing_premium_users_joined`.`bill_ptsd_as_cash` AS `bill_ptsd_as_cash`,`premium_clinicians`.`licensing_level` AS `licensing_level`,`insurance_scheduled_rates`.`rate` AS `rate`,`insurance_scheduled_rates`.`degree_type` AS `degree_type`,ifnull(`member_billing_insurances`.`copay_cents`,0) AS `copay_cents`,`member_billing_insurances`.`id` AS `member_billing_insurances_id`,`member_billing_insurances`.`behavioral_health_insurance_id` AS `behavioral_health_insurance_id`,`member_billing_insurances`.`apero_coverage_id` AS `apero_coverage_id`,if((`member_invoices`.`id` is null),0,1) AS `has_invoice`,`member_invoices`.`id` AS `member_invoices_id`,`member_invoices`.`invoice_type` AS `member_invoices_type`,`member_invoices`.`invoice_currency` AS `invoice_currency`,`member_invoices`.`member_billing_coverages_id` AS `member_invoices_billing_coverages_id`,`member_invoices`.`copay_amount` AS `invoice_copay_amount`,`mbc2`.`plan` AS `member_invoices_plan`,ifnull(`member_invoices`.`invoice_amount`,0) AS `invoice_amount`,concat('https://retool.treatmyocd.com/apps/Billing/BillingV4?user_id=',`member_appointments`.`user_id`) AS `member_appointments_retool_url`,concat('https://app.aperohealth.com/dash/patients/',`view_billing_premium_users_joined`.`apero_patient_id`) AS `apero_patient_url`,concat('https://app.aperohealth.com/dash/invoices/',`member_appointments`.`apero_visit_id`) AS `apero_visit_url` from ((((((((((`member_appointments` left join `premium_clinicians` on((`member_appointments`.`clinician_email` = `premium_clinicians`.`email`))) left join `member_billing_coverages` on((`member_appointments`.`member_billing_coverage_id` = `member_billing_coverages`.`id`))) left join `member_billing_insurances` on((`member_billing_coverages`.`insurance_id_primary` = `member_billing_insurances`.`id`))) left join `intake_insurances` on((`member_billing_insurances`.`behavioral_health_insurance_id` = `intake_insurances`.`id`))) left join `insurance_scheduled_rates` on(((`intake_insurances`.`id` = `insurance_scheduled_rates`.`insurance_id`) and (`insurance_scheduled_rates`.`archived_at` is null) and (`insurance_scheduled_rates`.`degree_type` = `premium_clinicians`.`licensing_level`) and (`insurance_scheduled_rates`.`cpt_code` = `member_appointments`.`summary_cpt`) and (`member_appointments`.`start_ts` >= `insurance_scheduled_rates`.`start_date`) and (`member_appointments`.`start_ts` < `insurance_scheduled_rates`.`end_date`)))) left join `member_invoices` on((`member_appointments`.`id` = `member_invoices`.`member_appointments_id`))) left join `member_billing_coverages` `mbc2` on((`member_invoices`.`member_billing_coverages_id` = `mbc2`.`id`))) left join `view_billing_premium_users_joined` on((`member_appointments`.`user_id` = `view_billing_premium_users_joined`.`user_id`))) left join `polytomic`.`apero_visits` on((`polytomic`.`apero_visits`.`id` = `member_appointments`.`apero_visit_id`))) left join `polytomic`.`apero_line_items` on((`polytomic`.`apero_line_items`.`id` = `member_appointments`.`apero_lineitem_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_appointments_with_guessed_coverages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_appointments_with_guessed_coverages` AS select `ma`.`id` AS `id`,`ma`.`user_id` AS `user_id`,`ma`.`apero_patient_id` AS `apero_patient_id`,`ma`.`apero_visit_id` AS `apero_visit_id`,`ma`.`apero_lineitem_id` AS `apero_lineitem_id`,`ma`.`start_time_in_iso8601_utc` AS `start_time_in_iso8601_utc`,`ma`.`summary_cpt` AS `summary_cpt`,`ma`.`session_length` AS `session_length`,`ma`.`sign_note_session_length` AS `sign_note_session_length`,`ma`.`clinician_email` AS `clinician_email`,`ma`.`session_type` AS `session_type`,`ma`.`start_ts` AS `start_ts`,`ma`.`completion_at` AS `completion_at`,`ma`.`billing_state` AS `billing_state`,`ma`.`member_billing_coverage_id` AS `member_billing_coverage_id`,`ma`.`member_billing_coverage_override` AS `member_billing_coverage_override`,`ma`.`needs_billing_review` AS `needs_billing_review`,`ma`.`needs_billing_review_notes` AS `needs_billing_review_notes`,`ma`.`appointment_state` AS `appointment_state`,`ma`.`appointment_type` AS `appointment_type`,`ma`.`amd_appt_backfill` AS `amd_appt_backfill`,`ma`.`ehr_origin_source` AS `ehr_origin_source`,`ma`.`cancellation_author` AS `cancellation_author`,`ma`.`cancellation_ts` AS `cancellation_ts`,`ma`.`cancellation_reason` AS `cancellation_reason`,`ma`.`cancelled_within_24_hours` AS `cancelled_within_24_hours`,`ma`.`cancelled_waive_late_fee` AS `cancelled_waive_late_fee`,`ma`.`needs_review_notes` AS `needs_review_notes`,`ma`.`billable_cancelled_session` AS `billable_cancelled_session`,`ma`.`coverage_id` AS `coverage_id`,`ma`.`plan` AS `plan`,`ma`.`cash_pay_30_min` AS `cash_pay_30_min`,`ma`.`cash_pay_45_min` AS `cash_pay_45_min`,`ma`.`cash_pay_60_min` AS `cash_pay_60_min`,`ma`.`cash_pay_90_min` AS `cash_pay_90_min`,`ma`.`insurance_id_primary` AS `insurance_id_primary`,`ma`.`cash_amount_from_session_length` AS `cash_amount_from_session_length`,`ma`.`cash_amount_from_cancelled_session_length` AS `cash_amount_from_cancelled_session_length`,`ma`.`insurance` AS `insurance`,`ma`.`apero_trading_partner_id` AS `apero_trading_partner_id`,`ma`.`days_to_invoice_claim` AS `days_to_invoice_claim`,`ma`.`last_day_to_file` AS `last_day_to_file`,`ma`.`is_test_user` AS `is_test_user`,`ma`.`member_balance_restrictions` AS `member_balance_restrictions`,`ma`.`customer_id` AS `customer_id`,`ma`.`member_timezone` AS `member_timezone`,`ma`.`appt_time_in_member_timezone` AS `appt_time_in_member_timezone`,`ma`.`appt_date_in_member_timezone` AS `appt_date_in_member_timezone`,`ma`.`payment_plan_frequency` AS `payment_plan_frequency`,`ma`.`payment_plan_active_after` AS `payment_plan_active_after`,`ma`.`auto_billing_status` AS `auto_billing_status`,`ma`.`billing_paused_states` AS `billing_paused_states`,`ma`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`ma`.`bill_late_cancels` AS `bill_late_cancels`,`ma`.`bill_ptsd_as_cash` AS `bill_ptsd_as_cash`,`ma`.`licensing_level` AS `licensing_level`,`ma`.`rate` AS `rate`,`ma`.`degree_type` AS `degree_type`,`ma`.`copay_cents` AS `copay_cents`,`ma`.`member_billing_insurances_id` AS `member_billing_insurances_id`,`ma`.`behavioral_health_insurance_id` AS `behavioral_health_insurance_id`,`ma`.`apero_coverage_id` AS `apero_coverage_id`,`ma`.`has_invoice` AS `has_invoice`,`ma`.`member_invoices_id` AS `member_invoices_id`,`ma`.`member_invoices_type` AS `member_invoices_type`,`ma`.`invoice_currency` AS `invoice_currency`,`ma`.`member_invoices_billing_coverages_id` AS `member_invoices_billing_coverages_id`,`ma`.`invoice_copay_amount` AS `invoice_copay_amount`,`ma`.`member_invoices_plan` AS `member_invoices_plan`,`ma`.`invoice_amount` AS `invoice_amount`,`ma`.`member_appointments_retool_url` AS `member_appointments_retool_url`,`ma`.`apero_patient_url` AS `apero_patient_url`,`ma`.`apero_visit_url` AS `apero_visit_url`,`guess_mbc`.`id` AS `guessed_coverage_id`,`guess_mbc`.`plan` AS `guessed_plan` from (`view_billing_member_appointments_joined` `ma` left join `member_billing_coverages` `guess_mbc` on(((`guess_mbc`.`start_date_utc` <= `ma`.`start_ts`) and (`ma`.`start_ts` < `guess_mbc`.`end_date_utc`) and (`guess_mbc`.`user_id` = `ma`.`user_id`) and (`guess_mbc`.`archived_at` is null)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_charges_v2_agged`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_charges_v2_agged` AS select `member_charges_v2`.`id` AS `id`,`member_charges_v2`.`user_id` AS `user_id`,`member_charges_v2`.`payment_table` AS `payment_table`,`member_charges_v2`.`payment_id` AS `payment_id`,`member_charges_v2`.`payment_amount` AS `payment_amount`,`member_charges_v2`.`payment_currency` AS `payment_currency`,`member_charges_v2`.`payment_at` AS `payment_at`,`member_charges_v2`.`payment_description` AS `payment_description`,`member_charges_v2`.`created_at` AS `created_at`,`member_charges_v2`.`payment_at_date` AS `payment_at_date`,((`member_charges_v2`.`payment_amount` - ifnull(`view_billing_member_refunds_v2_agged`.`total_refund`,0)) - if((`payment_stripe_dispute`.`stripe_dispute_status` = 'lost'),ifnull(`payment_stripe_dispute`.`stripe_dispute_amount`,0),0)) AS `net_applyable`,ifnull(`view_billing_member_line_applications_group_by_member_charges_id`.`total_applied`,0) AS `net_applied`,ifnull(`view_billing_member_line_applications_group_by_member_charges_id`.`total_count`,0) AS `num_applications`,(((`member_charges_v2`.`payment_amount` - ifnull(`view_billing_member_refunds_v2_agged`.`total_refund`,0)) - ifnull(`view_billing_member_line_applications_group_by_member_charges_id`.`total_applied`,0)) - if((`payment_stripe_dispute`.`stripe_dispute_status` = 'lost'),ifnull(`payment_stripe_dispute`.`stripe_dispute_amount`,0),0)) AS `amount_to_apply`,if((`payment_stripe_dispute`.`stripe_dispute_status` = 'lost'),'lost_dispute',NULL) AS `was_lost_dispute` from ((((`member_charges_v2` join `payment_stripe_charge` on((`member_charges_v2`.`payment_id` = `payment_stripe_charge`.`stripe_charge_id`))) left join `view_billing_member_refunds_v2_agged` on((`member_charges_v2`.`payment_id` = `view_billing_member_refunds_v2_agged`.`stripe_refund_charge_id`))) left join `payment_stripe_dispute` on((`member_charges_v2`.`payment_id` = `payment_stripe_dispute`.`stripe_dispute_charge_id`))) left join `view_billing_member_line_applications_group_by_member_charges_id` on((`member_charges_v2`.`id` = `view_billing_member_line_applications_group_by_member_charges_id`.`member_charges_id`))) where (`member_charges_v2`.`payment_table` = 'payment_stripe_charge') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_charges_v2_grouped_by_user_id`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_charges_v2_grouped_by_user_id` AS with `view_billing_member_charges_v2_grouped_by_user_id` as (select `member_charges_v2`.`user_id` AS `user_id`,sum(`member_charges_v2`.`payment_amount`) AS `sum_charges`,sum(1) AS `count_charges`,sum((case when (`member_charges_v2`.`payment_table` = 'payment_stripe_charge') then 1 else 0 end)) AS `count_stripe_charges`,sum((case when (`member_charges_v2`.`payment_table` = 'payment_stripe_refund') then 1 else 0 end)) AS `count_stripe_refunds`,sum((case when (`payment_stripe_dispute`.`stripe_dispute_status` = 'lost') then 1 else 0 end)) AS `count_stripe_disputes`,sum((case when (`member_charges_v2`.`payment_table` = 'payment_stripe_charge') then `member_charges_v2`.`payment_amount` else 0 end)) AS `sum_stripe_charges`,sum((case when (`member_charges_v2`.`payment_table` = 'payment_stripe_refund') then `member_charges_v2`.`payment_amount` else 0 end)) AS `sum_stripe_refunds`,sum((case when (`payment_stripe_dispute`.`stripe_dispute_status` = 'lost') then ifnull(`payment_stripe_dispute`.`stripe_dispute_amount`,0) else 0 end)) AS `sum_stripe_disputes`,max((case when (`member_charges_v2`.`payment_table` = 'payment_stripe_charge') then `member_charges_v2`.`payment_at` else cast('2000-01-01' as datetime(6)) end)) AS `most_recent_charge_at`,timestampdiff(DAY,max((case when (`member_charges_v2`.`payment_table` = 'payment_stripe_charge') then `member_charges_v2`.`payment_at` else cast('2000-01-01' as datetime(6)) end)),now()) AS `days_since_last_charge` from (`member_charges_v2` left join `payment_stripe_dispute` on((`member_charges_v2`.`payment_id` = `payment_stripe_dispute`.`stripe_dispute_charge_id`))) group by `member_charges_v2`.`user_id`), `last_payment_plan_charge` as (select `member_line_applications`.`user_id` AS `user_id`,max(`member_line_applications`.`date_posted`) AS `last_payment_plan_charge` from `member_line_applications` where (`member_line_applications`.`authorizer` = 'automatic') group by `member_line_applications`.`user_id`) select `view_billing_member_charges_v2_grouped_by_user_id`.`user_id` AS `user_id`,`view_billing_member_charges_v2_grouped_by_user_id`.`sum_charges` AS `sum_charges`,`view_billing_member_charges_v2_grouped_by_user_id`.`count_charges` AS `count_charges`,`view_billing_member_charges_v2_grouped_by_user_id`.`count_stripe_charges` AS `count_stripe_charges`,`view_billing_member_charges_v2_grouped_by_user_id`.`count_stripe_refunds` AS `count_stripe_refunds`,`view_billing_member_charges_v2_grouped_by_user_id`.`count_stripe_disputes` AS `count_stripe_disputes`,`view_billing_member_charges_v2_grouped_by_user_id`.`sum_stripe_charges` AS `sum_stripe_charges`,`view_billing_member_charges_v2_grouped_by_user_id`.`sum_stripe_refunds` AS `sum_stripe_refunds`,`view_billing_member_charges_v2_grouped_by_user_id`.`sum_stripe_disputes` AS `sum_stripe_disputes`,`view_billing_member_charges_v2_grouped_by_user_id`.`most_recent_charge_at` AS `most_recent_charge_at`,`view_billing_member_charges_v2_grouped_by_user_id`.`days_since_last_charge` AS `days_since_last_charge`,timestampdiff(DAY,`last_payment_plan_charge`.`last_payment_plan_charge`,now()) AS `days_since_last_payment_plan_charge` from (`view_billing_member_charges_v2_grouped_by_user_id` left join `last_payment_plan_charge` on((`view_billing_member_charges_v2_grouped_by_user_id`.`user_id` = `last_payment_plan_charge`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_line_applications_group_by_member_charges_id`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_line_applications_group_by_member_charges_id` AS select `member_line_applications`.`member_charges_id` AS `member_charges_id`,sum(`member_line_applications`.`amount`) AS `total_applied`,count(0) AS `total_count` from `member_line_applications` where (`member_line_applications`.`member_charges_id` is not null) group by `member_line_applications`.`member_charges_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_line_applications_grouped_by_invoice`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_line_applications_grouped_by_invoice` AS select `member_line_applications`.`user_id` AS `user_id`,`member_line_applications`.`member_invoices_id` AS `member_invoices_id`,sum(`member_line_applications`.`amount`) AS `la_total`,sum((case when (`member_line_applications`.`application_type` = 'adjustment') then `member_line_applications`.`amount` else 0 end)) AS `adjustment_total`,sum((case when (`member_line_applications`.`application_type` = 'payment') then `member_line_applications`.`amount` else 0 end)) AS `payment_total`,sum((case when (`member_line_applications`.`application_type` = 'manually_reported_payment') then `member_line_applications`.`amount` else 0 end)) AS `manually_reported_payment_total`,sum((case when (`member_line_applications`.`application_type` = 'apero_adjustment') then `member_line_applications`.`amount` else 0 end)) AS `apero_adjustment_total`,sum((case when (`member_line_applications`.`application_type` = 'apero_payment') then `member_line_applications`.`amount` else 0 end)) AS `apero_payment_total`,sum((case when (`member_line_applications`.`application_type` = 'adjustment') then 1 else 0 end)) AS `adjustment_count`,sum((case when (`member_line_applications`.`application_type` = 'payment') then 1 else 0 end)) AS `payment_count`,sum((case when (`member_line_applications`.`application_type` = 'manually_reported_payment') then 1 else 0 end)) AS `manually_reported_payment_count`,sum((case when (`member_line_applications`.`application_type` = 'apero_adjustment') then 1 else 0 end)) AS `apero_adjustment_count`,sum((case when (`member_line_applications`.`application_type` = 'apero_payment') then 1 else 0 end)) AS `apero_payment_count` from `member_line_applications` group by `member_line_applications`.`user_id`,`member_line_applications`.`member_invoices_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_line_applications_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_line_applications_joined` AS select `member_line_applications`.`id` AS `id`,`member_line_applications`.`ma_id` AS `ma_id`,`member_line_applications`.`member_invoices_id` AS `member_invoices_id`,`member_line_applications`.`user_id` AS `user_id`,`member_line_applications`.`application_type` AS `application_type`,`member_line_applications`.`amount` AS `amount`,`member_line_applications`.`member_charges_type` AS `member_charges_type`,`member_line_applications`.`member_charges_id` AS `member_charges_id`,`member_line_applications`.`adjustment_reason` AS `adjustment_reason`,`member_line_applications`.`member_note` AS `member_note`,`member_line_applications`.`internal_note` AS `internal_note`,`member_line_applications`.`date_posted` AS `date_posted`,`member_line_applications`.`authorizer` AS `authorizer`,`member_line_applications`.`unapplied_by_line_application_id` AS `unapplied_by_line_application_id`,`member_line_applications`.`member_billing_promos_id` AS `member_billing_promos_id`,`member_line_applications`.`reverses_line_application_id` AS `reverses_line_application_id`,`member_line_applications`.`apero_line_application_id` AS `apero_line_application_id`,`member_line_applications`.`adjustment_detail` AS `adjustment_detail`,`member_line_applications`.`updated_by` AS `updated_by`,`member_line_applications`.`updated_at` AS `updated_at`,`member_line_applications`.`updated_reason` AS `updated_reason`,`member_line_applications`.`deleted_by` AS `deleted_by`,`member_line_applications`.`deleted_at` AS `deleted_at`,`member_line_applications`.`deleted_reason` AS `deleted_reason`,`member_invoices`.`id` AS `member_invs_id`,`member_appointments`.`id` AS `member_appointments_id`,`member_appointments`.`start_ts` AS `start_ts` from ((`member_line_applications` join `member_invoices` on((`member_line_applications`.`member_invoices_id` = `member_invoices`.`id`))) join `member_appointments` on((`member_invoices`.`member_appointments_id` = `member_appointments`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_member_refunds_v2_agged`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_member_refunds_v2_agged` AS select `payment_stripe_refund`.`stripe_refund_charge_id` AS `stripe_refund_charge_id`,sum(`payment_stripe_refund`.`stripe_refund_amount`) AS `total_refund`,count(0) AS `total_count` from (`member_charges_v2` join `payment_stripe_refund` on((`member_charges_v2`.`payment_id` = `payment_stripe_refund`.`stripe_refund_id`))) where (`member_charges_v2`.`payment_table` = 'payment_stripe_refund') group by `payment_stripe_refund`.`stripe_refund_charge_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_premium_users_agged`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_premium_users_agged` AS select `view_billing_premium_users_joined`.`user_id` AS `user_id`,`view_billing_premium_users_joined`.`customer_id` AS `customer_id`,`view_billing_premium_users_joined`.`diagnostic_timezone` AS `diagnostic_timezone`,`view_billing_premium_users_joined`.`apero_patient_id` AS `apero_patient_id`,`view_billing_premium_users_joined`.`auto_billing_status` AS `auto_billing_status`,`view_billing_premium_users_joined`.`is_test_user` AS `is_test_user`,`view_billing_premium_users_joined`.`billing_paused_states` AS `billing_paused_states`,`view_billing_premium_users_joined`.`credit_card_status` AS `credit_card_status`,`view_billing_premium_users_joined`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`view_billing_premium_users_joined`.`bill_late_cancels` AS `bill_late_cancels`,`view_billing_premium_users_joined`.`member_balance_restrictions` AS `member_balance_restrictions`,`view_billing_premium_users_joined`.`bill_ptsd_as_cash` AS `bill_ptsd_as_cash`,`view_billing_premium_users_joined`.`payment_plan_frequency` AS `payment_plan_frequency`,`view_billing_premium_users_joined`.`payment_plan_amount` AS `payment_plan_amount`,`view_billing_premium_users_joined`.`payment_plan_currency` AS `payment_plan_currency`,`view_billing_premium_users_joined`.`payment_plan_active_after` AS `payment_plan_active_after`,`view_billing_premium_users_joined`.`balance_status` AS `balance_status`,`view_billing_premium_users_joined`.`balance_status_updated_at` AS `balance_status_updated_at`,`view_billing_premium_users_joined`.`premium_users_retool_url` AS `premium_users_retool_url`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`sum_stripe_charges`,0) AS `sum_stripe_charges`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`sum_stripe_refunds`,0) AS `sum_stripe_refunds`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`sum_stripe_disputes`,0) AS `sum_stripe_disputes`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`count_stripe_charges`,0) AS `count_stripe_charges`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`count_stripe_refunds`,0) AS `count_stripe_refunds`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`count_stripe_disputes`,0) AS `count_stripe_disputes`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`most_recent_charge_at`,cast('2000-01-01' as datetime(6))) AS `most_recent_charge_at`,`last_charge_view`.`stripe_charge_status` AS `last_charge_status`,`last_charge_view`.`stripe_charge_amount` AS `last_charge_amount`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`days_since_last_charge`,timestampdiff(DAY,cast('2000-01-01' as datetime(6)),now())) AS `days_since_last_charge`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`days_since_last_payment_plan_charge`,timestampdiff(DAY,cast('2000-01-01' as datetime(6)),now())) AS `days_since_last_payment_plan_charge`,sum(ifnull(`view_billing_member_appointments_agged`.`owed_amount`,0)) AS `owed_amount`,sum(ifnull(`view_billing_member_appointments_agged`.`total_mr`,0)) AS `total_mr`,ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`sum_charges`,0) AS `net_charges`,((ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`sum_charges`,0) - ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`sum_stripe_disputes`,0)) - sum(ifnull(`view_billing_member_appointments_agged`.`payment_total`,0))) AS `unapplied_amount`,least(sum(ifnull(`view_billing_member_appointments_agged`.`owed_amount`,0)),(ifnull(`view_billing_member_charges_v2_grouped_by_user_id`.`sum_charges`,0) - sum(ifnull(`view_billing_member_appointments_agged`.`payment_total`,0)))) AS `applyable_amount`,sum(ifnull(`view_billing_member_appointments_agged`.`adjustment_total`,0)) AS `adjustment_total`,sum(ifnull(`view_billing_member_appointments_agged`.`payment_total`,0)) AS `payment_total`,sum(ifnull(`view_billing_member_appointments_agged`.`apero_adjustment_total`,0)) AS `apero_adjustment_total`,sum(ifnull(`view_billing_member_appointments_agged`.`apero_payment_total`,0)) AS `apero_payment_total`,sum(ifnull(`view_billing_member_appointments_agged`.`adjustment_count`,0)) AS `adjustment_count`,sum(ifnull(`view_billing_member_appointments_agged`.`payment_count`,0)) AS `payment_count`,sum(ifnull(`view_billing_member_appointments_agged`.`apero_adjustment_count`,0)) AS `apero_adjustment_count`,sum(ifnull(`view_billing_member_appointments_agged`.`apero_payment_count`,0)) AS `apero_payment_count`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`num_appointments`,0) AS `num_appointments`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`first_appt_dos`,0) AS `first_appt_dos`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`last_appt_dos`,0) AS `last_appt_dos`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`num_scheduled_appts`,0) AS `num_scheduled_appts`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`num_cancelled_appts`,0) AS `num_cancelled_appts`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`num_completed_appts`,0) AS `num_completed_appts`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`num_cash_invoices`,0) AS `num_cash_invoices`,ifnull(`view_billing_premium_users_grouped_by_member_appointments`.`num_insurance_invoices`,0) AS `num_insurance_invoices`,if((((sum(ifnull(`view_billing_member_appointments_agged`.`owed_amount`,0)) > 50000) and (`view_billing_member_appointments_agged`.`payment_plan_frequency` is null)) or (sum(ifnull(`view_billing_member_appointments_agged`.`owed_amount`,0)) > 150000)),1,0) AS `billing_flag_high_balance`,if(((sum(ifnull(`view_billing_member_appointments_agged`.`owed_amount`,0)) > 35000) and (`last_charge_view`.`stripe_charge_status` = 'failed')),1,0) AS `billing_flag_failed_last_charge`,`view_billing_member_appointments_agged`.`insurance` AS `active_coverage`,`member_billing_coverages`.`plan` AS `plan`,`view_billing_member_appointments_agged`.`clinician_email` AS `clinician_email`,min(`intake_calls_cleaned`.`call_at`) AS `first_call_at`,max(`intake_calls_cleaned`.`call_at`) AS `most_recent_call_at`,max(`intake_calls_cleaned`.`converted`) AS `converted` from ((((((`view_billing_premium_users_joined` left join `intake_calls_cleaned` on((`intake_calls_cleaned`.`user_id` = `view_billing_premium_users_joined`.`user_id`))) left join `last_charge_view` on((`view_billing_premium_users_joined`.`user_id` = `last_charge_view`.`user_id`))) left join `view_billing_member_charges_v2_grouped_by_user_id` on((`view_billing_member_charges_v2_grouped_by_user_id`.`user_id` = `view_billing_premium_users_joined`.`user_id`))) left join `view_billing_member_appointments_agged` on((`view_billing_member_appointments_agged`.`user_id` = `view_billing_premium_users_joined`.`user_id`))) left join `view_billing_premium_users_grouped_by_member_appointments` on((`view_billing_premium_users_grouped_by_member_appointments`.`user_id` = `view_billing_premium_users_joined`.`user_id`))) left join `member_billing_coverages` on(((`member_billing_coverages`.`id` = `view_billing_member_appointments_agged`.`member_billing_coverage_id`) and (curdate() > `member_billing_coverages`.`start_date_utc`) and (curdate() < `member_billing_coverages`.`end_date_utc`)))) group by `view_billing_premium_users_joined`.`user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_premium_users_grouped_by_member_appointments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_premium_users_grouped_by_member_appointments` AS select `view_billing_member_appointments_joined`.`user_id` AS `user_id`,count(0) AS `num_appointments`,min(`view_billing_member_appointments_joined`.`start_ts`) AS `first_appt_dos`,max(`view_billing_member_appointments_joined`.`start_ts`) AS `last_appt_dos`,sum((case when (`view_billing_member_appointments_joined`.`appointment_state` = 'scheduled') then 1 else 0 end)) AS `num_scheduled_appts`,sum((case when (`view_billing_member_appointments_joined`.`appointment_state` = 'cancelled') then 1 else 0 end)) AS `num_cancelled_appts`,sum((case when ((`view_billing_member_appointments_joined`.`appointment_state` = 'cancelled') and (`view_billing_member_appointments_joined`.`billable_cancelled_session` = true)) then 1 else 0 end)) AS `num_billable_cancelled_appts`,sum((case when (`view_billing_member_appointments_joined`.`appointment_state` = 'completed') then 1 else 0 end)) AS `num_completed_appts`,sum((case when ((`view_billing_member_appointments_joined`.`appointment_state` = 'completed') and (`view_billing_member_appointments_joined`.`member_invoices_type` = 'Cash Pay') and (`view_billing_member_appointments_joined`.`billing_state` = 'invoiced')) then 1 else 0 end)) AS `num_cash_invoices`,sum((case when ((`view_billing_member_appointments_joined`.`appointment_state` = 'completed') and (`view_billing_member_appointments_joined`.`member_invoices_type` = 'Insurance') and (`view_billing_member_appointments_joined`.`billing_state` = 'invoiced')) then 1 else 0 end)) AS `num_insurance_invoices` from `view_billing_member_appointments_joined` group by `view_billing_member_appointments_joined`.`user_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_billing_premium_users_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_billing_premium_users_joined` AS select `premium_users`.`user_id` AS `user_id`,`premium_users`.`customer_id` AS `customer_id`,`premium_users`.`diagnostic_timezone` AS `diagnostic_timezone`,`premium_users`.`apero_patient_id` AS `apero_patient_id`,`premium_users`.`auto_billing_status` AS `auto_billing_status`,`premium_users`.`is_test_user` AS `is_test_user`,`premium_users`.`billing_paused_states` AS `billing_paused_states`,`premium_users`.`credit_card_status` AS `credit_card_status`,`premium_users`.`assigned_clinician_user_id` AS `assigned_clinician_user_id`,`premium_users`.`bill_late_cancels` AS `bill_late_cancels`,`premium_users`.`member_balance_restrictions` AS `member_balance_restrictions`,`premium_users`.`bill_ptsd_as_cash` AS `bill_ptsd_as_cash`,`member_payment_plans`.`frequency` AS `payment_plan_frequency`,`member_payment_plans`.`amount` AS `payment_plan_amount`,`member_payment_plans`.`currency` AS `payment_plan_currency`,`member_payment_plans`.`active_after` AS `payment_plan_active_after`,`premium_users`.`balance_status` AS `balance_status`,`premium_users`.`balance_status_updated_at` AS `balance_status_updated_at`,concat('https://retool.treatmyocd.com/apps/Billing/BillingV4?user_id=',`premium_users`.`user_id`) AS `premium_users_retool_url` from (`premium_users` left join `member_payment_plans` on(((`premium_users`.`user_id` = `member_payment_plans`.`user_id`) and (`member_payment_plans`.`archived_at` is null)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_calendar_dates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_calendar_dates` AS select `calendar_dates`.`id` AS `id`,`calendar_dates`.`day` AS `day`,dayname(`calendar_dates`.`day`) AS `dayname`,monthname(`calendar_dates`.`day`) AS `monthname` from `calendar_dates` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_member_billing_insurances_windowed_agg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_member_billing_insurances_windowed_agg` AS select `member_billing_insurances`.`id` AS `id`,`member_billing_insurances`.`user_id` AS `user_id`,`member_billing_insurances`.`insurance_id` AS `insurance_id`,`member_billing_insurances`.`behavioral_health_insurance_id` AS `behavioral_health_insurance_id`,`member_billing_insurances`.`claim_submission_insurance_id` AS `claim_submission_insurance_id`,`member_billing_insurances`.`insurance_rates_id` AS `insurance_rates_id`,`member_billing_insurances`.`state_insurance_id` AS `state_insurance_id`,`member_billing_insurances`.`provider` AS `provider`,`member_billing_insurances`.`carrier` AS `carrier`,`member_billing_insurances`.`plan_type` AS `plan_type`,`member_billing_insurances`.`sub_member_id` AS `sub_member_id`,`member_billing_insurances`.`sub_group_number` AS `sub_group_number`,`member_billing_insurances`.`sub_relation_to_patient` AS `sub_relation_to_patient`,`member_billing_insurances`.`sub_first_name` AS `sub_first_name`,`member_billing_insurances`.`sub_last_name` AS `sub_last_name`,`member_billing_insurances`.`sub_dob` AS `sub_dob`,`member_billing_insurances`.`sub_gender` AS `sub_gender`,`member_billing_insurances`.`coverage` AS `coverage`,`member_billing_insurances`.`dependent_relation_to_sub` AS `dependent_relation_to_sub`,`member_billing_insurances`.`dependent_first_name` AS `dependent_first_name`,`member_billing_insurances`.`dependent_last_name` AS `dependent_last_name`,`member_billing_insurances`.`dependent_dob` AS `dependent_dob`,`member_billing_insurances`.`dependent_gender` AS `dependent_gender`,`member_billing_insurances`.`prior_auth` AS `prior_auth`,`member_billing_insurances`.`currency` AS `currency`,`member_billing_insurances`.`deductible_cents` AS `deductible_cents`,`member_billing_insurances`.`copay_cents` AS `copay_cents`,`member_billing_insurances`.`coinsurance_cents` AS `coinsurance_cents`,`member_billing_insurances`.`apero_coverage_id` AS `apero_coverage_id`,`member_billing_insurances`.`created_at` AS `created_at`,`member_billing_insurances`.`created_by` AS `created_by`,`member_billing_insurances`.`updated_at` AS `updated_at`,`member_billing_insurances`.`updated_by` AS `updated_by`,`member_billing_insurances`.`archived_at` AS `archived_at`,`member_billing_insurances`.`archived_by` AS `archived_by`,`member_billing_insurances`.`single_case_agreement` AS `single_case_agreement`,`member_billing_insurances`.`archived_reason` AS `archived_reason`,`member_billing_insurances`.`is_eligible` AS `is_eligible`,`member_billing_insurances`.`apero_eligibility_id` AS `apero_eligibility_id`,`member_billing_insurances`.`is_medicaid_plan` AS `is_medicaid_plan`,`member_billing_insurances`.`is_medicare_plan` AS `is_medicare_plan`,`member_billing_insurances`.`sub_address` AS `sub_address`,`member_billing_insurances`.`sub_city` AS `sub_city`,`member_billing_insurances`.`sub_state` AS `sub_state`,`member_billing_insurances`.`sub_zip_code` AS `sub_zip_code`,`member_billing_insurances`.`updated_reason` AS `updated_reason`,`member_billing_insurances`.`deleted_by` AS `deleted_by`,`member_billing_insurances`.`deleted_at` AS `deleted_at`,`member_billing_insurances`.`deleted_reason` AS `deleted_reason`,`member_billing_insurances`.`in_network_email_sent` AS `in_network_email_sent`,count(0) OVER (PARTITION BY `member_billing_insurances`.`user_id` )  AS `count`,row_number() OVER (PARTITION BY `member_billing_insurances`.`user_id` ORDER BY `member_billing_insurances`.`id` )  AS `row_num_id_asc`,row_number() OVER (PARTITION BY `member_billing_insurances`.`user_id` ORDER BY `member_billing_insurances`.`id` desc )  AS `row_num_id_desc` from `member_billing_insurances` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_recruiting_candidate_applications`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_recruiting_candidate_applications` AS select `candidate_applications`.`id` AS `id`,`candidate_applications`.`candidate_id` AS `candidate_id`,`candidate_applications`.`application_id` AS `application_id`,`candidate_applications`.`job_id` AS `job_id`,json_unquote(json_extract(`candidate_applications`.`job`,'$.name')) AS `job_name`,json_unquote(json_extract(`candidate_applications`.`candidate`,'$.first_name')) AS `first_name`,json_unquote(json_extract(`candidate_applications`.`candidate`,'$.last_name')) AS `last_name`,json_unquote(json_extract(`candidate_applications`.`candidate`,'$.custom_fields.state_licenses')) AS `state_licenses`,json_unquote(json_extract(`candidate_applications`.`application`,'$.status')) AS `status`,json_unquote(json_extract(`candidate_applications`.`application`,'$.current_stage.name')) AS `current_stage`,trim(json_unquote(json_extract(`candidate_applications`.`candidate`,'$.keyed_custom_fields.how_did_you_hear_about_nocd.value'))) AS `candidate_source`,json_unquote(json_extract(`candidate_applications`.`candidate`,'$.recruiter.name')) AS `recruiter`,concat('https://app5.greenhouse.io/people/',`candidate_applications`.`candidate_id`,'?application_id=',`candidate_applications`.`application_id`) AS `gh_url` from `candidate_applications` where (`candidate_applications`.`job_id` in ('4003503005','4003501005','4003048005')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_recruiting_candidate_applications_by_state`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_recruiting_candidate_applications_by_state` AS select `candidate_applications`.`id` AS `id`,`candidate_applications`.`candidate_id` AS `candidate_id`,`candidate_applications`.`application_id` AS `application_id`,`candidate_applications`.`job_id` AS `job_id`,json_unquote(json_extract(`candidate_applications`.`candidate`,'$.first_name')) AS `first_name`,json_unquote(json_extract(`candidate_applications`.`candidate`,'$.last_name')) AS `last_name`,`data`.`state` AS `state` from (`candidate_applications` join json_table(`candidate_applications`.`candidate`, '$.custom_fields.state_licenses[*]' columns (`state` varchar(255) character set utf8mb4 collate utf8mb4_unicode_ci path '$')) `data`) where (`candidate_applications`.`job_id` in ('4003503005','4003501005','4003048005')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_recruiting_greenhouse_webhooks_stage_changes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_recruiting_greenhouse_webhooks_stage_changes` AS select `greenhouse_webhooks`.`id` AS `id`,json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.candidate.id')) AS `candidate_id`,json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.id')) AS `application_id`,json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.jobs[0].id')) AS `job_id`,json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.jobs[0].name')) AS `job_name`,json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.candidate.first_name')) AS `first_name`,json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.candidate.last_name')) AS `last_name`,json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.current_stage.name')) AS `stage`,`greenhouse_webhooks`.`created_at` AS `created_at` from `greenhouse_webhooks` where ((`greenhouse_webhooks`.`gh_action` = 'candidate_stage_change') and (json_unquote(json_extract(`greenhouse_webhooks`.`payload`,'$.payload.application.jobs[0].id')) in ('4003503005','4003501005','4003048005'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!50001 DROP VIEW IF EXISTS `view_transfer_items_joined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_transfer_items_joined` AS with `member_appointments_agg` as (select `ma1`.`id` AS `id`,`ma1`.`user_id` AS `user_id`,`ma1`.`event_id` AS `event_id`,`ma1`.`clinician_email` AS `clinician_email`,`ma1`.`appointment_date` AS `appointment_date`,`ma1`.`appointment_type` AS `appointment_type`,`ma1`.`needs_audit` AS `needs_audit`,`ma1`.`notes` AS `notes`,`ma1`.`diagnosed_with_ocd` AS `diagnosed_with_ocd`,`ma1`.`diamond_distress_score` AS `diamond_distress_score`,`ma1`.`diamond_functional_score` AS `diamond_functional_score`,`ma1`.`diamond_severity_score` AS `diamond_severity_score`,`ma1`.`dass_depression` AS `dass_depression`,`ma1`.`dass_anxiety` AS `dass_anxiety`,`ma1`.`dass_stress` AS `dass_stress`,`ma1`.`docs_severity` AS `docs_severity`,`ma1`.`next_step` AS `next_step`,`ma1`.`discharge` AS `discharge`,`ma1`.`session_length` AS `session_length`,`ma1`.`session_length_int` AS `session_length_int`,`ma1`.`completion_info` AS `completion_info`,`ma1`.`billing_complete` AS `billing_complete`,`ma1`.`created_at` AS `created_at`,`ma1`.`has_scores` AS `has_scores`,`ma1`.`qles` AS `qles`,`ma1`.`start_ts` AS `start_ts`,`ma1`.`end_ts` AS `end_ts`,`ma1`.`start_time_in_iso8601_utc` AS `start_time_in_iso8601_utc`,`ma1`.`end_time_in_iso8601_utc` AS `end_time_in_iso8601_utc`,`ma1`.`session_type` AS `session_type`,`ma1`.`protocol_type` AS `protocol_type`,`ma1`.`gcal_id` AS `gcal_id`,`ma1`.`zoom_id` AS `zoom_id`,`ma1`.`zoom_join_link` AS `zoom_join_link`,`ma1`.`zoom_password` AS `zoom_password`,`ma1`.`appointment_state` AS `appointment_state`,`ma1`.`clinician_signed_email` AS `clinician_signed_email`,`ma1`.`rescheduled_signed_email` AS `rescheduled_signed_email`,`ma1`.`member_takeaway_notes` AS `member_takeaway_notes`,`ma1`.`successfully_completed_and_billable` AS `successfully_completed_and_billable`,`ma1`.`completion_at` AS `completion_at`,`ma1`.`rescheduled_at` AS `rescheduled_at`,`ma1`.`needs_clinical_review` AS `needs_clinical_review`,`ma1`.`needs_billing_review` AS `needs_billing_review`,`ma1`.`needs_clinical_review_notes` AS `needs_clinical_review_notes`,`ma1`.`needs_billing_review_notes` AS `needs_billing_review_notes`,`ma1`.`needs_review_notes` AS `needs_review_notes`,`ma1`.`rescheduled_review_notes` AS `rescheduled_review_notes`,`ma1`.`bg_diagnostics_id` AS `bg_diagnostics_id`,`ma1`.`bg_reported_current_address` AS `bg_reported_current_address`,`ma1`.`bg_address_setter` AS `bg_address_setter`,`ma1`.`bg_followup_changes_to_medication` AS `bg_followup_changes_to_medication`,`ma1`.`bg_followup_changes_to_medication_text` AS `bg_followup_changes_to_medication_text`,`ma1`.`bg_followup_changes_to_doctor_visits` AS `bg_followup_changes_to_doctor_visits`,`ma1`.`bg_followup_changes_to_doctor_visits_text` AS `bg_followup_changes_to_doctor_visits_text`,`ma1`.`medical_within_normal_limits` AS `medical_within_normal_limits`,`ma1`.`medical_json` AS `medical_json`,`ma1`.`risk_assessment_json` AS `risk_assessment_json`,`ma1`.`summary_start_time` AS `summary_start_time`,`ma1`.`summary_end_time` AS `summary_end_time`,`ma1`.`summary_present_json` AS `summary_present_json`,`ma1`.`summary_present_other` AS `summary_present_other`,`ma1`.`summary_icd_json` AS `summary_icd_json`,`ma1`.`summary_cpt` AS `summary_cpt`,`ma1`.`summary_private_notes` AS `summary_private_notes`,`ma1`.`summary_private_notes_rich` AS `summary_private_notes_rich`,`ma1`.`summary_appropriate_for_nocd` AS `summary_appropriate_for_nocd`,`ma1`.`summary_types_of_treatment_erp` AS `summary_types_of_treatment_erp`,`ma1`.`summary_types_of_treatment_other` AS `summary_types_of_treatment_other`,`ma1`.`summary_treatment_goals` AS `summary_treatment_goals`,`ma1`.`summary_treatment_response` AS `summary_treatment_response`,`ma1`.`summary_not_continuing_nocd_plan` AS `summary_not_continuing_nocd_plan`,`ma1`.`summary_not_continuing_nocd_text` AS `summary_not_continuing_nocd_text`,`ma1`.`summary_treatment_progress` AS `summary_treatment_progress`,`ma1`.`billing_state` AS `billing_state`,`ma1`.`admd_visit_id` AS `admd_visit_id`,`ma1`.`medical_additional_comments` AS `medical_additional_comments`,`ma1`.`cancellation_info` AS `cancellation_info`,`ma1`.`rescheduled_info` AS `rescheduled_info`,`ma1`.`cancelled_via_reschedule` AS `cancelled_via_reschedule`,`ma1`.`clinician_compensated` AS `clinician_compensated`,`ma1`.`rescheduled_to` AS `rescheduled_to`,`ma1`.`has_forms` AS `has_forms`,`ma1`.`clinical_forms_diamond_adult_id` AS `clinical_forms_diamond_adult_id`,`ma1`.`clinical_forms_diamond_youth_id` AS `clinical_forms_diamond_youth_id`,`ma1`.`clinical_forms_dass21_id` AS `clinical_forms_dass21_id`,`ma1`.`clinical_forms_docs_id` AS `clinical_forms_docs_id`,`ma1`.`clinical_forms_qles_id` AS `clinical_forms_qles_id`,`ma1`.`amd_appt_backfill` AS `amd_appt_backfill`,`ma1`.`override_cpt` AS `override_cpt`,`ma1`.`override_cpt_by` AS `override_cpt_by`,`ma1`.`claim_status` AS `claim_status`,`ma1`.`claim_reference_id` AS `claim_reference_id`,`ma1`.`cancellation_ts` AS `cancellation_ts`,`ma1`.`cancellation_author` AS `cancellation_author`,`ma1`.`booked_author` AS `booked_author`,`ma1`.`autoinvoice_id` AS `autoinvoice_id`,`ma1`.`docs_symmetry_score` AS `docs_symmetry_score`,`ma1`.`docs_unacceptable_thoughts_score` AS `docs_unacceptable_thoughts_score`,`ma1`.`docs_responsibility_score` AS `docs_responsibility_score`,`ma1`.`docs_contamination_score` AS `docs_contamination_score`,`ma1`.`gcal_backstop_id` AS `gcal_backstop_id`,`ma1`.`use_backstop` AS `use_backstop`,`ma1`.`back_stop_value` AS `back_stop_value`,`ma1`.`note_version` AS `note_version`,`ma1`.`apero_visit_id` AS `apero_visit_id`,`ma1`.`summary_icd_specifiers_text` AS `summary_icd_specifiers_text`,`ma1`.`bg_reported_current_state` AS `bg_reported_current_state`,`ma1`.`apero_lineitem_id` AS `apero_lineitem_id`,`ma1`.`member_billing_details_id` AS `member_billing_details_id`,`ma1`.`canadian_masters_level` AS `canadian_masters_level`,`ma1`.`canadian_diagnostic_info` AS `canadian_diagnostic_info`,`ma1`.`member_billing_coverage_id` AS `member_billing_coverage_id`,`ma1`.`cancellation_reason` AS `cancellation_reason`,`ma1`.`cancellation_reason_detail` AS `cancellation_reason_detail`,`ma1`.`needs_service_team_to_reschedule` AS `needs_service_team_to_reschedule`,`ma1`.`cancelled_within_24_hours` AS `cancelled_within_24_hours`,`ma1`.`cancelled_waive_late_fee` AS `cancelled_waive_late_fee`,`ma1`.`cancelled_waive_late_fee_reason` AS `cancelled_waive_late_fee_reason`,`ma1`.`cancelled_waive_late_fee_reason_notes` AS `cancelled_waive_late_fee_reason_notes`,`ma1`.`canadian_province` AS `canadian_province`,`ma1`.`sign_note_session_length` AS `sign_note_session_length`,`ma1`.`reviewed_assessments_with_member` AS `reviewed_assessments_with_member`,`ma1`.`zocdoc_booked` AS `zocdoc_booked`,`ma1`.`apero_claim_status` AS `apero_claim_status`,`ma1`.`apero_claim_errors` AS `apero_claim_errors`,`ma1`.`apero_finalized_at` AS `apero_finalized_at`,`ma1`.`zocdoc_location_id` AS `zocdoc_location_id`,`ma1`.`initial_appt_id` AS `initial_appt_id`,`ma1`.`needs_service_team_to_reschedule_status` AS `needs_service_team_to_reschedule_status`,`ma1`.`therapy_case_type` AS `therapy_case_type`,`ma1`.`needs_supervisor_review` AS `needs_supervisor_review`,`ma1`.`requested_supervisor` AS `requested_supervisor`,`ma1`.`billing_state_reason` AS `billing_state_reason`,`ma1`.`review_requested_by` AS `review_requested_by`,`ma1`.`review_requested_at` AS `review_requested_at`,`ma1`.`ignore_appt_reason` AS `ignore_appt_reason`,`ma1`.`ehr_origin_source` AS `ehr_origin_source`,`ma1`.`authorizer` AS `authorizer`,`ma1`.`apero_eligibility_checks_id` AS `apero_eligibility_checks_id`,`ma1`.`member_billing_coverage_override` AS `member_billing_coverage_override`,`ma1`.`updated_at` AS `updated_at`,`ma1`.`diamond_severity_score_max` AS `diamond_severity_score_max`,`ma1`.`cpt_manual_review_reason` AS `cpt_manual_review_reason`,`ma1`.`is_transfer_session` AS `is_transfer_session`,`ma1`.`copay_charged_at` AS `copay_charged_at`,`ma1`.`primary_icd_code` AS `primary_icd_code`,`ma1`.`is_initial_assessments_created` AS `is_initial_assessments_created`,`ma1`.`summary_types_of_treatment_hrt` AS `summary_types_of_treatment_hrt`,`ma1`.`is_assessments_refused_to_complete` AS `is_assessments_refused_to_complete`,`ma1`.`assessments_refused_to_complete_notes` AS `assessments_refused_to_complete_notes`,`ma1`.`scheduling_frequency` AS `scheduling_frequency`,`ma1`.`therapy_case_type_details` AS `therapy_case_type_details`,`ma1`.`supervisor_review_status` AS `supervisor_review_status`,`ma1`.`completed_timezone` AS `completed_timezone`,`ma1`.`completed_start_ts_in_member_timezone` AS `completed_start_ts_in_member_timezone`,`ma1`.`completed_start_ts_date_in_member_timezone` AS `completed_start_ts_date_in_member_timezone`,`ma1`.`start_ts_in_chicago_timezone` AS `start_ts_in_chicago_timezone`,`ma1`.`appt_day_in_chicago_tz` AS `appt_day_in_chicago_tz`,`ma1`.`appt_day_int` AS `appt_day_int`,`ma1`.`appt_day_name_in_chicago_tz` AS `appt_day_name_in_chicago_tz`,`ma1`.`appt_week_in_chicago_tz` AS `appt_week_in_chicago_tz`,`ma1`.`appt_month_in_chicago_tz` AS `appt_month_in_chicago_tz`,`ma1`.`appt_month_int` AS `appt_month_int`,`ma1`.`appt_year_in_chicago_tz` AS `appt_year_in_chicago_tz`,`ma1`.`start_ts_date_in_chicago_timezone` AS `start_ts_date_in_chicago_timezone`,`ma1`.`start_ts_in_chicago_dayname` AS `start_ts_in_chicago_dayname`,`ma1`.`start_ts_date` AS `start_ts_date`,`ma1`.`start_ts_month` AS `start_ts_month`,`ma1`.`start_ts_dayname` AS `start_ts_dayname`,`ma1`.`type_of_medication_referral` AS `type_of_medication_referral`,`ma1`.`medication_referral_notes` AS `medication_referral_notes`,`ma1`.`medication_referral_settings_preference` AS `medication_referral_settings_preference`,`ma1`.`interested_in_medication_referral` AS `interested_in_medication_referral`,`ma1`.`requires_psychotic_treatment` AS `requires_psychotic_treatment`,`ma1`.`actively_suicidal` AS `actively_suicidal`,`ma1`.`psych_hospital_in_last_six_months` AS `psych_hospital_in_last_six_months`,`ma1`.`member_has_medicaid` AS `member_has_medicaid`,`ma1`.`secondary_icd_codes` AS `secondary_icd_codes`,`ma1`.`availability_score` AS `availability_score`,`ma1`.`send_cancel_follow_up` AS `send_cancel_follow_up`,`ma1`.`medication_referral_preferred_times` AS `medication_referral_preferred_times`,`ma1`.`talk_about_psychiatric_consultation` AS `talk_about_psychiatric_consultation`,`ma1`.`therapist_would_like_to_refer_member` AS `therapist_would_like_to_refer_member`,`ma1`.`agree_to_increase_scheduling_frequency` AS `agree_to_increase_scheduling_frequency`,`ma1`.`talk_about_psychiatric_consultation_text` AS `talk_about_psychiatric_consultation_text`,`ma1`.`therapist_would_like_to_refer_member_text` AS `therapist_would_like_to_refer_member_text`,`ma1`.`agree_to_increase_scheduling_frequency_text` AS `agree_to_increase_scheduling_frequency_text`,`ma1`.`ma_clinician_timezone` AS `ma_clinician_timezone`,`ma1`.`ma_clinician_start_ts` AS `ma_clinician_start_ts`,`ma1`.`ma_clinician_end_ts` AS `ma_clinician_end_ts`,`ma1`.`ma_clinician_appt_day` AS `ma_clinician_appt_day`,`ma1`.`is_confirmed_diamond_assessment` AS `is_confirmed_diamond_assessment`,`ma1`.`member_reviewed_waived_late_fee` AS `member_reviewed_waived_late_fee`,`ma1`.`is_reviewed_summary_private_notes` AS `is_reviewed_summary_private_notes`,`ma1`.`not_late_reason` AS `not_late_reason`,`ma1`.`provisional_icd_code_json` AS `provisional_icd_code_json`,`ma1`.`provisional_referral_needed` AS `provisional_referral_needed`,`ma1`.`needs_diagnosis_approval` AS `needs_diagnosis_approval`,`ma1`.`diagnosis_approval_status` AS `diagnosis_approval_status`,`ma1`.`send_post_assessment_summary` AS `send_post_assessment_summary`,`ma1`.`is_will_assess_count_disabled` AS `is_will_assess_count_disabled`,`ma1`.`will_assess_count_disabled_notes` AS `will_assess_count_disabled_notes`,`ma1`.`medication_referral_metro_area` AS `medication_referral_metro_area`,`ma1`.`columbia_risk_protective_factors` AS `columbia_risk_protective_factors`,`ma1`.`columbia_high_risk` AS `columbia_high_risk`,`ma1`.`suicidal_behavior_form_id` AS `suicidal_behavior_form_id`,`ma1`.`homicidal_risk_assessment` AS `homicidal_risk_assessment`,`ma1`.`booked_during_co_therapy` AS `booked_during_co_therapy`,`ma1`.`is_next_session_exceeding_days` AS `is_next_session_exceeding_days`,`ma1`.`next_session_exceeding_days_reason` AS `next_session_exceeding_days_reason`,`ma1`.`attempted_care_coordination` AS `attempted_care_coordination`,`ma1`.`attempted_care_coordination_providers` AS `attempted_care_coordination_providers`,`ma1`.`attempted_care_coordination_other` AS `attempted_care_coordination_other`,`ma1`.`attempted_care_coordination_reason` AS `attempted_care_coordination_reason`,`ma1`.`treatment_plan_version` AS `treatment_plan_version`,`ma1`.`non_clinical_time_spent_in_mins` AS `non_clinical_time_spent_in_mins`,`ma1`.`non_clinical_time_reason` AS `non_clinical_time_reason`,`ma1`.`is_fs_with_clinician` AS `is_fs_with_clinician`,`ma1`.`confirm_icd_codes_correct` AS `confirm_icd_codes_correct`,`ma1`.`non_bulk_scheduled_reason` AS `non_bulk_scheduled_reason`,`ma1`.`bundle_participant_identifier_id` AS `bundle_participant_identifier_id`,`ma1`.`bundle_period_config_id` AS `bundle_period_config_id` from `member_appointments` `ma1` where (`ma1`.`appointment_date` = (select max(`ma2`.`appointment_date`) from `member_appointments` `ma2` where (`ma2`.`user_id` = `ma1`.`user_id`)))), `total_appointments` as (select `member_appointments`.`user_id` AS `user_id`,count(0) AS `total_appointments` from `member_appointments` where ((`member_appointments`.`completion_info` = 'completed') or (`member_appointments`.`appointment_state` = 'completed')) group by `member_appointments`.`user_id`), `view_billing_member_appointments_joined_last_appt` as (select `view_billing_member_appointments_joined`.`user_id` AS `user_id`,max(`view_billing_member_appointments_joined`.`start_ts`) AS `max(start_ts)`,`view_billing_member_appointments_joined`.`plan` AS `plan`,`view_billing_member_appointments_joined`.`insurance` AS `insurance` from `view_billing_member_appointments_joined` where (`view_billing_member_appointments_joined`.`appointment_state` = 'completed') group by `view_billing_member_appointments_joined`.`user_id`) select `member_transfers`.`id` AS `id`,`member_transfers`.`user_id` AS `user_id`,`member_transfers`.`assigned_to` AS `assigned_to`,`member_transfers`.`transfer_stage` AS `transfer_stage`,`member_transfers`.`transfer_start_date` AS `transfer_start_date`,`member_transfers`.`transfer_reason_category` AS `transfer_reason_category`,`member_transfers`.`transfer_reason_details` AS `transfer_reason_details`,`member_transfers`.`number_of_sessions_before_transfer` AS `number_of_sessions_before_transfer`,`member_transfers`.`delay_reason` AS `delay_reason`,`member_transfers`.`new_therapist_preferences` AS `new_therapist_preferences`,`member_transfers`.`availability` AS `availability`,`member_transfers`.`new_therapist_1` AS `new_therapist_1`,`member_transfers`.`new_therapist_2` AS `new_therapist_2`,`member_transfers`.`new_therapist_3` AS `new_therapist_3`,`member_transfers`.`freshdesk_ticket` AS `freshdesk_ticket`,`member_transfers`.`insurance_related` AS `insurance_related`,`member_transfers`.`updated_at` AS `updated_at`,`member_appointments_agg`.`appointment_date` AS `appointment_date`,`member_appointments_agg`.`appointment_type` AS `appointment_type`,`premium_users`.`state` AS `state`,`premium_users`.`assigned_clinician_user_id` AS `clinician_id`,`total_appointments`.`total_appointments` AS `total_appointments`,`view_billing_member_appointments_joined_last_appt`.`plan` AS `plan`,`view_billing_member_appointments_joined_last_appt`.`insurance` AS `insurance`,`premium_clinicians`.`email` AS `clinician_email`,timestampdiff(YEAR,`premium_users`.`dob`,curdate()) AS `member_age` from (((((`member_transfers` left join `premium_users` on((`premium_users`.`user_id` = `member_transfers`.`user_id`))) left join `premium_clinicians` on((`premium_clinicians`.`user_id` = `premium_users`.`assigned_clinician_user_id`))) left join `member_appointments_agg` on((`member_appointments_agg`.`user_id` = `member_transfers`.`user_id`))) left join `view_billing_member_appointments_joined_last_appt` on((`view_billing_member_appointments_joined_last_appt`.`user_id` = `member_transfers`.`user_id`))) left join `total_appointments` on((`total_appointments`.`user_id` = `member_transfers`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

