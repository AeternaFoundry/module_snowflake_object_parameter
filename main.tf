resource "snowflake_object_parameter" "object_parameters" {
  for_each = var.object_parameters

  key         = each.value.key
  value       = each.value.value
  object_type = each.value.object_type
  on_account  = each.value.on_account

  dynamic "object_identifier" {
    for_each = each.value.object_identifier != null ? each.value.object_identifier : []
    content {
      database = object_identifier.value.database
      name     = object_identifier.value.name
      schema   = object_identifier.value.schema
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

