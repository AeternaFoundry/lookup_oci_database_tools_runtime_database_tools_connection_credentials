output "database_tools_runtime_database_tools_connection_credentials_lookup_id" {
  description = "Map of id values across all database_tools_runtime_database_tools_connection_credentials_lookup, keyed the same as var.database_tools_runtime_database_tools_connection_credentials_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_database_tools_runtime_database_tools_connection_credentials.database_tools_runtime_database_tools_connection_credentials_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_tools_runtime_database_tools_connection_credentials_lookup_credential_collection" {
  description = "Map of credential_collection values across all database_tools_runtime_database_tools_connection_credentials_lookup, keyed the same as var.database_tools_runtime_database_tools_connection_credentials_lookup except keys with no credential_collection are omitted"
  value       = { for k, v in data.oci_database_tools_runtime_database_tools_connection_credentials.database_tools_runtime_database_tools_connection_credentials_lookup : k => v.credential_collection if v.credential_collection != null && length(v.credential_collection) > 0 }
}
output "database_tools_runtime_database_tools_connection_credentials_lookup_database_tools_connection_id" {
  description = "Map of database_tools_connection_id values across all database_tools_runtime_database_tools_connection_credentials_lookup, keyed the same as var.database_tools_runtime_database_tools_connection_credentials_lookup except keys with no database_tools_connection_id are omitted"
  value       = { for k, v in data.oci_database_tools_runtime_database_tools_connection_credentials.database_tools_runtime_database_tools_connection_credentials_lookup : k => v.database_tools_connection_id if v.database_tools_connection_id != null && length(v.database_tools_connection_id) > 0 }
}
output "database_tools_runtime_database_tools_connection_credentials_lookup_filter" {
  description = "Map of filter values across all database_tools_runtime_database_tools_connection_credentials_lookup, keyed the same as var.database_tools_runtime_database_tools_connection_credentials_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_database_tools_runtime_database_tools_connection_credentials.database_tools_runtime_database_tools_connection_credentials_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

