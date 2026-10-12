output "object_parameters_id" {
  description = "Map of id values across all object_parameters, keyed the same as var.object_parameters except keys with no id are omitted"
  value       = { for k, v in snowflake_object_parameter.object_parameters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "object_parameters_key" {
  description = "Map of key values across all object_parameters, keyed the same as var.object_parameters except keys with no key are omitted"
  value       = { for k, v in snowflake_object_parameter.object_parameters : k => v.key if v.key != null && length(v.key) > 0 }
}
output "object_parameters_object_identifier" {
  description = "Map of object_identifier values across all object_parameters, keyed the same as var.object_parameters except keys with no object_identifier are omitted"
  value       = { for k, v in snowflake_object_parameter.object_parameters : k => v.object_identifier if v.object_identifier != null && length(v.object_identifier) > 0 }
}
output "object_parameters_object_type" {
  description = "Map of object_type values across all object_parameters, keyed the same as var.object_parameters except keys with no object_type are omitted"
  value       = { for k, v in snowflake_object_parameter.object_parameters : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}
output "object_parameters_on_account" {
  description = "Map of on_account values across all object_parameters, keyed the same as var.object_parameters except keys with no on_account are omitted"
  value       = { for k, v in snowflake_object_parameter.object_parameters : k => v.on_account if v.on_account != null }
}
output "object_parameters_value" {
  description = "Map of value values across all object_parameters, keyed the same as var.object_parameters except keys with no value are omitted"
  value       = { for k, v in snowflake_object_parameter.object_parameters : k => v.value if v.value != null && length(v.value) > 0 }
}

