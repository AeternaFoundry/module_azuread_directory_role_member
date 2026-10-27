resource "azuread_directory_role_member" "directory_role_members" {
  for_each = var.directory_role_members

  member_object_id = each.value.member_object_id
  role_object_id   = each.value.role_object_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

