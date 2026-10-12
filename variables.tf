variable "object_parameters" {
  description = <<EOT
Map of object_parameters, attributes below
Required:
    - key
    - value
Optional:
    - object_type
    - on_account
    - object_identifier (block):
        - database (optional)
        - name (required)
        - schema (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    key         = string
    value       = string
    object_type = optional(string)
    on_account  = optional(bool)
    object_identifier = optional(list(object({
      database = optional(string)
      name     = string
      schema   = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

