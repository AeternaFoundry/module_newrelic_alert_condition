resource "newrelic_alert_condition" "alert_conditions" {
  for_each = var.alert_conditions

  entities                    = each.value.entities
  metric                      = each.value.metric
  name                        = each.value.name
  policy_id                   = each.value.policy_id
  type                        = each.value.type
  condition_scope             = each.value.condition_scope
  enabled                     = each.value.enabled
  gc_metric                   = each.value.gc_metric
  runbook_url                 = each.value.runbook_url
  user_defined_metric         = each.value.user_defined_metric
  user_defined_value_function = each.value.user_defined_value_function
  violation_close_timer       = each.value.violation_close_timer

  dynamic "term" {
    for_each = each.value.term
    content {
      duration      = term.value.duration
      operator      = term.value.operator
      priority      = term.value.priority
      threshold     = term.value.threshold
      time_function = term.value.time_function
    }
  }
}

