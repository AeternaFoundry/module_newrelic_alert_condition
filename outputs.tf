output "alert_conditions_id" {
  description = "Map of id values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.id }
}
output "alert_conditions_condition_scope" {
  description = "Map of condition_scope values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.condition_scope }
}
output "alert_conditions_enabled" {
  description = "Map of enabled values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.enabled }
}
output "alert_conditions_entities" {
  description = "Map of entities values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.entities }
}
output "alert_conditions_entity_guid" {
  description = "Map of entity_guid values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.entity_guid }
}
output "alert_conditions_gc_metric" {
  description = "Map of gc_metric values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.gc_metric }
}
output "alert_conditions_metric" {
  description = "Map of metric values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.metric }
}
output "alert_conditions_name" {
  description = "Map of name values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.name }
}
output "alert_conditions_policy_id" {
  description = "Map of policy_id values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.policy_id }
}
output "alert_conditions_runbook_url" {
  description = "Map of runbook_url values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.runbook_url }
}
output "alert_conditions_term" {
  description = "Map of term values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.term }
}
output "alert_conditions_type" {
  description = "Map of type values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.type }
}
output "alert_conditions_user_defined_metric" {
  description = "Map of user_defined_metric values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.user_defined_metric }
}
output "alert_conditions_user_defined_value_function" {
  description = "Map of user_defined_value_function values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.user_defined_value_function }
}
output "alert_conditions_violation_close_timer" {
  description = "Map of violation_close_timer values across all alert_conditions, keyed the same as var.alert_conditions"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.violation_close_timer }
}

