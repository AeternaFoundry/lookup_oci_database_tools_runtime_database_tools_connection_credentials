variable "database_tools_runtime_database_tools_connection_credentials_lookup" {
  description = <<EOT
Map of database_tools_runtime_database_tools_connection_credentials_lookup, attributes below
Required:
    - database_tools_connection_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    database_tools_connection_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_tools_runtime_database_tools_connection_credentials_lookup : (
        alltrue([for item in v.credential_collection : (item.items == null || alltrue([for item in item.items : (item.type == null || (contains([for v in ["BASIC"] : lower(v)], lower(item.type))))]))])
      )
    ])
    error_message = "must be one of: \"BASIC\""
  }
}

