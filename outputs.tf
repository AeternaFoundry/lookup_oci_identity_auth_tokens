output "identity_auth_tokens_lookup_id" {
  description = "Map of id values across all identity_auth_tokens_lookup, keyed the same as var.identity_auth_tokens_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_auth_tokens.identity_auth_tokens_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_auth_tokens_lookup_filter" {
  description = "Map of filter values across all identity_auth_tokens_lookup, keyed the same as var.identity_auth_tokens_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_auth_tokens.identity_auth_tokens_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_auth_tokens_lookup_tokens" {
  description = "Map of tokens values across all identity_auth_tokens_lookup, keyed the same as var.identity_auth_tokens_lookup except keys with no tokens are omitted"
  value       = { for k, v in data.oci_identity_auth_tokens.identity_auth_tokens_lookup : k => v.tokens if v.tokens != null && length(v.tokens) > 0 }
}
output "identity_auth_tokens_lookup_user_id" {
  description = "Map of user_id values across all identity_auth_tokens_lookup, keyed the same as var.identity_auth_tokens_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.oci_identity_auth_tokens.identity_auth_tokens_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

