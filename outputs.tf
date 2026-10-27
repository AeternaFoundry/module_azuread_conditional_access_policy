output "conditional_access_policies_id" {
  description = "Map of id values across all conditional_access_policies, keyed the same as var.conditional_access_policies"
  value       = { for k, v in azuread_conditional_access_policy.conditional_access_policies : k => v.id }
}
output "conditional_access_policies_conditions" {
  description = "Map of conditions values across all conditional_access_policies, keyed the same as var.conditional_access_policies"
  value       = { for k, v in azuread_conditional_access_policy.conditional_access_policies : k => one(v.conditions) }
}
output "conditional_access_policies_display_name" {
  description = "Map of display_name values across all conditional_access_policies, keyed the same as var.conditional_access_policies"
  value       = { for k, v in azuread_conditional_access_policy.conditional_access_policies : k => v.display_name }
}
output "conditional_access_policies_grant_controls" {
  description = "Map of grant_controls values across all conditional_access_policies, keyed the same as var.conditional_access_policies"
  value       = { for k, v in azuread_conditional_access_policy.conditional_access_policies : k => one(v.grant_controls) }
}
output "conditional_access_policies_object_id" {
  description = "Map of object_id values across all conditional_access_policies, keyed the same as var.conditional_access_policies"
  value       = { for k, v in azuread_conditional_access_policy.conditional_access_policies : k => v.object_id }
}
output "conditional_access_policies_session_controls" {
  description = "Map of session_controls values across all conditional_access_policies, keyed the same as var.conditional_access_policies"
  value       = { for k, v in azuread_conditional_access_policy.conditional_access_policies : k => one(v.session_controls) }
}
output "conditional_access_policies_state" {
  description = "Map of state values across all conditional_access_policies, keyed the same as var.conditional_access_policies"
  value       = { for k, v in azuread_conditional_access_policy.conditional_access_policies : k => v.state }
}

