data "oci_identity_auth_tokens" "identity_auth_tokens_lookup" {
  for_each = var.identity_auth_tokens_lookup

  user_id = each.value.user_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

