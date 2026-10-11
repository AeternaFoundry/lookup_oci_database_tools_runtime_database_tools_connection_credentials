data "oci_database_tools_runtime_database_tools_connection_credentials" "database_tools_runtime_database_tools_connection_credentials_lookup" {
  for_each = var.database_tools_runtime_database_tools_connection_credentials_lookup

  database_tools_connection_id = each.value.database_tools_connection_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

