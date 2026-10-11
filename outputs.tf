output "directory_role_members_id" {
  description = "Map of id values across all directory_role_members, keyed the same as var.directory_role_members"
  value       = { for k, v in azuread_directory_role_member.directory_role_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "directory_role_members_member_object_id" {
  description = "Map of member_object_id values across all directory_role_members, keyed the same as var.directory_role_members"
  value       = { for k, v in azuread_directory_role_member.directory_role_members : k => v.member_object_id if v.member_object_id != null && length(v.member_object_id) > 0 }
}
output "directory_role_members_role_object_id" {
  description = "Map of role_object_id values across all directory_role_members, keyed the same as var.directory_role_members"
  value       = { for k, v in azuread_directory_role_member.directory_role_members : k => v.role_object_id if v.role_object_id != null && length(v.role_object_id) > 0 }
}

