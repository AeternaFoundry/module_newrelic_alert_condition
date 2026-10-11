output "alert_conditions_id" {
  description = "Map of id values across all alert_conditions, keyed the same as var.alert_conditions except keys with no id are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alert_conditions_condition_scope" {
  description = "Map of condition_scope values across all alert_conditions, keyed the same as var.alert_conditions except keys with no condition_scope are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.condition_scope if v.condition_scope != null && length(v.condition_scope) > 0 }
}
output "alert_conditions_enabled" {
  description = "Map of enabled values across all alert_conditions, keyed the same as var.alert_conditions except keys with no enabled are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.enabled if v.enabled != null }
}
output "alert_conditions_entities" {
  description = "Map of entities values across all alert_conditions, keyed the same as var.alert_conditions except keys with no entities are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.entities if v.entities != null && length(v.entities) > 0 }
}
output "alert_conditions_entity_guid" {
  description = "Map of entity_guid values across all alert_conditions, keyed the same as var.alert_conditions except keys with no entity_guid are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.entity_guid if v.entity_guid != null && length(v.entity_guid) > 0 }
}
output "alert_conditions_gc_metric" {
  description = "Map of gc_metric values across all alert_conditions, keyed the same as var.alert_conditions except keys with no gc_metric are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.gc_metric if v.gc_metric != null && length(v.gc_metric) > 0 }
}
output "alert_conditions_metric" {
  description = "Map of metric values across all alert_conditions, keyed the same as var.alert_conditions except keys with no metric are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.metric if v.metric != null && length(v.metric) > 0 }
}
output "alert_conditions_name" {
  description = "Map of name values across all alert_conditions, keyed the same as var.alert_conditions except keys with no name are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alert_conditions_policy_id" {
  description = "Map of policy_id values across all alert_conditions, keyed the same as var.alert_conditions except keys with no policy_id are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.policy_id if v.policy_id != null }
}
output "alert_conditions_runbook_url" {
  description = "Map of runbook_url values across all alert_conditions, keyed the same as var.alert_conditions except keys with no runbook_url are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.runbook_url if v.runbook_url != null && length(v.runbook_url) > 0 }
}
output "alert_conditions_term" {
  description = "Map of term values across all alert_conditions, keyed the same as var.alert_conditions except keys with no term are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.term if v.term != null && length(v.term) > 0 }
}
output "alert_conditions_type" {
  description = "Map of type values across all alert_conditions, keyed the same as var.alert_conditions except keys with no type are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.type if v.type != null && length(v.type) > 0 }
}
output "alert_conditions_user_defined_metric" {
  description = "Map of user_defined_metric values across all alert_conditions, keyed the same as var.alert_conditions except keys with no user_defined_metric are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.user_defined_metric if v.user_defined_metric != null && length(v.user_defined_metric) > 0 }
}
output "alert_conditions_user_defined_value_function" {
  description = "Map of user_defined_value_function values across all alert_conditions, keyed the same as var.alert_conditions except keys with no user_defined_value_function are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.user_defined_value_function if v.user_defined_value_function != null && length(v.user_defined_value_function) > 0 }
}
output "alert_conditions_violation_close_timer" {
  description = "Map of violation_close_timer values across all alert_conditions, keyed the same as var.alert_conditions except keys with no violation_close_timer are omitted"
  value       = { for k, v in newrelic_alert_condition.alert_conditions : k => v.violation_close_timer if v.violation_close_timer != null }
}

