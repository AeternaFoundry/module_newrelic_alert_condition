variable "alert_conditions" {
  description = <<EOT
Map of alert_conditions, attributes below
Required:
    - entities
    - metric
    - name
    - policy_id
    - type
    - term (block):
        - duration (required)
        - operator (optional)
        - priority (optional)
        - threshold (required)
        - time_function (required)
Optional:
    - condition_scope
    - enabled
    - gc_metric
    - runbook_url
    - user_defined_metric
    - user_defined_value_function
    - violation_close_timer
EOT

  type = map(object({
    entities                    = set(number)
    metric                      = string
    name                        = string
    policy_id                   = number
    type                        = string
    condition_scope             = optional(string)
    enabled                     = optional(bool)
    gc_metric                   = optional(string)
    runbook_url                 = optional(string)
    user_defined_metric         = optional(string)
    user_defined_value_function = optional(string)
    violation_close_timer       = optional(number)
    term = list(object({
      duration      = number
      operator      = optional(string)
      priority      = optional(string)
      threshold     = number
      time_function = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        length(v.term) >= 1
      )
    ])
    error_message = "Each term list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        v.condition_scope == null || (contains(["application", "instance"], v.condition_scope))
      )
    ])
    error_message = "must be one of: \"application\", \"instance\""
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        v.violation_close_timer == null || (v.violation_close_timer >= 1 && v.violation_close_timer <= 720)
      )
    ])
    error_message = "must be between 1 and 720"
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        alltrue([for item in v.term : (item.duration >= 5 && item.duration <= 120)])
      )
    ])
    error_message = "must be between 5 and 120"
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        alltrue([for item in v.term : (item.operator == null || (contains(["above", "below", "equal"], item.operator)))])
      )
    ])
    error_message = "must be one of: \"above\", \"below\", \"equal\""
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        alltrue([for item in v.term : (item.priority == null || (contains(["critical", "warning"], item.priority)))])
      )
    ])
    error_message = "must be one of: \"critical\", \"warning\""
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        alltrue([for item in v.term : (contains(["all", "any"], item.time_function))])
      )
    ])
    error_message = "must be one of: \"all\", \"any\""
  }
  validation {
    condition = alltrue([
      for k, v in var.alert_conditions : (
        v.user_defined_value_function == null || (contains(["average", "min", "max", "total", "sample_size", "percent", "rate"], v.user_defined_value_function))
      )
    ])
    error_message = "must be one of: \"average\", \"min\", \"max\", \"total\", \"sample_size\", \"percent\", \"rate\""
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

