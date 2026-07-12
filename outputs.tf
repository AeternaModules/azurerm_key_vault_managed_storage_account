output "key_vault_managed_storage_accounts_id" {
  description = "Map of id values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.id }
}
output "key_vault_managed_storage_accounts_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.key_vault_id }
}
output "key_vault_managed_storage_accounts_name" {
  description = "Map of name values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.name }
}
output "key_vault_managed_storage_accounts_regenerate_key_automatically" {
  description = "Map of regenerate_key_automatically values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.regenerate_key_automatically }
}
output "key_vault_managed_storage_accounts_regeneration_period" {
  description = "Map of regeneration_period values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.regeneration_period }
}
output "key_vault_managed_storage_accounts_storage_account_id" {
  description = "Map of storage_account_id values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.storage_account_id }
}
output "key_vault_managed_storage_accounts_storage_account_key" {
  description = "Map of storage_account_key values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.storage_account_key }
}
output "key_vault_managed_storage_accounts_tags" {
  description = "Map of tags values across all key_vault_managed_storage_accounts, keyed the same as var.key_vault_managed_storage_accounts"
  value       = { for k, v in azurerm_key_vault_managed_storage_account.key_vault_managed_storage_accounts : k => v.tags }
}

