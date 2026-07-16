output "key_vault_managed_storage_accounts_id" {
  description = "Map of id values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_managed_storage_accounts_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}
output "key_vault_managed_storage_accounts_name" {
  description = "Map of name values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "key_vault_managed_storage_accounts_regenerate_key_automatically" {
  description = "Map of regenerate_key_automatically values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.regenerate_key_automatically if v.regenerate_key_automatically != null }
}
output "key_vault_managed_storage_accounts_regeneration_period" {
  description = "Map of regeneration_period values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.regeneration_period if v.regeneration_period != null && length(v.regeneration_period) > 0 }
}
output "key_vault_managed_storage_accounts_storage_account_id" {
  description = "Map of storage_account_id values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "key_vault_managed_storage_accounts_storage_account_key" {
  description = "Map of storage_account_key values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.storage_account_key if v.storage_account_key != null && length(v.storage_account_key) > 0 }
}
output "key_vault_managed_storage_accounts_tags" {
  description = "Map of tags values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

